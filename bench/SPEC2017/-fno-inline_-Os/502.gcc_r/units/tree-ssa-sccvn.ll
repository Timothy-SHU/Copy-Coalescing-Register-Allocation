; ModuleID = 'tree-ssa-sccvn.c'
source_filename = "tree-ssa-sccvn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_vn_ssa_aux_t_base = type { i32, i32, [1 x ptr] }
%struct.vn_ssa_aux = type { ptr, ptr, i32, i32, i32, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.vn_constant_s = type { i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.vn_reference_s = type { i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.VEC_vn_reference_op_s_base = type { i32, i32, [1 x %struct.vn_reference_op_struct] }
%struct.vn_reference_op_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.vn_tables_s = type { ptr, ptr, ptr, %struct.obstack, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.vn_nary_op_s = type { i32, i32, i32, ptr, ptr, [4 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.vn_phi_s = type { i32, i32, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_ssa_op_iter_base = type { i32, i32, [1 x %struct.ssa_operand_iterator_d] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@vn_ssa_aux_table = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [17 x i8] c"tree-ssa-sccvn.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@vn_ssa_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@VN_TOP = dso_local local_unnamed_addr global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@constant_to_value_id = internal unnamed_addr global ptr null, align 8
@constant_value_ids = internal unnamed_addr global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@may_insert = internal unnamed_addr global i8 0, align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@shared_lookup_references = internal global ptr null, align 8
@current_info = internal unnamed_addr global ptr null, align 8
@optimistic_info = internal unnamed_addr global ptr null, align 8
@valid_info = internal unnamed_addr global ptr null, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@shared_lookup_phiargs = internal global ptr null, align 8
@rpo_numbers = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@sccstack = internal global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Value numbers:\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@next_value_id = internal unnamed_addr global i32 0, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@last_vuse_ptr = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@next_dfs_num = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"vn_top\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"VN phis\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"VN references\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [63 x i8] c"WARNING: Giving up with SCCVN due to SCC size %u exceeding %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SCC consists of: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SCC iterations\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Value numbering \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" stmt = \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RHS \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c" simplified to \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" has constants %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Setting value number of \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" (changed)\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"No store match\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Value numbering store \00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"Store matched earlier value,value numbering store vdefs to matching vuses.\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Inserting name \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c" for expression \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VN_INFO(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !496 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !497
  %5 = tail call fastcc ptr @VEC_vn_ssa_aux_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !500

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vn_ssa_aux_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !496 !PGOFuncName !501 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !502
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VN_INFO_GET(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !504 {
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !505
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !509
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !510
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %11, !prof !511

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 32) #20
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !505
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !510
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 32, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !512
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20, !prof !513

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !505
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 6), align 8, !tbaa !514
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  store ptr %29, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !510
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !515
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !509
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38, !prof !513

37:                                               ; preds = %20
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !510
  br label %38

38:                                               ; preds = %20, %37
  %39 = phi ptr [ %29, %20 ], [ %33, %37 ]
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !497
  %42 = load ptr, ptr @vn_ssa_aux_table, align 8
  %43 = tail call fastcc i32 @VEC_vn_ssa_aux_t_base_length(ptr noundef %42) #19
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %49, label %45, !prof !516

45:                                               ; preds = %38
  %46 = add i32 %41, 1
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow(i32 noundef %46) #19
  %47 = load ptr, ptr @vn_ssa_aux_table, align 8
  %48 = load i32, ptr %40, align 8, !tbaa !497
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i32 [ %48, %45 ], [ %41, %38 ]
  %51 = phi ptr [ %47, %45 ], [ %42, %38 ]
  tail call fastcc void @VEC_vn_ssa_aux_t_base_replace(ptr noundef %51, i32 noundef %50, ptr noundef nonnull %15) #19
  ret ptr %15
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_ssa_aux_t_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !517 !PGOFuncName !518 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !519

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !520
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !522 !PGOFuncName !523 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !524

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !520
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !502, !nonnull !525, !noundef !525
  store i32 %0, ptr %9, align 8, !tbaa !520
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !504 !PGOFuncName !526 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !502
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_get_expr_for(ptr noundef readonly %0) local_unnamed_addr #0 !prof !527 {
  %2 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !528
  %4 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %74, label %6, !prof !530

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %74, !prof !531

10:                                               ; preds = %6
  %11 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %12 = load ptr, ptr %11, align 8, !tbaa !528
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %74, !prof !531

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vn_ssa_aux, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !532
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %74, !prof !533

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !497
  %23 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %22) #19, !range !534
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %74, !prof !535

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %22) #19, !range !536
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %74, label %28, !prof !537

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %22) #19, !range !534
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %74, label %31, !prof !538

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !540
  switch i32 %35, label %71 [
    i32 4, label %36
    i32 6, label %57
    i32 7, label %62
  ], !prof !541

36:                                               ; preds = %31
  %37 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %38 = icmp eq i32 %37, 118
  br i1 %38, label %45, label %39, !prof !542

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %45, label %42, !prof !542

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %71, !prof !542

45:                                               ; preds = %42, %39, %36
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %52 = tail call fastcc ptr @gimple_expr_type(ptr noundef %22) #19
  %53 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !497
  %56 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %51, ptr noundef %52, ptr noundef %55) #20
  br label %68

57:                                               ; preds = %31
  %58 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %59 = tail call fastcc ptr @gimple_expr_type(ptr noundef %22) #19
  %60 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %61 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %58, ptr noundef %59, ptr noundef %60) #20
  br label %68

62:                                               ; preds = %31
  %63 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !539
  %64 = tail call fastcc ptr @gimple_expr_type(ptr noundef %22) #19
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %66 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %22) #19
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66) #20
  br label %68

68:                                               ; preds = %50, %62, %57
  %69 = phi ptr [ %67, %62 ], [ %61, %57 ], [ %56, %50 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73, !prof !543

71:                                               ; preds = %42, %45, %31, %68
  %72 = load ptr, ptr %11, align 8, !tbaa !528
  br label %74

73:                                               ; preds = %68
  store ptr %69, ptr %17, align 8, !tbaa !532
  br label %74

74:                                               ; preds = %28, %20, %25, %16, %10, %6, %1, %73, %71
  %75 = phi ptr [ %72, %71 ], [ %69, %73 ], [ %0, %1 ], [ %3, %6 ], [ %12, %10 ], [ %18, %16 ], [ %12, %25 ], [ %12, %20 ], [ %12, %28 ]
  ret ptr %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !544 !PGOFuncName !545 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !546 !PGOFuncName !547 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !548 !PGOFuncName !549 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !550 !PGOFuncName !551 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !539
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !536
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !552

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !553 !PGOFuncName !554 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !555 !PGOFuncName !556 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !557

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !558

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !497
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !497
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !502
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !502
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !559 !PGOFuncName !560 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !561

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_constant_value_id(ptr noundef %0) local_unnamed_addr #0 !prof !562 {
  %2 = alloca %struct.vn_constant_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 4, !tbaa !563
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !565
  %6 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !502
  %7 = call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !566

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 8, !tbaa !502
  %11 = load i32, ptr %10, align 8, !tbaa !567
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  %4 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #20
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %17, !prof !570

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1023
  %14 = lshr i32 %6, 21
  %15 = and i32 %14, 1
  %16 = add nuw nsw i32 %13, %15
  br label %17

17:                                               ; preds = %1, %10
  %18 = phi i32 [ %16, %10 ], [ 0, %1 ]
  %19 = zext i1 %9 to i32
  %20 = add i32 %4, %19
  %21 = add i32 %20, %18
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_or_alloc_constant_value_id(ptr noundef %0) local_unnamed_addr #0 !prof !571 {
  %2 = alloca %struct.vn_constant_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 4, !tbaa !563
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !565
  %6 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !502
  %7 = call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #20
  %8 = load ptr, ptr %7, align 8, !tbaa !502
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18, !prof !572

10:                                               ; preds = %1
  %11 = call ptr @xmalloc(i64 noundef 16) #20
  %12 = load i32, ptr %4, align 4, !tbaa !563
  %13 = getelementptr inbounds %struct.vn_constant_s, ptr %11, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !563
  %14 = getelementptr inbounds %struct.vn_constant_s, ptr %11, i64 0, i32 2
  store ptr %0, ptr %14, align 8, !tbaa !565
  %15 = call i32 @get_next_value_id() #19
  store i32 %15, ptr %11, align 8, !tbaa !567
  store ptr %11, ptr %7, align 8, !tbaa !502
  %16 = load ptr, ptr @constant_value_ids, align 8, !tbaa !502
  %17 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %15) #20
  br label %18

18:                                               ; preds = %1, %10
  %19 = phi ptr [ %11, %10 ], [ %8, %1 ]
  %20 = load i32, ptr %19, align 8, !tbaa !567
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_next_value_id() local_unnamed_addr #6 !prof !573 {
  %1 = load i32, ptr @next_value_id, align 4, !tbaa !540
  %2 = add i32 %1, 1
  store i32 %2, ptr @next_value_id, align 4, !tbaa !540
  ret i32 %1
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @value_id_constant_p(i32 noundef %0) local_unnamed_addr #0 !prof !574 {
  %2 = load ptr, ptr @constant_value_ids, align 8, !tbaa !502
  %3 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %0) #20
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vn_reference_compute_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !575 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !576
  %5 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !578
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7, !prof !579

7:                                                ; preds = %1, %7
  %8 = phi i32 [ %12, %7 ], [ 0, %1 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !502
  %11 = tail call fastcc i32 @vn_reference_op_compute_hash(ptr noundef %10, i32 noundef %9) #19
  %12 = add nuw nsw i32 %8, 1
  %13 = load ptr, ptr %3, align 8, !tbaa !576
  %14 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #19, !range !578
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7, !prof !580, !llvm.loop !581

16:                                               ; preds = %7, %1
  %17 = phi i32 [ 0, %1 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !583
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !584

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !497
  %24 = add i32 %23, %17
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !585 !PGOFuncName !586 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !587

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !588
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !590

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !502
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_reference_op_compute_hash(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %3 = load i32, ptr %0, align 8, !tbaa !593
  %4 = tail call i32 @iterative_hash_hashval_t(i32 noundef %3, i32 noundef %1) #20
  %5 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !595
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !596

8:                                                ; preds = %2
  %9 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %6, i32 noundef %4) #20
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !597
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !598

15:                                               ; preds = %10
  %16 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %13, i32 noundef %11) #20
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %16, %15 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !599
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !598

22:                                               ; preds = %17
  %23 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %20, i32 noundef %18) #20
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %23, %22 ], [ %18, %17 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vn_reference_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !600 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !601
  %6 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !601
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %40, !prof !602

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !583
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !583
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %40, !prof !603

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !576
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !576
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %40, label %21, !prof !604

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %17) #19
  %23 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %19) #19
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40, !prof !605

25:                                               ; preds = %21
  %26 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #19, !range !578
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %33, !prof !606

28:                                               ; preds = %33
  %29 = add nuw nsw i32 %34, 1
  %30 = load ptr, ptr %16, align 8, !tbaa !576
  %31 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %30, i32 noundef %29, ptr noundef nonnull %3) #19, !range !578
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !607, !llvm.loop !608

33:                                               ; preds = %25, %28
  %34 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %35 = load ptr, ptr %18, align 8, !tbaa !576
  %36 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %35, i32 noundef %34) #19
  %37 = load ptr, ptr %3, align 8, !tbaa !502
  %38 = tail call fastcc i32 @vn_reference_op_eq(ptr noundef nonnull %36, ptr noundef %37) #19, !range !578
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %28, !prof !609

40:                                               ; preds = %33, %28, %25, %21, %15, %9, %2
  %41 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 1, %15 ], [ 0, %21 ], [ 1, %25 ], [ 0, %33 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !610 !PGOFuncName !611 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !612

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !588
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_reference_op_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !613 !PGOFuncName !614 {
  %3 = load i32, ptr %0, align 8, !tbaa !593
  %4 = load i32, ptr %1, align 8, !tbaa !593
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %34, !prof !615

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !616
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !616
  %11 = tail call zeroext i8 @types_compatible_p(ptr noundef %8, ptr noundef %10) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %34, label %13, !prof !609

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !595
  %16 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !595
  %18 = tail call zeroext i8 @expressions_equal_p(ptr noundef %15, ptr noundef %17) #19, !range !534
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20, !prof !609

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !597
  %23 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !597
  %25 = tail call zeroext i8 @expressions_equal_p(ptr noundef %22, ptr noundef %24) #19, !range !534
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27, !prof !609

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !599
  %30 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !599
  %32 = tail call zeroext i8 @expressions_equal_p(ptr noundef %29, ptr noundef %31) #19, !range !534
  %33 = zext nneg i8 %32 to i32
  br label %34

34:                                               ; preds = %27, %20, %13, %6, %2
  %35 = phi i32 [ 0, %20 ], [ 0, %13 ], [ 0, %6 ], [ 0, %2 ], [ %33, %27 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_vn_reference_op_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !617 !PGOFuncName !618 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_reference_ops_from_ref(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !619 {
  %3 = alloca %struct.vn_reference_op_struct, align 8
  %4 = alloca %struct.vn_reference_op_struct, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 152
  br i1 %7, label %11, label %8, !prof !620

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 2
  br label %45

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !497
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !497
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !502
  %21 = tail call ptr @build_int_cst(ptr noundef %20, i64 noundef 0) #20
  %22 = load i64, ptr %0, align 8
  br label %23

23:                                               ; preds = %11, %19, %15
  %24 = phi i64 [ %5, %15 ], [ %22, %19 ], [ %5, %11 ]
  %25 = phi ptr [ %17, %15 ], [ %21, %19 ], [ %13, %11 ]
  store i64 0, ptr %3, align 8
  %26 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !497
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !497
  %30 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !616
  %31 = trunc i64 %24 to i32
  %32 = and i32 %31, 65535
  store i32 %32, ptr %3, align 8, !tbaa !593
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 2
  %35 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 3
  %36 = load <2 x ptr>, ptr %33, align 8, !tbaa !497
  store <2 x ptr> %36, ptr %34, align 8, !tbaa !502
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !497
  %39 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 4
  store ptr %38, ptr %39, align 8, !tbaa !599
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %40 = load i64, ptr %25, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  store i32 %42, ptr %3, align 8, !tbaa !593
  store ptr %25, ptr %34, align 8, !tbaa !595
  %43 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !497
  store ptr %44, ptr %35, align 8, !tbaa !597
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  br label %127

45:                                               ; preds = %8, %123
  %46 = phi ptr [ %0, %8 ], [ %125, %123 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !497
  %49 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !497
  store ptr %50, ptr %9, align 8, !tbaa !616
  %51 = load i64, ptr %46, align 8
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 65535
  store i32 %53, ptr %4, align 8, !tbaa !593
  %54 = trunc i64 %51 to i16
  switch i16 %54, label %110 [
    i16 48, label %111
    i16 47, label %111
    i16 49, label %55
    i16 42, label %58
    i16 41, label %61
    i16 46, label %98
    i16 45, label %98
    i16 28, label %105
    i16 23, label %105
    i16 26, label %105
    i16 27, label %105
    i16 24, label %105
    i16 51, label %105
    i16 32, label %105
    i16 34, label %105
    i16 33, label %105
    i16 36, label %105
    i16 141, label %105
    i16 121, label %106
    i16 44, label %111
    i16 43, label %111
    i16 118, label %111
  ], !prof !621

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !497
  store ptr %57, ptr %10, align 8, !tbaa !595
  br label %111

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1
  %60 = load <2 x ptr>, ptr %59, align 8, !tbaa !497
  store <2 x ptr> %60, ptr %10, align 8, !tbaa !502
  br label %111

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !616
  %63 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !497
  store ptr %64, ptr %10, align 8, !tbaa !595
  %65 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !497
  store ptr %66, ptr %62, align 8, !tbaa !597
  %67 = load i8, ptr @may_insert, align 1, !tbaa !497
  %68 = icmp ne i8 %67, 0
  %69 = icmp eq ptr %66, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %111, !prof !622

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.tree_decl_minimal, ptr %64, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !497
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 17
  br i1 %76, label %77, label %111, !prof !623

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tree_field_decl, ptr %64, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !497
  %80 = call i32 @integer_zerop(ptr noundef %79) #20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %111, label %82, !prof !624

82:                                               ; preds = %77
  %83 = load ptr, ptr %10, align 8, !tbaa !595
  %84 = getelementptr inbounds %struct.tree_field_decl, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !497
  %86 = call i32 @integer_zerop(ptr noundef %85) #20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %111, label %88, !prof !624

88:                                               ; preds = %82
  %89 = load ptr, ptr %10, align 8, !tbaa !595
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !497
  %92 = call i32 @host_integerp(ptr noundef %91, i32 noundef 0) #20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94, !prof !624

94:                                               ; preds = %88
  %95 = load ptr, ptr %10, align 8, !tbaa !595
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !497
  store ptr %97, ptr %10, align 8, !tbaa !595
  br label %111

98:                                               ; preds = %45, %45
  %99 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 3
  %100 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 4
  %101 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !497
  store ptr %102, ptr %10, align 8, !tbaa !595
  %103 = call ptr @array_ref_low_bound(ptr noundef nonnull %46) #20
  store ptr %103, ptr %99, align 8, !tbaa !597
  %104 = call ptr @array_ref_element_size(ptr noundef nonnull %46) #20
  store ptr %104, ptr %100, align 8, !tbaa !599
  br label %111

105:                                              ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  store ptr %46, ptr %10, align 8, !tbaa !595
  br label %111

106:                                              ; preds = %45
  %107 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %46) #20
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  store ptr %46, ptr %10, align 8, !tbaa !595
  br label %111

110:                                              ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #20
  br label %111

111:                                              ; preds = %45, %45, %45, %106, %61, %71, %77, %82, %88, %94, %45, %45, %110, %109, %105, %98, %58, %55
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #19
  %112 = load i64, ptr %46, align 8
  %113 = and i64 %112, 65535
  %114 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !540
  %116 = icmp eq i32 %115, 4
  br i1 %116, label %123, label %117, !prof !625

117:                                              ; preds = %111
  %118 = icmp eq i64 %113, 121
  br i1 %118, label %119, label %122, !prof !620

119:                                              ; preds = %117
  %120 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %46) #20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119, %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  br label %127

123:                                              ; preds = %111, %119
  %124 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !497
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %45, !prof !626, !llvm.loop !627

127:                                              ; preds = %123, %122, %23
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !628 !PGOFuncName !629 {
  tail call fastcc void @VEC_vn_reference_op_s_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  tail call fastcc void @VEC_vn_reference_op_s_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ao_ref_init_from_vn_reference(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !630 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr null, ptr %6, align 8, !tbaa !502
  %7 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %3, i32 noundef 0) #19
  store ptr %7, ptr %5, align 8, !tbaa !502
  %8 = load i32, ptr %7, align 8, !tbaa !593
  switch i32 %8, label %19 [
    i32 41, label %9
    i32 42, label %17
  ], !prof !631

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !595
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %45, label %15, !prof !632

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 1
  br label %41

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %7, i64 0, i32 2
  br label %41

19:                                               ; preds = %4
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25, !prof !633

23:                                               ; preds = %19
  %24 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #20
  br label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35, !prof !633

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  br label %41

35:                                               ; preds = %30
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !497
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  br label %52

41:                                               ; preds = %33, %17, %15
  %42 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %34, %33 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !497
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45, !prof !634

45:                                               ; preds = %9, %41
  %46 = phi ptr [ %43, %41 ], [ %11, %9 ]
  %47 = tail call i32 @host_integerp(ptr noundef nonnull %46, i32 noundef 1) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49, !prof !632

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !497
  br label %52

52:                                               ; preds = %35, %45, %49, %41
  %53 = phi i64 [ %51, %49 ], [ -1, %41 ], [ -1, %45 ], [ %40, %35 ]
  %54 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5) #19, !range !578
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %157, label %56, !prof !635

56:                                               ; preds = %52, %140
  %57 = phi i32 [ %144, %140 ], [ 0, %52 ]
  %58 = phi ptr [ %143, %140 ], [ %6, %52 ]
  %59 = phi i64 [ %142, %140 ], [ %53, %52 ]
  %60 = phi i64 [ %141, %140 ], [ 0, %52 ]
  %61 = load ptr, ptr %5, align 8, !tbaa !502
  %62 = load i32, ptr %61, align 8, !tbaa !593
  switch i32 %62, label %157 [
    i32 118, label %140
    i32 44, label %138
    i32 48, label %63
    i32 47, label %63
    i32 49, label %68
    i32 32, label %75
    i32 34, label %75
    i32 36, label %75
    i32 141, label %75
    i32 42, label %78
    i32 41, label %83
    i32 46, label %109
    i32 45, label %109
    i32 43, label %140
  ], !prof !636

63:                                               ; preds = %56, %56
  %64 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !616
  %66 = tail call ptr @build1_stat(i32 noundef %62, ptr noundef %65, ptr noundef null) #20
  store ptr %66, ptr %58, align 8, !tbaa !502
  %67 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 3
  br label %140

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !616
  %71 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !595
  %73 = tail call ptr @build2_stat(i32 noundef 49, ptr noundef %70, ptr noundef null, ptr noundef %72) #20
  store ptr %73, ptr %58, align 8, !tbaa !502
  %74 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 3
  br label %140

75:                                               ; preds = %56, %56, %56, %56
  %76 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !595
  store ptr %77, ptr %58, align 8, !tbaa !502
  br label %140

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !597
  %81 = tail call i64 @tree_low_cst(ptr noundef %80, i32 noundef 0) #20
  %82 = add nsw i64 %81, %60
  br label %140

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !595
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %140, label %89, !prof !637

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !597
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %140, !prof !638

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.tree_field_decl, ptr %85, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !497
  %96 = tail call i32 @host_integerp(ptr noundef %95, i32 noundef 1) #20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %140, label %98, !prof !637

98:                                               ; preds = %93
  %99 = load ptr, ptr %94, align 8, !tbaa !497
  %100 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !497
  %102 = shl i64 %101, 3
  %103 = add i64 %102, %60
  %104 = getelementptr inbounds %struct.tree_field_decl, ptr %85, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !497
  %106 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !497
  %108 = add i64 %103, %107
  br label %140

109:                                              ; preds = %56, %56
  %110 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !595
  %112 = tail call i32 @host_integerp(ptr noundef %111, i32 noundef 0) #20
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %140, label %114, !prof !639

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !597
  %117 = tail call i32 @host_integerp(ptr noundef %116, i32 noundef 0) #20
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %140, label %119, !prof !640

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !599
  %122 = tail call i32 @host_integerp(ptr noundef %121, i32 noundef 0) #20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %140, label %124, !prof !640

124:                                              ; preds = %119
  %125 = load ptr, ptr %110, align 8, !tbaa !595
  %126 = getelementptr inbounds %struct.tree_int_cst, ptr %125, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !497
  %128 = load ptr, ptr %115, align 8, !tbaa !597
  %129 = getelementptr inbounds %struct.tree_int_cst, ptr %128, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !497
  %131 = sub i64 %127, %130
  %132 = load ptr, ptr %120, align 8, !tbaa !599
  %133 = getelementptr inbounds %struct.tree_int_cst, ptr %132, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !497
  %135 = shl i64 %131, 3
  %136 = mul i64 %135, %134
  %137 = add nsw i64 %136, %60
  br label %140

138:                                              ; preds = %56
  %139 = add nsw i64 %60, %53
  br label %140

140:                                              ; preds = %56, %109, %114, %119, %83, %98, %93, %89, %63, %68, %75, %78, %56, %138, %124
  %141 = phi i64 [ %139, %138 ], [ %60, %56 ], [ %60, %56 ], [ %137, %124 ], [ %82, %78 ], [ %60, %75 ], [ %60, %68 ], [ %60, %63 ], [ %60, %83 ], [ %108, %98 ], [ %60, %93 ], [ %60, %89 ], [ %60, %119 ], [ %60, %114 ], [ %60, %109 ]
  %142 = phi i64 [ %59, %138 ], [ %59, %56 ], [ %59, %56 ], [ %59, %124 ], [ %59, %78 ], [ %59, %75 ], [ %59, %68 ], [ %59, %63 ], [ %59, %83 ], [ %59, %98 ], [ -1, %93 ], [ -1, %89 ], [ -1, %119 ], [ -1, %114 ], [ -1, %109 ]
  %143 = phi ptr [ %58, %138 ], [ %58, %56 ], [ %58, %56 ], [ %58, %124 ], [ %58, %78 ], [ %58, %75 ], [ %74, %68 ], [ %67, %63 ], [ %58, %83 ], [ %58, %98 ], [ %58, %93 ], [ %58, %89 ], [ %58, %119 ], [ %58, %114 ], [ %58, %109 ]
  %144 = add i32 %57, 1
  %145 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %3, i32 noundef %144, ptr noundef nonnull %5) #19, !range !578
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %56, !prof !641, !llvm.loop !642

147:                                              ; preds = %140
  %148 = load ptr, ptr %6, align 8, !tbaa !502
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150, !prof !643

150:                                              ; preds = %147
  store ptr null, ptr %0, align 8, !tbaa !644
  %151 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !646
  %152 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  store i64 %141, ptr %152, align 8, !tbaa !647
  %153 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %53, ptr %153, align 8, !tbaa !648
  %154 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  store i64 %142, ptr %154, align 8, !tbaa !649
  %155 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 %1, ptr %155, align 8, !tbaa !650
  %156 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 -1, ptr %156, align 4, !tbaa !651
  br label %157

157:                                              ; preds = %56, %52, %147, %150
  %158 = phi i8 [ 1, %150 ], [ 0, %147 ], [ 0, %52 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret i8 %158
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_reference_ops_from_call(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !652 {
  %3 = alloca %struct.vn_reference_op_struct, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !616
  store i32 59, ptr %3, align 8, !tbaa !593
  %6 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !595
  %8 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !597
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #19
  %10 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %2 ]
  %14 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %13) #19
  call void @copy_reference_ops_from_ref(ptr noundef %14, ptr noundef %1) #19
  %15 = add nuw i32 %13, 1
  %16 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %12, label %18, !llvm.loop !653

18:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !652 !PGOFuncName !654 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !497
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !655 !PGOFuncName !656 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !652 !PGOFuncName !657 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !652 !PGOFuncName !658 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !652 !PGOFuncName !659 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vn_reference_fold_indirect(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !652 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.vn_reference_op_struct, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = load i32, ptr %1, align 4, !tbaa !540
  %7 = load ptr, ptr %0, align 8, !tbaa !502
  %8 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %6) #19
  store ptr %8, ptr %4, align 8, !tbaa !502
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !595
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !497
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !497
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 15
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !497
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !497
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 15
  br i1 %25, label %49, label %26

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  %27 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !497
  %29 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !616
  store i32 45, ptr %5, align 8, !tbaa !593
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !502
  %31 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !595
  %32 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !497
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !497
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store ptr %37, ptr %31, align 8, !tbaa !595
  br label %40

40:                                               ; preds = %39, %35, %26
  %41 = phi ptr [ %37, %39 ], [ %30, %35 ], [ %30, %26 ]
  %42 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !597
  %43 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !497
  %45 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !599
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  %46 = load ptr, ptr %9, align 8, !tbaa !595
  %47 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !497
  br label %49

49:                                               ; preds = %40, %18, %2
  %50 = phi ptr [ %48, %40 ], [ %12, %18 ], [ %12, %2 ]
  call void @copy_reference_ops_from_ref(ptr noundef %50, ptr noundef nonnull %3) #19
  %51 = load ptr, ptr %3, align 8
  %52 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %51) #19
  switch i32 %52, label %64 [
    i32 1, label %53
    i32 2, label %58
  ]

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !502
  %55 = add i32 %6, -1
  %56 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 0) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %54, i32 noundef %55, ptr noundef nonnull %56) #19
  %57 = load ptr, ptr %0, align 8, !tbaa !502
  call fastcc void @VEC_vn_reference_op_s_base_ordered_remove(ptr noundef %57, i32 noundef %6) #19
  br label %83

58:                                               ; preds = %49
  %59 = load ptr, ptr %0, align 8, !tbaa !502
  %60 = add i32 %6, -1
  %61 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 0) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %59, i32 noundef %60, ptr noundef nonnull %61) #19
  %62 = load ptr, ptr %0, align 8, !tbaa !502
  %63 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 1) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %62, i32 noundef %6, ptr noundef nonnull %63) #19
  br label %83

64:                                               ; preds = %49
  %65 = icmp ugt i32 %52, 2
  br i1 %65, label %66, label %82

66:                                               ; preds = %64
  %67 = load ptr, ptr %0, align 8, !tbaa !502
  %68 = add i32 %6, -1
  %69 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 0) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %67, i32 noundef %68, ptr noundef nonnull %69) #19
  %70 = load ptr, ptr %0, align 8, !tbaa !502
  %71 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 1) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %70, i32 noundef %6, ptr noundef nonnull %71) #19
  %72 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %51, i32 noundef 2, ptr noundef nonnull %4) #19, !range !578
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %66, %74
  %75 = phi i32 [ %77, %74 ], [ %6, %66 ]
  %76 = phi i32 [ %79, %74 ], [ 2, %66 ]
  %77 = add i32 %75, 1
  %78 = load ptr, ptr %4, align 8, !tbaa !502
  call fastcc void @VEC_vn_reference_op_s_heap_safe_insert(ptr noundef nonnull %0, i32 noundef %77, ptr noundef %78) #19
  %79 = add i32 %76, 1
  %80 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %51, i32 noundef %79, ptr noundef nonnull %4) #19, !range !578
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %74, !llvm.loop !660

82:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 886, ptr noundef nonnull @.str.1) #20
  br label %83

83:                                               ; preds = %74, %66, %58, %82, %53
  %84 = phi i32 [ %55, %53 ], [ %6, %58 ], [ %6, %82 ], [ %6, %66 ], [ %77, %74 ]
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %3) #19
  store i32 %84, ptr %1, align 4, !tbaa !540
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #5 !prof !652 !PGOFuncName !661 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !662
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !652 !PGOFuncName !663 {
  %3 = load i32, ptr %0, align 8, !tbaa !588
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !588
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !652 !PGOFuncName !664 {
  tail call fastcc void @VEC_vn_reference_op_s_heap_reserve(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !502
  tail call fastcc void @VEC_vn_reference_op_s_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !665 !PGOFuncName !666 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !667

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !502
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_reference_lookup_pieces(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 !prof !668 {
  %7 = alloca %struct.vn_reference_s, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %12, !prof !669

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi ptr [ %4, %6 ], [ %8, %11 ]
  store ptr null, ptr %13, align 8, !tbaa !502
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15, !prof !669

15:                                               ; preds = %12
  %16 = tail call ptr @VN_INFO(ptr noundef nonnull %0) #19
  %17 = load ptr, ptr %16, align 8, !tbaa !528
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %17, %15 ], [ null, %12 ]
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !583
  %21 = load ptr, ptr @shared_lookup_references, align 8
  tail call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %21, i32 noundef 0) #19
  %22 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %3) #19
  tail call fastcc void @VEC_vn_reference_op_s_heap_safe_grow(ptr noundef nonnull @shared_lookup_references, i32 noundef %22) #19
  %23 = load ptr, ptr @shared_lookup_references, align 8
  %24 = tail call fastcc ptr @VEC_vn_reference_op_s_base_address(ptr noundef %23) #19
  %25 = tail call fastcc ptr @VEC_vn_reference_op_s_base_address(ptr noundef %3) #19
  %26 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %3) #19
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %25, i64 %28, i1 false)
  %29 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !502
  %30 = tail call fastcc ptr @valueize_refs(ptr noundef %29) #19
  store ptr %30, ptr @shared_lookup_references, align 8, !tbaa !502
  %31 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 5
  store ptr %30, ptr %31, align 8, !tbaa !576
  %32 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 4
  store ptr %2, ptr %32, align 8, !tbaa !670
  %33 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 3
  store i32 %1, ptr %33, align 8, !tbaa !671
  %34 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %7) #19
  %35 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !601
  %36 = call fastcc ptr @vn_reference_lookup_1(ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  %37 = load ptr, ptr %13, align 8, !tbaa !502
  %38 = icmp eq ptr %37, null
  %39 = icmp ne i8 %5, 0
  %40 = and i1 %39, %38
  %41 = load ptr, ptr %20, align 8
  %42 = icmp ne ptr %41, null
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %57, !prof !672

44:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #21
  %45 = load ptr, ptr %31, align 8, !tbaa !576
  %46 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %9, i32 noundef %1, ptr noundef %2, ptr noundef %45) #19, !range !534
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !673

48:                                               ; preds = %44
  %49 = load ptr, ptr %20, align 8, !tbaa !583
  %50 = call ptr @walk_non_aliased_vuses(ptr noundef nonnull %9, ptr noundef %49, ptr noundef nonnull @vn_reference_lookup_2, ptr noundef nonnull @vn_reference_lookup_3, ptr noundef nonnull %7) #20
  store ptr %50, ptr %13, align 8, !tbaa !502
  br label %51

51:                                               ; preds = %48, %44
  %52 = load ptr, ptr %31, align 8, !tbaa !576
  %53 = icmp eq ptr %52, %30
  br i1 %53, label %55, label %54, !prof !674

54:                                               ; preds = %51
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %31) #19
  br label %55

55:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #21
  %56 = load ptr, ptr %13, align 8, !tbaa !502
  br label %57

57:                                               ; preds = %55, %18
  %58 = phi ptr [ %56, %55 ], [ %37, %18 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !675

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.vn_reference_s, ptr %58, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !676
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi ptr [ %62, %60 ], [ null, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #21
  ret ptr %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #9 !prof !677 !PGOFuncName !678 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !679

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !588
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !668 !PGOFuncName !680 {
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !669

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !588
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_vn_reference_op_s_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !502, !nonnull !525, !noundef !525
  store i32 %1, ptr %10, align 8, !tbaa !588
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_vn_reference_op_s_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !681 !PGOFuncName !682 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !683
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @valueize_refs(ptr noundef %0) unnamed_addr #0 !prof !575 !PGOFuncName !684 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !540
  %5 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #19, !range !578
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %75, label %7, !prof !579

7:                                                ; preds = %1, %69
  %8 = phi ptr [ %70, %69 ], [ %0, %1 ]
  %9 = phi i32 [ %72, %69 ], [ 0, %1 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !502
  %11 = load i32, ptr %10, align 8, !tbaa !593
  %12 = icmp eq i32 %11, 141
  %13 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !595
  br i1 %12, label %21, label %15, !prof !596

15:                                               ; preds = %7
  %16 = icmp eq ptr %14, null
  br i1 %16, label %47, label %17, !prof !685

17:                                               ; preds = %15
  %18 = load i64, ptr %14, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %47, !prof !686

21:                                               ; preds = %7, %17
  %22 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 2
  %23 = tail call ptr @VN_INFO(ptr noundef %14) #19
  %24 = load ptr, ptr %23, align 8, !tbaa !528
  store ptr %24, ptr %22, align 8, !tbaa !595
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 141
  br i1 %28, label %33, label %29, !prof !687

29:                                               ; preds = %21
  %30 = load i32, ptr %10, align 8, !tbaa !593
  %31 = icmp eq i32 %30, 141
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 %27, ptr %10, align 8, !tbaa !593
  br label %33

33:                                               ; preds = %32, %29, %21
  %34 = icmp eq i32 %9, 0
  br i1 %34, label %47, label %35, !prof !688

35:                                               ; preds = %33
  %36 = load i64, ptr %24, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 121
  br i1 %38, label %39, label %47, !prof !689

39:                                               ; preds = %35
  %40 = add i32 %9, -1
  %41 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %8, i32 noundef %40) #19
  %42 = load i32, ptr %41, align 8, !tbaa !593
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  call void @vn_reference_fold_indirect(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  %45 = load i32, ptr %4, align 4, !tbaa !540
  %46 = load ptr, ptr %2, align 8
  br label %69

47:                                               ; preds = %33, %35, %39, %17, %15
  %48 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !597
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51, !prof !598

51:                                               ; preds = %47
  %52 = load i64, ptr %49, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %58, !prof !690

55:                                               ; preds = %51
  %56 = tail call ptr @VN_INFO(ptr noundef nonnull %49) #19
  %57 = load ptr, ptr %56, align 8, !tbaa !528
  store ptr %57, ptr %48, align 8, !tbaa !597
  br label %58

58:                                               ; preds = %55, %51, %47
  %59 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !599
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62, !prof !598

62:                                               ; preds = %58
  %63 = load i64, ptr %60, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 141
  br i1 %65, label %66, label %69, !prof !690

66:                                               ; preds = %62
  %67 = tail call ptr @VN_INFO(ptr noundef nonnull %60) #19
  %68 = load ptr, ptr %67, align 8, !tbaa !528
  store ptr %68, ptr %59, align 8, !tbaa !599
  br label %69

69:                                               ; preds = %58, %62, %66, %44
  %70 = phi ptr [ %8, %58 ], [ %8, %62 ], [ %8, %66 ], [ %46, %44 ]
  %71 = phi i32 [ %9, %58 ], [ %9, %62 ], [ %9, %66 ], [ %45, %44 ]
  %72 = add i32 %71, 1
  store i32 %72, ptr %4, align 4, !tbaa !540
  %73 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %70, i32 noundef %72, ptr noundef nonnull %3) #19, !range !578
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %7, !prof !580, !llvm.loop !691

75:                                               ; preds = %69, %1
  %76 = phi ptr [ %0, %1 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vn_reference_lookup_1(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 !prof !692 !PGOFuncName !693 {
  %3 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !601
  %5 = load ptr, ptr @current_info, align 8, !tbaa !502
  %6 = getelementptr inbounds %struct.vn_tables_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !694
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef %0, i32 noundef %4, i32 noundef 0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20, !prof !696

10:                                               ; preds = %2
  %11 = load ptr, ptr @current_info, align 8, !tbaa !502
  %12 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %28, !prof !697

14:                                               ; preds = %10
  %15 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !694
  %18 = tail call ptr @htab_find_slot_with_hash(ptr noundef %17, ptr noundef nonnull %0, i32 noundef %4, i32 noundef 0) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20, !prof !698

20:                                               ; preds = %2, %14
  %21 = phi ptr [ %18, %14 ], [ %8, %2 ]
  %22 = icmp eq ptr %1, null
  %23 = load ptr, ptr %21, align 8, !tbaa !502
  br i1 %22, label %25, label %24, !prof !699

24:                                               ; preds = %20
  store ptr %23, ptr %1, align 8, !tbaa !502
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.vn_reference_s, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !676
  br label %28

28:                                               ; preds = %10, %14, %25
  %29 = phi ptr [ %27, %25 ], [ null, %14 ], [ null, %10 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @walk_non_aliased_vuses(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vn_reference_lookup_2(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 !prof !700 !PGOFuncName !701 {
  %4 = load ptr, ptr @last_vuse_ptr, align 8, !tbaa !502
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !702

6:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !583
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !703

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !601
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !497
  %16 = sub i32 %13, %15
  store i32 %16, ptr %12, align 4, !tbaa !601
  br label %17

17:                                               ; preds = %11, %7
  %18 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !528
  store ptr %19, ptr %8, align 8, !tbaa !583
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !601
  br i1 %20, label %27, label %23, !prof !703

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !497
  %26 = add i32 %25, %22
  store i32 %26, ptr %21, align 4, !tbaa !601
  br label %27

27:                                               ; preds = %17, %23
  %28 = phi i32 [ %26, %23 ], [ %22, %17 ]
  %29 = load ptr, ptr @current_info, align 8, !tbaa !502
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !694
  %32 = tail call ptr @htab_find_slot_with_hash(ptr noundef %31, ptr noundef nonnull %2, i32 noundef %28, i32 noundef 0) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %44, !prof !704

34:                                               ; preds = %27
  %35 = load ptr, ptr @current_info, align 8, !tbaa !502
  %36 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %47, !prof !705

38:                                               ; preds = %34
  %39 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %40 = getelementptr inbounds %struct.vn_tables_s, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !694
  %42 = tail call ptr @htab_find_slot_with_hash(ptr noundef %41, ptr noundef nonnull %2, i32 noundef %28, i32 noundef 0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !706

44:                                               ; preds = %27, %38
  %45 = phi ptr [ %42, %38 ], [ %32, %27 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !502
  br label %47

47:                                               ; preds = %34, %38, %44
  %48 = phi ptr [ %46, %44 ], [ null, %38 ], [ null, %34 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @vn_reference_lookup_3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !707 !PGOFuncName !708 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.ao_ref_s, align 8
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !497
  %19 = tail call ptr @ao_ref_base(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !647
  %22 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !649
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %255, label %25, !prof !709

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !670
  %28 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %27) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %95, label %30, !prof !710

30:                                               ; preds = %25
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %18) #19, !range !534
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %95, label %33, !prof !710

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %18) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %95, label %36, !prof !710

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_function_decl, ptr %34, i64 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 6144
  %40 = icmp eq i32 %39, 6144
  br i1 %40, label %41, label %95, !prof !710

41:                                               ; preds = %36
  %42 = and i32 %38, 2047
  %43 = icmp eq i32 %42, 333
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 1) #19
  %46 = tail call i32 @integer_zerop(ptr noundef %45) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %95, label %48

48:                                               ; preds = %44
  %49 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 2) #19
  %50 = tail call i32 @host_integerp(ptr noundef %49, i32 noundef 1) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %95, label %52

52:                                               ; preds = %48
  %53 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 0) #19
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 121
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 0) #19
  %59 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !497
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %61 = call ptr @get_ref_base_and_extent(ptr noundef %60, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %62 = call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 2) #19
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !497
  %65 = shl i64 %64, 3
  store i64 %65, ptr %5, align 8, !tbaa !711
  %66 = and i64 %64, 2305843009213693951
  %67 = call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 2) #19
  %68 = getelementptr inbounds %struct.tree_int_cst, ptr %67, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !497
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %57
  %72 = call i32 @operand_equal_p(ptr noundef %19, ptr noundef %61, i32 noundef 0) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i64, ptr %4, align 8, !tbaa !711
  %76 = icmp sgt i64 %75, %21
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %5, align 8, !tbaa !711
  %79 = add nsw i64 %78, %75
  %80 = add nsw i64 %23, %21
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %74, %71, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %255

83:                                               ; preds = %77
  %84 = load ptr, ptr %26, align 8, !tbaa !670
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !502
  %86 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %84, ptr noundef %85) #20
  %87 = call i32 @get_or_alloc_constant_value_id(ptr noundef %86) #19
  %88 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !671
  %90 = load ptr, ptr %26, align 8, !tbaa !670
  %91 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !576
  %93 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %92) #19
  %94 = call ptr @vn_reference_insert_pieces(ptr noundef nonnull %1, i32 noundef %89, ptr noundef %90, ptr noundef %93, ptr noundef %86, i32 noundef %87) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %255

95:                                               ; preds = %52, %48, %44, %41, %36, %33, %30, %25
  %96 = load ptr, ptr %26, align 8, !tbaa !670
  %97 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %96) #20
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %144, label %99, !prof !710

99:                                               ; preds = %95
  %100 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #20
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %144, label %102, !prof !712

102:                                              ; preds = %99
  %103 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #19, !range !539
  %104 = icmp eq i32 %103, 51
  br i1 %104, label %105, label %144

105:                                              ; preds = %102
  %106 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %107 = getelementptr inbounds %struct.tree_constructor, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !497
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %112 = getelementptr inbounds %struct.tree_constructor, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !497
  br label %114

114:                                              ; preds = %105, %110
  %115 = phi ptr [ %113, %110 ], [ null, %105 ]
  %116 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %115) #19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %119 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  %120 = call ptr @get_ref_base_and_extent(ptr noundef %119, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %121 = call i32 @operand_equal_p(ptr noundef %19, ptr noundef %120, i32 noundef 0) #20
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load i64, ptr %7, align 8, !tbaa !711
  %125 = icmp sgt i64 %124, %21
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i64, ptr %8, align 8, !tbaa !711
  %128 = add nsw i64 %127, %124
  %129 = add nsw i64 %23, %21
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %123, %118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %255

132:                                              ; preds = %126
  %133 = load ptr, ptr %26, align 8, !tbaa !670
  %134 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !502
  %135 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %133, ptr noundef %134) #20
  %136 = call i32 @get_or_alloc_constant_value_id(ptr noundef %135) #19
  %137 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !671
  %139 = load ptr, ptr %26, align 8, !tbaa !670
  %140 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %141 = load ptr, ptr %140, align 8, !tbaa !576
  %142 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %141) #19
  %143 = call ptr @vn_reference_insert_pieces(ptr noundef nonnull %1, i32 noundef %138, ptr noundef %139, ptr noundef %142, ptr noundef %135, i32 noundef %136) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %255

144:                                              ; preds = %114, %102, %99, %95
  %145 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #20
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %255, label %147, !prof !712

147:                                              ; preds = %144
  %148 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !540
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %173, label %154

154:                                              ; preds = %147
  %155 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 47
  br i1 %158, label %173, label %159

159:                                              ; preds = %154
  %160 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 48
  br i1 %163, label %173, label %164

164:                                              ; preds = %159
  %165 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 49
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %171 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %170) #19, !range !534
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %255, label %173

173:                                              ; preds = %169, %164, %159, %154, %147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #21
  %174 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  %175 = call ptr @get_ref_base_and_extent(ptr noundef %174, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %176 = call i32 @operand_equal_p(ptr noundef %19, ptr noundef %175, i32 noundef 0) #20
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %253, label %178

178:                                              ; preds = %173
  %179 = load i64, ptr %10, align 8, !tbaa !711
  %180 = icmp sgt i64 %179, %21
  br i1 %180, label %253, label %181

181:                                              ; preds = %178
  %182 = load i64, ptr %11, align 8, !tbaa !711
  %183 = add nsw i64 %182, %179
  %184 = add nsw i64 %23, %21
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %253, label %186

186:                                              ; preds = %181
  %187 = call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  call void @copy_reference_ops_from_ref(ptr noundef %187, ptr noundef nonnull %13) #19
  %188 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !576
  %190 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %189) #19
  %191 = load ptr, ptr %13, align 8
  %192 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %191) #19
  br label %193

193:                                              ; preds = %201, %186
  %194 = phi i32 [ %190, %186 ], [ %197, %201 ]
  %195 = phi i32 [ %192, %186 ], [ %196, %201 ]
  %196 = add i32 %195, -1
  %197 = add i32 %194, -1
  %198 = icmp sgt i32 %196, -1
  %199 = icmp sgt i32 %197, -1
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load ptr, ptr %188, align 8, !tbaa !576
  %203 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %202, i32 noundef %197) #19
  %204 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %191, i32 noundef %196) #19
  %205 = call fastcc i32 @vn_reference_op_eq(ptr noundef nonnull %203, ptr noundef nonnull %204) #19, !range !578
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %193, !llvm.loop !713

207:                                              ; preds = %201
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %13) #19
  br label %253

208:                                              ; preds = %193
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %13) #19
  %209 = icmp eq i32 %195, 0
  br i1 %209, label %210, label %253

210:                                              ; preds = %208
  %211 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  call void @copy_reference_ops_from_ref(ptr noundef %211, ptr noundef nonnull %14) #19
  %212 = load ptr, ptr %14, align 8
  %213 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %212) #19
  %214 = add i32 %213, %194
  %215 = load ptr, ptr %188, align 8, !tbaa !576
  %216 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %215) #19
  %217 = icmp ugt i32 %214, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %210
  call fastcc void @VEC_vn_reference_op_s_heap_safe_grow(ptr noundef nonnull %188, i32 noundef %214) #19
  %219 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !502
  %220 = icmp eq ptr %215, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load ptr, ptr %188, align 8, !tbaa !576
  %223 = icmp eq ptr %222, %215
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !502
  br label %226

225:                                              ; preds = %210
  call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %215, i32 noundef %214) #19
  br label %226

226:                                              ; preds = %218, %221, %224, %225
  %227 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %212, i32 noundef 0, ptr noundef nonnull %15) #19, !range !578
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %226, %229
  %230 = phi i32 [ %234, %229 ], [ 0, %226 ]
  %231 = load ptr, ptr %188, align 8, !tbaa !576
  %232 = add nsw i32 %230, %194
  %233 = load ptr, ptr %15, align 8, !tbaa !502
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %231, i32 noundef %232, ptr noundef %233) #19
  %234 = add nuw nsw i32 %230, 1
  %235 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %212, i32 noundef %234, ptr noundef nonnull %15) #19, !range !578
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %229, !llvm.loop !714

237:                                              ; preds = %229, %226
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %14) #19
  %238 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %2) #19
  %239 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  store i32 %238, ptr %239, align 4, !tbaa !601
  %240 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %241 = load i32, ptr %240, align 8, !tbaa !671
  %242 = load ptr, ptr %26, align 8, !tbaa !670
  %243 = load ptr, ptr %188, align 8, !tbaa !576
  %244 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %16, i32 noundef %241, ptr noundef %242, ptr noundef %243) #19, !range !534
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %248 = load i64, ptr %247, align 8, !tbaa !648
  %249 = getelementptr inbounds %struct.ao_ref_s, ptr %16, i64 0, i32 3
  %250 = load i64, ptr %249, align 8, !tbaa !648
  %251 = icmp eq i64 %248, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %16, i64 48, i1 false), !tbaa.struct !715
  store ptr null, ptr @last_vuse_ptr, align 8, !tbaa !502
  br label %253

253:                                              ; preds = %207, %246, %237, %208, %173, %178, %181, %252
  %254 = phi ptr [ null, %252 ], [ inttoptr (i64 -1 to ptr), %181 ], [ inttoptr (i64 -1 to ptr), %178 ], [ inttoptr (i64 -1 to ptr), %173 ], [ inttoptr (i64 -1 to ptr), %208 ], [ inttoptr (i64 -1 to ptr), %237 ], [ inttoptr (i64 -1 to ptr), %246 ], [ inttoptr (i64 -1 to ptr), %207 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %255

255:                                              ; preds = %144, %169, %82, %131, %132, %83, %3, %253
  %256 = phi ptr [ %94, %83 ], [ %143, %132 ], [ %254, %253 ], [ inttoptr (i64 -1 to ptr), %3 ], [ inttoptr (i64 -1 to ptr), %131 ], [ inttoptr (i64 -1 to ptr), %82 ], [ inttoptr (i64 -1 to ptr), %169 ], [ inttoptr (i64 -1 to ptr), %144 ]
  ret ptr %256
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_reference_lookup(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 !prof !716 {
  %5 = alloca %struct.vn_reference_s, align 8
  %6 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #21
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8, !prof !717

8:                                                ; preds = %4
  store ptr null, ptr %3, align 8, !tbaa !502
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11, !prof !718

11:                                               ; preds = %9
  %12 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !528
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !583
  %17 = tail call fastcc ptr @valueize_shared_reference_ops_from_ref(ptr noundef %0) #19
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !576
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !497
  %21 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !670
  %22 = tail call i32 @get_alias_set(ptr noundef %0) #20
  %23 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !671
  %24 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %5) #19
  %25 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !601
  %26 = icmp ne i8 %2, 0
  %27 = icmp ne ptr %15, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %44, !prof !719

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #21
  call void @ao_ref_init(ptr noundef nonnull %6, ptr noundef nonnull %0) #20
  %30 = load ptr, ptr %16, align 8, !tbaa !583
  %31 = call ptr @walk_non_aliased_vuses(ptr noundef nonnull %6, ptr noundef %30, ptr noundef nonnull @vn_reference_lookup_2, ptr noundef nonnull @vn_reference_lookup_3, ptr noundef nonnull %5) #20
  %32 = load ptr, ptr %18, align 8, !tbaa !576
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %35, label %34, !prof !720

34:                                               ; preds = %29
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %18) #19
  br label %35

35:                                               ; preds = %34, %29
  %36 = icmp eq ptr %31, null
  br i1 %36, label %42, label %37, !prof !721

37:                                               ; preds = %35
  br i1 %7, label %39, label %38, !prof !722

38:                                               ; preds = %37
  store ptr %31, ptr %3, align 8, !tbaa !502
  br label %39

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct.vn_reference_s, ptr %31, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !676
  br label %42

42:                                               ; preds = %35, %39
  %43 = phi ptr [ %41, %39 ], [ null, %35 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #21
  br label %46

44:                                               ; preds = %14
  %45 = call fastcc ptr @vn_reference_lookup_1(ptr noundef nonnull %5, ptr noundef %3) #19
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #21
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @valueize_shared_reference_ops_from_ref(ptr noundef %0) unnamed_addr #0 !prof !716 !PGOFuncName !723 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !718

3:                                                ; preds = %1
  %4 = load ptr, ptr @shared_lookup_references, align 8
  tail call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %4, i32 noundef 0) #19
  tail call void @copy_reference_ops_from_ref(ptr noundef nonnull %0, ptr noundef nonnull @shared_lookup_references) #19
  %5 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !502
  %6 = tail call fastcc ptr @valueize_refs(ptr noundef %5) #19
  store ptr %6, ptr @shared_lookup_references, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_reference_insert(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !724 {
  %4 = load ptr, ptr @current_info, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !725
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %15, !prof !726

11:                                               ; preds = %3
  %12 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %13 = getelementptr inbounds %struct.vn_ssa_aux, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !727
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef nonnull %1) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %14, %11 ]
  store i32 %18, ptr %7, align 8, !tbaa !728
  %19 = icmp eq ptr %2, null
  br i1 %19, label %23, label %20, !prof !729

20:                                               ; preds = %17
  %21 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %22 = load ptr, ptr %21, align 8, !tbaa !528
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !583
  %26 = tail call fastcc ptr @create_reference_ops_from_ref(ptr noundef %0) #19
  %27 = tail call fastcc ptr @valueize_refs(ptr noundef %26) #19
  %28 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !576
  %29 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !497
  %31 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !670
  %32 = tail call i32 @get_alias_set(ptr noundef %0) #20
  %33 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !671
  %34 = tail call i32 @vn_reference_compute_hash(ptr noundef nonnull %7) #19
  %35 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !601
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %43, !prof !726

39:                                               ; preds = %23
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %41 = load ptr, ptr %40, align 8, !tbaa !528
  %42 = load i32, ptr %35, align 4, !tbaa !601
  br label %43

43:                                               ; preds = %23, %39
  %44 = phi i32 [ %42, %39 ], [ %34, %23 ]
  %45 = phi ptr [ %41, %39 ], [ %1, %23 ]
  %46 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 6
  store ptr %45, ptr %46, align 8, !tbaa !676
  %47 = load ptr, ptr @current_info, align 8, !tbaa !502
  %48 = getelementptr inbounds %struct.vn_tables_s, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !694
  %50 = tail call ptr @htab_find_slot_with_hash(ptr noundef %49, ptr noundef nonnull %7, i32 noundef %44, i32 noundef 1) #20
  %51 = load ptr, ptr %50, align 8, !tbaa !502
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !726

53:                                               ; preds = %43
  tail call void @free_reference(ptr noundef nonnull %51) #19
  br label %54

54:                                               ; preds = %53, %43
  store ptr %7, ptr %50, align 8, !tbaa !502
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_reference_ops_from_ref(ptr noundef %0) unnamed_addr #0 !prof !724 !PGOFuncName !730 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !502
  call void @copy_reference_ops_from_ref(ptr noundef %0, ptr noundef nonnull %2) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !502
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @free_reference(ptr nocapture noundef %0) #8 !prof !731 !PGOFuncName !732 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vn_reference_insert_pieces(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !733 {
  %7 = load ptr, ptr @current_info, align 8, !tbaa !502
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !725
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #20
  store i32 %5, ptr %10, align 8, !tbaa !728
  %11 = icmp eq ptr %0, null
  br i1 %11, label %15, label %12, !prof !673

12:                                               ; preds = %6
  %13 = tail call ptr @VN_INFO(ptr noundef nonnull %0) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !528
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ null, %6 ]
  %17 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !583
  %18 = tail call fastcc ptr @valueize_refs(ptr noundef %3) #19
  %19 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !576
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 4
  store ptr %2, ptr %20, align 8, !tbaa !670
  %21 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 3
  store i32 %1, ptr %21, align 8, !tbaa !671
  %22 = tail call i32 @vn_reference_compute_hash(ptr noundef nonnull %10) #19
  %23 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !601
  %24 = icmp eq ptr %4, null
  br i1 %24, label %33, label %25, !prof !674

25:                                               ; preds = %15
  %26 = load i64, ptr %4, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = tail call ptr @VN_INFO(ptr noundef nonnull %4) #19
  %31 = load ptr, ptr %30, align 8, !tbaa !528
  %32 = load i32, ptr %23, align 4, !tbaa !601
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = phi i32 [ %32, %29 ], [ %22, %25 ], [ %22, %15 ]
  %35 = phi ptr [ %31, %29 ], [ %4, %25 ], [ null, %15 ]
  %36 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 6
  store ptr %35, ptr %36, align 8, !tbaa !676
  %37 = load ptr, ptr @current_info, align 8, !tbaa !502
  %38 = getelementptr inbounds %struct.vn_tables_s, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !694
  %40 = tail call ptr @htab_find_slot_with_hash(ptr noundef %39, ptr noundef nonnull %10, i32 noundef %34, i32 noundef 1) #20
  %41 = load ptr, ptr %40, align 8, !tbaa !502
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43, !prof !674

43:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1355, ptr noundef nonnull @.str.1) #20
  %44 = load ptr, ptr %40, align 8, !tbaa !502
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !643

46:                                               ; preds = %43
  tail call void @free_reference(ptr noundef nonnull %44) #19
  br label %47

47:                                               ; preds = %33, %46, %43
  store ptr %10, ptr %40, align 8, !tbaa !502
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vn_nary_op_compute_hash(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !734 {
  %2 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = icmp ult i32 %3, 65536
  br i1 %5, label %24, label %6, !prof !735

6:                                                ; preds = %1, %18
  %7 = phi i32 [ %19, %18 ], [ %3, %1 ]
  %8 = phi i64 [ %20, %18 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !502
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %18, !prof !736

14:                                               ; preds = %6
  %15 = tail call ptr @VN_INFO(ptr noundef nonnull %10) #19
  %16 = load ptr, ptr %15, align 8, !tbaa !528
  store ptr %16, ptr %9, align 8, !tbaa !502
  %17 = load i32, ptr %2, align 4
  br label %18

18:                                               ; preds = %6, %14
  %19 = phi i32 [ %7, %6 ], [ %17, %14 ]
  %20 = add nuw nsw i64 %8, 1
  %21 = lshr i32 %19, 16
  %22 = zext nneg i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %6, label %24, !prof !737, !llvm.loop !738

24:                                               ; preds = %18, %1
  %25 = phi i32 [ %3, %1 ], [ %19, %18 ]
  %26 = phi i32 [ %4, %1 ], [ %21, %18 ]
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %42, !prof !739

28:                                               ; preds = %24
  %29 = and i32 %25, 65535
  %30 = tail call zeroext i8 @commutative_tree_code(i32 noundef %29) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32, !prof !740

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !502
  %35 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !502
  %37 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %34, ptr noundef %36, i8 noundef zeroext 0) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39, !prof !741

39:                                               ; preds = %32
  %40 = load <2 x ptr>, ptr %33, align 8, !tbaa !502
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %41, ptr %33, align 8, !tbaa !502
  br label %42

42:                                               ; preds = %39, %32, %28, %24
  %43 = load i32, ptr %2, align 4
  %44 = and i32 %43, 65535
  %45 = tail call i32 @iterative_hash_hashval_t(i32 noundef %44, i32 noundef 0) #20
  %46 = load i32, ptr %2, align 4
  %47 = icmp ult i32 %46, 65536
  br i1 %47, label %59, label %48, !prof !735

48:                                               ; preds = %42, %48
  %49 = phi i64 [ %54, %48 ], [ 0, %42 ]
  %50 = phi i32 [ %53, %48 ], [ %45, %42 ]
  %51 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !502
  %53 = tail call i32 @iterative_hash_expr(ptr noundef %52, i32 noundef %50) #20
  %54 = add nuw nsw i64 %49, 1
  %55 = load i32, ptr %2, align 4
  %56 = lshr i32 %55, 16
  %57 = zext nneg i32 %56 to i64
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %48, label %59, !prof !737, !llvm.loop !742

59:                                               ; preds = %48, %42
  %60 = phi i32 [ %45, %42 ], [ %53, %48 ]
  ret i32 %60
}

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vn_nary_op_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !743 {
  %3 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !744
  %5 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !744
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %40, !prof !746

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %10
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40, !prof !747

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !748
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !748
  %21 = tail call zeroext i8 @types_compatible_p(ptr noundef %18, ptr noundef %20) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23, !prof !749

23:                                               ; preds = %16
  %24 = load i32, ptr %9, align 4
  %25 = icmp ult i32 %24, 65536
  br i1 %25, label %40, label %32, !prof !750

26:                                               ; preds = %32
  %27 = add nuw nsw i64 %33, 1
  %28 = load i32, ptr %9, align 4
  %29 = lshr i32 %28, 16
  %30 = zext nneg i32 %29 to i64
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %40, !prof !751, !llvm.loop !752

32:                                               ; preds = %23, %26
  %33 = phi i64 [ %27, %26 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !502
  %36 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 5, i64 %33
  %37 = load ptr, ptr %36, align 8, !tbaa !502
  %38 = tail call zeroext i8 @expressions_equal_p(ptr noundef %35, ptr noundef %37) #19, !range !534
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %26, !prof !753

40:                                               ; preds = %32, %26, %23, %8, %16, %2
  %41 = phi i32 [ 0, %2 ], [ 0, %16 ], [ 0, %8 ], [ 1, %23 ], [ 0, %32 ], [ 1, %26 ]
  ret i32 %41
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !754 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %18, label %4, !prof !755

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %18, !prof !756

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = load i64, ptr %1, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17, !prof !757

14:                                               ; preds = %8
  %15 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !758

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %14, %4, %2, %17
  %19 = phi i8 [ 0, %17 ], [ 1, %2 ], [ 0, %4 ], [ 1, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_lookup_pieces(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7) local_unnamed_addr #0 !prof !759 {
  %9 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #21
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11, !prof !760

11:                                               ; preds = %8
  store ptr null, ptr %7, align 8, !tbaa !502
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 1
  %14 = and i32 %1, 65535
  %15 = shl i32 %0, 16
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 4
  store ptr %2, ptr %17, align 8, !tbaa !748
  %18 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5
  store ptr %3, ptr %18, align 8, !tbaa !502
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 1
  store ptr %4, ptr %19, align 8, !tbaa !502
  %20 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 2
  store ptr %5, ptr %20, align 8, !tbaa !502
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 3
  store ptr %6, ptr %21, align 8, !tbaa !502
  %22 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %9) #19
  %23 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 2
  store i32 %22, ptr %23, align 8, !tbaa !744
  %24 = load ptr, ptr @current_info, align 8, !tbaa !502
  %25 = load ptr, ptr %24, align 8, !tbaa !761
  %26 = call ptr @htab_find_slot_with_hash(ptr noundef %25, ptr noundef nonnull %9, i32 noundef %22, i32 noundef 0) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %38, !prof !762

28:                                               ; preds = %12
  %29 = load ptr, ptr @current_info, align 8, !tbaa !502
  %30 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %45, !prof !763

32:                                               ; preds = %28
  %33 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %34 = load ptr, ptr %33, align 8, !tbaa !761
  %35 = load i32, ptr %23, align 8, !tbaa !744
  %36 = call ptr @htab_find_slot_with_hash(ptr noundef %34, ptr noundef nonnull %9, i32 noundef %35, i32 noundef 0) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38, !prof !764

38:                                               ; preds = %12, %32
  %39 = phi ptr [ %36, %32 ], [ %26, %12 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !502
  br i1 %10, label %42, label %41, !prof !765

41:                                               ; preds = %38
  store ptr %40, ptr %7, align 8, !tbaa !502
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !766
  br label %45

45:                                               ; preds = %28, %32, %42
  %46 = phi ptr [ %44, %42 ], [ null, %32 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_lookup(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 !prof !652 {
  %3 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !502
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %11 = and i64 %7, 65535
  %12 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !497
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %9
  store i32 %16, ptr %10, align 4
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !497
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !748
  %20 = icmp eq i8 %13, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds i8, ptr %3, i64 32
  %23 = getelementptr i8, ptr %0, i64 40
  %24 = zext i8 %13 to i64
  %25 = shl nuw nsw i64 %24, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %22, ptr align 8 %23, i64 %25, i1 false), !tbaa !497
  br label %26

26:                                               ; preds = %21, %6
  %27 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %3) #19
  %28 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !744
  %29 = load ptr, ptr @current_info, align 8, !tbaa !502
  %30 = load ptr, ptr %29, align 8, !tbaa !761
  %31 = call ptr @htab_find_slot_with_hash(ptr noundef %30, ptr noundef nonnull %3, i32 noundef %27, i32 noundef 0) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load ptr, ptr @current_info, align 8, !tbaa !502
  %35 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %39 = load ptr, ptr %38, align 8, !tbaa !761
  %40 = load i32, ptr %28, align 8, !tbaa !744
  %41 = call ptr @htab_find_slot_with_hash(ptr noundef %39, ptr noundef nonnull %3, i32 noundef %40, i32 noundef 0) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %26, %37
  %44 = phi ptr [ %41, %37 ], [ %31, %26 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !502
  br i1 %4, label %47, label %46

46:                                               ; preds = %43
  store ptr %45, ptr %1, align 8, !tbaa !502
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.vn_nary_op_s, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !766
  br label %50

50:                                               ; preds = %33, %37, %47
  %51 = phi ptr [ %49, %47 ], [ null, %37 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_lookup_stmt(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 !prof !767 {
  %3 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !768

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !502
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %8 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %9 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %10 = shl i32 %9, 16
  %11 = add i32 %10, -65536
  %12 = or disjoint i32 %11, %7
  store i32 %12, ptr %8, align 4
  %13 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %14 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !748
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %27, label %16, !prof !769

16:                                               ; preds = %6
  %17 = lshr exact i32 %11, 16
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 1)
  %19 = zext nneg i32 %18 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %22, %20 ]
  %22 = add nuw nsw i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %23) #19
  %25 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5, i64 %21
  store ptr %24, ptr %25, align 8, !tbaa !502
  %26 = icmp eq i64 %22, %19
  br i1 %26, label %27, label %20, !prof !770, !llvm.loop !771

27:                                               ; preds = %20, %6
  %28 = trunc i32 %7 to i16
  switch i16 %28, label %34 [
    i16 43, label %29
    i16 44, label %29
    i16 118, label %29
  ], !prof !772

29:                                               ; preds = %27, %27, %27
  %30 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !502
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !497
  store ptr %33, ptr %30, align 8, !tbaa !502
  br label %34

34:                                               ; preds = %27, %29
  %35 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %3) #19
  %36 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !744
  %37 = load ptr, ptr @current_info, align 8, !tbaa !502
  %38 = load ptr, ptr %37, align 8, !tbaa !761
  %39 = call ptr @htab_find_slot_with_hash(ptr noundef %38, ptr noundef nonnull %3, i32 noundef %35, i32 noundef 0) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %51, !prof !773

41:                                               ; preds = %34
  %42 = load ptr, ptr @current_info, align 8, !tbaa !502
  %43 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %58, !prof !774

45:                                               ; preds = %41
  %46 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %47 = load ptr, ptr %46, align 8, !tbaa !761
  %48 = load i32, ptr %36, align 8, !tbaa !744
  %49 = call ptr @htab_find_slot_with_hash(ptr noundef %47, ptr noundef nonnull %3, i32 noundef %48, i32 noundef 0) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51, !prof !775

51:                                               ; preds = %34, %45
  %52 = phi ptr [ %49, %45 ], [ %39, %34 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !502
  br i1 %4, label %55, label %54, !prof !776

54:                                               ; preds = %51
  store ptr %53, ptr %1, align 8, !tbaa !502
  br label %55

55:                                               ; preds = %54, %51
  %56 = getelementptr inbounds %struct.vn_nary_op_s, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !766
  br label %58

58:                                               ; preds = %41, %45, %55
  %59 = phi ptr [ %57, %55 ], [ null, %45 ], [ null, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !777 !PGOFuncName !778 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !497
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !779 !PGOFuncName !780 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !534
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !781

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !502
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_insert_pieces(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !782 {
  %10 = sub i32 4, %0
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = sub nsw i64 64, %12
  %14 = load ptr, ptr @current_info, align 8, !tbaa !502
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 5
  store i64 %13, ptr %15, align 8, !tbaa !783
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !784
  %18 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !785
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, %13
  br i1 %23, label %24, label %32, !prof !786

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3
  %26 = trunc i64 %13 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %25, i32 noundef %26) #20
  %27 = load ptr, ptr @current_info, align 8, !tbaa !502
  %28 = getelementptr inbounds %struct.vn_tables_s, ptr %27, i64 0, i32 3, i32 5
  %29 = load i64, ptr %28, align 8, !tbaa !783
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %27, i64 0, i32 3, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !785
  br label %32

32:                                               ; preds = %9, %24
  %33 = phi ptr [ %19, %9 ], [ %31, %24 ]
  %34 = phi i64 [ %13, %9 ], [ %29, %24 ]
  %35 = phi ptr [ %14, %9 ], [ %27, %24 ]
  %36 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 5
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 3
  %38 = getelementptr inbounds i8, ptr %33, i64 %34
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !787
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %46, !prof !763

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 10
  %44 = load i8, ptr %43, align 8
  %45 = or i8 %44, 2
  store i8 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %32, %42
  %47 = ptrtoint ptr %40 to i64
  store i64 %47, ptr %36, align 8, !tbaa !783
  %48 = ptrtoint ptr %38 to i64
  %49 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !788
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %48
  %53 = xor i32 %50, -1
  %54 = sext i32 %53 to i64
  %55 = and i64 %52, %54
  %56 = inttoptr i64 %55 to ptr
  store ptr %56, ptr %37, align 8, !tbaa !785
  %57 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !789
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %55, %59
  %61 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !784
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %63, %59
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %67, !prof !763

66:                                               ; preds = %46
  store ptr %62, ptr %37, align 8, !tbaa !785
  br label %67

67:                                               ; preds = %46, %66
  %68 = phi ptr [ %56, %46 ], [ %62, %66 ]
  store ptr %68, ptr %39, align 8, !tbaa !787
  store i32 %8, ptr %40, align 8, !tbaa !790
  %69 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 1
  %70 = and i32 %1, 65535
  %71 = shl i32 %0, 16
  %72 = or disjoint i32 %70, %71
  store i32 %72, ptr %69, align 4
  %73 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 4
  store ptr %2, ptr %73, align 8, !tbaa !748
  %74 = icmp eq i32 %0, 0
  br i1 %74, label %86, label %75, !prof !763

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5
  store ptr %3, ptr %76, align 8, !tbaa !502
  %77 = icmp eq i32 %0, 1
  br i1 %77, label %86, label %78, !prof !791

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 1
  store ptr %4, ptr %79, align 8, !tbaa !502
  %80 = icmp ugt i32 %0, 2
  br i1 %80, label %81, label %86, !prof !792

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 2
  store ptr %5, ptr %82, align 8, !tbaa !502
  %83 = icmp eq i32 %0, 3
  br i1 %83, label %86, label %84, !prof !793

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 3
  store ptr %6, ptr %85, align 8, !tbaa !502
  br label %86

86:                                               ; preds = %67, %75, %78, %84, %81
  %87 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 3
  store ptr %7, ptr %87, align 8, !tbaa !766
  %88 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %40) #19
  %89 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 2
  store i32 %88, ptr %89, align 8, !tbaa !744
  %90 = load ptr, ptr @current_info, align 8, !tbaa !502
  %91 = load ptr, ptr %90, align 8, !tbaa !761
  %92 = tail call ptr @htab_find_slot_with_hash(ptr noundef %91, ptr noundef nonnull %40, i32 noundef %88, i32 noundef 1) #20
  %93 = load ptr, ptr %92, align 8, !tbaa !502
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !794

95:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1561, ptr noundef nonnull @.str.1) #20
  br label %96

96:                                               ; preds = %86, %95
  store ptr %40, ptr %92, align 8, !tbaa !502
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_insert(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !652 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !497
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 4, %7
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = sub nsw i64 64, %10
  %12 = load ptr, ptr @current_info, align 8, !tbaa !502
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 5
  store i64 %11, ptr %13, align 8, !tbaa !783
  %14 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !784
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !785
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3
  %24 = trunc i64 %11 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %23, i32 noundef %24) #20
  %25 = load ptr, ptr @current_info, align 8, !tbaa !502
  %26 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !783
  %28 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !785
  br label %30

30:                                               ; preds = %2, %22
  %31 = phi ptr [ %17, %2 ], [ %29, %22 ]
  %32 = phi i64 [ %11, %2 ], [ %27, %22 ]
  %33 = phi ptr [ %12, %2 ], [ %25, %22 ]
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 5
  %35 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 3
  %36 = getelementptr inbounds i8, ptr %31, i64 %32
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !787
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 10
  %42 = load i8, ptr %41, align 8
  %43 = or i8 %42, 2
  store i8 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %30, %40
  %45 = ptrtoint ptr %38 to i64
  store i64 %45, ptr %34, align 8, !tbaa !783
  %46 = ptrtoint ptr %36 to i64
  %47 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !788
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %46
  %51 = xor i32 %48, -1
  %52 = sext i32 %51 to i64
  %53 = and i64 %50, %52
  %54 = inttoptr i64 %53 to ptr
  store ptr %54, ptr %35, align 8, !tbaa !785
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !789
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %53, %57
  %59 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !784
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %61, %57
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  store ptr %60, ptr %35, align 8, !tbaa !785
  br label %65

65:                                               ; preds = %44, %64
  %66 = phi ptr [ %54, %44 ], [ %60, %64 ]
  store ptr %66, ptr %37, align 8, !tbaa !787
  %67 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %68 = getelementptr inbounds %struct.vn_ssa_aux, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !727
  store i32 %69, ptr %38, align 8, !tbaa !790
  %70 = load i64, ptr %0, align 8
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 65535
  %73 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 1
  %74 = shl nuw nsw i32 %7, 16
  %75 = or disjoint i32 %72, %74
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !497
  %78 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 4
  store ptr %77, ptr %78, align 8, !tbaa !748
  %79 = icmp eq i8 %6, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %65
  %81 = zext i8 %6 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ 0, %80 ], [ %87, %82 ]
  %84 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !497
  %86 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 5, i64 %83
  store ptr %85, ptr %86, align 8, !tbaa !502
  %87 = add nuw nsw i64 %83, 1
  %88 = icmp ult i64 %87, %81
  br i1 %88, label %82, label %89, !llvm.loop !795

89:                                               ; preds = %82, %65
  %90 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 3
  store ptr %1, ptr %90, align 8, !tbaa !766
  %91 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %38) #19
  %92 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !744
  %93 = load ptr, ptr @current_info, align 8, !tbaa !502
  %94 = load ptr, ptr %93, align 8, !tbaa !761
  %95 = tail call ptr @htab_find_slot_with_hash(ptr noundef %94, ptr noundef nonnull %38, i32 noundef %91, i32 noundef 1) #20
  %96 = load ptr, ptr %95, align 8, !tbaa !502
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1593, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %89, %98
  store ptr %38, ptr %95, align 8, !tbaa !502
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_insert_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !796 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %4 = sub i32 5, %3
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = sub nsw i64 64, %6
  %8 = load ptr, ptr @current_info, align 8, !tbaa !502
  %9 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3, i32 5
  store i64 %7, ptr %9, align 8, !tbaa !783
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !784
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !785
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %7
  br i1 %17, label %18, label %26, !prof !797

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3
  %20 = trunc i64 %7 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %19, i32 noundef %20) #20
  %21 = load ptr, ptr @current_info, align 8, !tbaa !502
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %21, i64 0, i32 3, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !783
  %24 = getelementptr inbounds %struct.vn_tables_s, ptr %21, i64 0, i32 3, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !785
  br label %26

26:                                               ; preds = %2, %18
  %27 = phi ptr [ %13, %2 ], [ %25, %18 ]
  %28 = phi i64 [ %7, %2 ], [ %23, %18 ]
  %29 = phi ptr [ %8, %2 ], [ %21, %18 ]
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 5
  %31 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 3
  %32 = getelementptr inbounds i8, ptr %27, i64 %28
  %33 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !787
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %40, !prof !774

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 10
  %38 = load i8, ptr %37, align 8
  %39 = or i8 %38, 2
  store i8 %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %26, %36
  %41 = ptrtoint ptr %34 to i64
  store i64 %41, ptr %30, align 8, !tbaa !783
  %42 = ptrtoint ptr %32 to i64
  %43 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !788
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %42
  %47 = xor i32 %44, -1
  %48 = sext i32 %47 to i64
  %49 = and i64 %46, %48
  %50 = inttoptr i64 %49 to ptr
  store ptr %50, ptr %31, align 8, !tbaa !785
  %51 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !789
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %49, %53
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !784
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %57, %53
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %61, !prof !774

60:                                               ; preds = %40
  store ptr %56, ptr %31, align 8, !tbaa !785
  br label %61

61:                                               ; preds = %40, %60
  %62 = phi ptr [ %50, %40 ], [ %56, %60 ]
  store ptr %62, ptr %33, align 8, !tbaa !787
  %63 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %64 = getelementptr inbounds %struct.vn_ssa_aux, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !727
  store i32 %65, ptr %34, align 8, !tbaa !790
  %66 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 1
  %68 = shl i32 %3, 16
  %69 = add i32 %68, -65536
  %70 = or disjoint i32 %66, %69
  store i32 %70, ptr %67, align 4
  %71 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %72 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 4
  store ptr %71, ptr %72, align 8, !tbaa !748
  %73 = load i32, ptr %67, align 4
  %74 = icmp ult i32 %73, 65536
  br i1 %74, label %85, label %75, !prof !798

75:                                               ; preds = %61, %75
  %76 = phi i64 [ %77, %75 ], [ 0, %61 ]
  %77 = add nuw nsw i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %78) #19
  %80 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 5, i64 %76
  store ptr %79, ptr %80, align 8, !tbaa !502
  %81 = load i32, ptr %67, align 4
  %82 = lshr i32 %81, 16
  %83 = zext nneg i32 %82 to i64
  %84 = icmp ult i64 %77, %83
  br i1 %84, label %75, label %85, !prof !799, !llvm.loop !800

85:                                               ; preds = %75, %61
  %86 = phi i32 [ %73, %61 ], [ %81, %75 ]
  %87 = trunc i32 %86 to i16
  switch i16 %87, label %93 [
    i16 43, label %88
    i16 44, label %88
    i16 118, label %88
  ], !prof !801

88:                                               ; preds = %85, %85, %85
  %89 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !502
  %91 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !497
  store ptr %92, ptr %89, align 8, !tbaa !502
  br label %93

93:                                               ; preds = %85, %88
  %94 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 3
  store ptr %1, ptr %94, align 8, !tbaa !766
  %95 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %34) #19
  %96 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 2
  store i32 %95, ptr %96, align 8, !tbaa !744
  %97 = load ptr, ptr @current_info, align 8, !tbaa !502
  %98 = load ptr, ptr %97, align 8, !tbaa !761
  %99 = tail call ptr @htab_find_slot_with_hash(ptr noundef %98, ptr noundef nonnull %34, i32 noundef %95, i32 noundef 1) #20
  %100 = load ptr, ptr %99, align 8, !tbaa !502
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102, !prof !802

102:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1627, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %93, %102
  store ptr %34, ptr %99, align 8, !tbaa !502
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_scc_vn() local_unnamed_addr #0 !prof !803 {
  %1 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !502
  tail call void @htab_delete(ptr noundef %1) #20
  %2 = load ptr, ptr @constant_value_ids, align 8, !tbaa !502
  tail call void @bitmap_obstack_free(ptr noundef %2) #20
  store ptr null, ptr @constant_value_ids, align 8, !tbaa !502
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @shared_lookup_phiargs) #19
  tail call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull @shared_lookup_references) #19
  %3 = load ptr, ptr @rpo_numbers, align 8, !tbaa !502
  tail call void @free(ptr noundef %3) #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !804
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !806
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11, !prof !810

11:                                               ; preds = %0, %24
  %12 = phi ptr [ %30, %24 ], [ %8, %0 ]
  %13 = phi i64 [ %25, %24 ], [ 0, %0 ]
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %14) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !811

17:                                               ; preds = %11
  %18 = tail call ptr @VN_INFO(ptr noundef nonnull %15) #19
  %19 = getelementptr inbounds %struct.vn_ssa_aux, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23, !prof !812

23:                                               ; preds = %17
  tail call void @release_ssa_name(ptr noundef nonnull %15) #20
  br label %24

24:                                               ; preds = %23, %17, %11
  %25 = add nuw nsw i64 %13, 1
  %26 = load ptr, ptr @cfun, align 8, !tbaa !502
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !804
  %29 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !806
  %31 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %30) #19
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %25, %32
  br i1 %33, label %11, label %34, !prof !813, !llvm.loop !814

34:                                               ; preds = %24, %0
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !515
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 0, %36
  store i64 %37, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !505
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %46, !prof !815

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !509
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %36
  %43 = icmp sgt i64 %42, %37
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %35, i64 %37
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !512
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !510
  br label %48

46:                                               ; preds = %39, %34
  %47 = getelementptr inbounds i8, ptr %35, i64 %37
  tail call void @obstack_free(ptr noundef nonnull @vn_ssa_aux_obstack, ptr noundef %47) #20
  br label %48

48:                                               ; preds = %46, %44
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_free() #19
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @sccstack) #19
  %49 = load ptr, ptr @valid_info, align 8, !tbaa !502
  tail call fastcc void @free_vn_table(ptr noundef %49) #19
  %50 = load ptr, ptr @valid_info, align 8, !tbaa !502
  tail call void @free(ptr noundef %50) #19
  %51 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  tail call fastcc void @free_vn_table(ptr noundef %51) #19
  %52 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  tail call void @free(ptr noundef %52) #19
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !816 !PGOFuncName !817 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !818

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !502
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !819 !PGOFuncName !820 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !821

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !822
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !824 !PGOFuncName !825 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !502
  ret ptr %5
}

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_free() unnamed_addr #8 !prof !803 !PGOFuncName !826 {
  %1 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !815

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_vn_table(ptr noundef %0) unnamed_addr #0 !prof !827 !PGOFuncName !828 {
  %2 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !829
  tail call void @htab_delete(ptr noundef %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !761
  tail call void @htab_delete(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !694
  tail call void @htab_delete(ptr noundef %6) #20
  %7 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !789
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !783
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %24, !prof !810

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !784
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp sgt i64 %18, %11
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %9, i64 %11
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !787
  %23 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !785
  br label %26

24:                                               ; preds = %14, %1
  %25 = getelementptr inbounds i8, ptr %9, i64 %11
  tail call void @obstack_free(ptr noundef nonnull %7, ptr noundef %25) #20
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !830
  tail call void @free_alloc_pool(ptr noundef %28) #20
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !725
  tail call void @free_alloc_pool(ptr noundef %30) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @run_scc_vn(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !803 {
  store i8 %0, ptr @may_insert, align 1, !tbaa !497
  tail call fastcc void @init_scc_vn() #19
  %2 = load ptr, ptr @valid_info, align 8, !tbaa !502
  store ptr %2, ptr @current_info, align 8, !tbaa !502
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !502
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !497
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !810

7:                                                ; preds = %24, %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !502
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !804
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !806
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #19
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %33, label %28, !prof !831

15:                                               ; preds = %1, %24
  %16 = phi ptr [ %26, %24 ], [ %5, %1 ]
  %17 = load ptr, ptr @cfun, align 8, !tbaa !502
  %18 = tail call ptr @gimple_default_def(ptr noundef %17, ptr noundef nonnull %16) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !815

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !502
  %22 = tail call ptr @gimple_default_def(ptr noundef %21, ptr noundef nonnull %16) #20
  %23 = tail call ptr @VN_INFO(ptr noundef %22) #19
  store ptr %22, ptr %23, align 8, !tbaa !528
  br label %24

24:                                               ; preds = %15, %20
  %25 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !497
  %27 = icmp eq ptr %26, null
  br i1 %27, label %7, label %15, !prof !831, !llvm.loop !832

28:                                               ; preds = %52, %7
  %29 = phi ptr [ %12, %7 ], [ %58, %52 ]
  %30 = phi ptr [ %8, %7 ], [ %54, %52 ]
  %31 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %29) #19
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %62, label %96, !prof !831

33:                                               ; preds = %7, %52
  %34 = phi ptr [ %58, %52 ], [ %12, %7 ]
  %35 = phi i64 [ %53, %52 ], [ 1, %7 ]
  %36 = trunc i64 %35 to i32
  %37 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39, !prof !833

39:                                               ; preds = %33
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %37) #19
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 5
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52, !prof !834

45:                                               ; preds = %39
  %46 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %37) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52, !prof !835

48:                                               ; preds = %45
  %49 = tail call fastcc zeroext i8 @DFS(ptr noundef nonnull %37) #19, !range !534
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52, !prof !836

51:                                               ; preds = %48
  tail call void @free_scc_vn() #19
  br label %197

52:                                               ; preds = %48, %45, %39, %33
  %53 = add nuw nsw i64 %35, 1
  %54 = load ptr, ptr @cfun, align 8, !tbaa !502
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !804
  %57 = getelementptr inbounds %struct.gimple_df, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !806
  %59 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %58) #19
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %53, %60
  br i1 %61, label %33, label %28, !prof !837, !llvm.loop !838

62:                                               ; preds = %28, %86
  %63 = phi ptr [ %92, %86 ], [ %29, %28 ]
  %64 = phi i64 [ %87, %86 ], [ 1, %28 ]
  %65 = trunc i64 %64 to i32
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %63, i32 noundef %65) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %86, label %68, !prof !833

68:                                               ; preds = %62
  %69 = tail call ptr @VN_INFO(ptr noundef nonnull %66) #19
  %70 = load ptr, ptr %69, align 8, !tbaa !528
  %71 = icmp eq ptr %70, %66
  %72 = load ptr, ptr @VN_TOP, align 8
  %73 = icmp eq ptr %70, %72
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %77, !prof !839

75:                                               ; preds = %68
  %76 = tail call i32 @get_next_value_id() #19
  br label %83

77:                                               ; preds = %68
  %78 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %70) #20
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80, !prof !840

80:                                               ; preds = %77
  %81 = load ptr, ptr %69, align 8, !tbaa !528
  %82 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %81) #19
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %76, %75 ], [ %82, %80 ]
  %85 = getelementptr inbounds %struct.vn_ssa_aux, ptr %69, i64 0, i32 2
  store i32 %84, ptr %85, align 8, !tbaa !727
  br label %86

86:                                               ; preds = %83, %77, %62
  %87 = add nuw nsw i64 %64, 1
  %88 = load ptr, ptr @cfun, align 8, !tbaa !502
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !804
  %91 = getelementptr inbounds %struct.gimple_df, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !806
  %93 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %92) #19
  %94 = zext i32 %93 to i64
  %95 = icmp ult i64 %87, %94
  br i1 %95, label %62, label %96, !prof !837, !llvm.loop !841

96:                                               ; preds = %86, %28
  %97 = phi ptr [ %30, %28 ], [ %88, %86 ]
  br label %100

98:                                               ; preds = %135
  %99 = icmp eq i8 %136, 0
  br i1 %99, label %146, label %100, !prof !842, !llvm.loop !843

100:                                              ; preds = %96, %98
  %101 = phi ptr [ %138, %98 ], [ %97, %96 ]
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !804
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !806
  %106 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %105) #19
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %146, !prof !844

108:                                              ; preds = %100, %135
  %109 = phi ptr [ %142, %135 ], [ %105, %100 ]
  %110 = phi i64 [ %137, %135 ], [ 1, %100 ]
  %111 = phi i8 [ %136, %135 ], [ 0, %100 ]
  %112 = trunc i64 %110 to i32
  %113 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %109, i32 noundef %112) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %135, label %115, !prof !845

115:                                              ; preds = %108
  %116 = tail call ptr @VN_INFO(ptr noundef nonnull %113) #19
  %117 = load ptr, ptr %116, align 8, !tbaa !528
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 65535
  %120 = icmp ne i64 %119, 141
  %121 = icmp eq ptr %117, %113
  %122 = or i1 %121, %120
  br i1 %122, label %135, label %123, !prof !846

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.vn_ssa_aux, ptr %116, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !727
  %126 = tail call ptr @VN_INFO(ptr noundef nonnull %117) #19
  %127 = getelementptr inbounds %struct.vn_ssa_aux, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !727
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %135, label %130, !prof !847

130:                                              ; preds = %123
  %131 = load ptr, ptr %116, align 8, !tbaa !528
  %132 = tail call ptr @VN_INFO(ptr noundef %131) #19
  %133 = getelementptr inbounds %struct.vn_ssa_aux, ptr %132, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !727
  store i32 %134, ptr %124, align 8, !tbaa !727
  br label %135

135:                                              ; preds = %115, %123, %130, %108
  %136 = phi i8 [ %111, %108 ], [ 1, %130 ], [ %111, %123 ], [ %111, %115 ]
  %137 = add nuw nsw i64 %110, 1
  %138 = load ptr, ptr @cfun, align 8, !tbaa !502
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !804
  %141 = getelementptr inbounds %struct.gimple_df, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !806
  %143 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %142) #19
  %144 = zext i32 %143 to i64
  %145 = icmp ult i64 %137, %144
  br i1 %145, label %108, label %98, !prof !848, !llvm.loop !849

146:                                              ; preds = %100, %98
  tail call fastcc void @set_hashtable_value_ids() #19
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %148 = icmp eq ptr %147, null
  br i1 %148, label %197, label %149, !prof !850

149:                                              ; preds = %146
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %197, label %153

153:                                              ; preds = %149
  %154 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr nonnull %147)
  %155 = load ptr, ptr @cfun, align 8, !tbaa !502
  %156 = getelementptr inbounds %struct.function, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !804
  %158 = getelementptr inbounds %struct.gimple_df, ptr %157, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !806
  %160 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %159) #19
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %197, label %162

162:                                              ; preds = %153, %187
  %163 = phi ptr [ %193, %187 ], [ %159, %153 ]
  %164 = phi i64 [ %188, %187 ], [ 0, %153 ]
  %165 = trunc i64 %164 to i32
  %166 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %163, i32 noundef %165) #19
  %167 = icmp eq ptr %166, null
  br i1 %167, label %187, label %168

168:                                              ; preds = %162
  %169 = tail call ptr @VN_INFO(ptr noundef nonnull %166) #19
  %170 = getelementptr inbounds %struct.vn_ssa_aux, ptr %169, i64 0, i32 5
  %171 = load i8, ptr %170, align 4
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %168
  %175 = tail call ptr @VN_INFO(ptr noundef nonnull %166) #19
  %176 = load ptr, ptr %175, align 8, !tbaa !528
  %177 = icmp eq ptr %176, %166
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %179, ptr noundef nonnull %166, i32 noundef 0) #20
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %181 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %183 = tail call ptr @VN_INFO(ptr noundef nonnull %166) #19
  %184 = load ptr, ptr %183, align 8, !tbaa !528
  tail call void @print_generic_expr(ptr noundef %182, ptr noundef %184, i32 noundef 0) #20
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %186 = tail call i32 @fputc(i32 10, ptr %185)
  br label %187

187:                                              ; preds = %178, %174, %168, %162
  %188 = add nuw nsw i64 %164, 1
  %189 = load ptr, ptr @cfun, align 8, !tbaa !502
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !804
  %192 = getelementptr inbounds %struct.gimple_df, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !806
  %194 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %193) #19
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %188, %195
  br i1 %196, label %162, label %197, !llvm.loop !851

197:                                              ; preds = %187, %153, %146, %149, %51
  %198 = phi i8 [ 0, %51 ], [ 1, %149 ], [ 1, %146 ], [ 1, %153 ], [ 1, %187 ]
  store i8 0, ptr @may_insert, align 1, !tbaa !497
  ret i8 %198
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_scc_vn() unnamed_addr #0 !prof !803 !PGOFuncName !852 {
  tail call void @calculate_dominance_info(i32 noundef 1) #20
  store ptr null, ptr @sccstack, align 8, !tbaa !502
  %1 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_constant_hash, ptr noundef nonnull @vn_constant_eq, ptr noundef nonnull @free) #20
  store ptr %1, ptr @constant_to_value_id, align 8, !tbaa !502
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %2, ptr @constant_value_ids, align 8, !tbaa !502
  store i32 1, ptr @next_dfs_num, align 4, !tbaa !540
  store i32 1, ptr @next_value_id, align 4, !tbaa !540
  %3 = load ptr, ptr @cfun, align 8, !tbaa !502
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !804
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !806
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %7) #19
  %9 = add i32 %8, 1
  %10 = tail call fastcc ptr @VEC_vn_ssa_aux_t_heap_alloc(i32 noundef %9) #19
  store ptr %10, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  %11 = load ptr, ptr @cfun, align 8, !tbaa !502
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !804
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !806
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #19
  %17 = add i32 %16, 1
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow_cleared(i32 noundef %17) #19
  %18 = tail call i32 @_obstack_begin(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  store ptr null, ptr @shared_lookup_phiargs, align 8, !tbaa !502
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !502
  %19 = load ptr, ptr @cfun, align 8, !tbaa !502
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !853
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !854
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #20
  store ptr %26, ptr @rpo_numbers, align 8, !tbaa !502
  %27 = load ptr, ptr @cfun, align 8, !tbaa !502
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !853
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !854
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 4) #20
  %35 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %34, i8 noundef zeroext 0) #20
  %36 = load ptr, ptr @cfun, align 8, !tbaa !502
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !853
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !856
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %56, !prof !831

42:                                               ; preds = %0
  %43 = load ptr, ptr @rpo_numbers, align 8, !tbaa !502
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %51, %44 ]
  %46 = getelementptr inbounds i32, ptr %34, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !540
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %43, i64 %48
  %50 = trunc i64 %45 to i32
  store i32 %50, ptr %49, align 4, !tbaa !540
  %51 = add nuw nsw i64 %45, 1
  %52 = load i32, ptr %39, align 8, !tbaa !856
  %53 = add nsw i32 %52, -2
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %44, label %56, !prof !857, !llvm.loop !858

56:                                               ; preds = %44, %0
  tail call void @free(ptr noundef %34) #19
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !502
  %58 = tail call ptr @create_tmp_var_raw(ptr noundef %57, ptr noundef nonnull @.str.6) #20
  store ptr %58, ptr @VN_TOP, align 8, !tbaa !502
  %59 = load ptr, ptr @cfun, align 8, !tbaa !502
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !804
  %62 = getelementptr inbounds %struct.gimple_df, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !806
  %64 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %63) #19
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %91, label %66, !prof !810

66:                                               ; preds = %56, %81
  %67 = phi ptr [ %82, %81 ], [ %59, %56 ]
  %68 = phi ptr [ %87, %81 ], [ %63, %56 ]
  %69 = phi i64 [ %83, %81 ], [ 0, %56 ]
  %70 = trunc i64 %69 to i32
  %71 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %68, i32 noundef %70) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73, !prof !859

73:                                               ; preds = %66
  %74 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %75 = tail call ptr @VN_INFO_GET(ptr noundef nonnull %71) #19
  store ptr %74, ptr %75, align 8, !tbaa !528
  %76 = tail call ptr @VN_INFO(ptr noundef nonnull %71) #19
  %77 = getelementptr inbounds %struct.vn_ssa_aux, ptr %76, i64 0, i32 1
  store ptr null, ptr %77, align 8, !tbaa !532
  %78 = tail call ptr @VN_INFO(ptr noundef nonnull %71) #19
  %79 = getelementptr inbounds %struct.vn_ssa_aux, ptr %78, i64 0, i32 2
  store i32 0, ptr %79, align 8, !tbaa !727
  %80 = load ptr, ptr @cfun, align 8, !tbaa !502
  br label %81

81:                                               ; preds = %73, %66
  %82 = phi ptr [ %80, %73 ], [ %67, %66 ]
  %83 = add nuw nsw i64 %69, 1
  %84 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !804
  %86 = getelementptr inbounds %struct.gimple_df, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !806
  %88 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %87) #19
  %89 = zext i32 %88 to i64
  %90 = icmp ult i64 %83, %89
  br i1 %90, label %66, label %91, !prof !860, !llvm.loop !861

91:                                               ; preds = %81, %56
  tail call void @renumber_gimple_stmt_uids() #20
  %92 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #20
  store ptr %92, ptr @valid_info, align 8, !tbaa !502
  tail call fastcc void @allocate_vn_table(ptr noundef %92) #19
  %93 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #20
  store ptr %93, ptr @optimistic_info, align 8, !tbaa !502
  tail call fastcc void @allocate_vn_table(ptr noundef %93) #19
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !862 !PGOFuncName !863 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !864
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !866

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !540
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !867

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #20
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @DFS(ptr noundef %0) unnamed_addr #0 !prof !868 !PGOFuncName !869 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  br label %5

5:                                                ; preds = %87, %1
  %6 = phi ptr [ %0, %1 ], [ %77, %87 ]
  %7 = phi ptr [ null, %1 ], [ %43, %87 ]
  %8 = load i32, ptr @next_dfs_num, align 4, !tbaa !540
  %9 = add i32 %8, 1
  store i32 %9, ptr @next_dfs_num, align 4, !tbaa !540
  %10 = call ptr @VN_INFO(ptr noundef %6) #19
  %11 = getelementptr inbounds %struct.vn_ssa_aux, ptr %10, i64 0, i32 3
  store i32 %8, ptr %11, align 4, !tbaa !870
  %12 = call ptr @VN_INFO(ptr noundef %6) #19
  %13 = getelementptr inbounds %struct.vn_ssa_aux, ptr %12, i64 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 1
  store i8 %15, ptr %13, align 4
  %16 = call ptr @VN_INFO(ptr noundef %6) #19
  %17 = getelementptr inbounds %struct.vn_ssa_aux, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !870
  %19 = call ptr @VN_INFO(ptr noundef %6) #19
  %20 = getelementptr inbounds %struct.vn_ssa_aux, ptr %19, i64 0, i32 4
  store i32 %18, ptr %20, align 8, !tbaa !871
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @sccstack, ptr noundef %6) #19
  %21 = call ptr @VN_INFO(ptr noundef %6) #19
  %22 = getelementptr inbounds %struct.vn_ssa_aux, ptr %21, i64 0, i32 5
  %23 = load i8, ptr %22, align 4
  %24 = or i8 %23, 2
  store i8 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !497
  %27 = call fastcc zeroext i8 @gimple_nop_p(ptr noundef %26) #19, !range !534
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36, !prof !872

29:                                               ; preds = %5
  %30 = call fastcc i32 @gimple_code(ptr noundef %26) #19, !range !536
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %34, !prof !873

32:                                               ; preds = %29
  %33 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %4, ptr noundef %26) #19
  br label %37

34:                                               ; preds = %29
  %35 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %26) #19
  br label %37

36:                                               ; preds = %5
  call fastcc void @clear_and_done_ssa_iter(ptr noundef nonnull %4) #19
  br label %37

37:                                               ; preds = %32, %34, %36
  %38 = phi ptr [ %7, %36 ], [ %33, %32 ], [ %35, %34 ]
  %39 = load ptr, ptr %3, align 8
  %40 = load ptr, ptr %2, align 8
  br label %41

41:                                               ; preds = %123, %37
  %42 = phi ptr [ %6, %37 ], [ %124, %123 ]
  %43 = phi ptr [ %38, %37 ], [ %125, %123 ]
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #19
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %76, label %46, !prof !874

46:                                               ; preds = %41
  %47 = call ptr @VN_INFO(ptr noundef %42) #19
  %48 = getelementptr inbounds %struct.vn_ssa_aux, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !871
  %50 = call ptr @VN_INFO(ptr noundef %42) #19
  %51 = getelementptr inbounds %struct.vn_ssa_aux, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !870
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %57, !prof !875

54:                                               ; preds = %46
  %55 = call fastcc zeroext i8 @extract_and_process_scc_for_name(ptr noundef %42) #19, !range !534
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %126, label %57, !prof !876

57:                                               ; preds = %54, %46
  %58 = call fastcc i32 @VEC_tree_base_length(ptr noundef %39) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %126, label %60, !prof !877

60:                                               ; preds = %57
  %61 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %39) #19
  %62 = call fastcc ptr @VEC_ssa_op_iter_base_last(ptr noundef %40) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %62, i64 40, i1 false)
  call fastcc void @VEC_ssa_op_iter_base_pop(ptr noundef %40) #19
  %63 = call ptr @VN_INFO(ptr noundef %61) #19
  %64 = getelementptr inbounds %struct.vn_ssa_aux, ptr %63, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !871
  %66 = call ptr @VN_INFO(ptr noundef %42) #19
  %67 = getelementptr inbounds %struct.vn_ssa_aux, ptr %66, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !871
  %69 = icmp ult i32 %65, %68
  %70 = select i1 %69, ptr %61, ptr %42, !prof !878
  %71 = call ptr @VN_INFO(ptr noundef %70) #19
  %72 = getelementptr inbounds %struct.vn_ssa_aux, ptr %71, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !871
  %74 = call ptr @VN_INFO(ptr noundef %61) #19
  %75 = getelementptr inbounds %struct.vn_ssa_aux, ptr %74, i64 0, i32 4
  store i32 %73, ptr %75, align 8, !tbaa !871
  br label %88

76:                                               ; preds = %41
  %77 = call fastcc ptr @get_use_from_ptr(ptr noundef %43) #19
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %81, label %123, !prof !879

81:                                               ; preds = %76
  %82 = call ptr @VN_INFO(ptr noundef nonnull %77) #19
  %83 = getelementptr inbounds %struct.vn_ssa_aux, ptr %82, i64 0, i32 5
  %84 = load i8, ptr %83, align 4
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88, !prof !880

87:                                               ; preds = %81
  call fastcc void @VEC_ssa_op_iter_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %42) #19
  br label %5

88:                                               ; preds = %60, %81
  %89 = phi ptr [ %61, %60 ], [ %42, %81 ]
  %90 = phi ptr [ %42, %60 ], [ %77, %81 ]
  %91 = call ptr @VN_INFO(ptr noundef %90) #19
  %92 = getelementptr inbounds %struct.vn_ssa_aux, ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !870
  %94 = call ptr @VN_INFO(ptr noundef %89) #19
  %95 = getelementptr inbounds %struct.vn_ssa_aux, ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !870
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %123, !prof !881

98:                                               ; preds = %88
  %99 = call ptr @VN_INFO(ptr noundef %90) #19
  %100 = getelementptr inbounds %struct.vn_ssa_aux, ptr %99, i64 0, i32 5
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %123, label %104, !prof !882

104:                                              ; preds = %98
  %105 = call ptr @VN_INFO(ptr noundef %90) #19
  %106 = getelementptr inbounds %struct.vn_ssa_aux, ptr %105, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !870
  %108 = call ptr @VN_INFO(ptr noundef %89) #19
  %109 = getelementptr inbounds %struct.vn_ssa_aux, ptr %108, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !871
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = call ptr @VN_INFO(ptr noundef %90) #19
  %114 = getelementptr inbounds %struct.vn_ssa_aux, ptr %113, i64 0, i32 3
  br label %118

115:                                              ; preds = %104
  %116 = call ptr @VN_INFO(ptr noundef %89) #19
  %117 = getelementptr inbounds %struct.vn_ssa_aux, ptr %116, i64 0, i32 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi ptr [ %114, %112 ], [ %117, %115 ]
  %120 = load i32, ptr %119, align 4, !tbaa !540
  %121 = call ptr @VN_INFO(ptr noundef %89) #19
  %122 = getelementptr inbounds %struct.vn_ssa_aux, ptr %121, i64 0, i32 4
  store i32 %120, ptr %122, align 8, !tbaa !871
  br label %123

123:                                              ; preds = %88, %98, %118, %76
  %124 = phi ptr [ %89, %118 ], [ %89, %98 ], [ %89, %88 ], [ %42, %76 ]
  %125 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #19
  br label %41

126:                                              ; preds = %57, %54
  %127 = phi i8 [ 0, %54 ], [ 1, %57 ]
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #19
  call fastcc void @VEC_ssa_op_iter_heap_free(ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_hashtable_value_ids() unnamed_addr #0 !prof !803 !PGOFuncName !883 {
  %1 = alloca %struct.htab_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %2 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %3 = load ptr, ptr %2, align 8, !tbaa !761
  %4 = call fastcc ptr @first_htab_element(ptr noundef nonnull %1, ptr noundef %3) #19
  %5 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !534
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %32, !prof !831

7:                                                ; preds = %0, %28
  %8 = phi ptr [ %29, %28 ], [ %4, %0 ]
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !766
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !prof !774

12:                                               ; preds = %7
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %20, !prof !802

16:                                               ; preds = %12
  %17 = tail call ptr @VN_INFO(ptr noundef nonnull %10) #19
  %18 = getelementptr inbounds %struct.vn_ssa_aux, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !727
  br label %26

20:                                               ; preds = %12
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %10) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %9, align 8, !tbaa !766
  %25 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %24) #19
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi i32 [ %25, %23 ], [ %19, %16 ]
  store i32 %27, ptr %8, align 8, !tbaa !790
  br label %28

28:                                               ; preds = %26, %7, %20
  %29 = call fastcc ptr @next_htab_element(ptr noundef nonnull %1) #19
  %30 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !534
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %7, label %32, !prof !884, !llvm.loop !885

32:                                               ; preds = %28, %0
  %33 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !829
  %36 = call fastcc ptr @first_htab_element(ptr noundef nonnull %1, ptr noundef %35) #19
  %37 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !534
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %64, !prof !831

39:                                               ; preds = %32, %60
  %40 = phi ptr [ %61, %60 ], [ %36, %32 ]
  %41 = getelementptr inbounds %struct.vn_phi_s, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !886
  %43 = icmp eq ptr %42, null
  br i1 %43, label %60, label %44, !prof !888

44:                                               ; preds = %39
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %52, !prof !889

48:                                               ; preds = %44
  %49 = tail call ptr @VN_INFO(ptr noundef nonnull %42) #19
  %50 = getelementptr inbounds %struct.vn_ssa_aux, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !727
  br label %58

52:                                               ; preds = %44
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %42) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %41, align 8, !tbaa !886
  %57 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %48, %55
  %59 = phi i32 [ %57, %55 ], [ %51, %48 ]
  store i32 %59, ptr %40, align 8, !tbaa !890
  br label %60

60:                                               ; preds = %58, %39, %52
  %61 = call fastcc ptr @next_htab_element(ptr noundef nonnull %1) #19
  %62 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !534
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %39, label %64, !prof !891, !llvm.loop !892

64:                                               ; preds = %60, %32
  %65 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %66 = getelementptr inbounds %struct.vn_tables_s, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !694
  %68 = call fastcc ptr @first_htab_element(ptr noundef nonnull %1, ptr noundef %67) #19
  %69 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !534
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %96, !prof !831

71:                                               ; preds = %64, %92
  %72 = phi ptr [ %93, %92 ], [ %68, %64 ]
  %73 = getelementptr inbounds %struct.vn_reference_s, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !676
  %75 = icmp eq ptr %74, null
  br i1 %75, label %92, label %76, !prof !729

76:                                               ; preds = %71
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  br i1 %79, label %80, label %84, !prof !726

80:                                               ; preds = %76
  %81 = tail call ptr @VN_INFO(ptr noundef nonnull %74) #19
  %82 = getelementptr inbounds %struct.vn_ssa_aux, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !727
  br label %90

84:                                               ; preds = %76
  %85 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %74) #20
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %73, align 8, !tbaa !676
  %89 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %88) #19
  br label %90

90:                                               ; preds = %80, %87
  %91 = phi i32 [ %89, %87 ], [ %83, %80 ]
  store i32 %91, ptr %72, align 8, !tbaa !728
  br label %92

92:                                               ; preds = %90, %71, %84
  %93 = call fastcc ptr @next_htab_element(ptr noundef nonnull %1) #19
  %94 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !534
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %71, label %96, !prof !893, !llvm.loop !894

96:                                               ; preds = %92, %64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_value_id() local_unnamed_addr #13 !prof !895 {
  %1 = load i32, ptr @next_value_id, align 4, !tbaa !540
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vn_nary_may_trap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !896 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !540
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %44, !prof !897

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !748
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %32 [
    i16 9, label %22
    i16 13, label %16
    i16 14, label %16
  ], !prof !898

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !497
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 9
  br i1 %21, label %22, label %44, !prof !899

22:                                               ; preds = %11, %16
  %23 = load i32, ptr @flag_trapping_math, align 4, !tbaa !540
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @flag_finite_math_only, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !540
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %44

32:                                               ; preds = %11
  %33 = trunc i64 %14 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -6
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %44, !prof !698

37:                                               ; preds = %32
  %38 = and i64 %14, 2097152
  %39 = icmp eq i64 %38, 0
  %40 = load i32, ptr @flag_trapv, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %16, %37, %32, %1, %22
  %45 = phi i8 [ %28, %22 ], [ 0, %1 ], [ 0, %32 ], [ 0, %37 ], [ 0, %16 ]
  %46 = phi i8 [ %31, %22 ], [ 0, %1 ], [ 0, %32 ], [ 0, %37 ], [ 0, %16 ]
  %47 = phi i8 [ 1, %22 ], [ 0, %1 ], [ 0, %32 ], [ 0, %37 ], [ 0, %16 ]
  %48 = phi i8 [ 0, %22 ], [ 0, %1 ], [ 0, %32 ], [ %43, %37 ], [ 0, %16 ]
  %49 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !502
  %51 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %5, i8 noundef zeroext %47, i8 noundef zeroext %48, i8 noundef zeroext %45, i8 noundef zeroext %46, ptr noundef %50, ptr noundef nonnull %2) #20
  %52 = load i8, ptr %2, align 1, !tbaa !497
  %53 = icmp ne i8 %52, 0
  %54 = icmp ne i8 %51, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %71, label %56, !prof !900

56:                                               ; preds = %44
  %57 = load i32, ptr %3, align 4
  %58 = icmp ult i32 %57, 65536
  br i1 %58, label %71, label %65, !prof !901

59:                                               ; preds = %65
  %60 = add nuw nsw i64 %66, 1
  %61 = load i32, ptr %3, align 4
  %62 = lshr i32 %61, 16
  %63 = zext nneg i32 %62 to i64
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %71, !prof !902, !llvm.loop !903

65:                                               ; preds = %56, %59
  %66 = phi i64 [ %60, %59 ], [ 0, %56 ]
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !502
  %69 = call zeroext i8 @tree_could_trap_p(ptr noundef %68) #20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %59, label %71, !prof !904

71:                                               ; preds = %65, %59, %56, %44
  %72 = phi i8 [ 1, %44 ], [ 0, %56 ], [ 1, %65 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #21
  ret i8 %72
}

; Function Attrs: optsize
declare zeroext i8 @operation_could_trap_helper_p(i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !522 !PGOFuncName !905 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  %3 = tail call fastcc i32 @VEC_vn_ssa_aux_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !578
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !906

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_ssa_aux_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !522 !PGOFuncName !907 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !524

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !908
  %7 = load i32, ptr %0, align 8, !tbaa !520
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !550 !PGOFuncName !909 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !910

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 !prof !911 !PGOFuncName !912 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !497
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !628 !PGOFuncName !913 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = tail call fastcc i32 @VEC_vn_reference_op_s_base_space(ptr noundef %2, i32 noundef 1) #19, !range !578
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !914

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 40) #20
  store ptr %6, ptr %0, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !prof !628 !PGOFuncName !915 {
  %3 = load i32, ptr %0, align 8, !tbaa !588
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !588
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !916

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !662
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !917 !PGOFuncName !918 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !919

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !920
  %7 = load i32, ptr %0, align 8, !tbaa !588
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
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #5 !prof !652 !PGOFuncName !921 {
  %4 = load i32, ptr %0, align 8, !tbaa !588
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !588
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = mul nuw nsw i64 %10, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  %12 = icmp eq ptr %2, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !662
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !668 !PGOFuncName !922 {
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  %4 = tail call fastcc i32 @VEC_vn_reference_op_s_base_space(ptr noundef %3, i32 noundef %1) #19, !range !578
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !669

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %3, i32 noundef %1, i64 noundef 8, i64 noundef 40) #20
  store ptr %7, ptr %0, align 8, !tbaa !502
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ao_ref_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !923 !PGOFuncName !924 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !655 !PGOFuncName !925 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !712

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !652 !PGOFuncName !926 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !588
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 40) #20
  store i32 %4, ptr %8, align 8, !tbaa !927
  %9 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2
  %11 = mul nuw nsw i64 %7, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !652 !PGOFuncName !929 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !930
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !932 !PGOFuncName !933 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !652 !PGOFuncName !934 {
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
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !935 !PGOFuncName !936 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !779 !PGOFuncName !937 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !711
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !781

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !779 !PGOFuncName !938 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !779 !PGOFuncName !939 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !540
  ret i32 %4
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_constant_hash(ptr nocapture noundef readonly %0) #2 !prof !940 !PGOFuncName !941 {
  %2 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !563
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vn_constant_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !942 !PGOFuncName !943 {
  %3 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !563
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !563
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %15, !prof !944

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !565
  %11 = getelementptr inbounds %struct.vn_constant_s, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !565
  %13 = tail call fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %10, ptr noundef %12) #19, !range !534
  %14 = zext nneg i8 %13 to i32
  br label %15

15:                                               ; preds = %2, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_vn_ssa_aux_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !803 !PGOFuncName !945 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !803 !PGOFuncName !946 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  %3 = tail call fastcc i32 @VEC_vn_ssa_aux_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !502
  %5 = tail call fastcc ptr @VEC_vn_ssa_aux_t_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @allocate_vn_table(ptr noundef %0) unnamed_addr #0 !prof !827 !PGOFuncName !947 {
  %2 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_phi_hash, ptr noundef nonnull @vn_phi_eq, ptr noundef nonnull @free_phi) #20
  %3 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !829
  %4 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_nary_op_hash, ptr noundef nonnull @vn_nary_op_eq, ptr noundef null) #20
  store ptr %4, ptr %0, align 8, !tbaa !761
  %5 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_reference_hash, ptr noundef nonnull @vn_reference_eq, ptr noundef nonnull @free_reference) #20
  %6 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !694
  %7 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3
  %8 = tail call i32 @_obstack_begin(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 32, i64 noundef 30) #20
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !830
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 48, i64 noundef 30) #20
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !562 !PGOFuncName !948 {
  %3 = tail call zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) #19, !range !534
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !566

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !497
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !497
  %10 = tail call zeroext i8 @types_compatible_p(ptr noundef %7, ptr noundef %9) #20
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %5 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_vn_ssa_aux_t_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !803 !PGOFuncName !949 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !815
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_phi_hash(ptr nocapture noundef readonly %0) #2 !prof !950 !PGOFuncName !951 {
  %2 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !952
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vn_phi_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !953 !PGOFuncName !954 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !952
  %6 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !952
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %58, !prof !955

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !956
  %12 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !956
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %16 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !957
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef 0) #19
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !497
  %21 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !957
  %23 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef 0) #19
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !497
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %20, ptr noundef %25) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %15
  %29 = load ptr, ptr %16, align 8, !tbaa !957
  %30 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3) #19, !range !578
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  br label %34

34:                                               ; preds = %32, %50
  %35 = phi ptr [ %51, %50 ], [ %29, %32 ]
  %36 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %37 = phi i32 [ %53, %50 ], [ 0, %32 ]
  %38 = load ptr, ptr %21, align 8, !tbaa !957
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %38, i32 noundef %37) #19
  %40 = load ptr, ptr %3, align 8, !tbaa !502
  %41 = icmp eq ptr %40, %36
  %42 = icmp eq ptr %39, %36
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = tail call zeroext i8 @expressions_equal_p(ptr noundef %40, ptr noundef %39) #19, !range !534
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %49 = load ptr, ptr %16, align 8, !tbaa !957
  br label %50

50:                                               ; preds = %47, %34
  %51 = phi ptr [ %35, %34 ], [ %49, %47 ]
  %52 = phi ptr [ %36, %34 ], [ %48, %47 ]
  %53 = add nuw nsw i32 %37, 1
  %54 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %51, i32 noundef %53, ptr noundef nonnull %3) #19, !range !578
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %34, !llvm.loop !958

56:                                               ; preds = %50, %44, %28, %15
  %57 = phi i32 [ 0, %15 ], [ 1, %28 ], [ 1, %50 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %58

58:                                               ; preds = %9, %2, %56
  %59 = phi i32 [ %57, %56 ], [ 0, %2 ], [ 0, %9 ]
  ret i32 %59
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @free_phi(ptr nocapture noundef %0) #8 !prof !959 !PGOFuncName !960 {
  %2 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_nary_op_hash(ptr nocapture noundef readonly %0) #2 !prof !961 !PGOFuncName !962 {
  %2 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !744
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_reference_hash(ptr nocapture noundef readonly %0) #2 !prof !963 !PGOFuncName !964 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !601
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !965 !PGOFuncName !966 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !967

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !822
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !968

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !502
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !502
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !969 !PGOFuncName !970 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !971 !PGOFuncName !972 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !973
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %5, align 8, !tbaa !975
  %6 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !976
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !977
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !978 !PGOFuncName !979 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !977
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !980 !PGOFuncName !981 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !973
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !982 !PGOFuncName !983 {
  %2 = load i8, ptr %0, align 8, !tbaa !973
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @extract_and_process_scc_for_name(ptr noundef readnone %0) unnamed_addr #0 !prof !984 !PGOFuncName !985 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !502
  br label %3

3:                                                ; preds = %3, %1
  %4 = load ptr, ptr @sccstack, align 8
  %5 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %4) #19
  %6 = tail call ptr @VN_INFO(ptr noundef %5) #19
  %7 = getelementptr inbounds %struct.vn_ssa_aux, ptr %6, i64 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -3
  store i8 %9, ptr %7, align 4
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %2, ptr noundef %5) #19
  %10 = icmp eq ptr %5, %0
  br i1 %10, label %11, label %3, !prof !875, !llvm.loop !986

11:                                               ; preds = %3
  %12 = load ptr, ptr %2, align 8
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #19
  %14 = load ptr, ptr @compiler_params, align 8, !tbaa !502
  %15 = getelementptr inbounds %struct.param_info, ptr %14, i64 104, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !987
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %23, !prof !876

18:                                               ; preds = %11
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %16) #19
  br label %35

23:                                               ; preds = %11
  %24 = icmp ugt i32 %13, 1
  br i1 %24, label %25, label %26, !prof !876

25:                                               ; preds = %23
  tail call fastcc void @sort_scc(ptr noundef %12) #19
  br label %26

26:                                               ; preds = %25, %23
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29, !prof !875

29:                                               ; preds = %26
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call fastcc void @print_scc(ptr noundef nonnull %27, ptr noundef %12) #19
  br label %34

34:                                               ; preds = %33, %29, %26
  tail call fastcc void @process_scc(ptr noundef %12) #19
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #19
  br label %35

35:                                               ; preds = %18, %21, %34
  %36 = phi i8 [ 1, %34 ], [ 0, %21 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %36
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ssa_op_iter_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !868 !PGOFuncName !989 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !990

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !502
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !991 !PGOFuncName !992 {
  %2 = load i32, ptr %0, align 8, !tbaa !822
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !822
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !502
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_ssa_op_iter_base_last(ptr noundef readonly %0) unnamed_addr #2 !prof !993 !PGOFuncName !994 {
  %2 = load i32, ptr %0, align 8, !tbaa !995
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_op_iter_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !993 !PGOFuncName !997 {
  %2 = load i32, ptr %0, align 8, !tbaa !995
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !995
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !998 !PGOFuncName !999 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1000
  %4 = load ptr, ptr %3, align 8, !tbaa !502
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_op_iter_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !993 !PGOFuncName !1001 {
  tail call fastcc void @VEC_ssa_op_iter_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  tail call fastcc void @VEC_ssa_op_iter_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1002 !PGOFuncName !1003 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1004
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1005

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1006
  store ptr %7, ptr %2, align 8, !tbaa !1004
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1008
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !976
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1009

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !975
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1008
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !973
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !969 !PGOFuncName !1010 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1011

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !969 !PGOFuncName !1012 {
  %3 = load i32, ptr %0, align 8, !tbaa !822
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !822
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !502
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !969 !PGOFuncName !1013 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1014

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1015
  %6 = load i32, ptr %0, align 8, !tbaa !822
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !971 !PGOFuncName !1016 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1017 !PGOFuncName !1018 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !497
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1019 !PGOFuncName !1020 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !1021

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 747, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !1022

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !1023
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !1023
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !1024

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !1025
  store ptr %25, ptr %18, align 8, !tbaa !1023
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !1027

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !1004
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !1004
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !1028

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !1006
  store ptr %41, ptr %32, align 8, !tbaa !1004
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !973
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1029 !PGOFuncName !1030 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1031

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1032 !PGOFuncName !1033 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1034

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !978 !PGOFuncName !1035 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1036

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1037 !PGOFuncName !1038 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1039

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1040 !PGOFuncName !1041 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_scc(ptr noundef %0) unnamed_addr #0 !prof !652 !PGOFuncName !1042 {
  %2 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %0) #19
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #19
  %4 = zext i32 %3 to i64
  tail call void @spec_qsort(ptr noundef %2, i64 noundef %4, i64 noundef 8, ptr noundef nonnull @compare_ops) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_scc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !652 !PGOFuncName !1043 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr %0)
  %5 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #19, !range !578
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0) #20
  %10 = tail call i32 @fputc(i32 32, ptr %0)
  %11 = add i32 %8, 1
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %3) #19, !range !578
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7, !llvm.loop !1044

14:                                               ; preds = %7, %2
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_scc(ptr noundef %0) unnamed_addr #0 !prof !984 !PGOFuncName !1045 {
  %2 = alloca ptr, align 8
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #19
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %14, !prof !875

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %0, i32 noundef 0) #19
  %7 = tail call ptr @VN_INFO(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.vn_ssa_aux, ptr %7, i64 0, i32 5
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %93, !prof !1046

12:                                               ; preds = %5
  %13 = tail call fastcc zeroext i8 @visit_use(ptr noundef %6) #19
  br label %93

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %15 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  store ptr %15, ptr @current_info, align 8, !tbaa !502
  br label %18

16:                                               ; preds = %73
  %17 = icmp eq i8 %78, 0
  br i1 %17, label %82, label %18, !llvm.loop !1047

18:                                               ; preds = %14, %16
  %19 = phi i32 [ 0, %14 ], [ %20, %16 ]
  %20 = add i32 %19, 1
  %21 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %22 = load ptr, ptr %21, align 8, !tbaa !761
  tail call void @htab_empty(ptr noundef %22) #20
  %23 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %24 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !829
  tail call void @htab_empty(ptr noundef %25) #20
  %26 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !694
  tail call void @htab_empty(ptr noundef %28) #20
  %29 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !789
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !783
  %35 = icmp sgt i64 %33, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !784
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %32
  %41 = icmp sgt i64 %40, %33
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %31, i64 %33
  %44 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !787
  %45 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !785
  br label %50

46:                                               ; preds = %36, %18
  %47 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3
  %48 = getelementptr inbounds i8, ptr %31, i64 %33
  tail call void @obstack_free(ptr noundef nonnull %47, ptr noundef %48) #20
  %49 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %49, %46 ], [ %29, %42 ]
  %52 = getelementptr inbounds %struct.vn_tables_s, ptr %51, i64 0, i32 3
  %53 = tail call i32 @_obstack_begin(ptr noundef nonnull %52, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  %54 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !830
  tail call void @empty_alloc_pool(ptr noundef %56) #20
  %57 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %58 = getelementptr inbounds %struct.vn_tables_s, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !725
  tail call void @empty_alloc_pool(ptr noundef %59) #20
  %60 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !578
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %65, %50
  %63 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !578
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %73

65:                                               ; preds = %50, %65
  %66 = phi i32 [ %70, %65 ], [ 0, %50 ]
  %67 = load ptr, ptr %2, align 8, !tbaa !502
  %68 = tail call ptr @VN_INFO(ptr noundef %67) #19
  %69 = getelementptr inbounds %struct.vn_ssa_aux, ptr %68, i64 0, i32 1
  store ptr null, ptr %69, align 8, !tbaa !532
  %70 = add i32 %66, 1
  %71 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %2) #19, !range !578
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %62, label %65, !llvm.loop !1048

73:                                               ; preds = %62, %73
  %74 = phi i8 [ %78, %73 ], [ 0, %62 ]
  %75 = phi i32 [ %79, %73 ], [ 0, %62 ]
  %76 = load ptr, ptr %2, align 8, !tbaa !502
  %77 = tail call fastcc zeroext i8 @visit_use(ptr noundef %76) #19
  %78 = or i8 %77, %74
  %79 = add i32 %75, 1
  %80 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %79, ptr noundef nonnull %2) #19, !range !578
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %16, label %73, !llvm.loop !1049

82:                                               ; preds = %62, %16
  %83 = load ptr, ptr @cfun, align 8, !tbaa !502
  tail call void @statistics_histogram_event(ptr noundef %83, ptr noundef nonnull @.str.13, i32 noundef %20) #20
  %84 = load ptr, ptr @valid_info, align 8, !tbaa !502
  store ptr %84, ptr @current_info, align 8, !tbaa !502
  %85 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %86 = load ptr, ptr %85, align 8, !tbaa !761
  tail call void @htab_traverse(ptr noundef %86, ptr noundef nonnull @copy_nary, ptr noundef null) #20
  %87 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %88 = getelementptr inbounds %struct.vn_tables_s, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !829
  tail call void @htab_traverse(ptr noundef %89, ptr noundef nonnull @copy_phis, ptr noundef null) #20
  %90 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %91 = getelementptr inbounds %struct.vn_tables_s, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !694
  tail call void @htab_traverse(ptr noundef %92, ptr noundef nonnull @copy_references, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %93

93:                                               ; preds = %5, %12, %82
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !652 !PGOFuncName !1050 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_ops(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !652 !PGOFuncName !1051 {
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  %4 = load ptr, ptr %1, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !497
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  %9 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %6) #19, !range !534
  %10 = icmp eq i8 %9, 0
  %11 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %8) #19, !range !534
  %12 = icmp eq i8 %11, 0
  br i1 %10, label %20, label %13

13:                                               ; preds = %2
  br i1 %12, label %76, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !497
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !497
  %19 = sub i32 %16, %18
  br label %76

20:                                               ; preds = %2
  br i1 %12, label %21, label %76

21:                                               ; preds = %20
  %22 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #19
  %23 = tail call fastcc ptr @gimple_bb(ptr noundef %8) #19
  %24 = icmp ne ptr %22, null
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !497
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !497
  %32 = sub i32 %29, %31
  br label %76

33:                                               ; preds = %21
  %34 = select i1 %24, i1 %25, i1 false
  %35 = select i1 %24, i32 1, i32 -1
  br i1 %34, label %36, label %76

36:                                               ; preds = %33
  %37 = icmp eq ptr %22, %23
  br i1 %37, label %38, label %63

38:                                               ; preds = %36
  %39 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !536
  %40 = icmp eq i32 %39, 16
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %8) #19, !range !536
  %42 = icmp eq i32 %41, 16
  br i1 %40, label %43, label %50

43:                                               ; preds = %38
  br i1 %42, label %44, label %76

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !497
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !497
  %49 = sub i32 %46, %48
  br label %76

50:                                               ; preds = %38
  br i1 %42, label %76, label %51

51:                                               ; preds = %50
  %52 = tail call fastcc i32 @gimple_uid(ptr noundef %6) #19
  %53 = tail call fastcc i32 @gimple_uid(ptr noundef %8) #19
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = sub i32 %52, %53
  br label %76

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !497
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !497
  %62 = sub i32 %59, %61
  br label %76

63:                                               ; preds = %36
  %64 = load ptr, ptr @rpo_numbers, align 8, !tbaa !502
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !1052
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %64, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !540
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !1052
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %64, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !540
  %75 = sub nsw i32 %69, %74
  br label %76

76:                                               ; preds = %43, %13, %33, %50, %20, %63, %57, %55, %44, %27, %14
  %77 = phi i32 [ %19, %14 ], [ %49, %44 ], [ %56, %55 ], [ %62, %57 ], [ %75, %63 ], [ %32, %27 ], [ 1, %20 ], [ %35, %33 ], [ 1, %50 ], [ -1, %13 ], [ -1, %43 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1054 !PGOFuncName !1055 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !652 !PGOFuncName !1056 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !497
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @visit_use(ptr noundef %0) unnamed_addr #0 !prof !1057 !PGOFuncName !1058 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !497
  %4 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.vn_ssa_aux, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 8
  store i8 %7, ptr %5, align 4
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 33554432
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11, !prof !1059

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2488, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %1, %11
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !1059

15:                                               ; preds = %12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %0, align 8
  %21 = and i64 %20, 4294967296
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %13)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %25, ptr noundef nonnull %0, i32 noundef 0) #20
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %27 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %26)
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_gimple_stmt(ptr noundef %28, ptr noundef %3, i32 noundef 0, i32 noundef 0) #20
  br label %29

29:                                               ; preds = %23, %19, %15, %12
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 4294967296
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33, !prof !1060

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %0, ptr noundef nonnull %0) #19, !range !534
  br label %309

35:                                               ; preds = %29
  %36 = tail call fastcc i32 @gimple_code(ptr noundef %3) #19, !range !536
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %40, !prof !1061

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @visit_phi(ptr noundef %3) #19, !range !534
  br label %309

40:                                               ; preds = %35
  %41 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %3) #19, !range !534
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43, !prof !1062

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %3) #19, !range !534
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49, !prof !1063

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %3) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49, !prof !1063

49:                                               ; preds = %46, %43, %40
  %50 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

51:                                               ; preds = %46
  %52 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %3) #19, !range !534
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %266, label %54, !prof !1064

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #19
  %56 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %3) #20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %70, label %58, !prof !1065

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %70, !prof !1066

63:                                               ; preds = %58
  %64 = load i64, ptr %55, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 141
  br i1 %66, label %67, label %70, !prof !1067

67:                                               ; preds = %63
  %68 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %69 = tail call fastcc zeroext i8 @visit_copy(ptr noundef nonnull %55, ptr noundef %68) #19, !range !534
  br label %309

70:                                               ; preds = %63, %58, %54
  %71 = tail call fastcc ptr @try_to_simplify(ptr noundef %3) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %133, label %73, !prof !1068

73:                                               ; preds = %70
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %75 = icmp eq ptr %74, null
  br i1 %75, label %96, label %76, !prof !1069

76:                                               ; preds = %73
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  %81 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr nonnull %74)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_gimple_expr(ptr noundef %82, ptr noundef %3, i32 noundef 0, i32 noundef 0) #20
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %84 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %83)
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %85, ptr noundef nonnull %71, i32 noundef 0) #20
  %86 = load i64, ptr %55, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 141
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !502
  br i1 %88, label %90, label %94

90:                                               ; preds = %80
  %91 = tail call fastcc zeroext i8 @expr_has_constants(ptr noundef nonnull %71) #19
  %92 = zext i8 %91 to i32
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.18, i32 noundef %92) #19
  br label %96

94:                                               ; preds = %80
  %95 = tail call i32 @fputc(i32 10, ptr %89)
  br label %96

96:                                               ; preds = %90, %94, %76, %73
  %97 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %71) #20
  %98 = icmp eq i8 %97, 0
  %99 = load i64, ptr %55, align 8
  br i1 %98, label %111, label %100, !prof !1069

100:                                              ; preds = %96
  %101 = and i64 %99, 65535
  %102 = icmp eq i64 %101, 141
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %105 = getelementptr inbounds %struct.vn_ssa_aux, ptr %104, i64 0, i32 1
  store ptr %71, ptr %105, align 8, !tbaa !532
  %106 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %107 = getelementptr inbounds %struct.vn_ssa_aux, ptr %106, i64 0, i32 5
  %108 = load i8, ptr %107, align 4
  %109 = or i8 %108, 4
  store i8 %109, ptr %107, align 4
  %110 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %55, ptr noundef nonnull %71) #19, !range !534
  br label %309

111:                                              ; preds = %96, %100
  %112 = load i64, ptr %71, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 141
  %115 = and i64 %99, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %114, label %117, label %120, !prof !1070

117:                                              ; preds = %111
  br i1 %116, label %118, label %154, !prof !1071

118:                                              ; preds = %117
  %119 = tail call fastcc zeroext i8 @visit_copy(ptr noundef nonnull %55, ptr noundef nonnull %71) #19, !range !534
  br label %309

120:                                              ; preds = %111
  br i1 %116, label %121, label %154, !prof !1069

121:                                              ; preds = %120
  %122 = tail call fastcc zeroext i8 @expr_has_constants(ptr noundef nonnull %71) #19
  %123 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %124 = getelementptr inbounds %struct.vn_ssa_aux, ptr %123, i64 0, i32 5
  %125 = load i8, ptr %124, align 4
  %126 = shl i8 %122, 2
  %127 = and i8 %126, 4
  %128 = and i8 %125, -5
  %129 = or disjoint i8 %128, %127
  store i8 %129, ptr %124, align 4
  %130 = tail call ptr @unshare_expr(ptr noundef nonnull %71) #20
  %131 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %132 = getelementptr inbounds %struct.vn_ssa_aux, ptr %131, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !532
  br label %154

133:                                              ; preds = %70
  %134 = tail call fastcc zeroext i8 @stmt_has_constants(ptr noundef %3) #19
  %135 = icmp ne i8 %134, 0
  %136 = load i64, ptr %55, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 141
  %139 = select i1 %135, i1 %138, i1 false
  br i1 %139, label %140, label %145, !prof !1072

140:                                              ; preds = %133
  %141 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %142 = getelementptr inbounds %struct.vn_ssa_aux, ptr %141, i64 0, i32 5
  %143 = load i8, ptr %142, align 4
  %144 = or i8 %143, 4
  store i8 %144, ptr %142, align 4
  br label %154

145:                                              ; preds = %133
  %146 = icmp eq i64 %137, 141
  br i1 %146, label %147, label %154, !prof !1073

147:                                              ; preds = %145
  %148 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %149 = getelementptr inbounds %struct.vn_ssa_aux, ptr %148, i64 0, i32 5
  %150 = load i8, ptr %149, align 4
  %151 = and i8 %150, -5
  store i8 %151, ptr %149, align 4
  %152 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %153 = getelementptr inbounds %struct.vn_ssa_aux, ptr %152, i64 0, i32 1
  store ptr null, ptr %153, align 8, !tbaa !532
  br label %154

154:                                              ; preds = %117, %140, %147, %145, %120, %121
  %155 = load i64, ptr %55, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 141
  br i1 %157, label %158, label %173, !prof !1074

158:                                              ; preds = %154
  %159 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %3) #20
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161, !prof !1075

161:                                              ; preds = %158
  %162 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %163 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %162) #20
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161, %158
  br i1 %72, label %169, label %166, !prof !1076

166:                                              ; preds = %165
  %167 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %71) #20
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %173, !prof !1069

169:                                              ; preds = %166, %165
  %170 = load i64, ptr %55, align 8
  %171 = and i64 %170, 4194304
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %186, !prof !1075

173:                                              ; preds = %169, %166, %161, %154
  %174 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %3) #20
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %188, label %176, !prof !1077

176:                                              ; preds = %173
  %177 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 141
  br i1 %180, label %181, label %188, !prof !1078

181:                                              ; preds = %176
  %182 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 4194304
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %188, label %186, !prof !1079

186:                                              ; preds = %181, %169
  %187 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

188:                                              ; preds = %181, %176, %173
  %189 = load i64, ptr %55, align 8
  %190 = and i64 %189, 65535
  %191 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !540
  %193 = add i32 %192, -3
  %194 = icmp ult i32 %193, 2
  br i1 %194, label %195, label %198, !prof !1080

195:                                              ; preds = %188
  %196 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %197 = tail call fastcc zeroext i8 @visit_reference_op_store(ptr noundef nonnull %55, ptr noundef %196, ptr noundef %3) #19, !range !534
  br label %309

198:                                              ; preds = %188
  %199 = icmp eq i64 %190, 141
  br i1 %199, label %200, label %264, !prof !1075

200:                                              ; preds = %198
  %201 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %3) #20
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %207, label %203, !prof !1075

203:                                              ; preds = %200
  %204 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %205 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %204) #20
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203, %200
  br i1 %72, label %221, label %208, !prof !1076

208:                                              ; preds = %207
  %209 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %71) #20
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %221, label %211, !prof !1069

211:                                              ; preds = %208, %203
  %212 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %213 = getelementptr inbounds %struct.vn_ssa_aux, ptr %212, i64 0, i32 5
  %214 = load i8, ptr %213, align 4
  %215 = or i8 %214, 4
  store i8 %215, ptr %213, align 4
  br i1 %72, label %218, label %216

216:                                              ; preds = %211
  %217 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %55, ptr noundef nonnull %71) #19, !range !534
  br label %309

218:                                              ; preds = %211
  %219 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %220 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %55, ptr noundef %219) #19, !range !534
  br label %309

221:                                              ; preds = %208, %207
  %222 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !539
  %223 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %222) #19, !range !536
  %224 = trunc i32 %223 to i8
  switch i8 %224, label %262 [
    i8 2, label %225
    i8 1, label %227
    i8 3, label %229
  ], !prof !1081

225:                                              ; preds = %221
  %226 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !534
  br label %309

227:                                              ; preds = %221
  %228 = tail call fastcc zeroext i8 @visit_binary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !534
  br label %309

229:                                              ; preds = %221
  %230 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !539
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !540
  switch i32 %233, label %260 [
    i32 4, label %234
    i32 3, label %252
    i32 10, label %255
  ], !prof !1082

234:                                              ; preds = %229
  %235 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !539
  %236 = icmp eq i32 %235, 43
  br i1 %236, label %243, label %237, !prof !1083

237:                                              ; preds = %234
  %238 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !539
  %239 = icmp eq i32 %238, 44
  br i1 %239, label %243, label %240, !prof !1083

240:                                              ; preds = %237
  %241 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !539
  %242 = icmp eq i32 %241, 118
  br i1 %242, label %243, label %252, !prof !1083

243:                                              ; preds = %240, %237, %234
  %244 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %245 = getelementptr inbounds %struct.tree_exp, ptr %244, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !497
  %247 = load i64, ptr %246, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 141
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !534
  br label %309

252:                                              ; preds = %240, %243, %229
  %253 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %254 = tail call fastcc zeroext i8 @visit_reference_op_load(ptr noundef nonnull %55, ptr noundef %253, ptr noundef %3) #19, !range !534
  br label %309

255:                                              ; preds = %229
  %256 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !539
  %257 = icmp eq i32 %256, 121
  br i1 %257, label %258, label %260, !prof !1084

258:                                              ; preds = %255
  %259 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !534
  br label %309

260:                                              ; preds = %255, %229
  %261 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

262:                                              ; preds = %221
  %263 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

264:                                              ; preds = %198
  %265 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

266:                                              ; preds = %51
  %267 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #19, !range !534
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %309, label %269, !prof !1085

269:                                              ; preds = %266
  %270 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %3) #19
  %271 = tail call fastcc zeroext i8 @stmt_has_constants(ptr noundef %3) #19
  %272 = icmp eq i8 %271, 0
  %273 = load i64, ptr %270, align 8
  %274 = and i64 %273, 65535
  %275 = icmp eq i64 %274, 141
  br i1 %272, label %282, label %276, !prof !1086

276:                                              ; preds = %269
  br i1 %275, label %277, label %290, !prof !1087

277:                                              ; preds = %276
  %278 = tail call ptr @VN_INFO(ptr noundef nonnull %270) #19
  %279 = getelementptr inbounds %struct.vn_ssa_aux, ptr %278, i64 0, i32 5
  %280 = load i8, ptr %279, align 4
  %281 = or i8 %280, 4
  store i8 %281, ptr %279, align 4
  br label %290

282:                                              ; preds = %269
  br i1 %275, label %283, label %290, !prof !1088

283:                                              ; preds = %282
  %284 = tail call ptr @VN_INFO(ptr noundef nonnull %270) #19
  %285 = getelementptr inbounds %struct.vn_ssa_aux, ptr %284, i64 0, i32 5
  %286 = load i8, ptr %285, align 4
  %287 = and i8 %286, -5
  store i8 %287, ptr %285, align 4
  %288 = tail call ptr @VN_INFO(ptr noundef nonnull %270) #19
  %289 = getelementptr inbounds %struct.vn_ssa_aux, ptr %288, i64 0, i32 1
  store ptr null, ptr %289, align 8, !tbaa !532
  br label %290

290:                                              ; preds = %276, %282, %283, %277
  %291 = load i64, ptr %270, align 8
  %292 = and i64 %291, 4259839
  %293 = icmp eq i64 %292, 4194445
  br i1 %293, label %294, label %296, !prof !1089

294:                                              ; preds = %290
  %295 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

296:                                              ; preds = %290
  %297 = and i64 %291, 65535
  %298 = icmp eq i64 %297, 141
  br i1 %298, label %299, label %307, !prof !1086

299:                                              ; preds = %296
  %300 = tail call i32 @gimple_call_flags(ptr noundef %3) #20
  %301 = and i32 %300, 3
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %305, label %303, !prof !1086

303:                                              ; preds = %299
  %304 = tail call fastcc zeroext i8 @visit_reference_op_call(ptr noundef nonnull %270, ptr noundef %3) #19, !range !534
  br label %309

305:                                              ; preds = %299
  %306 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

307:                                              ; preds = %296
  %308 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !534
  br label %309

309:                                              ; preds = %38, %266, %49, %33, %186, %264, %225, %227, %262, %260, %258, %252, %250, %216, %218, %195, %118, %103, %67, %307, %305, %303, %294
  %310 = phi i8 [ %34, %33 ], [ %39, %38 ], [ %50, %49 ], [ 0, %266 ], [ %69, %67 ], [ %110, %103 ], [ %119, %118 ], [ %187, %186 ], [ %197, %195 ], [ %217, %216 ], [ %220, %218 ], [ %263, %262 ], [ %261, %260 ], [ %259, %258 ], [ %254, %252 ], [ %251, %250 ], [ %228, %227 ], [ %226, %225 ], [ %265, %264 ], [ %295, %294 ], [ %304, %303 ], [ %306, %305 ], [ %308, %307 ]
  ret i8 %310
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @empty_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @statistics_histogram_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_nary(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !652 !PGOFuncName !1090 {
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  %4 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 16
  %7 = sub nsw i32 4, %6
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = sub nsw i64 64, %9
  %11 = load ptr, ptr @current_info, align 8, !tbaa !502
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 5
  store i64 %10, ptr %12, align 8, !tbaa !783
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !784
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !785
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, %10
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3
  %23 = trunc i64 %10 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %22, i32 noundef %23) #20
  %24 = load ptr, ptr @current_info, align 8, !tbaa !502
  %25 = getelementptr inbounds %struct.vn_tables_s, ptr %24, i64 0, i32 3, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !783
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %24, i64 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !785
  br label %29

29:                                               ; preds = %2, %21
  %30 = phi ptr [ %16, %2 ], [ %28, %21 ]
  %31 = phi i64 [ %10, %2 ], [ %26, %21 ]
  %32 = phi ptr [ %11, %2 ], [ %24, %21 ]
  %33 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 5
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 3
  %35 = getelementptr inbounds i8, ptr %30, i64 %31
  %36 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !787
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 10
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %29, %39
  %44 = ptrtoint ptr %37 to i64
  store i64 %44, ptr %33, align 8, !tbaa !783
  %45 = ptrtoint ptr %35 to i64
  %46 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !788
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = xor i32 %47, -1
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = inttoptr i64 %52 to ptr
  store ptr %53, ptr %34, align 8, !tbaa !785
  %54 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !789
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %52, %56
  %58 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !784
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %56
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  store ptr %59, ptr %34, align 8, !tbaa !785
  br label %64

64:                                               ; preds = %43, %63
  %65 = phi ptr [ %53, %43 ], [ %59, %63 ]
  store ptr %65, ptr %36, align 8, !tbaa !787
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr nonnull align 8 %3, i64 %10, i1 false)
  %66 = load ptr, ptr %32, align 8, !tbaa !761
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !744
  %69 = tail call ptr @htab_find_slot_with_hash(ptr noundef %66, ptr noundef %37, i32 noundef %68, i32 noundef 1) #20
  %70 = load ptr, ptr %69, align 8, !tbaa !502
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2781, ptr noundef nonnull @.str.1) #20
  br label %73

73:                                               ; preds = %64, %72
  store ptr %37, ptr %69, align 8, !tbaa !502
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_phis(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !652 !PGOFuncName !1091 {
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  %4 = load ptr, ptr @current_info, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !830
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.vn_phi_s, ptr %3, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !957
  %9 = load ptr, ptr @current_info, align 8, !tbaa !502
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !829
  %12 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !952
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 1) #20
  store ptr %7, ptr %14, align 8, !tbaa !502
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_references(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !652 !PGOFuncName !1092 {
  %3 = load ptr, ptr %0, align 8, !tbaa !502
  %4 = load ptr, ptr @current_info, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !725
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %8 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !576
  %9 = load ptr, ptr @current_info, align 8, !tbaa !502
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !694
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !601
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 1) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !502
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  tail call void @free_reference(ptr noundef nonnull %15) #19
  br label %18

18:                                               ; preds = %17, %2
  store ptr %7, ptr %14, align 8, !tbaa !502
  ret i32 1
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1093 !PGOFuncName !1094 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !1095

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 4259839
  %7 = icmp eq i64 %6, 4194445
  br i1 %7, label %8, label %10, !prof !1096

8:                                                ; preds = %4, %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10, !prof !1097

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %0, %8 ], [ %1, %4 ]
  %12 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %23, label %14, !prof !1098

14:                                               ; preds = %10
  %15 = load i64, ptr %11, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %23, label %18, !prof !1099

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %11) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %8
  %22 = phi ptr [ %11, %18 ], [ null, %8 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #20
  br label %23

23:                                               ; preds = %10, %14, %18, %21
  %24 = phi ptr [ %11, %10 ], [ %11, %14 ], [ %11, %18 ], [ %22, %21 ]
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27, !prof !1099

27:                                               ; preds = %23
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef %0, i32 noundef 0) #20
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %35 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef %24, i32 noundef 0) #20
  br label %37

37:                                               ; preds = %31, %27, %23
  %38 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %39 = load ptr, ptr %38, align 8, !tbaa !528
  %40 = icmp eq ptr %39, %24
  br i1 %40, label %54, label %41, !prof !1100

41:                                               ; preds = %37
  %42 = tail call i32 @operand_equal_p(ptr noundef %39, ptr noundef %24, i32 noundef 2) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54, !prof !1101

44:                                               ; preds = %41
  %45 = tail call ptr @VN_INFO(ptr noundef %0) #19
  store ptr %24, ptr %45, align 8, !tbaa !528
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48, !prof !1101

48:                                               ; preds = %44
  %49 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %46)
  br label %63

54:                                               ; preds = %41, %37
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57, !prof !850

57:                                               ; preds = %54
  %58 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @fputc(i32 10, ptr nonnull %55)
  br label %63

63:                                               ; preds = %54, %57, %61, %44, %48, %52
  %64 = phi i8 [ 1, %52 ], [ 1, %48 ], [ 1, %44 ], [ 0, %61 ], [ 0, %57 ], [ 0, %54 ]
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_phi(ptr noundef %0) unnamed_addr #0 !prof !971 !PGOFuncName !1102 {
  %2 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #19
  %3 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 4194304
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11, !prof !1103

7:                                                ; preds = %1
  %8 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %13, !prof !1104

11:                                               ; preds = %1
  %12 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %3, ptr noundef nonnull %3) #19, !range !534
  br label %87

13:                                               ; preds = %7, %33
  %14 = phi i32 [ %35, %33 ], [ 0, %7 ]
  %15 = phi ptr [ %34, %33 ], [ %8, %7 ]
  %16 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %14) #19
  %17 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %16) #19
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %24, !prof !1105

21:                                               ; preds = %13
  %22 = tail call ptr @VN_INFO(ptr noundef nonnull %17) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !528
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi ptr [ %23, %21 ], [ %17, %13 ]
  %26 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %33, label %28, !prof !1106

28:                                               ; preds = %24
  %29 = icmp eq ptr %15, %26
  br i1 %29, label %33, label %30, !prof !1107

30:                                               ; preds = %28
  %31 = tail call zeroext i8 @expressions_equal_p(ptr noundef %25, ptr noundef %15) #19, !range !534
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28, %24, %30
  %34 = phi ptr [ %15, %30 ], [ %15, %24 ], [ %25, %28 ]
  %35 = add nuw i32 %14, 1
  %36 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %13, label %38, !prof !1108, !llvm.loop !1109

38:                                               ; preds = %33, %30
  %39 = phi ptr [ %34, %33 ], [ %15, %30 ]
  %40 = phi i1 [ false, %33 ], [ true, %30 ]
  br i1 %40, label %63, label %41, !prof !698

41:                                               ; preds = %7, %38
  %42 = phi ptr [ %39, %38 ], [ %8, %7 ]
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %42) #20
  %44 = icmp eq i8 %43, 0
  %45 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %46 = tail call ptr @VN_INFO(ptr noundef %45) #19
  %47 = getelementptr inbounds %struct.vn_ssa_aux, ptr %46, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, -5
  %50 = select i1 %44, i8 0, i8 4, !prof !1110
  %51 = or disjoint i8 %49, %50
  store i8 %51, ptr %47, align 4
  %52 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %53 = tail call ptr @VN_INFO(ptr noundef %52) #19
  %54 = getelementptr inbounds %struct.vn_ssa_aux, ptr %53, i64 0, i32 1
  store ptr %42, ptr %54, align 8, !tbaa !532
  %55 = load i64, ptr %42, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  %58 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  br i1 %57, label %59, label %61, !prof !1110

59:                                               ; preds = %41
  %60 = tail call fastcc zeroext i8 @visit_copy(ptr noundef %58, ptr noundef nonnull %42) #19, !range !534
  br label %87

61:                                               ; preds = %41
  %62 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %58, ptr noundef nonnull %42) #19, !range !534
  br label %87

63:                                               ; preds = %38
  %64 = tail call fastcc ptr @vn_phi_lookup(ptr noundef %0) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66, !prof !889

66:                                               ; preds = %63
  %67 = load i64, ptr %64, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  %70 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  br i1 %69, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call fastcc zeroext i8 @visit_copy(ptr noundef %70, ptr noundef nonnull %64) #19, !range !534
  br label %87

73:                                               ; preds = %66
  %74 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %70, ptr noundef nonnull %64) #19, !range !534
  br label %87

75:                                               ; preds = %63
  %76 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  tail call fastcc void @vn_phi_insert(ptr noundef %0, ptr noundef %76) #19
  %77 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %78 = tail call ptr @VN_INFO(ptr noundef %77) #19
  %79 = getelementptr inbounds %struct.vn_ssa_aux, ptr %78, i64 0, i32 5
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, -5
  store i8 %81, ptr %79, align 4
  %82 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %83 = tail call ptr @VN_INFO(ptr noundef %82) #19
  %84 = getelementptr inbounds %struct.vn_ssa_aux, ptr %83, i64 0, i32 1
  store ptr %82, ptr %84, align 8, !tbaa !532
  %85 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %86 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %85, ptr noundef %85) #19, !range !534
  br label %87

87:                                               ; preds = %75, %73, %71, %61, %59, %11
  %88 = phi i8 [ %12, %11 ], [ %60, %59 ], [ %62, %61 ], [ %72, %71 ], [ %74, %73 ], [ %86, %75 ]
  ret i8 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1111 !PGOFuncName !1112 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1113

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !534
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1031

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #19
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1114 !PGOFuncName !1115 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1116

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
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @defs_to_varying(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1029 !PGOFuncName !1117 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  %3 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %0) #19
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19, !prof !1118

6:                                                ; preds = %1, %6
  %7 = phi i8 [ %15, %6 ], [ 0, %1 ]
  %8 = phi ptr [ %16, %6 ], [ %3, %1 ]
  %9 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %8) #19
  %10 = tail call ptr @VN_INFO(ptr noundef %9) #19
  %11 = getelementptr inbounds %struct.vn_ssa_aux, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 8
  store i8 %13, ptr %11, align 4
  %14 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %9, ptr noundef %9) #19, !range !534
  %15 = or i8 %14, %7
  %16 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #19
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %6, label %19, !prof !1119, !llvm.loop !1120

19:                                               ; preds = %6, %1
  %20 = phi i8 [ 0, %1 ], [ %15, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  ret i8 %20
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1121 !PGOFuncName !1122 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %19, !prof !1123

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %15, %13 ], [ %1, %2 ]
  %8 = tail call ptr @VN_INFO(ptr noundef nonnull %7) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !528
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %11, label %13, !prof !1124

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8
  br label %19

13:                                               ; preds = %6
  %14 = tail call ptr @VN_INFO(ptr noundef nonnull %7) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !528
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %6, label %19, !prof !1125, !llvm.loop !1126

19:                                               ; preds = %13, %11, %2
  %20 = phi i64 [ %3, %2 ], [ %12, %11 ], [ %16, %13 ]
  %21 = phi ptr [ %1, %2 ], [ %7, %11 ], [ %15, %13 ]
  %22 = and i64 %20, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %24, label %39, !prof !1127

24:                                               ; preds = %19
  %25 = tail call ptr @VN_INFO(ptr noundef nonnull %21) #19
  %26 = getelementptr inbounds %struct.vn_ssa_aux, ptr %25, i64 0, i32 5
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 4
  %29 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %30 = getelementptr inbounds %struct.vn_ssa_aux, ptr %29, i64 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, -5
  %33 = or disjoint i8 %32, %28
  store i8 %33, ptr %30, align 4
  %34 = tail call ptr @VN_INFO(ptr noundef nonnull %21) #19
  %35 = getelementptr inbounds %struct.vn_ssa_aux, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !532
  %37 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %38 = getelementptr inbounds %struct.vn_ssa_aux, ptr %37, i64 0, i32 1
  store ptr %36, ptr %38, align 8, !tbaa !532
  br label %39

39:                                               ; preds = %24, %19
  %40 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %21) #19, !range !534
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @try_to_simplify(ptr noundef %0) unnamed_addr #0 !prof !1128 !PGOFuncName !1129 {
  %2 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #20
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1074

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %42, label %9, !prof !1079

9:                                                ; preds = %4, %1
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !540
  switch i32 %13, label %41 [
    i32 3, label %14
    i32 4, label %18
    i32 6, label %37
    i32 5, label %39
    i32 7, label %39
  ], !prof !1130

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %16 = tail call ptr @get_symbol_constant_value(ptr noundef %15) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %42, !prof !1131

18:                                               ; preds = %9
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %20 = tail call ptr @fold_const_aggregate_ref(ptr noundef %19) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %42, !prof !1132

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 43
  br i1 %26, label %37, label %27, !prof !1083

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 44
  br i1 %31, label %37, label %32, !prof !1083

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 118
  br i1 %36, label %37, label %41, !prof !1083

37:                                               ; preds = %22, %27, %32, %9
  %38 = tail call fastcc ptr @simplify_unary_expression(ptr noundef %0) #19
  br label %42

39:                                               ; preds = %9, %9
  %40 = tail call fastcc ptr @simplify_binary_expression(ptr noundef %0) #19
  br label %42

41:                                               ; preds = %9, %32, %14
  br label %42

42:                                               ; preds = %18, %14, %4, %41, %39, %37
  %43 = phi ptr [ null, %41 ], [ %40, %39 ], [ %38, %37 ], [ null, %4 ], [ %16, %14 ], [ %20, %18 ]
  ret ptr %43
}

; Function Attrs: optsize
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @expr_has_constants(ptr noundef %0) unnamed_addr #0 !prof !1133 !PGOFuncName !1134 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !540
  switch i32 %5, label %21 [
    i32 6, label %6
    i32 7, label %10
    i32 4, label %23
    i32 3, label %23
  ], !prof !1135

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %8) #20
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !497
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23, !prof !1069

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !497
  %18 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %17) #20
  %19 = icmp ne i8 %18, 0
  %20 = zext i1 %19 to i8
  br label %23

21:                                               ; preds = %1
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  br label %23

23:                                               ; preds = %1, %1, %10, %15, %21, %6
  %24 = phi i8 [ %22, %21 ], [ %9, %6 ], [ 1, %10 ], [ %20, %15 ], [ 0, %1 ], [ 0, %1 ]
  ret i8 %24
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_has_constants(ptr noundef %0) unnamed_addr #0 !prof !1136 !PGOFuncName !1137 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !536
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %24, !prof !1138

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #19, !range !536
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %23 [
    i8 2, label %8
    i8 1, label %11
    i8 3, label %20
  ], !prof !1139

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %10 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %9) #20
  br label %24

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24, !prof !1140

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  %17 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #20
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  br label %24

20:                                               ; preds = %4
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %21) #20
  br label %24

23:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2285, ptr noundef nonnull @.str.1) #20
  br label %24

24:                                               ; preds = %11, %15, %1, %23, %20, %8
  %25 = phi i8 [ 0, %23 ], [ %22, %20 ], [ %10, %8 ], [ 0, %1 ], [ 1, %11 ], [ %19, %15 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_reference_op_store(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1032 !PGOFuncName !1141 {
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  %5 = tail call ptr @vn_reference_lookup(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 0, ptr noundef null) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7, !prof !1079

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call ptr @VN_INFO(ptr noundef nonnull %5) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !528
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %5, %7 ]
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %21 = load ptr, ptr %20, align 8, !tbaa !528
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi ptr [ %21, %19 ], [ %1, %14 ]
  %24 = tail call zeroext i8 @expressions_equal_p(ptr noundef %15, ptr noundef %23) #19, !range !534
  %25 = icmp ne ptr %15, null
  %26 = icmp ne i8 %24, 0
  %27 = and i1 %25, %26
  br i1 %27, label %64, label %28, !prof !1142

28:                                               ; preds = %3, %22
  %29 = phi ptr [ %23, %22 ], [ %1, %3 ]
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !1079

32:                                               ; preds = %28
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %30)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %39 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %38)
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %40, ptr noundef %0, i32 noundef 0) #20
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %42 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %41)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !502
  tail call void @print_generic_expr(ptr noundef %43, ptr noundef %29, i32 noundef 0) #20
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %45 = tail call i32 @fputc(i32 10, ptr %44)
  br label %46

46:                                               ; preds = %36, %32, %28
  %47 = tail call fastcc ptr @gimple_vdef(ptr noundef %2) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49, !prof !1034

49:                                               ; preds = %46
  %50 = tail call ptr @VN_INFO(ptr noundef nonnull %47) #19
  %51 = getelementptr inbounds %struct.vn_ssa_aux, ptr %50, i64 0, i32 5
  %52 = load i8, ptr %51, align 4
  %53 = or i8 %52, 8
  store i8 %53, ptr %51, align 4
  %54 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %47, ptr noundef nonnull %47) #19, !range !534
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i8 [ %54, %49 ], [ 0, %46 ]
  %57 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %29) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62, !prof !1079

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @is_gimple_reg(ptr noundef %29) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %83, label %62, !prof !1034

62:                                               ; preds = %59, %55
  %63 = tail call ptr @vn_reference_insert(ptr noundef %0, ptr noundef %29, ptr noundef %47) #19
  br label %83

64:                                               ; preds = %22
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 75, i64 1, ptr nonnull %65)
  br label %73

73:                                               ; preds = %71, %67, %64
  %74 = tail call fastcc ptr @gimple_vdef(ptr noundef %2) #19
  %75 = tail call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  %76 = tail call ptr @VN_INFO(ptr noundef %74) #19
  %77 = getelementptr inbounds %struct.vn_ssa_aux, ptr %76, i64 0, i32 5
  %78 = load i8, ptr %77, align 4
  %79 = or i8 %78, 8
  store i8 %79, ptr %77, align 4
  %80 = tail call ptr @VN_INFO(ptr noundef %75) #19
  %81 = load ptr, ptr %80, align 8, !tbaa !528
  %82 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %74, ptr noundef %81) #19, !range !534
  br label %83

83:                                               ; preds = %59, %62, %73
  %84 = phi i8 [ %82, %73 ], [ %56, %62 ], [ %56, %59 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_unary_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1143 !PGOFuncName !1144 {
  %3 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %1, ptr noundef null) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1145

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %3) #19, !range !534
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !534
  %9 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %1, ptr noundef %0) #19
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_binary_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1146 !PGOFuncName !1147 {
  %3 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %1, ptr noundef null) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1148

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %3) #19, !range !534
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !534
  %9 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %1, ptr noundef %0) #19
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_reference_op_load(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1149 !PGOFuncName !1150 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  store ptr %5, ptr %4, align 8, !tbaa !502
  store ptr %4, ptr @last_vuse_ptr, align 8, !tbaa !502
  %6 = call ptr @vn_reference_lookup(ptr noundef %1, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #19
  store ptr null, ptr @last_vuse_ptr, align 8, !tbaa !502
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18, !prof !1151

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 118
  br i1 %11, label %12, label %138, !prof !1152

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !497
  %15 = call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  %16 = call ptr @vn_reference_lookup(ptr noundef %14, ptr noundef %15, i8 noundef zeroext 1, ptr noundef null) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %138, label %18, !prof !1153

18:                                               ; preds = %3, %12
  %19 = phi ptr [ %16, %12 ], [ %6, %3 ]
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !497
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !497
  %24 = call zeroext i8 @useless_type_conversion_p(ptr noundef %21, ptr noundef %23) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %116, !prof !1154

26:                                               ; preds = %18
  %27 = load ptr, ptr %22, align 8, !tbaa !497
  %28 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 118, ptr noundef %27, ptr noundef nonnull %19) #20
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i16
  switch i16 %30, label %51 [
    i16 116, label %31
    i16 113, label %31
    i16 118, label %31
  ]

31:                                               ; preds = %26, %26, %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !497
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = call ptr @vn_get_expr_for(ptr noundef nonnull %33) #19
  %39 = call fastcc ptr @valueize_expr(ptr noundef %38) #19
  %40 = load i64, ptr %38, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %51 [
    i16 116, label %42
    i16 113, label %42
    i16 118, label %42
  ]

42:                                               ; preds = %37, %37, %37
  %43 = load i64, ptr %28, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65535
  %46 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !497
  %48 = call ptr @fold_unary_ignore_overflow_loc(i32 noundef 0, i32 noundef %45, ptr noundef %47, ptr noundef nonnull %38) #20
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %28, ptr %48
  br label %51

51:                                               ; preds = %42, %37, %26, %31
  %52 = phi ptr [ %28, %31 ], [ %28, %26 ], [ %28, %37 ], [ %50, %42 ]
  %53 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %52) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, ptr %52, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %116, label %59

59:                                               ; preds = %55
  %60 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %52, ptr noundef null) #19
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi ptr [ %52, %51 ], [ %60, %59 ]
  %63 = icmp eq ptr %62, null
  %64 = load i8, ptr @may_insert, align 1
  %65 = icmp ne i8 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %113

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !497
  %70 = call fastcc ptr @make_ssa_name(ptr noundef %69) #19
  %71 = call ptr @VN_INFO_GET(ptr noundef %70) #19
  store ptr %70, ptr %71, align 8, !tbaa !528
  %72 = call i32 @get_next_value_id() #19
  %73 = call ptr @VN_INFO(ptr noundef %70) #19
  %74 = getelementptr inbounds %struct.vn_ssa_aux, ptr %73, i64 0, i32 2
  store i32 %72, ptr %74, align 8, !tbaa !727
  %75 = call ptr @VN_INFO(ptr noundef %70) #19
  %76 = getelementptr inbounds %struct.vn_ssa_aux, ptr %75, i64 0, i32 1
  store ptr %52, ptr %76, align 8, !tbaa !532
  %77 = call fastcc zeroext i8 @expr_has_constants(ptr noundef %52) #19
  %78 = call ptr @VN_INFO(ptr noundef %70) #19
  %79 = getelementptr inbounds %struct.vn_ssa_aux, ptr %78, i64 0, i32 5
  %80 = load i8, ptr %79, align 4
  %81 = shl i8 %77, 2
  %82 = and i8 %81, 4
  %83 = and i8 %80, -5
  %84 = or disjoint i8 %83, %82
  store i8 %84, ptr %79, align 4
  %85 = call ptr @VN_INFO(ptr noundef %70) #19
  %86 = getelementptr inbounds %struct.vn_ssa_aux, ptr %85, i64 0, i32 5
  %87 = load i8, ptr %86, align 4
  %88 = or i8 %87, 16
  store i8 %88, ptr %86, align 4
  %89 = load ptr, ptr @current_info, align 8, !tbaa !502
  %90 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %67
  %93 = load ptr, ptr @valid_info, align 8, !tbaa !502
  store ptr %93, ptr @current_info, align 8, !tbaa !502
  %94 = call ptr @vn_nary_op_insert(ptr noundef %52, ptr noundef %70) #19
  %95 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  store ptr %95, ptr @current_info, align 8, !tbaa !502
  br label %98

96:                                               ; preds = %67
  %97 = call ptr @vn_nary_op_insert(ptr noundef %52, ptr noundef %70) #19
  br label %98

98:                                               ; preds = %96, %92
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr @dump_flags, align 4, !tbaa !540
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = call i64 @fwrite(ptr nonnull @.str.25, i64 15, i64 1, ptr nonnull %99)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !502
  call void @print_generic_expr(ptr noundef %107, ptr noundef %70, i32 noundef 0) #20
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %109 = call i64 @fwrite(ptr nonnull @.str.26, i64 16, i64 1, ptr %108)
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !502
  call void @print_generic_expr(ptr noundef %110, ptr noundef %52, i32 noundef 0) #20
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !502
  %112 = call i32 @fputc(i32 10, ptr %111)
  br label %113

113:                                              ; preds = %61, %105, %101, %98
  %114 = phi ptr [ %70, %105 ], [ %70, %101 ], [ %70, %98 ], [ %62, %61 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %138, label %116, !prof !643

116:                                              ; preds = %55, %18, %113
  %117 = phi ptr [ %114, %113 ], [ %19, %18 ], [ %52, %55 ]
  %118 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %117) #19, !range !534
  %119 = load i64, ptr %117, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 141
  br i1 %121, label %122, label %142, !prof !1155

122:                                              ; preds = %116
  %123 = call ptr @VN_INFO(ptr noundef nonnull %117) #19
  %124 = getelementptr inbounds %struct.vn_ssa_aux, ptr %123, i64 0, i32 5
  %125 = load i8, ptr %124, align 4
  %126 = and i8 %125, 4
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %142, label %128, !prof !1155

128:                                              ; preds = %122
  %129 = call ptr @VN_INFO(ptr noundef nonnull %117) #19
  %130 = getelementptr inbounds %struct.vn_ssa_aux, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !532
  %132 = call ptr @VN_INFO(ptr noundef %0) #19
  %133 = getelementptr inbounds %struct.vn_ssa_aux, ptr %132, i64 0, i32 1
  store ptr %131, ptr %133, align 8, !tbaa !532
  %134 = call ptr @VN_INFO(ptr noundef %0) #19
  %135 = getelementptr inbounds %struct.vn_ssa_aux, ptr %134, i64 0, i32 5
  %136 = load i8, ptr %135, align 4
  %137 = or i8 %136, 4
  store i8 %137, ptr %135, align 4
  br label %142

138:                                              ; preds = %8, %12, %113
  %139 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !534
  %140 = load ptr, ptr %4, align 8, !tbaa !502
  %141 = call ptr @vn_reference_insert(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %140) #19
  br label %142

142:                                              ; preds = %116, %122, %128, %138
  %143 = phi i8 [ %118, %128 ], [ %118, %122 ], [ %118, %116 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %143
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1156 !PGOFuncName !1157 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_reference_op_call(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !652 !PGOFuncName !1158 {
  %3 = alloca %struct.vn_reference_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #21
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @VN_INFO(ptr noundef nonnull %4) #19
  %8 = load ptr, ptr %7, align 8, !tbaa !528
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !583
  %12 = tail call fastcc ptr @valueize_shared_reference_ops_from_call(ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !576
  %14 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #19
  %15 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !670
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !671
  %17 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %3) #19
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !601
  %19 = call fastcc ptr @vn_reference_lookup_1(ptr noundef nonnull %3, ptr noundef null) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %9
  %22 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %19) #19, !range !534
  %23 = load i64, ptr %19, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  %27 = call ptr @VN_INFO(ptr noundef nonnull %19) #19
  %28 = getelementptr inbounds %struct.vn_ssa_aux, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %26
  %33 = call ptr @VN_INFO(ptr noundef %0) #19
  %34 = getelementptr inbounds %struct.vn_ssa_aux, ptr %33, i64 0, i32 5
  %35 = load i8, ptr %34, align 4
  %36 = or i8 %35, 4
  store i8 %36, ptr %34, align 4
  br label %63

37:                                               ; preds = %9
  %38 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !534
  %39 = load ptr, ptr @current_info, align 8, !tbaa !502
  %40 = getelementptr inbounds %struct.vn_tables_s, ptr %39, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !725
  %42 = call ptr @pool_alloc(ptr noundef %41) #20
  %43 = load ptr, ptr %11, align 8, !tbaa !583
  %44 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !583
  %45 = call fastcc ptr @create_reference_ops_from_call(ptr noundef %1) #19
  %46 = call fastcc ptr @valueize_refs(ptr noundef %45) #19
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !576
  %48 = load ptr, ptr %15, align 8, !tbaa !670
  %49 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !670
  %50 = load i32, ptr %16, align 8, !tbaa !671
  %51 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 3
  store i32 %50, ptr %51, align 8, !tbaa !671
  %52 = load i32, ptr %18, align 4, !tbaa !601
  %53 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 1
  store i32 %52, ptr %53, align 4, !tbaa !601
  %54 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 6
  store ptr %0, ptr %54, align 8, !tbaa !676
  %55 = load ptr, ptr @current_info, align 8, !tbaa !502
  %56 = getelementptr inbounds %struct.vn_tables_s, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !694
  %58 = call ptr @htab_find_slot_with_hash(ptr noundef %57, ptr noundef %42, i32 noundef %52, i32 noundef 1) #20
  %59 = load ptr, ptr %58, align 8, !tbaa !502
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %37
  call void @free_reference(ptr noundef nonnull %59) #19
  br label %62

62:                                               ; preds = %61, %37
  store ptr %42, ptr %58, align 8, !tbaa !502
  br label %63

63:                                               ; preds = %21, %26, %32, %62
  %64 = phi i8 [ %22, %32 ], [ %22, %26 ], [ %22, %21 ], [ %38, %62 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #21
  ret i8 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1159 !PGOFuncName !1160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 !prof !1161 !PGOFuncName !1162 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1163 !PGOFuncName !1164 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vn_phi_lookup(ptr noundef %0) unnamed_addr #0 !prof !959 !PGOFuncName !1165 {
  %2 = alloca %struct.vn_phi_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %3 = load ptr, ptr @shared_lookup_phiargs, align 8
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %3) #19
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6, !prof !1166

6:                                                ; preds = %1, %16
  %7 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %8 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %7) #19
  %9 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %8) #19
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %16, !prof !1167

13:                                               ; preds = %6
  %14 = tail call ptr @VN_INFO(ptr noundef nonnull %9) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !528
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %15, %13 ], [ %9, %6 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @shared_lookup_phiargs, ptr noundef %17) #19
  %18 = add nuw i32 %7, 1
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %6, label %21, !prof !1168, !llvm.loop !1169

21:                                               ; preds = %16, %1
  %22 = load ptr, ptr @shared_lookup_phiargs, align 8, !tbaa !502
  %23 = getelementptr inbounds %struct.vn_phi_s, ptr %2, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !957
  %24 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %25 = getelementptr inbounds %struct.vn_phi_s, ptr %2, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !956
  %26 = call fastcc i32 @vn_phi_compute_hash(ptr noundef nonnull %2) #19
  %27 = getelementptr inbounds %struct.vn_phi_s, ptr %2, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !952
  %28 = load ptr, ptr @current_info, align 8, !tbaa !502
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !829
  %31 = call ptr @htab_find_slot_with_hash(ptr noundef %30, ptr noundef nonnull %2, i32 noundef %26, i32 noundef 0) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %44, !prof !889

33:                                               ; preds = %21
  %34 = load ptr, ptr @current_info, align 8, !tbaa !502
  %35 = load ptr, ptr @optimistic_info, align 8, !tbaa !502
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %49, !prof !888

37:                                               ; preds = %33
  %38 = load ptr, ptr @valid_info, align 8, !tbaa !502
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !829
  %41 = load i32, ptr %27, align 4, !tbaa !952
  %42 = call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef nonnull %2, i32 noundef %41, i32 noundef 0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44, !prof !698

44:                                               ; preds = %21, %37
  %45 = phi ptr [ %42, %37 ], [ %31, %21 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !502
  %47 = getelementptr inbounds %struct.vn_phi_s, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !886
  br label %49

49:                                               ; preds = %33, %37, %44
  %50 = phi ptr [ %48, %44 ], [ null, %37 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vn_phi_insert(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !959 !PGOFuncName !1170 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @current_info, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !830
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !502
  %8 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10, !prof !1166

10:                                               ; preds = %2, %20
  %11 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %12 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %11) #19
  %13 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %12) #19
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %20, !prof !1167

17:                                               ; preds = %10
  %18 = tail call ptr @VN_INFO(ptr noundef nonnull %13) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !528
  br label %20

20:                                               ; preds = %10, %17
  %21 = phi ptr [ %19, %17 ], [ %13, %10 ]
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %21) #19
  %22 = add nuw i32 %11, 1
  %23 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %10, label %25, !prof !1168, !llvm.loop !1171

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8, !tbaa !502
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi ptr [ %26, %25 ], [ null, %2 ]
  %29 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %30 = getelementptr inbounds %struct.vn_ssa_aux, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !727
  store i32 %31, ptr %7, align 8, !tbaa !890
  %32 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 2
  store ptr %28, ptr %32, align 8, !tbaa !957
  %33 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %34 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !956
  %35 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 4
  store ptr %1, ptr %35, align 8, !tbaa !886
  %36 = tail call fastcc i32 @vn_phi_compute_hash(ptr noundef nonnull %7) #19
  %37 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !952
  %38 = load ptr, ptr @current_info, align 8, !tbaa !502
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !829
  %41 = tail call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef nonnull %7, i32 noundef %36, i32 noundef 1) #20
  store ptr %7, ptr %41, align 8, !tbaa !502
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1163 !PGOFuncName !1172 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !497
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1173

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #9 !prof !959 !PGOFuncName !1174 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !1175

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !822
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_phi_compute_hash(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1054 !PGOFuncName !1176 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !956
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !1052
  %7 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !957
  %9 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %8, i32 noundef 0) #19
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !497
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -6
  %16 = icmp ult i32 %15, 3
  %17 = zext i1 %16 to i32
  br i1 %16, label %18, label %25, !prof !1177

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1023
  %22 = lshr i32 %13, 21
  %23 = and i32 %22, 1
  %24 = add nuw nsw i32 %21, %23
  br label %25

25:                                               ; preds = %1, %18
  %26 = phi i32 [ %24, %18 ], [ 0, %1 ]
  %27 = add i32 %6, %17
  %28 = add i32 %27, %26
  %29 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #19, !range !578
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31, !prof !1178

31:                                               ; preds = %25
  %32 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  br label %33

33:                                               ; preds = %31, %44
  %34 = phi ptr [ %45, %44 ], [ %8, %31 ]
  %35 = phi ptr [ %46, %44 ], [ %32, %31 ]
  %36 = phi i32 [ %47, %44 ], [ %28, %31 ]
  %37 = phi i32 [ %48, %44 ], [ 0, %31 ]
  %38 = load ptr, ptr %2, align 8, !tbaa !502
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %44, label %40, !prof !1179

40:                                               ; preds = %33
  %41 = tail call i32 @iterative_hash_expr(ptr noundef %38, i32 noundef %36) #20
  %42 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %43 = load ptr, ptr %7, align 8, !tbaa !957
  br label %44

44:                                               ; preds = %33, %40
  %45 = phi ptr [ %34, %33 ], [ %43, %40 ]
  %46 = phi ptr [ %35, %33 ], [ %42, %40 ]
  %47 = phi i32 [ %36, %33 ], [ %41, %40 ]
  %48 = add nuw nsw i32 %37, 1
  %49 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %45, i32 noundef %48, ptr noundef nonnull %2) #19, !range !578
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %33, !prof !1180, !llvm.loop !1181

51:                                               ; preds = %44, %25
  %52 = phi i32 [ %28, %25 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1029 !PGOFuncName !1182 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !977
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #15 !prof !1183 !PGOFuncName !1184 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1023
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1185

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1186
  %8 = load ptr, ptr %3, align 8, !tbaa !1025
  store ptr %8, ptr %2, align 8, !tbaa !1023
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !973
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @get_symbol_constant_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_const_aggregate_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @simplify_unary_expression(ptr noundef %0) unnamed_addr #0 !prof !1187 !PGOFuncName !1188 {
  %2 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %11, label %5, !prof !1189

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %7 = icmp eq i32 %6, 44
  br i1 %7, label %11, label %8, !prof !1189

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %10 = icmp eq i32 %9, 118
  br i1 %10, label %11, label %14, !prof !1189

11:                                               ; preds = %8, %5, %1
  %12 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !497
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %13, %11 ], [ %2, %8 ]
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %67, !prof !1190

19:                                               ; preds = %14
  %20 = tail call ptr @VN_INFO(ptr noundef nonnull %15) #19
  %21 = getelementptr inbounds %struct.vn_ssa_aux, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25, !prof !1191

25:                                               ; preds = %19
  %26 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %15) #19
  %27 = tail call fastcc ptr @valueize_expr(ptr noundef %26) #19
  br label %54

28:                                               ; preds = %19
  %29 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #19, !range !534
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40, !prof !1192

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %39 = icmp eq i32 %38, 118
  br i1 %39, label %40, label %67

40:                                               ; preds = %37, %34, %31, %28
  %41 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %15) #19
  %42 = tail call fastcc ptr @valueize_expr(ptr noundef %41) #19
  %43 = load i64, ptr %41, align 8
  %44 = and i64 %43, 65535
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !540
  %47 = and i32 %46, -2
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %54, label %49, !prof !1193

49:                                               ; preds = %40
  %50 = trunc i64 %43 to i16
  switch i16 %50, label %51 [
    i16 118, label %54
    i16 141, label %54
  ], !prof !1194

51:                                               ; preds = %49
  %52 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %41) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51, %49, %49, %40, %25
  %55 = phi ptr [ %26, %25 ], [ %41, %40 ], [ %41, %49 ], [ %41, %49 ], [ %41, %51 ]
  %56 = icmp eq ptr %55, %15
  br i1 %56, label %67, label %57, !prof !1195

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %59 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %60 = tail call ptr @fold_unary_ignore_overflow_loc(i32 noundef 0, i32 noundef %58, ptr noundef %59, ptr noundef %55) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62, !prof !1196

62:                                               ; preds = %57
  %63 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %60) #20
  %64 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %63) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %51, %37, %62, %54, %14, %66
  %68 = phi ptr [ null, %66 ], [ null, %14 ], [ null, %54 ], [ %63, %62 ], [ null, %37 ], [ null, %51 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_binary_expression(ptr noundef %0) unnamed_addr #0 !prof !1197 !PGOFuncName !1198 {
  %2 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %3 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  %4 = load i64, ptr %2, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %34, !prof !1199

7:                                                ; preds = %1
  %8 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %9 = getelementptr inbounds %struct.vn_ssa_aux, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19, !prof !1200

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !540
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %22, !prof !1201

19:                                               ; preds = %13, %7
  %20 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %2) #19
  %21 = tail call fastcc ptr @valueize_expr(ptr noundef %20) #19
  br label %34

22:                                               ; preds = %13
  %23 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %24 = load ptr, ptr %23, align 8, !tbaa !528
  %25 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %34, label %27, !prof !1202

27:                                               ; preds = %22
  %28 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %29 = load ptr, ptr %28, align 8, !tbaa !528
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %34, label %31, !prof !1203

31:                                               ; preds = %27
  %32 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !528
  br label %34

34:                                               ; preds = %19, %31, %27, %22, %1
  %35 = phi ptr [ %20, %19 ], [ %33, %31 ], [ %2, %27 ], [ %2, %22 ], [ %2, %1 ]
  %36 = load i64, ptr %3, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60, !prof !1204

39:                                               ; preds = %34
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 5
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45, !prof !1205

45:                                               ; preds = %39
  %46 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %3) #19
  %47 = tail call fastcc ptr @valueize_expr(ptr noundef %46) #19
  br label %60

48:                                               ; preds = %39
  %49 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %50 = load ptr, ptr %49, align 8, !tbaa !528
  %51 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %60, label %53, !prof !1206

53:                                               ; preds = %48
  %54 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %55 = load ptr, ptr %54, align 8, !tbaa !528
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %60, label %57, !prof !1207

57:                                               ; preds = %53
  %58 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %59 = load ptr, ptr %58, align 8, !tbaa !528
  br label %60

60:                                               ; preds = %45, %57, %53, %48, %34
  %61 = phi ptr [ %46, %45 ], [ %59, %57 ], [ %3, %53 ], [ %3, %48 ], [ %3, %34 ]
  %62 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %63 = icmp eq ptr %35, %62
  br i1 %63, label %64, label %67, !prof !1208

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  %66 = icmp eq ptr %61, %65
  br i1 %66, label %83, label %67, !prof !1209

67:                                               ; preds = %64, %60
  tail call void @fold_defer_overflow_warnings() #20
  %68 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %69 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %70 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %68, ptr noundef %69, ptr noundef %35, ptr noundef %61) #20
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72, !prof !1210

72:                                               ; preds = %67
  %73 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %70) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75, !prof !643

75:                                               ; preds = %72
  %76 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %73) #20
  %77 = icmp ne i8 %76, 0
  %78 = zext i1 %77 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %78, ptr noundef %0, i32 noundef 0) #20
  %79 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %73) #20
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %83, !prof !1211

81:                                               ; preds = %67, %72
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef %0, i32 noundef 0) #20
  br label %82

82:                                               ; preds = %81, %75
  br label %83

83:                                               ; preds = %75, %64, %82
  %84 = phi ptr [ null, %82 ], [ null, %64 ], [ %73, %75 ]
  ret ptr %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @valueize_expr(ptr noundef returned %0) unnamed_addr #0 !prof !527 !PGOFuncName !1212 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !540
  switch i32 %5, label %48 [
    i32 6, label %6
    i32 7, label %17
  ], !prof !1213

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = tail call ptr @VN_INFO(ptr noundef nonnull %8) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !528
  %15 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %48, label %43

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !497
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %32, !prof !1214

23:                                               ; preds = %17
  %24 = tail call ptr @VN_INFO(ptr noundef nonnull %19) #19
  %25 = load ptr, ptr %24, align 8, !tbaa !528
  %26 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %32, label %28, !prof !1215

28:                                               ; preds = %23
  %29 = load ptr, ptr %18, align 8, !tbaa !497
  %30 = tail call ptr @VN_INFO(ptr noundef %29) #19
  %31 = load ptr, ptr %30, align 8, !tbaa !528
  store ptr %31, ptr %18, align 8, !tbaa !497
  br label %32

32:                                               ; preds = %28, %23, %17
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !497
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %48, !prof !1216

38:                                               ; preds = %32
  %39 = tail call ptr @VN_INFO(ptr noundef nonnull %34) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !528
  %41 = load ptr, ptr @VN_TOP, align 8, !tbaa !502
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %48, label %43, !prof !1217

43:                                               ; preds = %38, %12
  %44 = phi ptr [ %7, %12 ], [ %33, %38 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !497
  %46 = tail call ptr @VN_INFO(ptr noundef %45) #19
  %47 = load ptr, ptr %46, align 8, !tbaa !528
  store ptr %47, ptr %44, align 8, !tbaa !497
  br label %48

48:                                               ; preds = %43, %1, %32, %38, %6, %12
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !1218 !PGOFuncName !1219 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !534
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !1192

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !539
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 116, label %10
    i16 113, label %10
    i16 118, label %10
  ]

7:                                                ; preds = %4
  %8 = icmp eq i32 %5, 77
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %1, %7, %4, %4, %4
  %11 = phi i8 [ 1, %4 ], [ %9, %7 ], [ 1, %4 ], [ 1, %4 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @fold_unary_ignore_overflow_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @valid_gimple_rhs_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !652 !PGOFuncName !1220 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !502
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #20
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @valueize_shared_reference_ops_from_call(ptr noundef %0) unnamed_addr #0 !prof !652 !PGOFuncName !1221 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @shared_lookup_references, align 8
  tail call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %4, i32 noundef 0) #19
  tail call void @copy_reference_ops_from_call(ptr noundef nonnull %0, ptr noundef nonnull @shared_lookup_references) #19
  %5 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !502
  %6 = tail call fastcc ptr @valueize_refs(ptr noundef %5) #19
  store ptr %6, ptr @shared_lookup_references, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_reference_ops_from_call(ptr noundef %0) unnamed_addr #0 !prof !652 !PGOFuncName !1222 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !502
  call void @copy_reference_ops_from_call(ptr noundef %0, ptr noundef nonnull %2) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !502
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_op_iter_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !993 !PGOFuncName !1223 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = tail call fastcc i32 @VEC_ssa_op_iter_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1224

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 40) #20
  store ptr %6, ptr %0, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_op_iter_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !prof !993 !PGOFuncName !1225 {
  %3 = load i32, ptr %0, align 8, !tbaa !995
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !995
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !1226

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !1227
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_op_iter_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !993 !PGOFuncName !1228 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1229

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1230
  %6 = load i32, ptr %0, align 8, !tbaa !995
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1231 !PGOFuncName !1232 {
  store ptr %1, ptr %0, align 8, !tbaa !1233
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1235
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1237
  %6 = tail call i64 @htab_size(ptr noundef %1) #20
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !1238
  %9 = load ptr, ptr %5, align 8, !tbaa !1237
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !502
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !1237
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !1239, !llvm.loop !1240

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !1241

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !502
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1242 !PGOFuncName !1243 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1237
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1238
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #16 !prof !1244 !PGOFuncName !1245 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1238
  %5 = load ptr, ptr %2, align 8, !tbaa !1237
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !1237
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !1246

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !502
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!495}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!35 = !{ptr @VN_INFO, ptr @VEC_vn_ssa_aux_t_base_index, i64 24052613}
!36 = !{ptr @VN_INFO, ptr @fancy_abort, i64 1}
!37 = !{ptr @VN_INFO_GET, ptr @_obstack_newchunk, i64 4988}
!38 = !{ptr @VN_INFO_GET, ptr @VEC_vn_ssa_aux_t_base_length, i64 632484}
!39 = !{ptr @VN_INFO_GET, ptr @VEC_vn_ssa_aux_t_heap_safe_grow, i64 35}
!40 = !{ptr @VN_INFO_GET, ptr @VEC_vn_ssa_aux_t_base_replace, i64 632484}
!41 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow, ptr @VEC_vn_ssa_aux_t_heap_reserve_exact, i64 110}
!42 = !{ptr @vn_get_expr_for, ptr @VN_INFO, i64 145392}
!43 = !{ptr @vn_get_expr_for, ptr @gimple_nop_p, i64 68304}
!44 = !{ptr @vn_get_expr_for, ptr @gimple_code, i64 68303}
!45 = !{ptr @vn_get_expr_for, ptr @is_gimple_assign, i64 68302}
!46 = !{ptr @vn_get_expr_for, ptr @gimple_assign_rhs_code, i64 86766}
!47 = !{ptr @vn_get_expr_for, ptr @gimple_assign_rhs1, i64 18569}
!48 = !{ptr @vn_get_expr_for, ptr @gimple_expr_type, i64 18566}
!49 = !{ptr @vn_get_expr_for, ptr @fold_build1_stat_loc, i64 2}
!50 = !{ptr @vn_get_expr_for, ptr @gimple_assign_rhs2, i64 18564}
!51 = !{ptr @vn_get_expr_for, ptr @fold_build2_stat_loc, i64 18564}
!52 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 696075}
!53 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 874524}
!54 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 1655714}
!55 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 1655714}
!56 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 803332}
!57 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1863640}
!58 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 241604}
!59 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 241603}
!60 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 19}
!61 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 241584}
!62 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 240071}
!63 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 240070}
!64 = !{ptr @get_constant_value_id, ptr @vn_hash_constant_with_type, i64 2269}
!65 = !{ptr @get_constant_value_id, ptr @htab_find_slot_with_hash, i64 2269}
!66 = !{ptr @vn_hash_constant_with_type, ptr @iterative_hash_expr, i64 2466}
!67 = !{ptr @get_or_alloc_constant_value_id, ptr @vn_hash_constant_with_type, i64 197}
!68 = !{ptr @get_or_alloc_constant_value_id, ptr @htab_find_slot_with_hash, i64 197}
!69 = !{ptr @get_or_alloc_constant_value_id, ptr @xmalloc, i64 196}
!70 = !{ptr @get_or_alloc_constant_value_id, ptr @get_next_value_id, i64 196}
!71 = !{ptr @get_or_alloc_constant_value_id, ptr @bitmap_set_bit, i64 196}
!72 = !{ptr @value_id_constant_p, ptr @bitmap_bit_p, i64 1715479}
!73 = !{ptr @vn_reference_compute_hash, ptr @VEC_vn_reference_op_s_base_iterate, i64 1159877}
!74 = !{ptr @vn_reference_compute_hash, ptr @vn_reference_op_compute_hash, i64 665771}
!75 = !{ptr @vn_reference_op_compute_hash, ptr @iterative_hash_hashval_t, i64 665771}
!76 = !{ptr @vn_reference_op_compute_hash, ptr @iterative_hash_expr, i64 843187}
!77 = !{ptr @vn_reference_eq, ptr @VEC_vn_reference_op_s_base_length, i64 383054}
!78 = !{ptr @vn_reference_eq, ptr @VEC_vn_reference_op_s_base_iterate, i64 439048}
!79 = !{ptr @vn_reference_eq, ptr @VEC_vn_reference_op_s_base_index, i64 247523}
!80 = !{ptr @vn_reference_eq, ptr @vn_reference_op_eq, i64 247523}
!81 = !{ptr @vn_reference_op_eq, ptr @types_compatible_p, i64 247524}
!82 = !{ptr @vn_reference_op_eq, ptr @expressions_equal_p, i64 742566}
!83 = !{ptr @copy_reference_ops_from_ref, ptr @VEC_vn_reference_op_s_heap_safe_push, i64 661944}
!84 = !{ptr @copy_reference_ops_from_ref, ptr @integer_zerop, i64 1861}
!85 = !{ptr @copy_reference_ops_from_ref, ptr @host_integerp, i64 929}
!86 = !{ptr @copy_reference_ops_from_ref, ptr @array_ref_low_bound, i64 88764}
!87 = !{ptr @copy_reference_ops_from_ref, ptr @array_ref_element_size, i64 88764}
!88 = !{ptr @copy_reference_ops_from_ref, ptr @is_gimple_min_invariant, i64 2}
!89 = !{ptr @copy_reference_ops_from_ref, ptr @fancy_abort, i64 1}
!90 = !{ptr @VEC_vn_reference_op_s_heap_safe_push, ptr @VEC_vn_reference_op_s_heap_reserve, i64 661943}
!91 = !{ptr @VEC_vn_reference_op_s_heap_safe_push, ptr @VEC_vn_reference_op_s_base_quick_push, i64 661943}
!92 = !{ptr @ao_ref_init_from_vn_reference, ptr @VEC_vn_reference_op_s_base_index, i64 3471}
!93 = !{ptr @ao_ref_init_from_vn_reference, ptr @vector_type_mode, i64 1}
!94 = !{ptr @ao_ref_init_from_vn_reference, ptr @host_integerp, i64 8471}
!95 = !{ptr @ao_ref_init_from_vn_reference, ptr @VEC_vn_reference_op_s_base_iterate, i64 11294}
!96 = !{ptr @ao_ref_init_from_vn_reference, ptr @build1_stat, i64 231}
!97 = !{ptr @ao_ref_init_from_vn_reference, ptr @build2_stat, i64 1}
!98 = !{ptr @ao_ref_init_from_vn_reference, ptr @tree_low_cst, i64 1}
!99 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 41854}
!100 = !{ptr @VEC_vn_reference_op_s_heap_free, ptr @free, i64 151136}
!101 = !{ptr @vn_reference_lookup_pieces, ptr @VN_INFO, i64 911}
!102 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_base_truncate, i64 912}
!103 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_base_length, i64 1824}
!104 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_heap_safe_grow, i64 912}
!105 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_base_address, i64 1824}
!106 = !{ptr @vn_reference_lookup_pieces, ptr @valueize_refs, i64 912}
!107 = !{ptr @vn_reference_lookup_pieces, ptr @vn_reference_compute_hash, i64 912}
!108 = !{ptr @vn_reference_lookup_pieces, ptr @vn_reference_lookup_1, i64 912}
!109 = !{ptr @vn_reference_lookup_pieces, ptr @ao_ref_init_from_vn_reference, i64 569}
!110 = !{ptr @vn_reference_lookup_pieces, ptr @walk_non_aliased_vuses, i64 568}
!111 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_heap_free, i64 1}
!112 = !{ptr @VEC_vn_reference_op_s_heap_safe_grow, ptr @VEC_vn_reference_op_s_heap_reserve_exact, i64 912}
!113 = !{ptr @valueize_refs, ptr @VEC_vn_reference_op_s_base_iterate, i64 1159877}
!114 = !{ptr @valueize_refs, ptr @VN_INFO, i64 2149}
!115 = !{ptr @valueize_refs, ptr @VEC_vn_reference_op_s_base_index, i64 1}
!116 = !{ptr @vn_reference_lookup_1, ptr @htab_find_slot_with_hash, i64 993}
!117 = !{ptr @vn_reference_lookup_2, ptr @VN_INFO, i64 342626}
!118 = !{ptr @vn_reference_lookup_2, ptr @htab_find_slot_with_hash, i64 342627}
!119 = !{ptr @vn_reference_lookup_3, ptr @ao_ref_base, i64 41872}
!120 = !{ptr @vn_reference_lookup_3, ptr @is_gimple_reg_type, i64 83706}
!121 = !{ptr @vn_reference_lookup_3, ptr @is_gimple_call, i64 41852}
!122 = !{ptr @vn_reference_lookup_3, ptr @gimple_call_fndecl, i64 41851}
!123 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_single_p, i64 83705}
!124 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_rhs_code, i64 1}
!125 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_rhs1, i64 1}
!126 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_lhs, i64 1}
!127 = !{ptr @vn_reference_lookup_3, ptr @get_ref_base_and_extent, i64 1}
!128 = !{ptr @vn_reference_lookup_3, ptr @operand_equal_p, i64 1}
!129 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_index, i64 4}
!130 = !{ptr @vn_reference_lookup_3, ptr @vn_reference_op_eq, i64 2}
!131 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_replace, i64 1}
!132 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_iterate, i64 1}
!133 = !{ptr @vn_reference_lookup, ptr @VN_INFO, i64 342132}
!134 = !{ptr @vn_reference_lookup, ptr @valueize_shared_reference_ops_from_ref, i64 342133}
!135 = !{ptr @vn_reference_lookup, ptr @get_alias_set, i64 342133}
!136 = !{ptr @vn_reference_lookup, ptr @vn_reference_compute_hash, i64 342133}
!137 = !{ptr @vn_reference_lookup, ptr @ao_ref_init, i64 342051}
!138 = !{ptr @vn_reference_lookup, ptr @walk_non_aliased_vuses, i64 342051}
!139 = !{ptr @vn_reference_lookup, ptr @VEC_vn_reference_op_s_heap_free, i64 1}
!140 = !{ptr @vn_reference_lookup, ptr @vn_reference_lookup_1, i64 82}
!141 = !{ptr @valueize_shared_reference_ops_from_ref, ptr @VEC_vn_reference_op_s_base_truncate, i64 342132}
!142 = !{ptr @valueize_shared_reference_ops_from_ref, ptr @copy_reference_ops_from_ref, i64 342132}
!143 = !{ptr @valueize_shared_reference_ops_from_ref, ptr @valueize_refs, i64 342132}
!144 = !{ptr @vn_reference_insert, ptr @pool_alloc, i64 150490}
!145 = !{ptr @vn_reference_insert, ptr @VN_INFO, i64 451467}
!146 = !{ptr @vn_reference_insert, ptr @get_or_alloc_constant_value_id, i64 1}
!147 = !{ptr @vn_reference_insert, ptr @create_reference_ops_from_ref, i64 150490}
!148 = !{ptr @vn_reference_insert, ptr @valueize_refs, i64 150490}
!149 = !{ptr @vn_reference_insert, ptr @get_alias_set, i64 150490}
!150 = !{ptr @vn_reference_insert, ptr @vn_reference_compute_hash, i64 150490}
!151 = !{ptr @vn_reference_insert, ptr @htab_find_slot_with_hash, i64 150490}
!152 = !{ptr @vn_reference_insert, ptr @free_reference, i64 1}
!153 = !{ptr @create_reference_ops_from_ref, ptr @copy_reference_ops_from_ref, i64 150490}
!154 = !{ptr @free_reference, ptr @VEC_vn_reference_op_s_heap_free, i64 151061}
!155 = !{ptr @vn_reference_insert_pieces, ptr @pool_alloc, i64 571}
!156 = !{ptr @vn_reference_insert_pieces, ptr @VN_INFO, i64 570}
!157 = !{ptr @vn_reference_insert_pieces, ptr @valueize_refs, i64 571}
!158 = !{ptr @vn_reference_insert_pieces, ptr @vn_reference_compute_hash, i64 571}
!159 = !{ptr @vn_reference_insert_pieces, ptr @htab_find_slot_with_hash, i64 571}
!160 = !{ptr @vn_reference_insert_pieces, ptr @fancy_abort, i64 1}
!161 = !{ptr @vn_reference_insert_pieces, ptr @free_reference, i64 1}
!162 = !{ptr @vn_nary_op_compute_hash, ptr @VN_INFO, i64 325826}
!163 = !{ptr @vn_nary_op_compute_hash, ptr @commutative_tree_code, i64 274054}
!164 = !{ptr @vn_nary_op_compute_hash, ptr @tree_swap_operands_p, i64 217105}
!165 = !{ptr @vn_nary_op_compute_hash, ptr @iterative_hash_hashval_t, i64 274501}
!166 = !{ptr @vn_nary_op_compute_hash, ptr @iterative_hash_expr, i64 548555}
!167 = !{ptr @vn_nary_op_eq, ptr @types_compatible_p, i64 181825}
!168 = !{ptr @vn_nary_op_eq, ptr @expressions_equal_p, i64 362959}
!169 = !{ptr @expressions_equal_p, ptr @operand_equal_p, i64 91970}
!170 = !{ptr @vn_nary_op_lookup_pieces, ptr @vn_nary_op_compute_hash, i64 86519}
!171 = !{ptr @vn_nary_op_lookup_pieces, ptr @htab_find_slot_with_hash, i64 86520}
!172 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_assign_rhs_code, i64 96121}
!173 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_num_ops, i64 96121}
!174 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_expr_type, i64 96121}
!175 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_op, i64 192091}
!176 = !{ptr @vn_nary_op_lookup_stmt, ptr @vn_nary_op_compute_hash, i64 96121}
!177 = !{ptr @vn_nary_op_lookup_stmt, ptr @htab_find_slot_with_hash, i64 96122}
!178 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 3059947}
!179 = !{ptr @gimple_op, ptr @gimple_ops, i64 3059946}
!180 = !{ptr @vn_nary_op_insert_pieces, ptr @_obstack_newchunk, i64 2}
!181 = !{ptr @vn_nary_op_insert_pieces, ptr @vn_nary_op_compute_hash, i64 101}
!182 = !{ptr @vn_nary_op_insert_pieces, ptr @htab_find_slot_with_hash, i64 101}
!183 = !{ptr @vn_nary_op_insert_pieces, ptr @fancy_abort, i64 1}
!184 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_num_ops, i64 91760}
!185 = !{ptr @vn_nary_op_insert_stmt, ptr @_obstack_newchunk, i64 1070}
!186 = !{ptr @vn_nary_op_insert_stmt, ptr @VN_INFO, i64 91760}
!187 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_assign_rhs_code, i64 91760}
!188 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_expr_type, i64 91760}
!189 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_op, i64 183385}
!190 = !{ptr @vn_nary_op_insert_stmt, ptr @vn_nary_op_compute_hash, i64 91760}
!191 = !{ptr @vn_nary_op_insert_stmt, ptr @htab_find_slot_with_hash, i64 91760}
!192 = !{ptr @vn_nary_op_insert_stmt, ptr @fancy_abort, i64 1}
!193 = !{ptr @free_scc_vn, ptr @htab_delete, i64 76}
!194 = !{ptr @free_scc_vn, ptr @bitmap_obstack_free, i64 76}
!195 = !{ptr @free_scc_vn, ptr @VEC_tree_heap_free, i64 152}
!196 = !{ptr @free_scc_vn, ptr @VEC_vn_reference_op_s_heap_free, i64 76}
!197 = !{ptr @free_scc_vn, ptr @free, i64 228}
!198 = !{ptr @free_scc_vn, ptr @VEC_tree_base_length, i64 781875}
!199 = !{ptr @free_scc_vn, ptr @VEC_tree_base_index, i64 781799}
!200 = !{ptr @free_scc_vn, ptr @VN_INFO, i64 624270}
!201 = !{ptr @free_scc_vn, ptr @release_ssa_name, i64 1}
!202 = !{ptr @free_scc_vn, ptr @obstack_free, i64 76}
!203 = !{ptr @free_scc_vn, ptr @VEC_vn_ssa_aux_t_heap_free, i64 76}
!204 = !{ptr @free_scc_vn, ptr @free_vn_table, i64 152}
!205 = !{ptr @VEC_tree_heap_free, ptr @free, i64 860904}
!206 = !{ptr @VEC_vn_ssa_aux_t_heap_free, ptr @free, i64 75}
!207 = !{ptr @free_vn_table, ptr @htab_delete, i64 456}
!208 = !{ptr @free_vn_table, ptr @obstack_free, i64 152}
!209 = !{ptr @free_vn_table, ptr @free_alloc_pool, i64 304}
!210 = !{ptr @run_scc_vn, ptr @init_scc_vn, i64 76}
!211 = !{ptr @run_scc_vn, ptr @VEC_tree_base_length, i64 3079553}
!212 = !{ptr @run_scc_vn, ptr @gimple_default_def, i64 151}
!213 = !{ptr @run_scc_vn, ptr @VN_INFO, i64 2531070}
!214 = !{ptr @run_scc_vn, ptr @VEC_tree_base_index, i64 3079277}
!215 = !{ptr @run_scc_vn, ptr @has_zero_uses, i64 390262}
!216 = !{ptr @run_scc_vn, ptr @DFS, i64 385894}
!217 = !{ptr @run_scc_vn, ptr @free_scc_vn, i64 1}
!218 = !{ptr @run_scc_vn, ptr @get_next_value_id, i64 591725}
!219 = !{ptr @run_scc_vn, ptr @is_gimple_min_invariant, i64 24314}
!220 = !{ptr @run_scc_vn, ptr @get_or_alloc_constant_value_id, i64 1}
!221 = !{ptr @run_scc_vn, ptr @set_hashtable_value_ids, i64 75}
!222 = !{ptr @run_scc_vn, ptr @print_generic_expr, i64 4}
!223 = !{ptr @run_scc_vn, ptr @fwrite, i64 2}
!224 = !{ptr @run_scc_vn, ptr @fputc, i64 2}
!225 = !{ptr @init_scc_vn, ptr @calculate_dominance_info, i64 76}
!226 = !{ptr @init_scc_vn, ptr @htab_create, i64 76}
!227 = !{ptr @init_scc_vn, ptr @bitmap_obstack_alloc_stat, i64 76}
!228 = !{ptr @init_scc_vn, ptr @VEC_tree_base_length, i64 781993}
!229 = !{ptr @init_scc_vn, ptr @VEC_vn_ssa_aux_t_heap_alloc, i64 76}
!230 = !{ptr @init_scc_vn, ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, i64 76}
!231 = !{ptr @init_scc_vn, ptr @_obstack_begin, i64 76}
!232 = !{ptr @init_scc_vn, ptr @xcalloc, i64 304}
!233 = !{ptr @init_scc_vn, ptr @pre_and_rev_post_order_compute, i64 76}
!234 = !{ptr @init_scc_vn, ptr @free, i64 76}
!235 = !{ptr @init_scc_vn, ptr @create_tmp_var_raw, i64 76}
!236 = !{ptr @init_scc_vn, ptr @VEC_tree_base_index, i64 781765}
!237 = !{ptr @init_scc_vn, ptr @VN_INFO_GET, i64 624039}
!238 = !{ptr @init_scc_vn, ptr @VN_INFO, i64 1248078}
!239 = !{ptr @init_scc_vn, ptr @renumber_gimple_stmt_uids, i64 76}
!240 = !{ptr @init_scc_vn, ptr @allocate_vn_table, i64 152}
!241 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!242 = !{ptr @DFS, ptr @VN_INFO, i64 9350302}
!243 = !{ptr @DFS, ptr @VEC_tree_heap_safe_push, i64 859451}
!244 = !{ptr @DFS, ptr @gimple_nop_p, i64 627767}
!245 = !{ptr @DFS, ptr @gimple_code, i64 627614}
!246 = !{ptr @DFS, ptr @op_iter_init_phiuse, i64 92033}
!247 = !{ptr @DFS, ptr @op_iter_init_use, i64 535582}
!248 = !{ptr @DFS, ptr @clear_and_done_ssa_iter, i64 153}
!249 = !{ptr @DFS, ptr @op_iter_done, i64 1814940}
!250 = !{ptr @DFS, ptr @extract_and_process_scc_for_name, i64 627766}
!251 = !{ptr @DFS, ptr @VEC_tree_base_length, i64 627766}
!252 = !{ptr @DFS, ptr @VEC_tree_base_pop, i64 231684}
!253 = !{ptr @DFS, ptr @VEC_ssa_op_iter_base_last, i64 231684}
!254 = !{ptr @DFS, ptr @VEC_ssa_op_iter_base_pop, i64 231684}
!255 = !{ptr @DFS, ptr @get_use_from_ptr, i64 1187173}
!256 = !{ptr @DFS, ptr @VEC_ssa_op_iter_heap_safe_push, i64 231684}
!257 = !{ptr @DFS, ptr @op_iter_next_use, i64 1187172}
!258 = !{ptr @DFS, ptr @VEC_tree_heap_free, i64 396083}
!259 = !{ptr @DFS, ptr @VEC_ssa_op_iter_heap_free, i64 396083}
!260 = !{ptr @set_hashtable_value_ids, ptr @first_htab_element, i64 228}
!261 = !{ptr @set_hashtable_value_ids, ptr @end_htab_p, i64 330148}
!262 = !{ptr @set_hashtable_value_ids, ptr @VN_INFO, i64 329914}
!263 = !{ptr @set_hashtable_value_ids, ptr @is_gimple_min_invariant, i64 3}
!264 = !{ptr @set_hashtable_value_ids, ptr @get_or_alloc_constant_value_id, i64 3}
!265 = !{ptr @set_hashtable_value_ids, ptr @next_htab_element, i64 329920}
!266 = !{ptr @vn_nary_may_trap, ptr @operation_could_trap_helper_p, i64 46}
!267 = !{ptr @vn_nary_may_trap, ptr @tree_could_trap_p, i64 88}
!268 = !{ptr @VEC_vn_ssa_aux_t_heap_reserve_exact, ptr @VEC_vn_ssa_aux_t_base_space, i64 110}
!269 = !{ptr @VEC_vn_ssa_aux_t_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 34}
!270 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 1655714}
!271 = !{ptr @VEC_vn_reference_op_s_heap_reserve, ptr @VEC_vn_reference_op_s_base_space, i64 661943}
!272 = !{ptr @VEC_vn_reference_op_s_heap_reserve, ptr @vec_heap_o_reserve, i64 151075}
!273 = !{ptr @VEC_vn_reference_op_s_heap_reserve_exact, ptr @VEC_vn_reference_op_s_base_space, i64 912}
!274 = !{ptr @VEC_vn_reference_op_s_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 1}
!275 = !{ptr @is_gimple_call, ptr @gimple_code, i64 313578}
!276 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 41854}
!277 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 267180}
!278 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 3733543}
!279 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 3059947}
!280 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!281 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 3059947}
!282 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 3059947}
!283 = !{ptr @vn_constant_eq, ptr @vn_constant_eq_with_type, i64 2268}
!284 = !{ptr @VEC_vn_ssa_aux_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!285 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, ptr @VEC_vn_ssa_aux_t_base_length, i64 76}
!286 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, ptr @VEC_vn_ssa_aux_t_heap_safe_grow, i64 76}
!287 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, ptr @VEC_vn_ssa_aux_t_base_address, i64 76}
!288 = !{ptr @allocate_vn_table, ptr @htab_create, i64 456}
!289 = !{ptr @allocate_vn_table, ptr @_obstack_begin, i64 152}
!290 = !{ptr @allocate_vn_table, ptr @create_alloc_pool, i64 304}
!291 = !{ptr @vn_constant_eq_with_type, ptr @expressions_equal_p, i64 2269}
!292 = !{ptr @vn_constant_eq_with_type, ptr @types_compatible_p, i64 2268}
!293 = !{ptr @vn_phi_eq, ptr @VEC_tree_base_index, i64 3}
!294 = !{ptr @vn_phi_eq, ptr @expressions_equal_p, i64 2}
!295 = !{ptr @vn_phi_eq, ptr @VEC_tree_base_iterate, i64 3}
!296 = !{ptr @free_phi, ptr @VEC_tree_heap_free, i64 92008}
!297 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 2210462}
!298 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 2210462}
!299 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 92032}
!300 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 92032}
!301 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 92032}
!302 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 92032}
!303 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 92032}
!304 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 535583}
!305 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 535583}
!306 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_base_pop, i64 627768}
!307 = !{ptr @extract_and_process_scc_for_name, ptr @VN_INFO, i64 627768}
!308 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_heap_safe_push, i64 627768}
!309 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_base_length, i64 627767}
!310 = !{ptr @extract_and_process_scc_for_name, ptr @fprintf, i64 1}
!311 = !{ptr @extract_and_process_scc_for_name, ptr @sort_scc, i64 1}
!312 = !{ptr @extract_and_process_scc_for_name, ptr @print_scc, i64 1}
!313 = !{ptr @extract_and_process_scc_for_name, ptr @process_scc, i64 627766}
!314 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_heap_free, i64 627766}
!315 = !{ptr @VEC_ssa_op_iter_heap_free, ptr @free, i64 140978}
!316 = !{ptr @VEC_ssa_op_iter_heap_safe_push, ptr @VEC_ssa_op_iter_heap_reserve, i64 231684}
!317 = !{ptr @VEC_ssa_op_iter_heap_safe_push, ptr @VEC_ssa_op_iter_base_quick_push, i64 231684}
!318 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 361680}
!319 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 2210462}
!320 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 866201}
!321 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!322 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 138014}
!323 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!324 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 535582}
!325 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1}
!326 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 138013}
!327 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 80}
!328 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 535583}
!329 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 341878}
!330 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 742849}
!331 = !{ptr @process_scc, ptr @VEC_tree_base_length, i64 627767}
!332 = !{ptr @process_scc, ptr @VEC_tree_base_index, i64 627766}
!333 = !{ptr @process_scc, ptr @VN_INFO, i64 628091}
!334 = !{ptr @process_scc, ptr @visit_use, i64 497880}
!335 = !{ptr @process_scc, ptr @htab_empty, i64 48}
!336 = !{ptr @process_scc, ptr @obstack_free, i64 11}
!337 = !{ptr @process_scc, ptr @_obstack_begin, i64 16}
!338 = !{ptr @process_scc, ptr @empty_alloc_pool, i64 32}
!339 = !{ptr @process_scc, ptr @VEC_tree_base_iterate, i64 861}
!340 = !{ptr @process_scc, ptr @statistics_histogram_event, i64 1}
!341 = !{ptr @process_scc, ptr @htab_traverse, i64 3}
!342 = !{ptr @visit_use, ptr @VN_INFO, i64 1223495}
!343 = !{ptr @visit_use, ptr @fancy_abort, i64 1}
!344 = !{ptr @visit_use, ptr @set_ssa_val_to, i64 155}
!345 = !{ptr @visit_use, ptr @gimple_code, i64 497224}
!346 = !{ptr @visit_use, ptr @visit_phi, i64 92032}
!347 = !{ptr @visit_use, ptr @gimple_has_lhs, i64 405192}
!348 = !{ptr @visit_use, ptr @gimple_has_volatile_ops, i64 400889}
!349 = !{ptr @visit_use, ptr @stmt_could_throw_p, i64 400888}
!350 = !{ptr @visit_use, ptr @defs_to_varying, i64 138019}
!351 = !{ptr @visit_use, ptr @is_gimple_assign, i64 400887}
!352 = !{ptr @visit_use, ptr @gimple_assign_lhs, i64 267177}
!353 = !{ptr @visit_use, ptr @gimple_assign_copy_p, i64 801203}
!354 = !{ptr @visit_use, ptr @gimple_assign_rhs1, i64 342284}
!355 = !{ptr @visit_use, ptr @visit_copy, i64 80}
!356 = !{ptr @visit_use, ptr @try_to_simplify, i64 267097}
!357 = !{ptr @visit_use, ptr @is_gimple_min_invariant, i64 803}
!358 = !{ptr @visit_use, ptr @expr_has_constants, i64 265}
!359 = !{ptr @visit_use, ptr @unshare_expr, i64 265}
!360 = !{ptr @visit_use, ptr @stmt_has_constants, i64 400539}
!361 = !{ptr @visit_use, ptr @gimple_assign_single_p, i64 267095}
!362 = !{ptr @visit_use, ptr @visit_reference_op_store, i64 82}
!363 = !{ptr @visit_use, ptr @gimple_assign_rhs_code, i64 526967}
!364 = !{ptr @visit_use, ptr @get_gimple_rhs_class, i64 267009}
!365 = !{ptr @visit_use, ptr @visit_unary_op, i64 152}
!366 = !{ptr @visit_use, ptr @visit_binary_op, i64 95967}
!367 = !{ptr @visit_use, ptr @visit_reference_op_load, i64 170887}
!368 = !{ptr @visit_use, ptr @is_gimple_call, i64 133710}
!369 = !{ptr @visit_use, ptr @gimple_call_lhs, i64 133709}
!370 = !{ptr @visit_use, ptr @gimple_call_flags, i64 133707}
!371 = !{ptr @visit_use, ptr @visit_reference_op_call, i64 1}
!372 = !{ptr @set_ssa_val_to, ptr @is_gimple_min_invariant, i64 1}
!373 = !{ptr @set_ssa_val_to, ptr @fancy_abort, i64 1}
!374 = !{ptr @set_ssa_val_to, ptr @fwrite, i64 2}
!375 = !{ptr @set_ssa_val_to, ptr @print_generic_expr, i64 2}
!376 = !{ptr @set_ssa_val_to, ptr @VN_INFO, i64 1262098}
!377 = !{ptr @set_ssa_val_to, ptr @operand_equal_p, i64 631011}
!378 = !{ptr @visit_phi, ptr @gimple_phi_result_ptr, i64 92032}
!379 = !{ptr @visit_phi, ptr @get_def_from_ptr, i64 459693}
!380 = !{ptr @visit_phi, ptr @gimple_phi_num_args, i64 5350671}
!381 = !{ptr @visit_phi, ptr @set_ssa_val_to, i64 91589}
!382 = !{ptr @visit_phi, ptr @gimple_phi_arg_imm_use_ptr, i64 5349562}
!383 = !{ptr @visit_phi, ptr @get_use_from_ptr, i64 5349562}
!384 = !{ptr @visit_phi, ptr @VN_INFO, i64 5524369}
!385 = !{ptr @visit_phi, ptr @expressions_equal_p, i64 2909522}
!386 = !{ptr @visit_phi, ptr @is_gimple_min_invariant, i64 460}
!387 = !{ptr @visit_phi, ptr @visit_copy, i64 442}
!388 = !{ptr @visit_phi, ptr @vn_phi_lookup, i64 91571}
!389 = !{ptr @visit_phi, ptr @vn_phi_insert, i64 91570}
!390 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 405193}
!391 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 138013}
!392 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 138012}
!393 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 400891}
!394 = !{ptr @defs_to_varying, ptr @op_iter_init_def, i64 138013}
!395 = !{ptr @defs_to_varying, ptr @op_iter_done, i64 409736}
!396 = !{ptr @defs_to_varying, ptr @get_def_from_ptr, i64 271723}
!397 = !{ptr @defs_to_varying, ptr @VN_INFO, i64 271723}
!398 = !{ptr @defs_to_varying, ptr @set_ssa_val_to, i64 271723}
!399 = !{ptr @defs_to_varying, ptr @op_iter_next_def, i64 271723}
!400 = !{ptr @visit_copy, ptr @VN_INFO, i64 595}
!401 = !{ptr @visit_copy, ptr @set_ssa_val_to, i64 104}
!402 = !{ptr @try_to_simplify, ptr @gimple_assign_copy_p, i64 267100}
!403 = !{ptr @try_to_simplify, ptr @gimple_assign_rhs1, i64 260021}
!404 = !{ptr @try_to_simplify, ptr @gimple_assign_rhs_code, i64 267020}
!405 = !{ptr @try_to_simplify, ptr @get_symbol_constant_value, i64 141214}
!406 = !{ptr @try_to_simplify, ptr @fold_const_aggregate_ref, i64 29683}
!407 = !{ptr @try_to_simplify, ptr @simplify_unary_expression, i64 142}
!408 = !{ptr @try_to_simplify, ptr @simplify_binary_expression, i64 86217}
!409 = !{ptr @expr_has_constants, ptr @is_gimple_min_invariant, i64 525}
!410 = !{ptr @stmt_has_constants, ptr @gimple_code, i64 400545}
!411 = !{ptr @stmt_has_constants, ptr @gimple_assign_rhs_code, i64 266834}
!412 = !{ptr @stmt_has_constants, ptr @get_gimple_rhs_class, i64 266834}
!413 = !{ptr @stmt_has_constants, ptr @gimple_assign_rhs1, i64 266832}
!414 = !{ptr @stmt_has_constants, ptr @is_gimple_min_invariant, i64 348251}
!415 = !{ptr @stmt_has_constants, ptr @gimple_assign_rhs2, i64 81419}
!416 = !{ptr @stmt_has_constants, ptr @fancy_abort, i64 1}
!417 = !{ptr @visit_reference_op_store, ptr @gimple_vuse, i64 80}
!418 = !{ptr @visit_reference_op_store, ptr @vn_reference_lookup, i64 80}
!419 = !{ptr @visit_reference_op_store, ptr @expressions_equal_p, i64 1}
!420 = !{ptr @visit_reference_op_store, ptr @gimple_vdef, i64 80}
!421 = !{ptr @visit_reference_op_store, ptr @VN_INFO, i64 79}
!422 = !{ptr @visit_reference_op_store, ptr @set_ssa_val_to, i64 79}
!423 = !{ptr @visit_reference_op_store, ptr @is_gimple_min_invariant, i64 80}
!424 = !{ptr @visit_reference_op_store, ptr @is_gimple_reg, i64 79}
!425 = !{ptr @visit_reference_op_store, ptr @vn_reference_insert, i64 79}
!426 = !{ptr @visit_unary_op, ptr @vn_nary_op_lookup_stmt, i64 150}
!427 = !{ptr @visit_unary_op, ptr @set_ssa_val_to, i64 150}
!428 = !{ptr @visit_unary_op, ptr @vn_nary_op_insert_stmt, i64 133}
!429 = !{ptr @visit_binary_op, ptr @vn_nary_op_lookup_stmt, i64 95971}
!430 = !{ptr @visit_binary_op, ptr @set_ssa_val_to, i64 95971}
!431 = !{ptr @visit_binary_op, ptr @vn_nary_op_insert_stmt, i64 91625}
!432 = !{ptr @visit_reference_op_load, ptr @gimple_vuse, i64 170900}
!433 = !{ptr @visit_reference_op_load, ptr @vn_reference_lookup, i64 170900}
!434 = !{ptr @visit_reference_op_load, ptr @useless_type_conversion_p, i64 20490}
!435 = !{ptr @visit_reference_op_load, ptr @fold_build1_stat_loc, i64 1}
!436 = !{ptr @visit_reference_op_load, ptr @is_gimple_min_invariant, i64 1}
!437 = !{ptr @visit_reference_op_load, ptr @set_ssa_val_to, i64 170899}
!438 = !{ptr @visit_reference_op_load, ptr @VN_INFO, i64 20492}
!439 = !{ptr @visit_reference_op_load, ptr @vn_reference_insert, i64 150409}
!440 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 271724}
!441 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1286697}
!442 = !{ptr @vn_phi_lookup, ptr @VEC_tree_base_truncate, i64 92008}
!443 = !{ptr @vn_phi_lookup, ptr @gimple_phi_num_args, i64 453627}
!444 = !{ptr @vn_phi_lookup, ptr @gimple_phi_arg_imm_use_ptr, i64 361619}
!445 = !{ptr @vn_phi_lookup, ptr @get_use_from_ptr, i64 361619}
!446 = !{ptr @vn_phi_lookup, ptr @VN_INFO, i64 239841}
!447 = !{ptr @vn_phi_lookup, ptr @VEC_tree_heap_safe_push, i64 361619}
!448 = !{ptr @vn_phi_lookup, ptr @gimple_bb, i64 92008}
!449 = !{ptr @vn_phi_lookup, ptr @vn_phi_compute_hash, i64 92008}
!450 = !{ptr @vn_phi_lookup, ptr @htab_find_slot_with_hash, i64 92009}
!451 = !{ptr @vn_phi_insert, ptr @pool_alloc, i64 92008}
!452 = !{ptr @vn_phi_insert, ptr @gimple_phi_num_args, i64 453627}
!453 = !{ptr @vn_phi_insert, ptr @gimple_phi_arg_imm_use_ptr, i64 361619}
!454 = !{ptr @vn_phi_insert, ptr @get_use_from_ptr, i64 361619}
!455 = !{ptr @vn_phi_insert, ptr @VN_INFO, i64 331849}
!456 = !{ptr @vn_phi_insert, ptr @VEC_tree_heap_safe_push, i64 361619}
!457 = !{ptr @vn_phi_insert, ptr @gimple_bb, i64 92008}
!458 = !{ptr @vn_phi_insert, ptr @vn_phi_compute_hash, i64 92008}
!459 = !{ptr @vn_phi_insert, ptr @htab_find_slot_with_hash, i64 92008}
!460 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!461 = !{ptr @vn_phi_compute_hash, ptr @VEC_tree_base_index, i64 184016}
!462 = !{ptr @vn_phi_compute_hash, ptr @VEC_tree_base_iterate, i64 907257}
!463 = !{ptr @vn_phi_compute_hash, ptr @iterative_hash_expr, i64 723240}
!464 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 138013}
!465 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 138013}
!466 = !{ptr @simplify_unary_expression, ptr @gimple_assign_rhs1, i64 138}
!467 = !{ptr @simplify_unary_expression, ptr @gimple_assign_rhs_code, i64 509}
!468 = !{ptr @simplify_unary_expression, ptr @VN_INFO, i64 137}
!469 = !{ptr @simplify_unary_expression, ptr @vn_get_expr_for, i64 137}
!470 = !{ptr @simplify_unary_expression, ptr @valueize_expr, i64 137}
!471 = !{ptr @simplify_unary_expression, ptr @gimple_assign_cast_p, i64 130}
!472 = !{ptr @simplify_unary_expression, ptr @is_gimple_min_invariant, i64 1}
!473 = !{ptr @simplify_unary_expression, ptr @gimple_expr_type, i64 97}
!474 = !{ptr @simplify_unary_expression, ptr @fold_unary_ignore_overflow_loc, i64 97}
!475 = !{ptr @simplify_unary_expression, ptr @tree_ssa_strip_useless_type_conversions, i64 1}
!476 = !{ptr @simplify_unary_expression, ptr @valid_gimple_rhs_p, i64 1}
!477 = !{ptr @simplify_binary_expression, ptr @gimple_assign_rhs1, i64 172434}
!478 = !{ptr @simplify_binary_expression, ptr @gimple_assign_rhs2, i64 140085}
!479 = !{ptr @simplify_binary_expression, ptr @VN_INFO, i64 150297}
!480 = !{ptr @simplify_binary_expression, ptr @gimple_assign_rhs_code, i64 77966}
!481 = !{ptr @simplify_binary_expression, ptr @vn_get_expr_for, i64 72558}
!482 = !{ptr @simplify_binary_expression, ptr @valueize_expr, i64 72558}
!483 = !{ptr @simplify_binary_expression, ptr @fold_defer_overflow_warnings, i64 35060}
!484 = !{ptr @simplify_binary_expression, ptr @gimple_expr_type, i64 35060}
!485 = !{ptr @simplify_binary_expression, ptr @fold_binary_loc, i64 35060}
!486 = !{ptr @simplify_binary_expression, ptr @tree_ssa_strip_useless_type_conversions, i64 284}
!487 = !{ptr @simplify_binary_expression, ptr @valid_gimple_rhs_p, i64 568}
!488 = !{ptr @simplify_binary_expression, ptr @fold_undefer_overflow_warnings, i64 35060}
!489 = !{ptr @valueize_expr, ptr @VN_INFO, i64 39328}
!490 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 132}
!491 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 131}
!492 = !{ptr @VEC_ssa_op_iter_heap_reserve, ptr @VEC_ssa_op_iter_base_space, i64 231684}
!493 = !{ptr @VEC_ssa_op_iter_heap_reserve, ptr @vec_heap_o_reserve, i64 141926}
!494 = !{ptr @first_htab_element, ptr @htab_size, i64 228}
!495 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!496 = !{!"function_entry_count", i64 24052613}
!497 = !{!498, !498, i64 0}
!498 = !{!"omnipotent char", !499, i64 0}
!499 = !{!"Simple C/C++ TBAA"}
!500 = !{!"branch_weights", i32 1, i32 24052614}
!501 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_index"}
!502 = !{!503, !503, i64 0}
!503 = !{!"any pointer", !498, i64 0}
!504 = !{!"function_entry_count", i64 632484}
!505 = !{!506, !507, i64 40}
!506 = !{!"obstack", !507, i64 0, !503, i64 8, !503, i64 16, !503, i64 24, !503, i64 32, !507, i64 40, !508, i64 48, !503, i64 56, !503, i64 64, !503, i64 72, !508, i64 80, !508, i64 80, !508, i64 80}
!507 = !{!"long", !498, i64 0}
!508 = !{!"int", !498, i64 0}
!509 = !{!506, !503, i64 32}
!510 = !{!506, !503, i64 24}
!511 = !{!"branch_weights", i32 4988, i32 627498}
!512 = !{!506, !503, i64 16}
!513 = !{!"branch_weights", i32 1, i32 632485}
!514 = !{!506, !508, i64 48}
!515 = !{!506, !503, i64 8}
!516 = !{!"branch_weights", i32 632451, i32 35}
!517 = !{!"function_entry_count", i64 632670}
!518 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_length"}
!519 = !{!"branch_weights", i32 1, i32 632671}
!520 = !{!521, !508, i64 0}
!521 = !{!"VEC_vn_ssa_aux_t_base", !508, i64 0, !508, i64 4, !498, i64 8}
!522 = !{!"function_entry_count", i64 110}
!523 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_safe_grow"}
!524 = !{!"branch_weights", i32 1, i32 111}
!525 = !{}
!526 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_replace"}
!527 = !{!"function_entry_count", i64 72697}
!528 = !{!529, !503, i64 0}
!529 = !{!"vn_ssa_aux", !503, i64 0, !503, i64 8, !508, i64 16, !508, i64 20, !508, i64 24, !508, i64 28, !508, i64 28, !508, i64 28, !508, i64 28, !508, i64 28}
!530 = !{!"branch_weights", i32 1, i32 72698}
!531 = !{!"branch_weights", i32 72698, i32 1}
!532 = !{!529, !503, i64 8}
!533 = !{!"branch_weights", i32 68309, i32 4390}
!534 = !{i8 0, i8 2}
!535 = !{!"branch_weights", i32 68309, i32 1}
!536 = !{i32 0, i32 256}
!537 = !{!"branch_weights", i32 1, i32 68309}
!538 = !{!"branch_weights", i32 150, i32 68160}
!539 = !{i32 0, i32 65536}
!540 = !{!508, !508, i64 0}
!541 = !{!"branch_weights", i32 49578, i32 17, i32 1, i32 18567}
!542 = !{!"branch_weights", i32 1, i32 17}
!543 = !{!"branch_weights", i32 207541, i32 2147276107}
!544 = !{!"function_entry_count", i64 696075}
!545 = !{!"tree-ssa-sccvn.c:gimple_nop_p"}
!546 = !{!"function_entry_count", i64 17387919}
!547 = !{!"tree-ssa-sccvn.c:gimple_code"}
!548 = !{!"function_entry_count", i64 874524}
!549 = !{!"tree-ssa-sccvn.c:is_gimple_assign"}
!550 = !{!"function_entry_count", i64 1655714}
!551 = !{!"tree-ssa-sccvn.c:gimple_assign_rhs_code"}
!552 = !{!"branch_weights", i32 803333, i32 852383}
!553 = !{!"function_entry_count", i64 1863640}
!554 = !{!"tree-ssa-sccvn.c:gimple_assign_rhs1"}
!555 = !{!"function_entry_count", i64 241604}
!556 = !{!"tree-ssa-sccvn.c:gimple_expr_type"}
!557 = !{!"branch_weights", i32 1, i32 2, i32 966420, i32 1}
!558 = !{!"branch_weights", i32 19, i32 241587}
!559 = !{!"function_entry_count", i64 240071}
!560 = !{!"tree-ssa-sccvn.c:gimple_assign_rhs2"}
!561 = !{!"branch_weights", i32 240072, i32 1}
!562 = !{!"function_entry_count", i64 2269}
!563 = !{!564, !508, i64 4}
!564 = !{!"vn_constant_s", !508, i64 0, !508, i64 4, !503, i64 8}
!565 = !{!564, !503, i64 8}
!566 = !{!"branch_weights", i32 1, i32 2270}
!567 = !{!564, !508, i64 0}
!568 = !{!"function_entry_count", i64 2466}
!569 = !{!"tree-ssa-sccvn.c:vn_hash_constant_with_type"}
!570 = !{!"branch_weights", i32 1765673063, i32 714025}
!571 = !{!"function_entry_count", i64 197}
!572 = !{!"branch_weights", i32 198, i32 1}
!573 = !{!"function_entry_count", i64 608165}
!574 = !{!"function_entry_count", i64 1715479}
!575 = !{!"function_entry_count", i64 494106}
!576 = !{!577, !503, i64 32}
!577 = !{!"vn_reference_s", !508, i64 0, !508, i64 4, !503, i64 8, !508, i64 16, !503, i64 24, !503, i64 32, !503, i64 40}
!578 = !{i32 0, i32 2}
!579 = !{!"branch_weights", i32 1, i32 494106}
!580 = !{!"branch_weights", i32 494106, i32 171666}
!581 = distinct !{!581, !582}
!582 = !{!"llvm.loop.mustprogress"}
!583 = !{!577, !503, i64 8}
!584 = !{!"branch_weights", i32 1, i32 494107}
!585 = !{!"function_entry_count", i64 2770124}
!586 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_iterate"}
!587 = !{!"branch_weights", i32 1, i32 2770125}
!588 = !{!589, !508, i64 0}
!589 = !{!"VEC_vn_reference_op_s_base", !508, i64 0, !508, i64 4, !498, i64 8}
!590 = !{!"branch_weights", i32 1586915, i32 1183211}
!591 = !{!"function_entry_count", i64 665771}
!592 = !{!"tree-ssa-sccvn.c:vn_reference_op_compute_hash"}
!593 = !{!594, !508, i64 0}
!594 = !{!"vn_reference_op_struct", !508, i64 0, !503, i64 8, !503, i64 16, !503, i64 24, !503, i64 32}
!595 = !{!594, !503, i64 16}
!596 = !{!"branch_weights", i32 2104, i32 663669}
!597 = !{!594, !503, i64 24}
!598 = !{!"branch_weights", i32 576013, i32 89760}
!599 = !{!594, !503, i64 32}
!600 = !{!"function_entry_count", i64 894440}
!601 = !{!577, !508, i64 4}
!602 = !{!"branch_weights", i32 386275, i32 508167}
!603 = !{!"branch_weights", i32 386275, i32 1}
!604 = !{!"branch_weights", i32 194748, i32 191528}
!605 = !{!"branch_weights", i32 191528, i32 1}
!606 = !{!"branch_weights", i32 1, i32 191527}
!607 = !{!"branch_weights", i32 191527, i32 55999}
!608 = distinct !{!608, !582}
!609 = !{!"branch_weights", i32 1, i32 247526}
!610 = !{!"function_entry_count", i64 385790}
!611 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_length"}
!612 = !{!"branch_weights", i32 1, i32 385791}
!613 = !{!"function_entry_count", i64 247525}
!614 = !{!"tree-ssa-sccvn.c:vn_reference_op_eq"}
!615 = !{!"branch_weights", i32 247526, i32 1}
!616 = !{!594, !503, i64 8}
!617 = !{!"function_entry_count", i64 250996}
!618 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_index"}
!619 = !{!"function_entry_count", i64 492623}
!620 = !{!"branch_weights", i32 1, i32 492624}
!621 = !{!"branch_weights", i32 1, i32 1, i32 1886, i32 1, i32 1, i32 78671, i32 1, i32 88766, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 490739, i32 1, i32 1, i32 1, i32 1886, i32 1, i32 1, i32 1, i32 1}
!622 = !{!"branch_weights", i32 689482564, i32 1376365484}
!623 = !{!"branch_weights", i32 931, i32 25328}
!624 = !{!"branch_weights", i32 1, i32 931}
!625 = !{!"branch_weights", i32 169321, i32 492624}
!626 = !{!"branch_weights", i32 14196, i32 2147469452}
!627 = distinct !{!627, !582}
!628 = !{!"function_entry_count", i64 661943}
!629 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_safe_push"}
!630 = !{!"function_entry_count", i64 3471}
!631 = !{!"branch_weights", i32 10588516, i32 712845, i32 3254}
!632 = !{!"branch_weights", i32 1, i32 219}
!633 = !{!"branch_weights", i32 1, i32 3254}
!634 = !{!"branch_weights", i32 19513257, i32 2127970391}
!635 = !{!"branch_weights", i32 1, i32 3471}
!636 = !{!"branch_weights", i32 10, i32 1, i32 1, i32 1, i32 231, i32 1, i32 3242, i32 1, i32 1, i32 231, i32 1, i32 2063, i32 1, i32 2085, i32 1}
!637 = !{!"branch_weights", i32 1, i32 2063}
!638 = !{!"branch_weights", i32 2063, i32 1}
!639 = !{!"branch_weights", i32 13, i32 2073}
!640 = !{!"branch_weights", i32 1, i32 2073}
!641 = !{!"branch_weights", i32 3471, i32 4377}
!642 = distinct !{!642, !582}
!643 = !{!"branch_weights", i32 0, i32 -2147483648}
!644 = !{!645, !503, i64 0}
!645 = !{!"ao_ref_s", !503, i64 0, !503, i64 8, !507, i64 16, !507, i64 24, !507, i64 32, !508, i64 40, !508, i64 44}
!646 = !{!645, !503, i64 8}
!647 = !{!645, !507, i64 16}
!648 = !{!645, !507, i64 24}
!649 = !{!645, !507, i64 32}
!650 = !{!645, !508, i64 40}
!651 = !{!645, !508, i64 44}
!652 = !{!"function_entry_count", i64 0}
!653 = distinct !{!653, !582}
!654 = !{!"tree-ssa-sccvn.c:gimple_call_return_type"}
!655 = !{!"function_entry_count", i64 41854}
!656 = !{!"tree-ssa-sccvn.c:gimple_call_fn"}
!657 = !{!"tree-ssa-sccvn.c:gimple_call_chain"}
!658 = !{!"tree-ssa-sccvn.c:gimple_call_num_args"}
!659 = !{!"tree-ssa-sccvn.c:gimple_call_arg"}
!660 = distinct !{!660, !582}
!661 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_replace"}
!662 = !{i64 0, i64 4, !540, i64 8, i64 8, !502, i64 16, i64 8, !502, i64 24, i64 8, !502, i64 32, i64 8, !502}
!663 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_ordered_remove"}
!664 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_safe_insert"}
!665 = !{!"function_entry_count", i64 151137}
!666 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_free"}
!667 = !{!"branch_weights", i32 1, i32 151138}
!668 = !{!"function_entry_count", i64 912}
!669 = !{!"branch_weights", i32 1, i32 913}
!670 = !{!577, !503, i64 24}
!671 = !{!577, !508, i64 16}
!672 = !{!"branch_weights", i32 187149248, i32 112943458}
!673 = !{!"branch_weights", i32 1, i32 572}
!674 = !{!"branch_weights", i32 572, i32 1}
!675 = !{!"branch_weights", i32 572, i32 342}
!676 = !{!577, !503, i64 40}
!677 = !{!"function_entry_count", i64 343045}
!678 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_truncate"}
!679 = !{!"branch_weights", i32 77, i32 342970}
!680 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_safe_grow"}
!681 = !{!"function_entry_count", i64 1824}
!682 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_address"}
!683 = !{!"branch_weights", i32 1, i32 1825}
!684 = !{!"tree-ssa-sccvn.c:valueize_refs"}
!685 = !{!"branch_weights", i32 2104, i32 661566}
!686 = !{!"branch_weights", i32 43, i32 661524}
!687 = !{!"branch_weights", i32 2146, i32 1}
!688 = !{!"branch_weights", i32 43, i32 2104}
!689 = !{!"branch_weights", i32 1, i32 2104}
!690 = !{!"branch_weights", i32 1, i32 89760}
!691 = distinct !{!691, !582}
!692 = !{!"function_entry_count", i64 992}
!693 = !{!"tree-ssa-sccvn.c:vn_reference_lookup_1"}
!694 = !{!695, !503, i64 16}
!695 = !{!"vn_tables_s", !503, i64 0, !503, i64 8, !503, i64 16, !506, i64 24, !503, i64 112, !503, i64 120}
!696 = !{!"branch_weights", i32 652, i32 342}
!697 = !{!"branch_weights", i32 1, i32 652}
!698 = !{!"branch_weights", i32 -2147483648, i32 0}
!699 = !{!"branch_weights", i32 1, i32 342}
!700 = !{!"function_entry_count", i64 342626}
!701 = !{!"tree-ssa-sccvn.c:vn_reference_lookup_2"}
!702 = !{!"branch_weights", i32 171728, i32 170900}
!703 = !{!"branch_weights", i32 1, i32 342627}
!704 = !{!"branch_weights", i32 151441, i32 191187}
!705 = !{!"branch_weights", i32 1, i32 151441}
!706 = !{!"branch_weights", i32 2147473885, i32 9763}
!707 = !{!"function_entry_count", i64 41872}
!708 = !{!"tree-ssa-sccvn.c:vn_reference_lookup_3"}
!709 = !{!"branch_weights", i32 19, i32 41855}
!710 = !{!"branch_weights", i32 1, i32 41855}
!711 = !{!507, !507, i64 0}
!712 = !{!"branch_weights", i32 41855, i32 1}
!713 = distinct !{!713, !582}
!714 = distinct !{!714, !582}
!715 = !{i64 0, i64 8, !502, i64 8, i64 8, !502, i64 16, i64 8, !711, i64 24, i64 8, !711, i64 32, i64 8, !711, i64 40, i64 4, !540, i64 44, i64 4, !540}
!716 = !{!"function_entry_count", i64 342133}
!717 = !{!"branch_weights", i32 171060, i32 171075}
!718 = !{!"branch_weights", i32 1, i32 342134}
!719 = !{!"branch_weights", i32 -638687955, i32 876515}
!720 = !{!"branch_weights", i32 342054, i32 1}
!721 = !{!"branch_weights", i32 150868, i32 191187}
!722 = !{!"branch_weights", i32 20490, i32 170698}
!723 = !{!"tree-ssa-sccvn.c:valueize_shared_reference_ops_from_ref"}
!724 = !{!"function_entry_count", i64 150490}
!725 = !{!695, !503, i64 120}
!726 = !{!"branch_weights", i32 150491, i32 1}
!727 = !{!529, !508, i64 16}
!728 = !{!577, !508, i64 0}
!729 = !{!"branch_weights", i32 1, i32 150491}
!730 = !{!"tree-ssa-sccvn.c:create_reference_ops_from_ref"}
!731 = !{!"function_entry_count", i64 151061}
!732 = !{!"tree-ssa-sccvn.c:free_reference"}
!733 = !{!"function_entry_count", i64 571}
!734 = !{!"function_entry_count", i64 274501}
!735 = !{!"branch_weights", i32 1, i32 274501}
!736 = !{!"branch_weights", i32 325828, i32 222730}
!737 = !{!"branch_weights", i32 274056, i32 274501}
!738 = distinct !{!738, !582}
!739 = !{!"branch_weights", i32 274056, i32 447}
!740 = !{!"branch_weights", i32 56950, i32 217107}
!741 = !{!"branch_weights", i32 188197, i32 28911}
!742 = distinct !{!742, !582}
!743 = !{!"function_entry_count", i64 481553}
!744 = !{!745, !508, i64 8}
!745 = !{!"vn_nary_op_s", !508, i64 0, !508, i64 4, !508, i64 6, !508, i64 8, !503, i64 16, !503, i64 24, !498, i64 32}
!746 = !{!"branch_weights", i32 181827, i32 299728}
!747 = !{!"branch_weights", i32 181827, i32 1}
!748 = !{!745, !503, i64 24}
!749 = !{!"branch_weights", i32 161, i32 181667}
!750 = !{!"branch_weights", i32 1, i32 181666}
!751 = !{!"branch_weights", i32 181299, i32 181666}
!752 = distinct !{!752, !582}
!753 = !{!"branch_weights", i32 1, i32 362965}
!754 = !{!"function_entry_count", i64 1219621}
!755 = !{!"branch_weights", i32 1127612, i32 92011}
!756 = !{!"branch_weights", i32 -61955236, i32 92011}
!757 = !{!"branch_weights", i32 91973, i32 39}
!758 = !{!"branch_weights", i32 91971, i32 3}
!759 = !{!"function_entry_count", i64 86519}
!760 = !{!"branch_weights", i32 1, i32 86520}
!761 = !{!695, !503, i64 0}
!762 = !{!"branch_weights", i32 102, i32 86419}
!763 = !{!"branch_weights", i32 1, i32 102}
!764 = !{!"branch_weights", i32 2147472543, i32 11105}
!765 = !{!"branch_weights", i32 1, i32 86419}
!766 = !{!745, !503, i64 16}
!767 = !{!"function_entry_count", i64 96121}
!768 = !{!"branch_weights", i32 96122, i32 1}
!769 = !{!"branch_weights", i32 1, i32 96121}
!770 = !{!"branch_weights", i32 96121, i32 95972}
!771 = distinct !{!771, !582}
!772 = !{!"branch_weights", i32 -907083750, i32 35245, i32 35245, i32 35245}
!773 = !{!"branch_weights", i32 91761, i32 4362}
!774 = !{!"branch_weights", i32 1, i32 91761}
!775 = !{!"branch_weights", i32 2147482663, i32 985}
!776 = !{!"branch_weights", i32 4362, i32 1}
!777 = !{!"function_entry_count", i64 427952}
!778 = !{!"tree-ssa-sccvn.c:gimple_num_ops"}
!779 = !{!"function_entry_count", i64 3059947}
!780 = !{!"tree-ssa-sccvn.c:gimple_op"}
!781 = !{!"branch_weights", i32 1, i32 3059948}
!782 = !{!"function_entry_count", i64 101}
!783 = !{!695, !507, i64 64}
!784 = !{!695, !503, i64 56}
!785 = !{!695, !503, i64 48}
!786 = !{!"branch_weights", i32 2, i32 101}
!787 = !{!695, !503, i64 40}
!788 = !{!695, !508, i64 72}
!789 = !{!695, !503, i64 32}
!790 = !{!745, !508, i64 0}
!791 = !{!"branch_weights", i32 252645134, i32 1894838514}
!792 = !{!"branch_weights", i32 23860930, i32 2123622718}
!793 = !{!"branch_weights", i32 33, i32 2147483615}
!794 = !{!"branch_weights", i32 102, i32 1}
!795 = distinct !{!795, !582}
!796 = !{!"function_entry_count", i64 91760}
!797 = !{!"branch_weights", i32 1070, i32 90692}
!798 = !{!"branch_weights", i32 1, i32 91760}
!799 = !{!"branch_weights", i32 91627, i32 91760}
!800 = distinct !{!800, !582}
!801 = !{!"branch_weights", i32 -1347598432, i32 32120, i32 32120, i32 32120}
!802 = !{!"branch_weights", i32 91761, i32 1}
!803 = !{!"function_entry_count", i64 76}
!804 = !{!805, !503, i64 24}
!805 = !{!"function", !503, i64 0, !503, i64 8, !503, i64 16, !503, i64 24, !503, i64 32, !503, i64 40, !503, i64 48, !503, i64 56, !503, i64 64, !503, i64 72, !503, i64 80, !503, i64 88, !503, i64 96, !508, i64 104, !508, i64 108, !508, i64 112, !508, i64 116, !508, i64 120, !508, i64 124, !503, i64 128, !508, i64 136, !508, i64 137, !508, i64 138, !508, i64 138, !508, i64 138, !508, i64 138, !508, i64 138, !508, i64 138, !508, i64 138, !508, i64 139, !508, i64 139, !508, i64 139, !508, i64 139, !508, i64 139, !508, i64 139, !508, i64 139}
!806 = !{!807, !503, i64 16}
!807 = !{!"gimple_df", !503, i64 0, !503, i64 8, !503, i64 16, !503, i64 24, !808, i64 32, !808, i64 48, !503, i64 64, !503, i64 72, !503, i64 80, !503, i64 88, !508, i64 96, !809, i64 104}
!808 = !{!"pt_solution", !508, i64 0, !508, i64 0, !508, i64 0, !508, i64 0, !508, i64 0, !508, i64 0, !503, i64 8}
!809 = !{!"ssa_operands", !503, i64 0, !508, i64 8, !508, i64 12, !498, i64 16, !503, i64 24, !503, i64 32}
!810 = !{!"branch_weights", i32 1, i32 153}
!811 = !{!"branch_weights", i32 159602, i32 632485}
!812 = !{!"branch_weights", i32 632485, i32 1}
!813 = !{!"branch_weights", i32 1584019, i32 153}
!814 = distinct !{!814, !582}
!815 = !{!"branch_weights", i32 1, i32 77}
!816 = !{!"function_entry_count", i64 1116010}
!817 = !{!"tree-ssa-sccvn.c:VEC_tree_heap_free"}
!818 = !{!"branch_weights", i32 255106, i32 860906}
!819 = !{!"function_entry_count", i64 7256148}
!820 = !{!"tree-ssa-sccvn.c:VEC_tree_base_length"}
!821 = !{!"branch_weights", i32 255106, i32 7001044}
!822 = !{!823, !508, i64 0}
!823 = !{!"VEC_tree_base", !508, i64 0, !508, i64 4, !498, i64 8}
!824 = !{!"function_entry_count", i64 5556279}
!825 = !{!"tree-ssa-sccvn.c:VEC_tree_base_index"}
!826 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_free"}
!827 = !{!"function_entry_count", i64 152}
!828 = !{!"tree-ssa-sccvn.c:free_vn_table"}
!829 = !{!695, !503, i64 8}
!830 = !{!695, !503, i64 112}
!831 = !{!"branch_weights", i32 153, i32 1}
!832 = distinct !{!832, !582}
!833 = !{!"branch_weights", i32 159725, i32 632251}
!834 = !{!"branch_weights", i32 400567, i32 231685}
!835 = !{!"branch_weights", i32 396084, i32 4484}
!836 = !{!"branch_weights", i32 1, i32 396084}
!837 = !{!"branch_weights", i32 1583797, i32 153}
!838 = distinct !{!838, !582}
!839 = !{!"branch_weights", i32 -329615296, i32 162937433}
!840 = !{!"branch_weights", i32 24955, i32 1}
!841 = distinct !{!841, !582}
!842 = !{!"branch_weights", i32 1275068416, i32 872415232}
!843 = distinct !{!843, !582}
!844 = !{!"branch_weights", i32 128, i32 1}
!845 = !{!"branch_weights", i32 318138, i32 1258277}
!846 = !{!"branch_weights", i32 -1330620913, i32 122435647}
!847 = !{!"branch_weights", i32 24955, i32 24955}
!848 = !{!"branch_weights", i32 1576286, i32 128}
!849 = distinct !{!849, !582}
!850 = !{!"branch_weights", i32 77, i32 1}
!851 = distinct !{!851, !582}
!852 = !{!"tree-ssa-sccvn.c:init_scc_vn"}
!853 = !{!805, !503, i64 8}
!854 = !{!855, !508, i64 32}
!855 = !{!"control_flow_graph", !503, i64 0, !503, i64 8, !503, i64 16, !508, i64 24, !508, i64 28, !508, i64 32, !503, i64 40, !508, i64 48, !498, i64 52, !498, i64 60, !508, i64 68, !508, i64 72}
!856 = !{!855, !508, i64 24}
!857 = !{!"branch_weights", i32 977011, i32 153}
!858 = distinct !{!858, !582}
!859 = !{!"branch_weights", i32 159801, i32 632251}
!860 = !{!"branch_weights", i32 1583949, i32 153}
!861 = distinct !{!861, !582}
!862 = !{!"function_entry_count", i64 400566}
!863 = !{!"tree-ssa-sccvn.c:has_zero_uses"}
!864 = !{!865, !503, i64 8}
!865 = !{!"ssa_use_operand_d", !503, i64 0, !503, i64 8, !498, i64 16, !503, i64 24}
!866 = !{!"branch_weights", i32 4484, i32 396084}
!867 = !{!"branch_weights", i32 396084, i32 1}
!868 = !{!"function_entry_count", i64 396083}
!869 = !{!"tree-ssa-sccvn.c:DFS"}
!870 = !{!529, !508, i64 20}
!871 = !{!529, !508, i64 24}
!872 = !{!"branch_weights", i32 627616, i32 153}
!873 = !{!"branch_weights", i32 92033, i32 535584}
!874 = !{!"branch_weights", i32 1187175, i32 627768}
!875 = !{!"branch_weights", i32 627768, i32 1}
!876 = !{!"branch_weights", i32 1, i32 627768}
!877 = !{!"branch_weights", i32 396084, i32 231685}
!878 = !{!"branch_weights", i32 231685, i32 1}
!879 = !{!"branch_weights", i32 1065396, i32 121780}
!880 = !{!"branch_weights", i32 231685, i32 833712}
!881 = !{!"branch_weights", i32 833016, i32 232381}
!882 = !{!"branch_weights", i32 833016, i32 1}
!883 = !{!"tree-ssa-sccvn.c:set_hashtable_value_ids"}
!884 = !{!"branch_weights", i32 183369, i32 153}
!885 = distinct !{!885, !582}
!886 = !{!887, !503, i64 24}
!887 = !{!"vn_phi_s", !508, i64 0, !508, i64 4, !503, i64 8, !503, i64 16, !503, i64 24}
!888 = !{!"branch_weights", i32 1, i32 92009}
!889 = !{!"branch_weights", i32 92009, i32 1}
!890 = !{!887, !508, i64 0}
!891 = !{!"branch_weights", i32 183865, i32 153}
!892 = distinct !{!892, !582}
!893 = !{!"branch_weights", i32 300829, i32 153}
!894 = distinct !{!894, !582}
!895 = !{!"function_entry_count", i64 824}
!896 = !{!"function_entry_count", i64 46}
!897 = !{!"branch_weights", i32 1703, i32 25}
!898 = !{!"branch_weights", i32 103823, i32 2304, i32 2256, i32 2209}
!899 = !{!"branch_weights", i32 1, i32 47}
!900 = !{!"branch_weights", i32 43, i32 2069}
!901 = !{!"branch_weights", i32 1, i32 187}
!902 = !{!"branch_weights", i32 185, i32 187}
!903 = distinct !{!903, !582}
!904 = !{!"branch_weights", i32 93, i32 1}
!905 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_reserve_exact"}
!906 = !{!"branch_weights", i32 35, i32 77}
!907 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_space"}
!908 = !{!521, !508, i64 4}
!909 = !{!"tree-ssa-sccvn.c:gimple_expr_code"}
!910 = !{!"branch_weights", i32 1, i32 6622860, i32 2, i32 1}
!911 = !{!"function_entry_count", i64 2189568}
!912 = !{!"tree-ssa-sccvn.c:get_gimple_rhs_class"}
!913 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_reserve"}
!914 = !{!"branch_weights", i32 151075, i32 510870}
!915 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_quick_push"}
!916 = !{!"branch_weights", i32 1, i32 661944}
!917 = !{!"function_entry_count", i64 662855}
!918 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_space"}
!919 = !{!"branch_weights", i32 150567, i32 512290}
!920 = !{!589, !508, i64 4}
!921 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_quick_insert"}
!922 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_reserve_exact"}
!923 = !{!"function_entry_count", i64 313578}
!924 = !{!"tree-ssa-sccvn.c:is_gimple_call"}
!925 = !{!"tree-ssa-sccvn.c:gimple_call_fndecl"}
!926 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_copy"}
!927 = !{!928, !508, i64 0}
!928 = !{!"VEC_vn_reference_op_s_heap", !589, i64 0}
!929 = !{!"tree-ssa-sccvn.c:VEC_constructor_elt_base_length"}
!930 = !{!931, !508, i64 0}
!931 = !{!"VEC_constructor_elt_base", !508, i64 0, !508, i64 4, !498, i64 8}
!932 = !{!"function_entry_count", i64 267180}
!933 = !{!"tree-ssa-sccvn.c:gimple_assign_lhs"}
!934 = !{!"tree-ssa-sccvn.c:handled_component_p"}
!935 = !{!"function_entry_count", i64 3733543}
!936 = !{!"tree-ssa-sccvn.c:gimple_has_ops"}
!937 = !{!"tree-ssa-sccvn.c:gimple_ops"}
!938 = !{!"tree-ssa-sccvn.c:gimple_statement_structure"}
!939 = !{!"tree-ssa-sccvn.c:gss_for_code"}
!940 = !{!"function_entry_count", i64 70}
!941 = !{!"tree-ssa-sccvn.c:vn_constant_hash"}
!942 = !{!"function_entry_count", i64 2793}
!943 = !{!"tree-ssa-sccvn.c:vn_constant_eq"}
!944 = !{!"branch_weights", i32 2270, i32 525}
!945 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_alloc"}
!946 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_safe_grow_cleared"}
!947 = !{!"tree-ssa-sccvn.c:allocate_vn_table"}
!948 = !{!"tree-ssa-sccvn.c:vn_constant_eq_with_type"}
!949 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_address"}
!950 = !{!"function_entry_count", i64 147328}
!951 = !{!"tree-ssa-sccvn.c:vn_phi_hash"}
!952 = !{!887, !508, i64 4}
!953 = !{!"function_entry_count", i64 246941}
!954 = !{!"tree-ssa-sccvn.c:vn_phi_eq"}
!955 = !{!"branch_weights", i32 1, i32 246942}
!956 = !{!887, !503, i64 16}
!957 = !{!887, !503, i64 8}
!958 = distinct !{!958, !582}
!959 = !{!"function_entry_count", i64 92008}
!960 = !{!"tree-ssa-sccvn.c:free_phi"}
!961 = !{!"function_entry_count", i64 151482}
!962 = !{!"tree-ssa-sccvn.c:vn_nary_op_hash"}
!963 = !{!"function_entry_count", i64 176567}
!964 = !{!"tree-ssa-sccvn.c:vn_reference_hash"}
!965 = !{!"function_entry_count", i64 907260}
!966 = !{!"tree-ssa-sccvn.c:VEC_tree_base_iterate"}
!967 = !{!"branch_weights", i32 1, i32 907261}
!968 = !{!"branch_weights", i32 723245, i32 184017}
!969 = !{!"function_entry_count", i64 2210462}
!970 = !{!"tree-ssa-sccvn.c:VEC_tree_heap_safe_push"}
!971 = !{!"function_entry_count", i64 92032}
!972 = !{!"tree-ssa-sccvn.c:op_iter_init_phiuse"}
!973 = !{!974, !498, i64 0}
!974 = !{!"ssa_operand_iterator_d", !498, i64 0, !508, i64 4, !503, i64 8, !503, i64 16, !508, i64 24, !508, i64 28, !503, i64 32}
!975 = !{!974, !503, i64 32}
!976 = !{!974, !508, i64 28}
!977 = !{!974, !508, i64 4}
!978 = !{!"function_entry_count", i64 535583}
!979 = !{!"tree-ssa-sccvn.c:op_iter_init_use"}
!980 = !{!"function_entry_count", i64 92184}
!981 = !{!"tree-ssa-sccvn.c:clear_and_done_ssa_iter"}
!982 = !{!"function_entry_count", i64 2224678}
!983 = !{!"tree-ssa-sccvn.c:op_iter_done"}
!984 = !{!"function_entry_count", i64 627767}
!985 = !{!"tree-ssa-sccvn.c:extract_and_process_scc_for_name"}
!986 = distinct !{!986, !582}
!987 = !{!988, !508, i64 8}
!988 = !{!"param_info", !503, i64 0, !508, i64 8, !498, i64 12, !508, i64 16, !508, i64 20, !503, i64 24}
!989 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_heap_free"}
!990 = !{!"branch_weights", i32 255106, i32 140979}
!991 = !{!"function_entry_count", i64 859451}
!992 = !{!"tree-ssa-sccvn.c:VEC_tree_base_pop"}
!993 = !{!"function_entry_count", i64 231684}
!994 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_last"}
!995 = !{!996, !508, i64 0}
!996 = !{!"VEC_ssa_op_iter_base", !508, i64 0, !508, i64 4, !498, i64 8}
!997 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_pop"}
!998 = !{!"function_entry_count", i64 2112191}
!999 = !{!"tree-ssa-sccvn.c:get_use_from_ptr"}
!1000 = !{!865, !503, i64 24}
!1001 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_heap_safe_push"}
!1002 = !{!"function_entry_count", i64 1814789}
!1003 = !{!"tree-ssa-sccvn.c:op_iter_next_use"}
!1004 = !{!974, !503, i64 16}
!1005 = !{!"branch_weights", i32 989296, i32 825495}
!1006 = !{!1007, !503, i64 0}
!1007 = !{!"use_optype_d", !503, i64 0, !865, i64 8}
!1008 = !{!974, !508, i64 24}
!1009 = !{!"branch_weights", i32 361681, i32 627616}
!1010 = !{!"tree-ssa-sccvn.c:VEC_tree_heap_reserve"}
!1011 = !{!"branch_weights", i32 866202, i32 1344262}
!1012 = !{!"tree-ssa-sccvn.c:VEC_tree_base_quick_push"}
!1013 = !{!"tree-ssa-sccvn.c:VEC_tree_base_space"}
!1014 = !{!"branch_weights", i32 860906, i32 1349558}
!1015 = !{!823, !508, i64 4}
!1016 = !{!"tree-ssa-sccvn.c:gimple_phi_result"}
!1017 = !{!"function_entry_count", i64 1201089}
!1018 = !{!"tree-ssa-sccvn.c:gimple_phi_num_args"}
!1019 = !{!"function_entry_count", i64 673596}
!1020 = !{!"tree-ssa-sccvn.c:op_iter_init"}
!1021 = !{!"branch_weights", i32 11319, i32 -481981654}
!1022 = !{!"branch_weights", i32 535584, i32 138014}
!1023 = !{!974, !503, i64 8}
!1024 = !{!"branch_weights", i32 2147468088, i32 15560}
!1025 = !{!1026, !503, i64 0}
!1026 = !{!"def_optype_d", !503, i64 0, !503, i64 8}
!1027 = !{!"branch_weights", i32 138014, i32 535584}
!1028 = !{!"branch_weights", i32 2147479640, i32 4008}
!1029 = !{!"function_entry_count", i64 138013}
!1030 = !{!"tree-ssa-sccvn.c:gimple_def_ops"}
!1031 = !{!"branch_weights", i32 1, i32 138014}
!1032 = !{!"function_entry_count", i64 80}
!1033 = !{!"tree-ssa-sccvn.c:gimple_vdef"}
!1034 = !{!"branch_weights", i32 1, i32 81}
!1035 = !{!"tree-ssa-sccvn.c:gimple_use_ops"}
!1036 = !{!"branch_weights", i32 1, i32 535584}
!1037 = !{!"function_entry_count", i64 341878}
!1038 = !{!"tree-ssa-sccvn.c:gimple_vuse"}
!1039 = !{!"branch_weights", i32 1, i32 341879}
!1040 = !{!"function_entry_count", i64 742849}
!1041 = !{!"tree-ssa-sccvn.c:gimple_has_mem_ops"}
!1042 = !{!"tree-ssa-sccvn.c:sort_scc"}
!1043 = !{!"tree-ssa-sccvn.c:print_scc"}
!1044 = distinct !{!1044, !582}
!1045 = !{!"tree-ssa-sccvn.c:process_scc"}
!1046 = !{!"branch_weights", i32 497378, i32 130391}
!1047 = distinct !{!1047, !582}
!1048 = distinct !{!1048, !582}
!1049 = distinct !{!1049, !582}
!1050 = !{!"tree-ssa-sccvn.c:VEC_tree_base_address"}
!1051 = !{!"tree-ssa-sccvn.c:compare_ops"}
!1052 = !{!1053, !508, i64 80}
!1053 = !{!"basic_block_def", !503, i64 0, !503, i64 8, !503, i64 16, !503, i64 24, !498, i64 32, !503, i64 48, !503, i64 56, !498, i64 64, !507, i64 72, !508, i64 80, !508, i64 84, !508, i64 88, !508, i64 92, !508, i64 96}
!1054 = !{!"function_entry_count", i64 184016}
!1055 = !{!"tree-ssa-sccvn.c:gimple_bb"}
!1056 = !{!"tree-ssa-sccvn.c:gimple_uid"}
!1057 = !{!"function_entry_count", i64 497377}
!1058 = !{!"tree-ssa-sccvn.c:visit_use"}
!1059 = !{!"branch_weights", i32 497378, i32 1}
!1060 = !{!"branch_weights", i32 497226, i32 153}
!1061 = !{!"branch_weights", i32 92033, i32 405194}
!1062 = !{!"branch_weights", i32 4303, i32 400892}
!1063 = !{!"branch_weights", i32 400892, i32 1}
!1064 = !{!"branch_weights", i32 133712, i32 267181}
!1065 = !{!"branch_weights", i32 267021, i32 161}
!1066 = !{!"branch_weights", i32 161, i32 1}
!1067 = !{!"branch_weights", i32 81, i32 81}
!1068 = !{!"branch_weights", i32 266835, i32 267}
!1069 = !{!"branch_weights", i32 267, i32 1}
!1070 = !{!"branch_weights", i32 1, i32 267}
!1071 = !{!"branch_weights", i32 1, i32 1}
!1072 = !{!"branch_weights", i32 1418652225, i32 -688363842}
!1073 = !{!"branch_weights", i32 191426, i32 81}
!1074 = !{!"branch_weights", i32 267021, i32 81}
!1075 = !{!"branch_weights", i32 267021, i32 1}
!1076 = !{!"branch_weights", i32 266755, i32 267}
!1077 = !{!"branch_weights", i32 96110, i32 170992}
!1078 = !{!"branch_weights", i32 81, i32 170912}
!1079 = !{!"branch_weights", i32 81, i32 1}
!1080 = !{!"branch_weights", i32 684243, i32 -2066835595}
!1081 = !{!"branch_weights", i32 1, i32 139, i32 95972, i32 170912}
!1082 = !{!"branch_weights", i32 1, i32 29684, i32 141217, i32 13}
!1083 = !{!"branch_weights", i32 1, i32 29684}
!1084 = !{!"branch_weights", i32 13, i32 1}
!1085 = !{!"branch_weights", i32 1, i32 133712}
!1086 = !{!"branch_weights", i32 133712, i32 1}
!1087 = !{!"branch_weights", i32 2147467588, i32 16060}
!1088 = !{!"branch_weights", i32 2147475619, i32 8029}
!1089 = !{!"branch_weights", i32 16714, i32 -2060088214}
!1090 = !{!"tree-ssa-sccvn.c:copy_nary"}
!1091 = !{!"tree-ssa-sccvn.c:copy_phis"}
!1092 = !{!"tree-ssa-sccvn.c:copy_references"}
!1093 = !{!"function_entry_count", i64 631088}
!1094 = !{!"tree-ssa-sccvn.c:set_ssa_val_to"}
!1095 = !{!"branch_weights", i32 606135, i32 24955}
!1096 = !{!"branch_weights", i32 24955, i32 622776981}
!1097 = !{!"branch_weights", i32 3543, i32 2147480105}
!1098 = !{!"branch_weights", i32 1, i32 631089}
!1099 = !{!"branch_weights", i32 631089, i32 1}
!1100 = !{!"branch_weights", i32 77, i32 631013}
!1101 = !{!"branch_weights", i32 631013, i32 1}
!1102 = !{!"tree-ssa-sccvn.c:visit_phi"}
!1103 = !{!"branch_weights", i32 92033, i32 1}
!1104 = !{!"branch_weights", i32 1, i32 199}
!1105 = !{!"branch_weights", i32 201426, i32 349}
!1106 = !{!"branch_weights", i32 1, i32 201774}
!1107 = !{!"branch_weights", i32 92033, i32 109742}
!1108 = !{!"branch_weights", i32 1613993, i32 199}
!1109 = distinct !{!1109, !582}
!1110 = !{!"branch_weights", i32 25, i32 1}
!1111 = !{!"function_entry_count", i64 405193}
!1112 = !{!"tree-ssa-sccvn.c:gimple_has_lhs"}
!1113 = !{!"branch_weights", i32 138014, i32 267181}
!1114 = !{!"function_entry_count", i64 400891}
!1115 = !{!"tree-ssa-sccvn.c:gimple_has_volatile_ops"}
!1116 = !{!"branch_weights", i32 1, i32 400892}
!1117 = !{!"tree-ssa-sccvn.c:defs_to_varying"}
!1118 = !{!"branch_weights", i32 138013, i32 1}
!1119 = !{!"branch_weights", i32 133712, i32 138013}
!1120 = distinct !{!1120, !582}
!1121 = !{!"function_entry_count", i64 104}
!1122 = !{!"tree-ssa-sccvn.c:visit_copy"}
!1123 = !{!"branch_weights", i32 127, i32 1}
!1124 = !{!"branch_weights", i32 105, i32 41}
!1125 = !{!"branch_weights", i32 18433, i32 127}
!1126 = distinct !{!1126, !582}
!1127 = !{!"branch_weights", i32 105, i32 1}
!1128 = !{!"function_entry_count", i64 267100}
!1129 = !{!"tree-ssa-sccvn.c:try_to_simplify"}
!1130 = !{!"branch_weights", i32 9767, i32 141217, i32 29684, i32 139, i32 38961, i32 47258}
!1131 = !{!"branch_weights", i32 141217, i32 1}
!1132 = !{!"branch_weights", i32 29684, i32 1}
!1133 = !{!"function_entry_count", i64 266}
!1134 = !{!"tree-ssa-sccvn.c:expr_has_constants"}
!1135 = !{!"branch_weights", i32 1, i32 1, i32 267, i32 1, i32 1}
!1136 = !{!"function_entry_count", i64 400545}
!1137 = !{!"tree-ssa-sccvn.c:stmt_has_constants"}
!1138 = !{!"branch_weights", i32 266835, i32 133712}
!1139 = !{!"branch_weights", i32 1, i32 139, i32 95706, i32 170992}
!1140 = !{!"branch_weights", i32 81421, i32 14286}
!1141 = !{!"tree-ssa-sccvn.c:visit_reference_op_store"}
!1142 = !{!"branch_weights", i32 1073741783, i32 1073741865}
!1143 = !{!"function_entry_count", i64 150}
!1144 = !{!"tree-ssa-sccvn.c:visit_unary_op"}
!1145 = !{!"branch_weights", i32 135, i32 17}
!1146 = !{!"function_entry_count", i64 95971}
!1147 = !{!"tree-ssa-sccvn.c:visit_binary_op"}
!1148 = !{!"branch_weights", i32 91627, i32 4346}
!1149 = !{!"function_entry_count", i64 170899}
!1150 = !{!"tree-ssa-sccvn.c:visit_reference_op_load"}
!1151 = !{!"branch_weights", i32 150411, i32 20490}
!1152 = !{!"branch_weights", i32 1, i32 150411}
!1153 = !{!"branch_weights", i32 2147481616, i32 2032}
!1154 = !{!"branch_weights", i32 1, i32 20490}
!1155 = !{!"branch_weights", i32 20490, i32 1}
!1156 = !{!"function_entry_count", i64 271724}
!1157 = !{!"tree-ssa-sccvn.c:gimple_call_lhs"}
!1158 = !{!"tree-ssa-sccvn.c:visit_reference_op_call"}
!1159 = !{!"function_entry_count", i64 915876}
!1160 = !{!"tree-ssa-sccvn.c:get_def_from_ptr"}
!1161 = !{!"function_entry_count", i64 644152}
!1162 = !{!"tree-ssa-sccvn.c:gimple_phi_result_ptr"}
!1163 = !{!"function_entry_count", i64 1286697}
!1164 = !{!"tree-ssa-sccvn.c:gimple_phi_arg_imm_use_ptr"}
!1165 = !{!"tree-ssa-sccvn.c:vn_phi_lookup"}
!1166 = !{!"branch_weights", i32 1, i32 92008}
!1167 = !{!"branch_weights", i32 239844, i32 121780}
!1168 = !{!"branch_weights", i32 269615, i32 92008}
!1169 = distinct !{!1169, !582}
!1170 = !{!"tree-ssa-sccvn.c:vn_phi_insert"}
!1171 = distinct !{!1171, !582}
!1172 = !{!"tree-ssa-sccvn.c:gimple_phi_arg"}
!1173 = !{!"branch_weights", i32 1, i32 1286698}
!1174 = !{!"tree-ssa-sccvn.c:VEC_tree_base_truncate"}
!1175 = !{!"branch_weights", i32 77, i32 91933}
!1176 = !{!"tree-ssa-sccvn.c:vn_phi_compute_hash"}
!1177 = !{!"branch_weights", i32 -305267031, i32 0}
!1178 = !{!"branch_weights", i32 1, i32 184016}
!1179 = !{!"branch_weights", i32 1, i32 723245}
!1180 = !{!"branch_weights", i32 184016, i32 539229}
!1181 = distinct !{!1181, !582}
!1182 = !{!"tree-ssa-sccvn.c:op_iter_init_def"}
!1183 = !{!"function_entry_count", i64 409737}
!1184 = !{!"tree-ssa-sccvn.c:op_iter_next_def"}
!1185 = !{!"branch_weights", i32 138014, i32 271725}
!1186 = !{!1026, !503, i64 8}
!1187 = !{!"function_entry_count", i64 138}
!1188 = !{!"tree-ssa-sccvn.c:simplify_unary_expression"}
!1189 = !{!"branch_weights", i32 1, i32 139}
!1190 = !{!"branch_weights", i32 139, i32 1}
!1191 = !{!"branch_weights", i32 133, i32 7}
!1192 = !{!"branch_weights", i32 1, i32 133}
!1193 = !{!"branch_weights", i32 12503, i32 5453}
!1194 = !{!"branch_weights", i32 41, i32 42, i32 1681}
!1195 = !{!"branch_weights", i32 623727544, i32 1523756104}
!1196 = !{!"branch_weights", i32 99, i32 1}
!1197 = !{!"function_entry_count", i64 86217}
!1198 = !{!"tree-ssa-sccvn.c:simplify_binary_expression"}
!1199 = !{!"branch_weights", i32 71933, i32 14286}
!1200 = !{!"branch_weights", i32 42908, i32 29026}
!1201 = !{!"branch_weights", i32 33944, i32 8965}
!1202 = !{!"branch_weights", i32 1, i32 8965}
!1203 = !{!"branch_weights", i32 7484, i32 1482}
!1204 = !{!"branch_weights", i32 25152, i32 61067}
!1205 = !{!"branch_weights", i32 15561, i32 9592}
!1206 = !{!"branch_weights", i32 1, i32 15561}
!1207 = !{!"branch_weights", i32 12874, i32 2688}
!1208 = !{!"branch_weights", i32 53869, i32 32350}
!1209 = !{!"branch_weights", i32 51159, i32 2711}
!1210 = !{!"branch_weights", i32 34777, i32 284}
!1211 = !{!"branch_weights", i32 18, i32 267}
!1212 = !{!"tree-ssa-sccvn.c:valueize_expr"}
!1213 = !{!"branch_weights", i32 53126, i32 1, i32 19573}
!1214 = !{!"branch_weights", i32 5288, i32 14286}
!1215 = !{!"branch_weights", i32 1, i32 5288}
!1216 = !{!"branch_weights", i32 14378, i32 5196}
!1217 = !{!"branch_weights", i32 1, i32 14378}
!1218 = !{!"function_entry_count", i64 132}
!1219 = !{!"tree-ssa-sccvn.c:gimple_assign_cast_p"}
!1220 = !{!"tree-ssa-sccvn.c:make_ssa_name"}
!1221 = !{!"tree-ssa-sccvn.c:valueize_shared_reference_ops_from_call"}
!1222 = !{!"tree-ssa-sccvn.c:create_reference_ops_from_call"}
!1223 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_heap_reserve"}
!1224 = !{!"branch_weights", i32 141927, i32 89759}
!1225 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_quick_push"}
!1226 = !{!"branch_weights", i32 1, i32 231685}
!1227 = !{i64 0, i64 1, !497, i64 4, i64 4, !540, i64 8, i64 8, !502, i64 16, i64 8, !502, i64 24, i64 4, !540, i64 28, i64 4, !540, i64 32, i64 8, !502}
!1228 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_space"}
!1229 = !{!"branch_weights", i32 140979, i32 90707}
!1230 = !{!996, !508, i64 4}
!1231 = !{!"function_entry_count", i64 228}
!1232 = !{!"tree-ssa-sccvn.c:first_htab_element"}
!1233 = !{!1234, !503, i64 0}
!1234 = !{!"", !503, i64 0, !503, i64 8, !503, i64 16}
!1235 = !{!1236, !503, i64 24}
!1236 = !{!"htab", !503, i64 0, !503, i64 8, !503, i64 16, !503, i64 24, !507, i64 32, !507, i64 40, !507, i64 48, !508, i64 56, !508, i64 60, !503, i64 64, !503, i64 72, !503, i64 80, !503, i64 88, !503, i64 96, !508, i64 104}
!1237 = !{!1234, !503, i64 8}
!1238 = !{!1234, !503, i64 16}
!1239 = !{!"branch_weights", i32 1115, i32 17}
!1240 = distinct !{!1240, !582}
!1241 = !{!"branch_weights", i32 213, i32 17}
!1242 = !{!"function_entry_count", i64 334486}
!1243 = !{!"tree-ssa-sccvn.c:end_htab_p"}
!1244 = !{!"function_entry_count", i64 334258}
!1245 = !{!"tree-ssa-sccvn.c:next_htab_element"}
!1246 = !{!"branch_weights", i32 639097, i32 213}
