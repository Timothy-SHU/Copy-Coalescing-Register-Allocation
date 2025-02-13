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
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
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

@VN_TOP = dso_local local_unnamed_addr global ptr null, align 8
@vn_ssa_aux_table = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [17 x i8] c"tree-ssa-sccvn.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@vn_ssa_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@constant_to_value_id = internal unnamed_addr global ptr null, align 8
@constant_value_ids = internal unnamed_addr global ptr null, align 8
@may_insert = internal unnamed_addr global i8 0, align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@shared_lookup_references = internal global ptr null, align 8
@current_info = internal unnamed_addr global ptr null, align 8
@optimistic_info = internal unnamed_addr global ptr null, align 8
@valid_info = internal unnamed_addr global ptr null, align 8
@last_vuse_ptr = internal unnamed_addr global ptr null, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@shared_lookup_phiargs = internal global ptr null, align 8
@rpo_numbers = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@sccstack = internal global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Value numbers:\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@next_dfs_num = internal unnamed_addr global i32 0, align 4
@next_value_id = internal unnamed_addr global i32 0, align 4
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
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VN_INFO(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !591 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !592
  %5 = tail call fastcc ptr @VEC_vn_ssa_aux_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !595

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vn_ssa_aux_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !591 !PGOFuncName !596 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !597
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VN_INFO_GET(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !599 {
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !600
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !604
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !605
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %11, !prof !606

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 32) #20
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !600
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !605
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 32, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !607
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20, !prof !608

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !600
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 6), align 8, !tbaa !609
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  store ptr %29, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !605
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !610
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !604
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38, !prof !608

37:                                               ; preds = %20
  store ptr %33, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !605
  br label %38

38:                                               ; preds = %20, %37
  %39 = phi ptr [ %29, %20 ], [ %33, %37 ]
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !607
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !592
  %42 = load ptr, ptr @vn_ssa_aux_table, align 8
  %43 = tail call fastcc i32 @VEC_vn_ssa_aux_t_base_length(ptr noundef %42) #19
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %49, label %45, !prof !611

45:                                               ; preds = %38
  %46 = add i32 %41, 1
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow(i32 noundef %46) #19
  %47 = load ptr, ptr @vn_ssa_aux_table, align 8
  %48 = load i32, ptr %40, align 8, !tbaa !592
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
define internal fastcc i32 @VEC_vn_ssa_aux_t_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !612 !PGOFuncName !613 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !614

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !615
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !617 !PGOFuncName !618 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !619

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !615
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !597, !nonnull !620, !noundef !620
  store i32 %0, ptr %9, align 8, !tbaa !615
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !599 !PGOFuncName !621 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !597
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !617 !PGOFuncName !622 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  %3 = tail call fastcc i32 @VEC_vn_ssa_aux_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !623
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !624

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_ssa_aux_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !617 !PGOFuncName !625 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !619

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !626
  %7 = load i32, ptr %0, align 8, !tbaa !615
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
define dso_local ptr @vn_get_expr_for(ptr noundef readonly %0) local_unnamed_addr #0 !prof !627 {
  %2 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !628
  %4 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %74, label %6, !prof !630

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %74, !prof !631

10:                                               ; preds = %6
  %11 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %12 = load ptr, ptr %11, align 8, !tbaa !628
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %74, !prof !632

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vn_ssa_aux, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !633
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %74, !prof !634

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !592
  %23 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %22) #19, !range !635
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %74, !prof !636

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %22) #19, !range !637
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %74, label %28, !prof !638

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %22) #19, !range !635
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %74, label %31, !prof !639

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !641
  switch i32 %35, label %71 [
    i32 4, label %36
    i32 6, label %57
    i32 7, label %62
  ], !prof !642

36:                                               ; preds = %31
  %37 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %38 = icmp eq i32 %37, 118
  br i1 %38, label %45, label %39, !prof !643

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %45, label %42, !prof !643

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %71, !prof !643

45:                                               ; preds = %42, %39, %36
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %52 = tail call fastcc ptr @gimple_expr_type(ptr noundef %22) #19
  %53 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !592
  %56 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %51, ptr noundef %52, ptr noundef %55) #20
  br label %68

57:                                               ; preds = %31
  %58 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %59 = tail call fastcc ptr @gimple_expr_type(ptr noundef %22) #19
  %60 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %61 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %58, ptr noundef %59, ptr noundef %60) #20
  br label %68

62:                                               ; preds = %31
  %63 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %22) #19, !range !640
  %64 = tail call fastcc ptr @gimple_expr_type(ptr noundef %22) #19
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #19
  %66 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %22) #19
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66) #20
  br label %68

68:                                               ; preds = %50, %62, %57
  %69 = phi ptr [ %67, %62 ], [ %61, %57 ], [ %56, %50 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73, !prof !644

71:                                               ; preds = %42, %45, %31, %68
  %72 = load ptr, ptr %11, align 8, !tbaa !628
  br label %74

73:                                               ; preds = %68
  store ptr %69, ptr %17, align 8, !tbaa !633
  br label %74

74:                                               ; preds = %28, %20, %25, %16, %10, %6, %1, %73, %71
  %75 = phi ptr [ %72, %71 ], [ %69, %73 ], [ %0, %1 ], [ %3, %6 ], [ %12, %10 ], [ %18, %16 ], [ %12, %25 ], [ %12, %20 ], [ %12, %28 ]
  ret ptr %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !645 !PGOFuncName !646 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !647 !PGOFuncName !648 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !649 !PGOFuncName !650 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !651 !PGOFuncName !652 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !640
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !637
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !653

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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !654 !PGOFuncName !655 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !656 !PGOFuncName !657 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !658

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !659

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !592
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !592
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !597
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !597
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !660 !PGOFuncName !661 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !662

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !651 !PGOFuncName !663 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !664

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 !prof !665 !PGOFuncName !666 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !592
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !667 !PGOFuncName !668 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !635
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !669

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !597
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !670 !PGOFuncName !671 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !667 !PGOFuncName !672 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !673
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !669

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !667 !PGOFuncName !674 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !667 !PGOFuncName !675 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !641
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !676 !PGOFuncName !677 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !592
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !592
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !592
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !678 !PGOFuncName !679 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !680 !PGOFuncName !681 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !592
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_constant_value_id(ptr noundef %0) local_unnamed_addr #0 !prof !682 {
  %2 = alloca %struct.vn_constant_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 4, !tbaa !683
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !685
  %6 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !597
  %7 = call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !686

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 8, !tbaa !597
  %11 = load i32, ptr %10, align 8, !tbaa !687
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) unnamed_addr #0 !prof !688 !PGOFuncName !689 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !592
  %4 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #20
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %17, !prof !690

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

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_or_alloc_constant_value_id(ptr noundef %0) local_unnamed_addr #0 !prof !691 {
  %2 = alloca %struct.vn_constant_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 4, !tbaa !683
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !685
  %6 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !597
  %7 = call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #20
  %8 = load ptr, ptr %7, align 8, !tbaa !597
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18, !prof !692

10:                                               ; preds = %1
  %11 = call ptr @xmalloc(i64 noundef 16) #20
  %12 = load i32, ptr %4, align 4, !tbaa !683
  %13 = getelementptr inbounds %struct.vn_constant_s, ptr %11, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !683
  %14 = getelementptr inbounds %struct.vn_constant_s, ptr %11, i64 0, i32 2
  store ptr %0, ptr %14, align 8, !tbaa !685
  %15 = call i32 @get_next_value_id() #19
  store i32 %15, ptr %11, align 8, !tbaa !687
  store ptr %11, ptr %7, align 8, !tbaa !597
  %16 = load ptr, ptr @constant_value_ids, align 8, !tbaa !597
  %17 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %15) #20
  br label %18

18:                                               ; preds = %1, %10
  %19 = phi ptr [ %11, %10 ], [ %8, %1 ]
  %20 = load i32, ptr %19, align 8, !tbaa !687
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_next_value_id() local_unnamed_addr #7 !prof !693 {
  %1 = load i32, ptr @next_value_id, align 4, !tbaa !641
  %2 = add i32 %1, 1
  store i32 %2, ptr @next_value_id, align 4, !tbaa !641
  ret i32 %1
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @value_id_constant_p(i32 noundef %0) local_unnamed_addr #0 !prof !694 {
  %2 = load ptr, ptr @constant_value_ids, align 8, !tbaa !597
  %3 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %0) #20
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vn_reference_compute_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !695 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !696
  %5 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !623
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7, !prof !698

7:                                                ; preds = %1, %7
  %8 = phi i32 [ %12, %7 ], [ 0, %1 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !597
  %11 = tail call fastcc i32 @vn_reference_op_compute_hash(ptr noundef %10, i32 noundef %9) #19
  %12 = add nuw nsw i32 %8, 1
  %13 = load ptr, ptr %3, align 8, !tbaa !696
  %14 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #19, !range !623
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7, !prof !699, !llvm.loop !700

16:                                               ; preds = %7, %1
  %17 = phi i32 [ 0, %1 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !702
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !703

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !592
  %24 = add i32 %23, %17
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !704 !PGOFuncName !705 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !706

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !707
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !709

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !597
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_reference_op_compute_hash(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !710 !PGOFuncName !711 {
  %3 = load i32, ptr %0, align 8, !tbaa !712
  %4 = tail call i32 @iterative_hash_hashval_t(i32 noundef %3, i32 noundef %1) #20
  %5 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !714
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !715

8:                                                ; preds = %2
  %9 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %6, i32 noundef %4) #20
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !716
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !717

15:                                               ; preds = %10
  %16 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %13, i32 noundef %11) #20
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %16, %15 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !718
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !719

22:                                               ; preds = %17
  %23 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %20, i32 noundef %18) #20
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %23, %22 ], [ %18, %17 ]
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vn_reference_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !720 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !721
  %6 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !721
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %40, !prof !722

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !702
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !702
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %40, !prof !723

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !696
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !696
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %40, label %21, !prof !724

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %17) #19
  %23 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %19) #19
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40, !prof !725

25:                                               ; preds = %21
  %26 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #19, !range !623
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %33, !prof !726

28:                                               ; preds = %33
  %29 = add nuw nsw i32 %34, 1
  %30 = load ptr, ptr %16, align 8, !tbaa !696
  %31 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %30, i32 noundef %29, ptr noundef nonnull %3) #19, !range !623
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !727, !llvm.loop !728

33:                                               ; preds = %25, %28
  %34 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %35 = load ptr, ptr %18, align 8, !tbaa !696
  %36 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %35, i32 noundef %34) #19
  %37 = load ptr, ptr %3, align 8, !tbaa !597
  %38 = tail call fastcc i32 @vn_reference_op_eq(ptr noundef nonnull %36, ptr noundef %37) #19, !range !623
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %28, !prof !729

40:                                               ; preds = %33, %28, %25, %21, %15, %9, %2
  %41 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 1, %15 ], [ 0, %21 ], [ 1, %25 ], [ 0, %33 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !730 !PGOFuncName !731 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !732

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !707
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_reference_op_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !733 !PGOFuncName !734 {
  %3 = load i32, ptr %0, align 8, !tbaa !712
  %4 = load i32, ptr %1, align 8, !tbaa !712
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %34, !prof !735

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !736
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !736
  %11 = tail call zeroext i8 @types_compatible_p(ptr noundef %8, ptr noundef %10) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %34, label %13, !prof !737

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !714
  %16 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !714
  %18 = tail call zeroext i8 @expressions_equal_p(ptr noundef %15, ptr noundef %17) #19, !range !635
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20, !prof !738

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !716
  %23 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !716
  %25 = tail call zeroext i8 @expressions_equal_p(ptr noundef %22, ptr noundef %24) #19, !range !635
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27, !prof !739

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !718
  %30 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !718
  %32 = tail call zeroext i8 @expressions_equal_p(ptr noundef %29, ptr noundef %31) #19, !range !635
  %33 = zext nneg i8 %32 to i32
  br label %34

34:                                               ; preds = %27, %20, %13, %6, %2
  %35 = phi i32 [ 0, %20 ], [ 0, %13 ], [ 0, %6 ], [ 0, %2 ], [ %33, %27 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_vn_reference_op_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !740 !PGOFuncName !741 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !742 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %18, label %4, !prof !743

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %18, !prof !744

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = load i64, ptr %1, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17, !prof !745

14:                                               ; preds = %8
  %15 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !746

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %14, %4, %2, %17
  %19 = phi i8 [ 0, %17 ], [ 1, %2 ], [ 0, %4 ], [ 1, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_reference_ops_from_ref(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !747 {
  %3 = alloca %struct.vn_reference_op_struct, align 8
  %4 = alloca %struct.vn_reference_op_struct, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 152
  br i1 %7, label %12, label %8, !prof !748

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 2
  %11 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 3
  br label %46

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !592
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !592
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !597
  %22 = tail call ptr @build_int_cst(ptr noundef %21, i64 noundef 0) #20
  %23 = load i64, ptr %0, align 8
  br label %24

24:                                               ; preds = %12, %20, %16
  %25 = phi i64 [ %5, %16 ], [ %23, %20 ], [ %5, %12 ]
  %26 = phi ptr [ %18, %16 ], [ %22, %20 ], [ %14, %12 ]
  store i64 0, ptr %3, align 8
  %27 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !592
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !592
  %31 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !736
  %32 = trunc i64 %25 to i32
  %33 = and i32 %32, 65535
  store i32 %33, ptr %3, align 8, !tbaa !712
  %34 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %35 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 2
  %36 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 3
  %37 = load <2 x ptr>, ptr %34, align 8, !tbaa !592
  store <2 x ptr> %37, ptr %35, align 8, !tbaa !597
  %38 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !592
  %40 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !718
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %41 = load i64, ptr %26, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  store i32 %43, ptr %3, align 8, !tbaa !712
  store ptr %26, ptr %35, align 8, !tbaa !714
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !592
  store ptr %45, ptr %36, align 8, !tbaa !716
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  br label %126

46:                                               ; preds = %8, %122
  %47 = phi ptr [ %0, %8 ], [ %124, %122 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !592
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 16
  %51 = load ptr, ptr %50, align 8, !tbaa !592
  store ptr %51, ptr %9, align 8, !tbaa !736
  %52 = load i64, ptr %47, align 8
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 65535
  store i32 %54, ptr %4, align 8, !tbaa !712
  %55 = trunc i64 %52 to i16
  switch i16 %55, label %109 [
    i16 48, label %110
    i16 47, label %110
    i16 49, label %56
    i16 42, label %59
    i16 41, label %62
    i16 46, label %98
    i16 45, label %98
    i16 28, label %104
    i16 23, label %104
    i16 26, label %104
    i16 27, label %104
    i16 24, label %104
    i16 51, label %104
    i16 32, label %104
    i16 34, label %104
    i16 33, label %104
    i16 36, label %104
    i16 141, label %104
    i16 121, label %105
    i16 44, label %110
    i16 43, label %110
    i16 118, label %110
  ], !prof !749

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !592
  store ptr %58, ptr %10, align 8, !tbaa !714
  br label %110

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %61 = load <2 x ptr>, ptr %60, align 8, !tbaa !592
  store <2 x ptr> %61, ptr %10, align 8, !tbaa !597
  br label %110

62:                                               ; preds = %46
  store ptr null, ptr %9, align 8, !tbaa !736
  %63 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !592
  store ptr %64, ptr %10, align 8, !tbaa !714
  %65 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !592
  store ptr %66, ptr %11, align 8, !tbaa !716
  %67 = load i8, ptr @may_insert, align 1, !tbaa !592
  %68 = icmp ne i8 %67, 0
  %69 = icmp eq ptr %66, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %110, !prof !750

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.tree_decl_minimal, ptr %64, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !592
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 17
  br i1 %76, label %77, label %110, !prof !751

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tree_field_decl, ptr %64, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !592
  %80 = call i32 @integer_zerop(ptr noundef %79) #20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %110, label %82, !prof !752

82:                                               ; preds = %77
  %83 = load ptr, ptr %10, align 8, !tbaa !714
  %84 = getelementptr inbounds %struct.tree_field_decl, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !592
  %86 = call i32 @integer_zerop(ptr noundef %85) #20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %110, label %88, !prof !752

88:                                               ; preds = %82
  %89 = load ptr, ptr %10, align 8, !tbaa !714
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !592
  %92 = call i32 @host_integerp(ptr noundef %91, i32 noundef 0) #20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %110, label %94, !prof !752

94:                                               ; preds = %88
  %95 = load ptr, ptr %10, align 8, !tbaa !714
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !592
  store ptr %97, ptr %10, align 8, !tbaa !714
  br label %110

98:                                               ; preds = %46, %46
  %99 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %4, i64 0, i32 4
  %100 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !592
  store ptr %101, ptr %10, align 8, !tbaa !714
  %102 = call ptr @array_ref_low_bound(ptr noundef nonnull %47) #20
  store ptr %102, ptr %11, align 8, !tbaa !716
  %103 = call ptr @array_ref_element_size(ptr noundef nonnull %47) #20
  store ptr %103, ptr %99, align 8, !tbaa !718
  br label %110

104:                                              ; preds = %46, %46, %46, %46, %46, %46, %46, %46, %46, %46, %46
  store ptr %47, ptr %10, align 8, !tbaa !714
  br label %110

105:                                              ; preds = %46
  %106 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %47) #20
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %110, label %108, !prof !753

108:                                              ; preds = %105
  store ptr %47, ptr %10, align 8, !tbaa !714
  br label %110

109:                                              ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #20
  br label %110

110:                                              ; preds = %46, %46, %46, %105, %62, %71, %77, %82, %88, %94, %46, %46, %109, %108, %104, %98, %59, %56
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #19
  %111 = load i64, ptr %47, align 8
  %112 = and i64 %111, 65535
  %113 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !641
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %122, label %116, !prof !754

116:                                              ; preds = %110
  %117 = icmp eq i64 %112, 121
  br i1 %117, label %118, label %121, !prof !755

118:                                              ; preds = %116
  %119 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %47) #20
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121, !prof !753

121:                                              ; preds = %118, %116
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  br label %126

122:                                              ; preds = %110, %118
  %123 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !592
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %46, !prof !756, !llvm.loop !757

126:                                              ; preds = %122, %121, %24
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !758 !PGOFuncName !759 {
  tail call fastcc void @VEC_vn_reference_op_s_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !597
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
define internal fastcc void @VEC_vn_reference_op_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !760 !PGOFuncName !761 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  %3 = tail call fastcc i32 @VEC_vn_reference_op_s_base_space(ptr noundef %2, i32 noundef 1) #19, !range !623
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !762

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 40) #20
  store ptr %6, ptr %0, align 8, !tbaa !597
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !prof !758 !PGOFuncName !763 {
  %3 = load i32, ptr %0, align 8, !tbaa !707
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !707
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !764

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !765
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !766 !PGOFuncName !767 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !768

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !769
  %7 = load i32, ptr %0, align 8, !tbaa !707
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ao_ref_init_from_vn_reference(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !770 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr null, ptr %6, align 8, !tbaa !597
  %7 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %3, i32 noundef 0) #19
  store ptr %7, ptr %5, align 8, !tbaa !597
  %8 = load i32, ptr %7, align 8, !tbaa !712
  switch i32 %8, label %19 [
    i32 41, label %9
    i32 42, label %17
  ], !prof !771

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !714
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %45, label %15, !prof !772

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
  br i1 %22, label %23, label %25, !prof !773

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
  br i1 %32, label %33, label %35, !prof !774

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  br label %41

35:                                               ; preds = %30
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !592
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  br label %52

41:                                               ; preds = %33, %17, %15
  %42 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %34, %33 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !592
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45, !prof !775

45:                                               ; preds = %9, %41
  %46 = phi ptr [ %43, %41 ], [ %11, %9 ]
  %47 = tail call i32 @host_integerp(ptr noundef nonnull %46, i32 noundef 1) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49, !prof !776

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !592
  br label %52

52:                                               ; preds = %35, %45, %49, %41
  %53 = phi i64 [ %51, %49 ], [ -1, %41 ], [ -1, %45 ], [ %40, %35 ]
  %54 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5) #19, !range !623
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %157, label %56, !prof !777

56:                                               ; preds = %52, %140
  %57 = phi i32 [ %144, %140 ], [ 0, %52 ]
  %58 = phi ptr [ %143, %140 ], [ %6, %52 ]
  %59 = phi i64 [ %142, %140 ], [ %53, %52 ]
  %60 = phi i64 [ %141, %140 ], [ 0, %52 ]
  %61 = load ptr, ptr %5, align 8, !tbaa !597
  %62 = load i32, ptr %61, align 8, !tbaa !712
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
  ], !prof !778

63:                                               ; preds = %56, %56
  %64 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !736
  %66 = tail call ptr @build1_stat(i32 noundef %62, ptr noundef %65, ptr noundef null) #20
  store ptr %66, ptr %58, align 8, !tbaa !597
  %67 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 3
  br label %140

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !736
  %71 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !714
  %73 = tail call ptr @build2_stat(i32 noundef 49, ptr noundef %70, ptr noundef null, ptr noundef %72) #20
  store ptr %73, ptr %58, align 8, !tbaa !597
  %74 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 3
  br label %140

75:                                               ; preds = %56, %56, %56, %56
  %76 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !714
  store ptr %77, ptr %58, align 8, !tbaa !597
  br label %140

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !716
  %81 = tail call i64 @tree_low_cst(ptr noundef %80, i32 noundef 0) #20
  %82 = add nsw i64 %81, %60
  br label %140

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !714
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %140, label %89, !prof !779

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !716
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %140, !prof !780

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.tree_field_decl, ptr %85, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !592
  %96 = tail call i32 @host_integerp(ptr noundef %95, i32 noundef 1) #20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %140, label %98, !prof !779

98:                                               ; preds = %93
  %99 = load ptr, ptr %94, align 8, !tbaa !592
  %100 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !592
  %102 = shl i64 %101, 3
  %103 = add i64 %102, %60
  %104 = getelementptr inbounds %struct.tree_field_decl, ptr %85, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !592
  %106 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !592
  %108 = add i64 %103, %107
  br label %140

109:                                              ; preds = %56, %56
  %110 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !714
  %112 = tail call i32 @host_integerp(ptr noundef %111, i32 noundef 0) #20
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %140, label %114, !prof !781

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !716
  %117 = tail call i32 @host_integerp(ptr noundef %116, i32 noundef 0) #20
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %140, label %119, !prof !782

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %61, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !718
  %122 = tail call i32 @host_integerp(ptr noundef %121, i32 noundef 0) #20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %140, label %124, !prof !782

124:                                              ; preds = %119
  %125 = load ptr, ptr %110, align 8, !tbaa !714
  %126 = getelementptr inbounds %struct.tree_int_cst, ptr %125, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !592
  %128 = load ptr, ptr %115, align 8, !tbaa !716
  %129 = getelementptr inbounds %struct.tree_int_cst, ptr %128, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !592
  %131 = sub i64 %127, %130
  %132 = load ptr, ptr %120, align 8, !tbaa !718
  %133 = getelementptr inbounds %struct.tree_int_cst, ptr %132, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !592
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
  %145 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %3, i32 noundef %144, ptr noundef nonnull %5) #19, !range !623
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %56, !prof !783, !llvm.loop !784

147:                                              ; preds = %140
  %148 = load ptr, ptr %6, align 8, !tbaa !597
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150, !prof !785

150:                                              ; preds = %147
  store ptr null, ptr %0, align 8, !tbaa !786
  %151 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !788
  %152 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  store i64 %141, ptr %152, align 8, !tbaa !789
  %153 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %53, ptr %153, align 8, !tbaa !790
  %154 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  store i64 %142, ptr %154, align 8, !tbaa !791
  %155 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 %1, ptr %155, align 8, !tbaa !792
  %156 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 -1, ptr %156, align 4, !tbaa !793
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
define dso_local void @copy_reference_ops_from_call(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !794 {
  %3 = alloca %struct.vn_reference_op_struct, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !736
  store i32 59, ptr %3, align 8, !tbaa !712
  %6 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !714
  %8 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %3, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !716
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #19
  %10 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12, !prof !795

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %2 ]
  %14 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %13) #19
  call void @copy_reference_ops_from_ref(ptr noundef %14, ptr noundef %1) #19
  %15 = add nuw i32 %13, 1
  %16 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %12, label %18, !prof !796, !llvm.loop !797

18:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !794 !PGOFuncName !798 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !799 !PGOFuncName !800 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !801 !PGOFuncName !802 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vn_reference_fold_indirect(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !803 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.vn_reference_op_struct, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !597
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = load i32, ptr %1, align 4, !tbaa !641
  %7 = load ptr, ptr %0, align 8, !tbaa !597
  %8 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %6) #19
  store ptr %8, ptr %4, align 8, !tbaa !597
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !714
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !592
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !592
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 15
  br i1 %17, label %18, label %49, !prof !804

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !592
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !592
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 15
  br i1 %25, label %49, label %26, !prof !805

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  %27 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !592
  %29 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !736
  store i32 45, ptr %5, align 8, !tbaa !712
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !597
  %31 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !714
  %32 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !592
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !592
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store ptr %37, ptr %31, align 8, !tbaa !714
  br label %40

40:                                               ; preds = %39, %35, %26
  %41 = phi ptr [ %37, %39 ], [ %30, %35 ], [ %30, %26 ]
  %42 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !716
  %43 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !592
  %45 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !718
  call fastcc void @VEC_vn_reference_op_s_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  %46 = load ptr, ptr %9, align 8, !tbaa !714
  %47 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !592
  br label %49

49:                                               ; preds = %40, %18, %2
  %50 = phi ptr [ %48, %40 ], [ %12, %18 ], [ %12, %2 ]
  call void @copy_reference_ops_from_ref(ptr noundef %50, ptr noundef nonnull %3) #19
  %51 = load ptr, ptr %3, align 8
  %52 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %51) #19
  switch i32 %52, label %64 [
    i32 1, label %53
    i32 2, label %58
  ], !prof !806

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !597
  %55 = add i32 %6, -1
  %56 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 0) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %54, i32 noundef %55, ptr noundef nonnull %56) #19
  %57 = load ptr, ptr %0, align 8, !tbaa !597
  call fastcc void @VEC_vn_reference_op_s_base_ordered_remove(ptr noundef %57, i32 noundef %6) #19
  br label %83

58:                                               ; preds = %49
  %59 = load ptr, ptr %0, align 8, !tbaa !597
  %60 = add i32 %6, -1
  %61 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 0) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %59, i32 noundef %60, ptr noundef nonnull %61) #19
  %62 = load ptr, ptr %0, align 8, !tbaa !597
  %63 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 1) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %62, i32 noundef %6, ptr noundef nonnull %63) #19
  br label %83

64:                                               ; preds = %49
  %65 = icmp ugt i32 %52, 2
  br i1 %65, label %66, label %82, !prof !807

66:                                               ; preds = %64
  %67 = load ptr, ptr %0, align 8, !tbaa !597
  %68 = add i32 %6, -1
  %69 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 0) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %67, i32 noundef %68, ptr noundef nonnull %69) #19
  %70 = load ptr, ptr %0, align 8, !tbaa !597
  %71 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %51, i32 noundef 1) #19
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %70, i32 noundef %6, ptr noundef nonnull %71) #19
  %72 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %51, i32 noundef 2, ptr noundef nonnull %4) #19, !range !623
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74, !prof !808

74:                                               ; preds = %66, %74
  %75 = phi i32 [ %77, %74 ], [ %6, %66 ]
  %76 = phi i32 [ %79, %74 ], [ 2, %66 ]
  %77 = add i32 %75, 1
  %78 = load ptr, ptr %4, align 8, !tbaa !597
  call fastcc void @VEC_vn_reference_op_s_heap_safe_insert(ptr noundef nonnull %0, i32 noundef %77, ptr noundef %78) #19
  %79 = add i32 %76, 1
  %80 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %51, i32 noundef %79, ptr noundef nonnull %4) #19, !range !623
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %74, !prof !809, !llvm.loop !810

82:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 886, ptr noundef nonnull @.str.1) #20
  br label %83

83:                                               ; preds = %74, %66, %58, %82, %53
  %84 = phi i32 [ %55, %53 ], [ %6, %58 ], [ %6, %82 ], [ %6, %66 ], [ %77, %74 ]
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %3) #19
  store i32 %84, ptr %1, align 4, !tbaa !641
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #5 !prof !811 !PGOFuncName !812 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !813

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !765
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !814 !PGOFuncName !815 {
  %3 = load i32, ptr %0, align 8, !tbaa !707
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !707
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !816 !PGOFuncName !817 {
  tail call fastcc void @VEC_vn_reference_op_s_heap_reserve(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !597
  tail call fastcc void @VEC_vn_reference_op_s_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !818 !PGOFuncName !819 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !820

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !597
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #5 !prof !816 !PGOFuncName !821 {
  %4 = load i32, ptr %0, align 8, !tbaa !707
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !707
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = mul nuw nsw i64 %10, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  %12 = icmp eq ptr %2, null
  br i1 %12, label %14, label %13, !prof !822

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !765
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_reference_lookup_pieces(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 !prof !823 {
  %7 = alloca %struct.vn_reference_s, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %12, !prof !824

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi ptr [ %4, %6 ], [ %8, %11 ]
  store ptr null, ptr %13, align 8, !tbaa !597
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15, !prof !825

15:                                               ; preds = %12
  %16 = tail call ptr @VN_INFO(ptr noundef nonnull %0) #19
  %17 = load ptr, ptr %16, align 8, !tbaa !628
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %17, %15 ], [ null, %12 ]
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !702
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
  %29 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !597
  %30 = tail call fastcc ptr @valueize_refs(ptr noundef %29) #19
  store ptr %30, ptr @shared_lookup_references, align 8, !tbaa !597
  %31 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 5
  store ptr %30, ptr %31, align 8, !tbaa !696
  %32 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 4
  store ptr %2, ptr %32, align 8, !tbaa !826
  %33 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 3
  store i32 %1, ptr %33, align 8, !tbaa !827
  %34 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %7) #19
  %35 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !721
  %36 = call fastcc ptr @vn_reference_lookup_1(ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  %37 = load ptr, ptr %13, align 8, !tbaa !597
  %38 = icmp eq ptr %37, null
  %39 = icmp ne i8 %5, 0
  %40 = and i1 %39, %38
  %41 = load ptr, ptr %20, align 8
  %42 = icmp ne ptr %41, null
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %57, !prof !828

44:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #21
  %45 = load ptr, ptr %31, align 8, !tbaa !696
  %46 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %9, i32 noundef %1, ptr noundef %2, ptr noundef %45) #19, !range !635
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !829

48:                                               ; preds = %44
  %49 = load ptr, ptr %20, align 8, !tbaa !702
  %50 = call ptr @walk_non_aliased_vuses(ptr noundef nonnull %9, ptr noundef %49, ptr noundef nonnull @vn_reference_lookup_2, ptr noundef nonnull @vn_reference_lookup_3, ptr noundef nonnull %7) #20
  store ptr %50, ptr %13, align 8, !tbaa !597
  br label %51

51:                                               ; preds = %48, %44
  %52 = load ptr, ptr %31, align 8, !tbaa !696
  %53 = icmp eq ptr %52, %30
  br i1 %53, label %55, label %54, !prof !830

54:                                               ; preds = %51
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %31) #19
  br label %55

55:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #21
  %56 = load ptr, ptr %13, align 8, !tbaa !597
  br label %57

57:                                               ; preds = %55, %18
  %58 = phi ptr [ %56, %55 ], [ %37, %18 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !831

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.vn_reference_s, ptr %58, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !832
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi ptr [ %62, %60 ], [ null, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #21
  ret ptr %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !833 !PGOFuncName !834 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !835

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !707
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !836 !PGOFuncName !837 {
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !838

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !707
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_vn_reference_op_s_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !597, !nonnull !620, !noundef !620
  store i32 %1, ptr %10, align 8, !tbaa !707
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_vn_reference_op_s_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !839 !PGOFuncName !840 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !841
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @valueize_refs(ptr noundef %0) unnamed_addr #0 !prof !842 !PGOFuncName !843 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !597
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !641
  %5 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #19, !range !623
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %75, label %7, !prof !844

7:                                                ; preds = %1, %69
  %8 = phi ptr [ %70, %69 ], [ %0, %1 ]
  %9 = phi i32 [ %72, %69 ], [ 0, %1 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !597
  %11 = load i32, ptr %10, align 8, !tbaa !712
  %12 = icmp eq i32 %11, 141
  %13 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !714
  br i1 %12, label %21, label %15, !prof !845

15:                                               ; preds = %7
  %16 = icmp eq ptr %14, null
  br i1 %16, label %47, label %17, !prof !846

17:                                               ; preds = %15
  %18 = load i64, ptr %14, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %47, !prof !847

21:                                               ; preds = %7, %17
  %22 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 2
  %23 = tail call ptr @VN_INFO(ptr noundef %14) #19
  %24 = load ptr, ptr %23, align 8, !tbaa !628
  store ptr %24, ptr %22, align 8, !tbaa !714
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 141
  br i1 %28, label %33, label %29, !prof !848

29:                                               ; preds = %21
  %30 = load i32, ptr %10, align 8, !tbaa !712
  %31 = icmp eq i32 %30, 141
  br i1 %31, label %32, label %33, !prof !849

32:                                               ; preds = %29
  store i32 %27, ptr %10, align 8, !tbaa !712
  br label %33

33:                                               ; preds = %32, %29, %21
  %34 = icmp eq i32 %9, 0
  br i1 %34, label %47, label %35, !prof !850

35:                                               ; preds = %33
  %36 = load i64, ptr %24, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 121
  br i1 %38, label %39, label %47, !prof !851

39:                                               ; preds = %35
  %40 = add i32 %9, -1
  %41 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %8, i32 noundef %40) #19
  %42 = load i32, ptr %41, align 8, !tbaa !712
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %47, !prof !852

44:                                               ; preds = %39
  call void @vn_reference_fold_indirect(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  %45 = load i32, ptr %4, align 4, !tbaa !641
  %46 = load ptr, ptr %2, align 8
  br label %69

47:                                               ; preds = %33, %35, %39, %17, %15
  %48 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !716
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51, !prof !853

51:                                               ; preds = %47
  %52 = load i64, ptr %49, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %58, !prof !854

55:                                               ; preds = %51
  %56 = tail call ptr @VN_INFO(ptr noundef nonnull %49) #19
  %57 = load ptr, ptr %56, align 8, !tbaa !628
  store ptr %57, ptr %48, align 8, !tbaa !716
  br label %58

58:                                               ; preds = %55, %51, %47
  %59 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %10, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !718
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62, !prof !855

62:                                               ; preds = %58
  %63 = load i64, ptr %60, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 141
  br i1 %65, label %66, label %69, !prof !856

66:                                               ; preds = %62
  %67 = tail call ptr @VN_INFO(ptr noundef nonnull %60) #19
  %68 = load ptr, ptr %67, align 8, !tbaa !628
  store ptr %68, ptr %59, align 8, !tbaa !718
  br label %69

69:                                               ; preds = %58, %62, %66, %44
  %70 = phi ptr [ %8, %58 ], [ %8, %62 ], [ %8, %66 ], [ %46, %44 ]
  %71 = phi i32 [ %9, %58 ], [ %9, %62 ], [ %9, %66 ], [ %45, %44 ]
  %72 = add i32 %71, 1
  store i32 %72, ptr %4, align 4, !tbaa !641
  %73 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %70, i32 noundef %72, ptr noundef nonnull %3) #19, !range !623
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %7, !prof !857, !llvm.loop !858

75:                                               ; preds = %69, %1
  %76 = phi ptr [ %0, %1 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vn_reference_lookup_1(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 !prof !859 !PGOFuncName !860 {
  %3 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !721
  %5 = load ptr, ptr @current_info, align 8, !tbaa !597
  %6 = getelementptr inbounds %struct.vn_tables_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !861
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef %0, i32 noundef %4, i32 noundef 0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20, !prof !863

10:                                               ; preds = %2
  %11 = load ptr, ptr @current_info, align 8, !tbaa !597
  %12 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %28, !prof !864

14:                                               ; preds = %10
  %15 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !861
  %18 = tail call ptr @htab_find_slot_with_hash(ptr noundef %17, ptr noundef nonnull %0, i32 noundef %4, i32 noundef 0) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20, !prof !865

20:                                               ; preds = %2, %14
  %21 = phi ptr [ %18, %14 ], [ %8, %2 ]
  %22 = icmp eq ptr %1, null
  %23 = load ptr, ptr %21, align 8, !tbaa !597
  br i1 %22, label %25, label %24, !prof !866

24:                                               ; preds = %20
  store ptr %23, ptr %1, align 8, !tbaa !597
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.vn_reference_s, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !832
  br label %28

28:                                               ; preds = %10, %14, %25
  %29 = phi ptr [ %27, %25 ], [ null, %14 ], [ null, %10 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @walk_non_aliased_vuses(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vn_reference_lookup_2(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 !prof !867 !PGOFuncName !868 {
  %4 = load ptr, ptr @last_vuse_ptr, align 8, !tbaa !597
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !869

6:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !597
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !702
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !870

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !721
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !592
  %16 = sub i32 %13, %15
  store i32 %16, ptr %12, align 4, !tbaa !721
  br label %17

17:                                               ; preds = %11, %7
  %18 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !628
  store ptr %19, ptr %8, align 8, !tbaa !702
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !721
  br i1 %20, label %27, label %23, !prof !870

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !592
  %26 = add i32 %25, %22
  store i32 %26, ptr %21, align 4, !tbaa !721
  br label %27

27:                                               ; preds = %17, %23
  %28 = phi i32 [ %26, %23 ], [ %22, %17 ]
  %29 = load ptr, ptr @current_info, align 8, !tbaa !597
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !861
  %32 = tail call ptr @htab_find_slot_with_hash(ptr noundef %31, ptr noundef nonnull %2, i32 noundef %28, i32 noundef 0) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %44, !prof !871

34:                                               ; preds = %27
  %35 = load ptr, ptr @current_info, align 8, !tbaa !597
  %36 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %47, !prof !872

38:                                               ; preds = %34
  %39 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %40 = getelementptr inbounds %struct.vn_tables_s, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !861
  %42 = tail call ptr @htab_find_slot_with_hash(ptr noundef %41, ptr noundef nonnull %2, i32 noundef %28, i32 noundef 0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !873

44:                                               ; preds = %27, %38
  %45 = phi ptr [ %42, %38 ], [ %32, %27 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !597
  br label %47

47:                                               ; preds = %34, %38, %44
  %48 = phi ptr [ %46, %44 ], [ null, %38 ], [ null, %34 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @vn_reference_lookup_3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !874 !PGOFuncName !875 {
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
  %18 = load ptr, ptr %17, align 8, !tbaa !592
  %19 = tail call ptr @ao_ref_base(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !789
  %22 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !791
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %252, label %25, !prof !876

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !826
  %28 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %27) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %92, label %30, !prof !877

30:                                               ; preds = %25
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %18) #19, !range !635
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %92, label %33, !prof !878

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %18) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %92, label %36, !prof !879

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_function_decl, ptr %34, i64 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 8191
  %40 = icmp eq i32 %39, 6477
  br i1 %40, label %41, label %92, !prof !880

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 1) #19
  %43 = tail call i32 @integer_zerop(ptr noundef %42) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %92, label %45, !prof !881

45:                                               ; preds = %41
  %46 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 2) #19
  %47 = tail call i32 @host_integerp(ptr noundef %46, i32 noundef 1) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %92, label %49, !prof !882

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 0) #19
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 121
  br i1 %53, label %54, label %92, !prof !883

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 0) #19
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %58 = call ptr @get_ref_base_and_extent(ptr noundef %57, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %59 = call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 2) #19
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !592
  %62 = shl i64 %61, 3
  store i64 %62, ptr %5, align 8, !tbaa !673
  %63 = and i64 %61, 2305843009213693951
  %64 = call fastcc ptr @gimple_call_arg(ptr noundef %18, i32 noundef 2) #19
  %65 = getelementptr inbounds %struct.tree_int_cst, ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !592
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %79, !prof !884

68:                                               ; preds = %54
  %69 = call i32 @operand_equal_p(ptr noundef %19, ptr noundef %58, i32 noundef 0) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71, !prof !885

71:                                               ; preds = %68
  %72 = load i64, ptr %4, align 8, !tbaa !673
  %73 = icmp sgt i64 %72, %21
  br i1 %73, label %79, label %74, !prof !886

74:                                               ; preds = %71
  %75 = load i64, ptr %5, align 8, !tbaa !673
  %76 = add nsw i64 %75, %72
  %77 = add nsw i64 %23, %21
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %80, !prof !886

79:                                               ; preds = %74, %71, %68, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %252

80:                                               ; preds = %74
  %81 = load ptr, ptr %26, align 8, !tbaa !826
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !597
  %83 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %81, ptr noundef %82) #20
  %84 = call i32 @get_or_alloc_constant_value_id(ptr noundef %83) #19
  %85 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !827
  %87 = load ptr, ptr %26, align 8, !tbaa !826
  %88 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !696
  %90 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %89) #19
  %91 = call ptr @vn_reference_insert_pieces(ptr noundef nonnull %1, i32 noundef %86, ptr noundef %87, ptr noundef %90, ptr noundef %83, i32 noundef %84) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %252

92:                                               ; preds = %49, %45, %41, %36, %33, %30, %25
  %93 = load ptr, ptr %26, align 8, !tbaa !826
  %94 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %93) #20
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %141, label %96, !prof !887

96:                                               ; preds = %92
  %97 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #20
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %141, label %99, !prof !888

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #19, !range !640
  %101 = icmp eq i32 %100, 51
  br i1 %101, label %102, label %141, !prof !889

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %104 = getelementptr inbounds %struct.tree_constructor, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !592
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %109 = getelementptr inbounds %struct.tree_constructor, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !592
  br label %111

111:                                              ; preds = %102, %107
  %112 = phi ptr [ %110, %107 ], [ null, %102 ]
  %113 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %112) #19
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %116 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  %117 = call ptr @get_ref_base_and_extent(ptr noundef %116, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %118 = call i32 @operand_equal_p(ptr noundef %19, ptr noundef %117, i32 noundef 0) #20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load i64, ptr %7, align 8, !tbaa !673
  %122 = icmp sgt i64 %121, %21
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load i64, ptr %8, align 8, !tbaa !673
  %125 = add nsw i64 %124, %121
  %126 = add nsw i64 %23, %21
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %120, %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %252

129:                                              ; preds = %123
  %130 = load ptr, ptr %26, align 8, !tbaa !826
  %131 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !597
  %132 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %130, ptr noundef %131) #20
  %133 = call i32 @get_or_alloc_constant_value_id(ptr noundef %132) #19
  %134 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !827
  %136 = load ptr, ptr %26, align 8, !tbaa !826
  %137 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !696
  %139 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %138) #19
  %140 = call ptr @vn_reference_insert_pieces(ptr noundef nonnull %1, i32 noundef %135, ptr noundef %136, ptr noundef %139, ptr noundef %132, i32 noundef %133) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %252

141:                                              ; preds = %111, %99, %96, %92
  %142 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %18) #20
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %252, label %144, !prof !890

144:                                              ; preds = %141
  %145 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 65535
  %148 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !641
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %170, label %151, !prof !891

151:                                              ; preds = %144
  %152 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %153 = load i64, ptr %152, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 47
  br i1 %155, label %170, label %156, !prof !892

156:                                              ; preds = %151
  %157 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 48
  br i1 %160, label %170, label %161, !prof !893

161:                                              ; preds = %156
  %162 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 49
  br i1 %165, label %170, label %166, !prof !893

166:                                              ; preds = %161
  %167 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  %168 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %167) #19, !range !635
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %252, label %170, !prof !894

170:                                              ; preds = %166, %161, %156, %151, %144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store ptr null, ptr %13, align 8, !tbaa !597
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !597
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #21
  %171 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  %172 = call ptr @get_ref_base_and_extent(ptr noundef %171, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %173 = call i32 @operand_equal_p(ptr noundef %19, ptr noundef %172, i32 noundef 0) #20
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %250, label %175, !prof !895

175:                                              ; preds = %170
  %176 = load i64, ptr %10, align 8, !tbaa !673
  %177 = icmp sgt i64 %176, %21
  br i1 %177, label %250, label %178, !prof !896

178:                                              ; preds = %175
  %179 = load i64, ptr %11, align 8, !tbaa !673
  %180 = add nsw i64 %179, %176
  %181 = add nsw i64 %23, %21
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %250, label %183, !prof !897

183:                                              ; preds = %178
  %184 = call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  call void @copy_reference_ops_from_ref(ptr noundef %184, ptr noundef nonnull %13) #19
  %185 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !696
  %187 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %186) #19
  %188 = load ptr, ptr %13, align 8
  %189 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %188) #19
  br label %190

190:                                              ; preds = %198, %183
  %191 = phi i32 [ %187, %183 ], [ %194, %198 ]
  %192 = phi i32 [ %189, %183 ], [ %193, %198 ]
  %193 = add i32 %192, -1
  %194 = add i32 %191, -1
  %195 = icmp sgt i32 %193, -1
  %196 = icmp sgt i32 %194, -1
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %205, !prof !898

198:                                              ; preds = %190
  %199 = load ptr, ptr %185, align 8, !tbaa !696
  %200 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %199, i32 noundef %194) #19
  %201 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %188, i32 noundef %193) #19
  %202 = call fastcc i32 @vn_reference_op_eq(ptr noundef nonnull %200, ptr noundef nonnull %201) #19, !range !623
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %190, !prof !899, !llvm.loop !900

204:                                              ; preds = %198
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %13) #19
  br label %250

205:                                              ; preds = %190
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %13) #19
  %206 = icmp eq i32 %192, 0
  br i1 %206, label %207, label %250, !prof !901

207:                                              ; preds = %205
  %208 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #19
  call void @copy_reference_ops_from_ref(ptr noundef %208, ptr noundef nonnull %14) #19
  %209 = load ptr, ptr %14, align 8
  %210 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %209) #19
  %211 = add i32 %210, %191
  %212 = load ptr, ptr %185, align 8, !tbaa !696
  %213 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %212) #19
  %214 = icmp ugt i32 %211, %213
  br i1 %214, label %215, label %222, !prof !902

215:                                              ; preds = %207
  call fastcc void @VEC_vn_reference_op_s_heap_safe_grow(ptr noundef nonnull %185, i32 noundef %211) #19
  %216 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !597
  %217 = icmp eq ptr %212, %216
  br i1 %217, label %218, label %223, !prof !903

218:                                              ; preds = %215
  %219 = load ptr, ptr %185, align 8, !tbaa !696
  %220 = icmp eq ptr %219, %212
  br i1 %220, label %223, label %221, !prof !904

221:                                              ; preds = %218
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !597
  br label %223

222:                                              ; preds = %207
  call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %212, i32 noundef %211) #19
  br label %223

223:                                              ; preds = %215, %218, %221, %222
  %224 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %209, i32 noundef 0, ptr noundef nonnull %15) #19, !range !623
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %234, label %226, !prof !905

226:                                              ; preds = %223, %226
  %227 = phi i32 [ %231, %226 ], [ 0, %223 ]
  %228 = load ptr, ptr %185, align 8, !tbaa !696
  %229 = add nsw i32 %227, %191
  %230 = load ptr, ptr %15, align 8, !tbaa !597
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %228, i32 noundef %229, ptr noundef %230) #19
  %231 = add nuw nsw i32 %227, 1
  %232 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %209, i32 noundef %231, ptr noundef nonnull %15) #19, !range !623
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %226, !prof !906, !llvm.loop !907

234:                                              ; preds = %226, %223
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %14) #19
  %235 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %2) #19
  %236 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  store i32 %235, ptr %236, align 4, !tbaa !721
  %237 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %238 = load i32, ptr %237, align 8, !tbaa !827
  %239 = load ptr, ptr %26, align 8, !tbaa !826
  %240 = load ptr, ptr %185, align 8, !tbaa !696
  %241 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %16, i32 noundef %238, ptr noundef %239, ptr noundef %240) #19, !range !635
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %250, label %243, !prof !908

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %245 = load i64, ptr %244, align 8, !tbaa !790
  %246 = getelementptr inbounds %struct.ao_ref_s, ptr %16, i64 0, i32 3
  %247 = load i64, ptr %246, align 8, !tbaa !790
  %248 = icmp eq i64 %245, %247
  br i1 %248, label %249, label %250, !prof !909

249:                                              ; preds = %243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %16, i64 48, i1 false), !tbaa.struct !910
  store ptr null, ptr @last_vuse_ptr, align 8, !tbaa !597
  br label %250

250:                                              ; preds = %204, %243, %234, %205, %170, %175, %178, %249
  %251 = phi ptr [ null, %249 ], [ inttoptr (i64 -1 to ptr), %178 ], [ inttoptr (i64 -1 to ptr), %175 ], [ inttoptr (i64 -1 to ptr), %170 ], [ inttoptr (i64 -1 to ptr), %205 ], [ inttoptr (i64 -1 to ptr), %234 ], [ inttoptr (i64 -1 to ptr), %243 ], [ inttoptr (i64 -1 to ptr), %204 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %252

252:                                              ; preds = %141, %166, %79, %128, %129, %80, %3, %250
  %253 = phi ptr [ %91, %80 ], [ %140, %129 ], [ %251, %250 ], [ inttoptr (i64 -1 to ptr), %3 ], [ inttoptr (i64 -1 to ptr), %128 ], [ inttoptr (i64 -1 to ptr), %79 ], [ inttoptr (i64 -1 to ptr), %166 ], [ inttoptr (i64 -1 to ptr), %141 ]
  ret ptr %253
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !836 !PGOFuncName !911 {
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  %4 = tail call fastcc i32 @VEC_vn_reference_op_s_base_space(ptr noundef %3, i32 noundef %1) #19, !range !623
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !912

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %3, i32 noundef %1, i64 noundef 8, i64 noundef 40) #20
  store ptr %7, ptr %0, align 8, !tbaa !597
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
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !913 !PGOFuncName !914 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !915 !PGOFuncName !916 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !917

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !592
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vn_reference_insert_pieces(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !918 {
  %7 = load ptr, ptr @current_info, align 8, !tbaa !597
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !919
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #20
  store i32 %5, ptr %10, align 8, !tbaa !920
  %11 = icmp eq ptr %0, null
  br i1 %11, label %15, label %12, !prof !921

12:                                               ; preds = %6
  %13 = tail call ptr @VN_INFO(ptr noundef nonnull %0) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !628
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ null, %6 ]
  %17 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !702
  %18 = tail call fastcc ptr @valueize_refs(ptr noundef %3) #19
  %19 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !696
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 4
  store ptr %2, ptr %20, align 8, !tbaa !826
  %21 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 3
  store i32 %1, ptr %21, align 8, !tbaa !827
  %22 = tail call i32 @vn_reference_compute_hash(ptr noundef nonnull %10) #19
  %23 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !721
  %24 = icmp eq ptr %4, null
  br i1 %24, label %33, label %25, !prof !922

25:                                               ; preds = %15
  %26 = load i64, ptr %4, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %33, !prof !886

29:                                               ; preds = %25
  %30 = tail call ptr @VN_INFO(ptr noundef nonnull %4) #19
  %31 = load ptr, ptr %30, align 8, !tbaa !628
  %32 = load i32, ptr %23, align 4, !tbaa !721
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = phi i32 [ %32, %29 ], [ %22, %25 ], [ %22, %15 ]
  %35 = phi ptr [ %31, %29 ], [ %4, %25 ], [ null, %15 ]
  %36 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 6
  store ptr %35, ptr %36, align 8, !tbaa !832
  %37 = load ptr, ptr @current_info, align 8, !tbaa !597
  %38 = getelementptr inbounds %struct.vn_tables_s, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !861
  %40 = tail call ptr @htab_find_slot_with_hash(ptr noundef %39, ptr noundef nonnull %10, i32 noundef %34, i32 noundef 1) #20
  %41 = load ptr, ptr %40, align 8, !tbaa !597
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43, !prof !923

43:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1355, ptr noundef nonnull @.str.1) #20
  %44 = load ptr, ptr %40, align 8, !tbaa !597
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !785

46:                                               ; preds = %43
  tail call void @free_reference(ptr noundef nonnull %44) #19
  br label %47

47:                                               ; preds = %33, %46, %43
  store ptr %10, ptr %40, align 8, !tbaa !597
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !924 !PGOFuncName !925 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !886

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !707
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !785

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 40) #20
  store i32 %4, ptr %8, align 8, !tbaa !926
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
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !928 !PGOFuncName !929 {
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
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !934 !PGOFuncName !935 {
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
  ], !prof !936

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_reference_lookup(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 !prof !937 {
  %5 = alloca %struct.vn_reference_s, align 8
  %6 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #21
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8, !prof !938

8:                                                ; preds = %4
  store ptr null, ptr %3, align 8, !tbaa !597
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11, !prof !939

11:                                               ; preds = %9
  %12 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !628
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !702
  %17 = tail call fastcc ptr @valueize_shared_reference_ops_from_ref(ptr noundef %0) #19
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !696
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !592
  %21 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !826
  %22 = tail call i32 @get_alias_set(ptr noundef %0) #20
  %23 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !827
  %24 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %5) #19
  %25 = getelementptr inbounds %struct.vn_reference_s, ptr %5, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !721
  %26 = icmp ne i8 %2, 0
  %27 = icmp ne ptr %15, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %44, !prof !940

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #21
  call void @ao_ref_init(ptr noundef nonnull %6, ptr noundef nonnull %0) #20
  %30 = load ptr, ptr %16, align 8, !tbaa !702
  %31 = call ptr @walk_non_aliased_vuses(ptr noundef nonnull %6, ptr noundef %30, ptr noundef nonnull @vn_reference_lookup_2, ptr noundef nonnull @vn_reference_lookup_3, ptr noundef nonnull %5) #20
  %32 = load ptr, ptr %18, align 8, !tbaa !696
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %35, label %34, !prof !941

34:                                               ; preds = %29
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %18) #19
  br label %35

35:                                               ; preds = %34, %29
  %36 = icmp eq ptr %31, null
  br i1 %36, label %42, label %37, !prof !942

37:                                               ; preds = %35
  br i1 %7, label %39, label %38, !prof !943

38:                                               ; preds = %37
  store ptr %31, ptr %3, align 8, !tbaa !597
  br label %39

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct.vn_reference_s, ptr %31, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !832
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
define internal fastcc noundef ptr @valueize_shared_reference_ops_from_ref(ptr noundef %0) unnamed_addr #0 !prof !937 !PGOFuncName !944 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !945

3:                                                ; preds = %1
  %4 = load ptr, ptr @shared_lookup_references, align 8
  tail call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %4, i32 noundef 0) #19
  tail call void @copy_reference_ops_from_ref(ptr noundef nonnull %0, ptr noundef nonnull @shared_lookup_references) #19
  %5 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !597
  %6 = tail call fastcc ptr @valueize_refs(ptr noundef %5) #19
  store ptr %6, ptr @shared_lookup_references, align 8, !tbaa !597
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
define dso_local ptr @vn_reference_insert(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !946 {
  %4 = load ptr, ptr @current_info, align 8, !tbaa !597
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !919
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %15, !prof !947

11:                                               ; preds = %3
  %12 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %13 = getelementptr inbounds %struct.vn_ssa_aux, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !948
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef nonnull %1) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %14, %11 ]
  store i32 %18, ptr %7, align 8, !tbaa !920
  %19 = icmp eq ptr %2, null
  br i1 %19, label %23, label %20, !prof !949

20:                                               ; preds = %17
  %21 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %22 = load ptr, ptr %21, align 8, !tbaa !628
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !702
  %26 = tail call fastcc ptr @create_reference_ops_from_ref(ptr noundef %0) #19
  %27 = tail call fastcc ptr @valueize_refs(ptr noundef %26) #19
  %28 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !696
  %29 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !592
  %31 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !826
  %32 = tail call i32 @get_alias_set(ptr noundef %0) #20
  %33 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !827
  %34 = tail call i32 @vn_reference_compute_hash(ptr noundef nonnull %7) #19
  %35 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !721
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %43, !prof !947

39:                                               ; preds = %23
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %41 = load ptr, ptr %40, align 8, !tbaa !628
  %42 = load i32, ptr %35, align 4, !tbaa !721
  br label %43

43:                                               ; preds = %23, %39
  %44 = phi i32 [ %42, %39 ], [ %34, %23 ]
  %45 = phi ptr [ %41, %39 ], [ %1, %23 ]
  %46 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 6
  store ptr %45, ptr %46, align 8, !tbaa !832
  %47 = load ptr, ptr @current_info, align 8, !tbaa !597
  %48 = getelementptr inbounds %struct.vn_tables_s, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !861
  %50 = tail call ptr @htab_find_slot_with_hash(ptr noundef %49, ptr noundef nonnull %7, i32 noundef %44, i32 noundef 1) #20
  %51 = load ptr, ptr %50, align 8, !tbaa !597
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !950

53:                                               ; preds = %43
  tail call void @free_reference(ptr noundef nonnull %51) #19
  br label %54

54:                                               ; preds = %53, %43
  store ptr %7, ptr %50, align 8, !tbaa !597
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_reference_ops_from_ref(ptr noundef %0) unnamed_addr #0 !prof !946 !PGOFuncName !951 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !597
  call void @copy_reference_ops_from_ref(ptr noundef %0, ptr noundef nonnull %2) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !597
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @free_reference(ptr nocapture noundef %0) #9 !prof !952 !PGOFuncName !953 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vn_nary_op_compute_hash(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !954 {
  %2 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = icmp ult i32 %3, 65536
  br i1 %5, label %24, label %6, !prof !955

6:                                                ; preds = %1, %18
  %7 = phi i32 [ %19, %18 ], [ %3, %1 ]
  %8 = phi i64 [ %20, %18 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !597
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %18, !prof !956

14:                                               ; preds = %6
  %15 = tail call ptr @VN_INFO(ptr noundef nonnull %10) #19
  %16 = load ptr, ptr %15, align 8, !tbaa !628
  store ptr %16, ptr %9, align 8, !tbaa !597
  %17 = load i32, ptr %2, align 4
  br label %18

18:                                               ; preds = %6, %14
  %19 = phi i32 [ %7, %6 ], [ %17, %14 ]
  %20 = add nuw nsw i64 %8, 1
  %21 = lshr i32 %19, 16
  %22 = zext nneg i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %6, label %24, !prof !957, !llvm.loop !958

24:                                               ; preds = %18, %1
  %25 = phi i32 [ %3, %1 ], [ %19, %18 ]
  %26 = phi i32 [ %4, %1 ], [ %21, %18 ]
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %42, !prof !959

28:                                               ; preds = %24
  %29 = and i32 %25, 65535
  %30 = tail call zeroext i8 @commutative_tree_code(i32 noundef %29) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32, !prof !960

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !597
  %35 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !597
  %37 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %34, ptr noundef %36, i8 noundef zeroext 0) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39, !prof !961

39:                                               ; preds = %32
  %40 = load <2 x ptr>, ptr %33, align 8, !tbaa !597
  %41 = shufflevector <2 x ptr> %40, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %41, ptr %33, align 8, !tbaa !597
  br label %42

42:                                               ; preds = %39, %32, %28, %24
  %43 = load i32, ptr %2, align 4
  %44 = and i32 %43, 65535
  %45 = tail call i32 @iterative_hash_hashval_t(i32 noundef %44, i32 noundef 0) #20
  %46 = load i32, ptr %2, align 4
  %47 = icmp ult i32 %46, 65536
  br i1 %47, label %59, label %48, !prof !955

48:                                               ; preds = %42, %48
  %49 = phi i64 [ %54, %48 ], [ 0, %42 ]
  %50 = phi i32 [ %53, %48 ], [ %45, %42 ]
  %51 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !597
  %53 = tail call i32 @iterative_hash_expr(ptr noundef %52, i32 noundef %50) #20
  %54 = add nuw nsw i64 %49, 1
  %55 = load i32, ptr %2, align 4
  %56 = lshr i32 %55, 16
  %57 = zext nneg i32 %56 to i64
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %48, label %59, !prof !957, !llvm.loop !962

59:                                               ; preds = %48, %42
  %60 = phi i32 [ %45, %42 ], [ %53, %48 ]
  ret i32 %60
}

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vn_nary_op_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !963 {
  %3 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !964
  %5 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !964
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %40, !prof !966

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %10
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40, !prof !967

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !968
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !968
  %21 = tail call zeroext i8 @types_compatible_p(ptr noundef %18, ptr noundef %20) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23, !prof !969

23:                                               ; preds = %16
  %24 = load i32, ptr %9, align 4
  %25 = icmp ult i32 %24, 65536
  br i1 %25, label %40, label %32, !prof !970

26:                                               ; preds = %32
  %27 = add nuw nsw i64 %33, 1
  %28 = load i32, ptr %9, align 4
  %29 = lshr i32 %28, 16
  %30 = zext nneg i32 %29 to i64
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %40, !prof !971, !llvm.loop !972

32:                                               ; preds = %23, %26
  %33 = phi i64 [ %27, %26 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !597
  %36 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 5, i64 %33
  %37 = load ptr, ptr %36, align 8, !tbaa !597
  %38 = tail call zeroext i8 @expressions_equal_p(ptr noundef %35, ptr noundef %37) #19, !range !635
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %26, !prof !973

40:                                               ; preds = %32, %26, %23, %8, %16, %2
  %41 = phi i32 [ 0, %2 ], [ 0, %16 ], [ 0, %8 ], [ 1, %23 ], [ 0, %32 ], [ 1, %26 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_lookup_pieces(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7) local_unnamed_addr #0 !prof !974 {
  %9 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #21
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11, !prof !975

11:                                               ; preds = %8
  store ptr null, ptr %7, align 8, !tbaa !597
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 1
  %14 = and i32 %1, 65535
  %15 = shl i32 %0, 16
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 4
  store ptr %2, ptr %17, align 8, !tbaa !968
  %18 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5
  store ptr %3, ptr %18, align 8, !tbaa !597
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 1
  store ptr %4, ptr %19, align 8, !tbaa !597
  %20 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 2
  store ptr %5, ptr %20, align 8, !tbaa !597
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 3
  store ptr %6, ptr %21, align 8, !tbaa !597
  %22 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %9) #19
  %23 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 2
  store i32 %22, ptr %23, align 8, !tbaa !964
  %24 = load ptr, ptr @current_info, align 8, !tbaa !597
  %25 = load ptr, ptr %24, align 8, !tbaa !976
  %26 = call ptr @htab_find_slot_with_hash(ptr noundef %25, ptr noundef nonnull %9, i32 noundef %22, i32 noundef 0) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %38, !prof !977

28:                                               ; preds = %12
  %29 = load ptr, ptr @current_info, align 8, !tbaa !597
  %30 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %45, !prof !978

32:                                               ; preds = %28
  %33 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %34 = load ptr, ptr %33, align 8, !tbaa !976
  %35 = load i32, ptr %23, align 8, !tbaa !964
  %36 = call ptr @htab_find_slot_with_hash(ptr noundef %34, ptr noundef nonnull %9, i32 noundef %35, i32 noundef 0) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38, !prof !979

38:                                               ; preds = %12, %32
  %39 = phi ptr [ %36, %32 ], [ %26, %12 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !597
  br i1 %10, label %42, label %41, !prof !980

41:                                               ; preds = %38
  store ptr %40, ptr %7, align 8, !tbaa !597
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !981
  br label %45

45:                                               ; preds = %28, %32, %42
  %46 = phi ptr [ %44, %42 ], [ null, %32 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_lookup(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 !prof !982 {
  %3 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !983

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !597
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %11 = and i64 %7, 65535
  %12 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !592
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %9
  store i32 %16, ptr %10, align 4
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !592
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !968
  %20 = icmp eq i8 %13, 0
  br i1 %20, label %26, label %21, !prof !984

21:                                               ; preds = %6
  %22 = getelementptr inbounds i8, ptr %3, i64 32
  %23 = getelementptr i8, ptr %0, i64 40
  %24 = zext i8 %13 to i64
  %25 = shl nuw nsw i64 %24, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %22, ptr align 8 %23, i64 %25, i1 false), !tbaa !592
  br label %26

26:                                               ; preds = %21, %6
  %27 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %3) #19
  %28 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !964
  %29 = load ptr, ptr @current_info, align 8, !tbaa !597
  %30 = load ptr, ptr %29, align 8, !tbaa !976
  %31 = call ptr @htab_find_slot_with_hash(ptr noundef %30, ptr noundef nonnull %3, i32 noundef %27, i32 noundef 0) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43, !prof !985

33:                                               ; preds = %26
  %34 = load ptr, ptr @current_info, align 8, !tbaa !597
  %35 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %50, !prof !986

37:                                               ; preds = %33
  %38 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %39 = load ptr, ptr %38, align 8, !tbaa !976
  %40 = load i32, ptr %28, align 8, !tbaa !964
  %41 = call ptr @htab_find_slot_with_hash(ptr noundef %39, ptr noundef nonnull %3, i32 noundef %40, i32 noundef 0) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43, !prof !987

43:                                               ; preds = %26, %37
  %44 = phi ptr [ %41, %37 ], [ %31, %26 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !597
  br i1 %4, label %47, label %46, !prof !988

46:                                               ; preds = %43
  store ptr %45, ptr %1, align 8, !tbaa !597
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.vn_nary_op_s, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !981
  br label %50

50:                                               ; preds = %33, %37, %47
  %51 = phi ptr [ %49, %47 ], [ null, %37 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_lookup_stmt(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 !prof !989 {
  %3 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !990

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !597
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %8 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %9 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %10 = shl i32 %9, 16
  %11 = add i32 %10, -65536
  %12 = or disjoint i32 %11, %7
  store i32 %12, ptr %8, align 4
  %13 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %14 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !968
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %27, label %16, !prof !991

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
  store ptr %24, ptr %25, align 8, !tbaa !597
  %26 = icmp eq i64 %22, %19
  br i1 %26, label %27, label %20, !prof !992, !llvm.loop !993

27:                                               ; preds = %20, %6
  %28 = trunc i32 %7 to i16
  switch i16 %28, label %34 [
    i16 43, label %29
    i16 44, label %29
    i16 118, label %29
  ], !prof !994

29:                                               ; preds = %27, %27, %27
  %30 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !597
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !592
  store ptr %33, ptr %30, align 8, !tbaa !597
  br label %34

34:                                               ; preds = %27, %29
  %35 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %3) #19
  %36 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !964
  %37 = load ptr, ptr @current_info, align 8, !tbaa !597
  %38 = load ptr, ptr %37, align 8, !tbaa !976
  %39 = call ptr @htab_find_slot_with_hash(ptr noundef %38, ptr noundef nonnull %3, i32 noundef %35, i32 noundef 0) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %51, !prof !995

41:                                               ; preds = %34
  %42 = load ptr, ptr @current_info, align 8, !tbaa !597
  %43 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %58, !prof !996

45:                                               ; preds = %41
  %46 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %47 = load ptr, ptr %46, align 8, !tbaa !976
  %48 = load i32, ptr %36, align 8, !tbaa !964
  %49 = call ptr @htab_find_slot_with_hash(ptr noundef %47, ptr noundef nonnull %3, i32 noundef %48, i32 noundef 0) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51, !prof !997

51:                                               ; preds = %34, %45
  %52 = phi ptr [ %49, %45 ], [ %39, %34 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !597
  br i1 %4, label %55, label %54, !prof !998

54:                                               ; preds = %51
  store ptr %53, ptr %1, align 8, !tbaa !597
  br label %55

55:                                               ; preds = %54, %51
  %56 = getelementptr inbounds %struct.vn_nary_op_s, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !981
  br label %58

58:                                               ; preds = %41, %45, %55
  %59 = phi ptr [ %57, %55 ], [ null, %45 ], [ null, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_insert_pieces(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !999 {
  %10 = sub i32 4, %0
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = sub nsw i64 64, %12
  %14 = load ptr, ptr @current_info, align 8, !tbaa !597
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 5
  store i64 %13, ptr %15, align 8, !tbaa !1000
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !1001
  %18 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1002
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, %13
  br i1 %23, label %24, label %32, !prof !1003

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3
  %26 = trunc i64 %13 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %25, i32 noundef %26) #20
  %27 = load ptr, ptr @current_info, align 8, !tbaa !597
  %28 = getelementptr inbounds %struct.vn_tables_s, ptr %27, i64 0, i32 3, i32 5
  %29 = load i64, ptr %28, align 8, !tbaa !1000
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %27, i64 0, i32 3, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1002
  br label %32

32:                                               ; preds = %9, %24
  %33 = phi ptr [ %19, %9 ], [ %31, %24 ]
  %34 = phi i64 [ %13, %9 ], [ %29, %24 ]
  %35 = phi ptr [ %14, %9 ], [ %27, %24 ]
  %36 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 5
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 3
  %38 = getelementptr inbounds i8, ptr %33, i64 %34
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !1004
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %46, !prof !1005

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 10
  %44 = load i8, ptr %43, align 8
  %45 = or i8 %44, 2
  store i8 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %32, %42
  %47 = ptrtoint ptr %40 to i64
  store i64 %47, ptr %36, align 8, !tbaa !1000
  %48 = ptrtoint ptr %38 to i64
  %49 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !1006
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %48
  %53 = xor i32 %50, -1
  %54 = sext i32 %53 to i64
  %55 = and i64 %52, %54
  %56 = inttoptr i64 %55 to ptr
  store ptr %56, ptr %37, align 8, !tbaa !1002
  %57 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !1007
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %55, %59
  %61 = getelementptr inbounds %struct.vn_tables_s, ptr %35, i64 0, i32 3, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !1001
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %63, %59
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %67, !prof !1005

66:                                               ; preds = %46
  store ptr %62, ptr %37, align 8, !tbaa !1002
  br label %67

67:                                               ; preds = %46, %66
  %68 = phi ptr [ %56, %46 ], [ %62, %66 ]
  store ptr %68, ptr %39, align 8, !tbaa !1004
  store i32 %8, ptr %40, align 8, !tbaa !1008
  %69 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 1
  %70 = and i32 %1, 65535
  %71 = shl i32 %0, 16
  %72 = or disjoint i32 %70, %71
  store i32 %72, ptr %69, align 4
  %73 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 4
  store ptr %2, ptr %73, align 8, !tbaa !968
  %74 = icmp eq i32 %0, 0
  br i1 %74, label %86, label %75, !prof !1005

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5
  store ptr %3, ptr %76, align 8, !tbaa !597
  %77 = icmp eq i32 %0, 1
  br i1 %77, label %86, label %78, !prof !1009

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 1
  store ptr %4, ptr %79, align 8, !tbaa !597
  %80 = icmp ugt i32 %0, 2
  br i1 %80, label %81, label %86, !prof !1010

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 2
  store ptr %5, ptr %82, align 8, !tbaa !597
  %83 = icmp eq i32 %0, 3
  br i1 %83, label %86, label %84, !prof !1011

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 3
  store ptr %6, ptr %85, align 8, !tbaa !597
  br label %86

86:                                               ; preds = %67, %75, %78, %84, %81
  %87 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 3
  store ptr %7, ptr %87, align 8, !tbaa !981
  %88 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %40) #19
  %89 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 2
  store i32 %88, ptr %89, align 8, !tbaa !964
  %90 = load ptr, ptr @current_info, align 8, !tbaa !597
  %91 = load ptr, ptr %90, align 8, !tbaa !976
  %92 = tail call ptr @htab_find_slot_with_hash(ptr noundef %91, ptr noundef nonnull %40, i32 noundef %88, i32 noundef 1) #20
  %93 = load ptr, ptr %92, align 8, !tbaa !597
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !1012

95:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1561, ptr noundef nonnull @.str.1) #20
  br label %96

96:                                               ; preds = %86, %95
  store ptr %40, ptr %92, align 8, !tbaa !597
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_insert(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1013 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !592
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 4, %7
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = sub nsw i64 64, %10
  %12 = load ptr, ptr @current_info, align 8, !tbaa !597
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 5
  store i64 %11, ptr %13, align 8, !tbaa !1000
  %14 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !1001
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !1002
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %22, label %30, !prof !1014

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3
  %24 = trunc i64 %11 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %23, i32 noundef %24) #20
  %25 = load ptr, ptr @current_info, align 8, !tbaa !597
  %26 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !1000
  %28 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !1002
  br label %30

30:                                               ; preds = %2, %22
  %31 = phi ptr [ %17, %2 ], [ %29, %22 ]
  %32 = phi i64 [ %11, %2 ], [ %27, %22 ]
  %33 = phi ptr [ %12, %2 ], [ %25, %22 ]
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 5
  %35 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 3
  %36 = getelementptr inbounds i8, ptr %31, i64 %32
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !1004
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %44, !prof !1015

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 10
  %42 = load i8, ptr %41, align 8
  %43 = or i8 %42, 2
  store i8 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %30, %40
  %45 = ptrtoint ptr %38 to i64
  store i64 %45, ptr %34, align 8, !tbaa !1000
  %46 = ptrtoint ptr %36 to i64
  %47 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !1006
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %46
  %51 = xor i32 %48, -1
  %52 = sext i32 %51 to i64
  %53 = and i64 %50, %52
  %54 = inttoptr i64 %53 to ptr
  store ptr %54, ptr %35, align 8, !tbaa !1002
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !1007
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %53, %57
  %59 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 3, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !1001
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %61, %57
  %63 = icmp sgt i64 %58, %62
  br i1 %63, label %64, label %65, !prof !1015

64:                                               ; preds = %44
  store ptr %60, ptr %35, align 8, !tbaa !1002
  br label %65

65:                                               ; preds = %44, %64
  %66 = phi ptr [ %54, %44 ], [ %60, %64 ]
  store ptr %66, ptr %37, align 8, !tbaa !1004
  %67 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %68 = getelementptr inbounds %struct.vn_ssa_aux, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !948
  store i32 %69, ptr %38, align 8, !tbaa !1008
  %70 = load i64, ptr %0, align 8
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 65535
  %73 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 1
  %74 = shl nuw nsw i32 %7, 16
  %75 = or disjoint i32 %72, %74
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !592
  %78 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 4
  store ptr %77, ptr %78, align 8, !tbaa !968
  %79 = icmp eq i8 %6, 0
  br i1 %79, label %89, label %80, !prof !1016

80:                                               ; preds = %65
  %81 = zext i8 %6 to i64
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ 0, %80 ], [ %87, %82 ]
  %84 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !592
  %86 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 5, i64 %83
  store ptr %85, ptr %86, align 8, !tbaa !597
  %87 = add nuw nsw i64 %83, 1
  %88 = icmp ult i64 %87, %81
  br i1 %88, label %82, label %89, !prof !1016, !llvm.loop !1017

89:                                               ; preds = %82, %65
  %90 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 3
  store ptr %1, ptr %90, align 8, !tbaa !981
  %91 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %38) #19
  %92 = getelementptr inbounds %struct.vn_nary_op_s, ptr %38, i64 0, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !964
  %93 = load ptr, ptr @current_info, align 8, !tbaa !597
  %94 = load ptr, ptr %93, align 8, !tbaa !976
  %95 = tail call ptr @htab_find_slot_with_hash(ptr noundef %94, ptr noundef nonnull %38, i32 noundef %91, i32 noundef 1) #20
  %96 = load ptr, ptr %95, align 8, !tbaa !597
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !1018

98:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1593, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %89, %98
  store ptr %38, ptr %95, align 8, !tbaa !597
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @vn_nary_op_insert_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1019 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %4 = sub i32 5, %3
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = sub nsw i64 64, %6
  %8 = load ptr, ptr @current_info, align 8, !tbaa !597
  %9 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3, i32 5
  store i64 %7, ptr %9, align 8, !tbaa !1000
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !1001
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1002
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %7
  br i1 %17, label %18, label %26, !prof !1020

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.vn_tables_s, ptr %8, i64 0, i32 3
  %20 = trunc i64 %7 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %19, i32 noundef %20) #20
  %21 = load ptr, ptr @current_info, align 8, !tbaa !597
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %21, i64 0, i32 3, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !1000
  %24 = getelementptr inbounds %struct.vn_tables_s, ptr %21, i64 0, i32 3, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1002
  br label %26

26:                                               ; preds = %2, %18
  %27 = phi ptr [ %13, %2 ], [ %25, %18 ]
  %28 = phi i64 [ %7, %2 ], [ %23, %18 ]
  %29 = phi ptr [ %8, %2 ], [ %21, %18 ]
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 5
  %31 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 3
  %32 = getelementptr inbounds i8, ptr %27, i64 %28
  %33 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !1004
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %40, !prof !1021

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 10
  %38 = load i8, ptr %37, align 8
  %39 = or i8 %38, 2
  store i8 %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %26, %36
  %41 = ptrtoint ptr %34 to i64
  store i64 %41, ptr %30, align 8, !tbaa !1000
  %42 = ptrtoint ptr %32 to i64
  %43 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !1006
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %42
  %47 = xor i32 %44, -1
  %48 = sext i32 %47 to i64
  %49 = and i64 %46, %48
  %50 = inttoptr i64 %49 to ptr
  store ptr %50, ptr %31, align 8, !tbaa !1002
  %51 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !1007
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %49, %53
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !1001
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %57, %53
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %61, !prof !1021

60:                                               ; preds = %40
  store ptr %56, ptr %31, align 8, !tbaa !1002
  br label %61

61:                                               ; preds = %40, %60
  %62 = phi ptr [ %50, %40 ], [ %56, %60 ]
  store ptr %62, ptr %33, align 8, !tbaa !1004
  %63 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %64 = getelementptr inbounds %struct.vn_ssa_aux, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !948
  store i32 %65, ptr %34, align 8, !tbaa !1008
  %66 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 1
  %68 = shl i32 %3, 16
  %69 = add i32 %68, -65536
  %70 = or disjoint i32 %66, %69
  store i32 %70, ptr %67, align 4
  %71 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %72 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 4
  store ptr %71, ptr %72, align 8, !tbaa !968
  %73 = load i32, ptr %67, align 4
  %74 = icmp ult i32 %73, 65536
  br i1 %74, label %85, label %75, !prof !1022

75:                                               ; preds = %61, %75
  %76 = phi i64 [ %77, %75 ], [ 0, %61 ]
  %77 = add nuw nsw i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %78) #19
  %80 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 5, i64 %76
  store ptr %79, ptr %80, align 8, !tbaa !597
  %81 = load i32, ptr %67, align 4
  %82 = lshr i32 %81, 16
  %83 = zext nneg i32 %82 to i64
  %84 = icmp ult i64 %77, %83
  br i1 %84, label %75, label %85, !prof !1023, !llvm.loop !1024

85:                                               ; preds = %75, %61
  %86 = phi i32 [ %73, %61 ], [ %81, %75 ]
  %87 = trunc i32 %86 to i16
  switch i16 %87, label %93 [
    i16 43, label %88
    i16 44, label %88
    i16 118, label %88
  ], !prof !1025

88:                                               ; preds = %85, %85, %85
  %89 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !597
  %91 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !592
  store ptr %92, ptr %89, align 8, !tbaa !597
  br label %93

93:                                               ; preds = %85, %88
  %94 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 3
  store ptr %1, ptr %94, align 8, !tbaa !981
  %95 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %34) #19
  %96 = getelementptr inbounds %struct.vn_nary_op_s, ptr %34, i64 0, i32 2
  store i32 %95, ptr %96, align 8, !tbaa !964
  %97 = load ptr, ptr @current_info, align 8, !tbaa !597
  %98 = load ptr, ptr %97, align 8, !tbaa !976
  %99 = tail call ptr @htab_find_slot_with_hash(ptr noundef %98, ptr noundef nonnull %34, i32 noundef %95, i32 noundef 1) #20
  %100 = load ptr, ptr %99, align 8, !tbaa !597
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102, !prof !1026

102:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1627, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %93, %102
  store ptr %34, ptr %99, align 8, !tbaa !597
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_scc_vn() local_unnamed_addr #0 !prof !1027 {
  %1 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !597
  tail call void @htab_delete(ptr noundef %1) #20
  %2 = load ptr, ptr @constant_value_ids, align 8, !tbaa !597
  tail call void @bitmap_obstack_free(ptr noundef %2) #20
  store ptr null, ptr @constant_value_ids, align 8, !tbaa !597
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @shared_lookup_phiargs) #19
  tail call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull @shared_lookup_references) #19
  %3 = load ptr, ptr @rpo_numbers, align 8, !tbaa !597
  tail call void @free(ptr noundef %3) #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !597
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1028
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1030
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11, !prof !1034

11:                                               ; preds = %0, %24
  %12 = phi ptr [ %30, %24 ], [ %8, %0 ]
  %13 = phi i64 [ %25, %24 ], [ 0, %0 ]
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %14) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !1035

17:                                               ; preds = %11
  %18 = tail call ptr @VN_INFO(ptr noundef nonnull %15) #19
  %19 = getelementptr inbounds %struct.vn_ssa_aux, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23, !prof !1036

23:                                               ; preds = %17
  tail call void @release_ssa_name(ptr noundef nonnull %15) #20
  br label %24

24:                                               ; preds = %23, %17, %11
  %25 = add nuw nsw i64 %13, 1
  %26 = load ptr, ptr @cfun, align 8, !tbaa !597
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !1028
  %29 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !1030
  %31 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %30) #19
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %25, %32
  br i1 %33, label %11, label %34, !prof !1037, !llvm.loop !1038

34:                                               ; preds = %24, %0
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !610
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 0, %36
  store i64 %37, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !600
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %46, !prof !1039

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !604
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %36
  %43 = icmp sgt i64 %42, %37
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %35, i64 %37
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !607
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !605
  br label %48

46:                                               ; preds = %39, %34
  %47 = getelementptr inbounds i8, ptr %35, i64 %37
  tail call void @obstack_free(ptr noundef nonnull @vn_ssa_aux_obstack, ptr noundef %47) #20
  br label %48

48:                                               ; preds = %46, %44
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_free() #19
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @sccstack) #19
  %49 = load ptr, ptr @valid_info, align 8, !tbaa !597
  tail call fastcc void @free_vn_table(ptr noundef %49) #19
  %50 = load ptr, ptr @valid_info, align 8, !tbaa !597
  tail call void @free(ptr noundef %50) #19
  %51 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  tail call fastcc void @free_vn_table(ptr noundef %51) #19
  %52 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  tail call void @free(ptr noundef %52) #19
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !1040 !PGOFuncName !1041 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1042

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !597
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !1043 !PGOFuncName !1044 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1045

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1046
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !1048 !PGOFuncName !1049 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !597
  ret ptr %5
}

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_free() unnamed_addr #9 !prof !1027 !PGOFuncName !1050 {
  %1 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1039

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_vn_table(ptr noundef %0) unnamed_addr #0 !prof !1051 !PGOFuncName !1052 {
  %2 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1053
  tail call void @htab_delete(ptr noundef %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !976
  tail call void @htab_delete(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !861
  tail call void @htab_delete(ptr noundef %6) #20
  %7 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1007
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !1000
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %24, !prof !1054

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !1001
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp sgt i64 %18, %11
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %9, i64 %11
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !1004
  %23 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !1002
  br label %26

24:                                               ; preds = %14, %1
  %25 = getelementptr inbounds i8, ptr %9, i64 %11
  tail call void @obstack_free(ptr noundef nonnull %7, ptr noundef %25) #20
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !1055
  tail call void @free_alloc_pool(ptr noundef %28) #20
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !919
  tail call void @free_alloc_pool(ptr noundef %30) #20
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @run_scc_vn(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !1027 {
  store i8 %0, ptr @may_insert, align 1, !tbaa !592
  tail call fastcc void @init_scc_vn() #19
  %2 = load ptr, ptr @valid_info, align 8, !tbaa !597
  store ptr %2, ptr @current_info, align 8, !tbaa !597
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !597
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !592
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !1034

7:                                                ; preds = %24, %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !597
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1028
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1030
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #19
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %33, label %28, !prof !1056

15:                                               ; preds = %1, %24
  %16 = phi ptr [ %26, %24 ], [ %5, %1 ]
  %17 = load ptr, ptr @cfun, align 8, !tbaa !597
  %18 = tail call ptr @gimple_default_def(ptr noundef %17, ptr noundef nonnull %16) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !1057

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !597
  %22 = tail call ptr @gimple_default_def(ptr noundef %21, ptr noundef nonnull %16) #20
  %23 = tail call ptr @VN_INFO(ptr noundef %22) #19
  store ptr %22, ptr %23, align 8, !tbaa !628
  br label %24

24:                                               ; preds = %15, %20
  %25 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !592
  %27 = icmp eq ptr %26, null
  br i1 %27, label %7, label %15, !prof !1058, !llvm.loop !1059

28:                                               ; preds = %52, %7
  %29 = phi ptr [ %12, %7 ], [ %58, %52 ]
  %30 = phi ptr [ %8, %7 ], [ %54, %52 ]
  %31 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %29) #19
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %62, label %96, !prof !1056

33:                                               ; preds = %7, %52
  %34 = phi ptr [ %58, %52 ], [ %12, %7 ]
  %35 = phi i64 [ %53, %52 ], [ 1, %7 ]
  %36 = trunc i64 %35 to i32
  %37 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39, !prof !1060

39:                                               ; preds = %33
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %37) #19
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 5
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52, !prof !1061

45:                                               ; preds = %39
  %46 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %37) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52, !prof !1062

48:                                               ; preds = %45
  %49 = tail call fastcc zeroext i8 @DFS(ptr noundef nonnull %37) #19, !range !635
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52, !prof !1063

51:                                               ; preds = %48
  tail call void @free_scc_vn() #19
  br label %197

52:                                               ; preds = %48, %45, %39, %33
  %53 = add nuw nsw i64 %35, 1
  %54 = load ptr, ptr @cfun, align 8, !tbaa !597
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !1028
  %57 = getelementptr inbounds %struct.gimple_df, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !1030
  %59 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %58) #19
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %53, %60
  br i1 %61, label %33, label %28, !prof !1064, !llvm.loop !1065

62:                                               ; preds = %28, %86
  %63 = phi ptr [ %92, %86 ], [ %29, %28 ]
  %64 = phi i64 [ %87, %86 ], [ 1, %28 ]
  %65 = trunc i64 %64 to i32
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %63, i32 noundef %65) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %86, label %68, !prof !1066

68:                                               ; preds = %62
  %69 = tail call ptr @VN_INFO(ptr noundef nonnull %66) #19
  %70 = load ptr, ptr %69, align 8, !tbaa !628
  %71 = icmp eq ptr %70, %66
  %72 = load ptr, ptr @VN_TOP, align 8
  %73 = icmp eq ptr %70, %72
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %77, !prof !1067

75:                                               ; preds = %68
  %76 = tail call i32 @get_next_value_id() #19
  br label %83

77:                                               ; preds = %68
  %78 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %70) #20
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80, !prof !1068

80:                                               ; preds = %77
  %81 = load ptr, ptr %69, align 8, !tbaa !628
  %82 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %81) #19
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %76, %75 ], [ %82, %80 ]
  %85 = getelementptr inbounds %struct.vn_ssa_aux, ptr %69, i64 0, i32 2
  store i32 %84, ptr %85, align 8, !tbaa !948
  br label %86

86:                                               ; preds = %83, %77, %62
  %87 = add nuw nsw i64 %64, 1
  %88 = load ptr, ptr @cfun, align 8, !tbaa !597
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !1028
  %91 = getelementptr inbounds %struct.gimple_df, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !1030
  %93 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %92) #19
  %94 = zext i32 %93 to i64
  %95 = icmp ult i64 %87, %94
  br i1 %95, label %62, label %96, !prof !1064, !llvm.loop !1069

96:                                               ; preds = %86, %28
  %97 = phi ptr [ %30, %28 ], [ %88, %86 ]
  br label %100

98:                                               ; preds = %135
  %99 = icmp eq i8 %136, 0
  br i1 %99, label %146, label %100, !prof !1070, !llvm.loop !1071

100:                                              ; preds = %96, %98
  %101 = phi ptr [ %138, %98 ], [ %97, %96 ]
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !1028
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !1030
  %106 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %105) #19
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %146, !prof !1072

108:                                              ; preds = %100, %135
  %109 = phi ptr [ %142, %135 ], [ %105, %100 ]
  %110 = phi i64 [ %137, %135 ], [ 1, %100 ]
  %111 = phi i8 [ %136, %135 ], [ 0, %100 ]
  %112 = trunc i64 %110 to i32
  %113 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %109, i32 noundef %112) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %135, label %115, !prof !1073

115:                                              ; preds = %108
  %116 = tail call ptr @VN_INFO(ptr noundef nonnull %113) #19
  %117 = load ptr, ptr %116, align 8, !tbaa !628
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 65535
  %120 = icmp ne i64 %119, 141
  %121 = icmp eq ptr %117, %113
  %122 = or i1 %121, %120
  br i1 %122, label %135, label %123, !prof !1074

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.vn_ssa_aux, ptr %116, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !948
  %126 = tail call ptr @VN_INFO(ptr noundef nonnull %117) #19
  %127 = getelementptr inbounds %struct.vn_ssa_aux, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !948
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %135, label %130, !prof !1075

130:                                              ; preds = %123
  %131 = load ptr, ptr %116, align 8, !tbaa !628
  %132 = tail call ptr @VN_INFO(ptr noundef %131) #19
  %133 = getelementptr inbounds %struct.vn_ssa_aux, ptr %132, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !948
  store i32 %134, ptr %124, align 8, !tbaa !948
  br label %135

135:                                              ; preds = %115, %123, %130, %108
  %136 = phi i8 [ %111, %108 ], [ 1, %130 ], [ %111, %123 ], [ %111, %115 ]
  %137 = add nuw nsw i64 %110, 1
  %138 = load ptr, ptr @cfun, align 8, !tbaa !597
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !1028
  %141 = getelementptr inbounds %struct.gimple_df, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !1030
  %143 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %142) #19
  %144 = zext i32 %143 to i64
  %145 = icmp ult i64 %137, %144
  br i1 %145, label %108, label %98, !prof !1076, !llvm.loop !1077

146:                                              ; preds = %100, %98
  tail call fastcc void @set_hashtable_value_ids() #19
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %148 = icmp eq ptr %147, null
  br i1 %148, label %197, label %149, !prof !1078

149:                                              ; preds = %146
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !641
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %197, label %153

153:                                              ; preds = %149
  %154 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr nonnull %147)
  %155 = load ptr, ptr @cfun, align 8, !tbaa !597
  %156 = getelementptr inbounds %struct.function, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !1028
  %158 = getelementptr inbounds %struct.gimple_df, ptr %157, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !1030
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
  %176 = load ptr, ptr %175, align 8, !tbaa !628
  %177 = icmp eq ptr %176, %166
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %179, ptr noundef nonnull %166, i32 noundef 0) #20
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %181 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 3, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %183 = tail call ptr @VN_INFO(ptr noundef nonnull %166) #19
  %184 = load ptr, ptr %183, align 8, !tbaa !628
  tail call void @print_generic_expr(ptr noundef %182, ptr noundef %184, i32 noundef 0) #20
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %186 = tail call i32 @fputc(i32 10, ptr %185)
  br label %187

187:                                              ; preds = %178, %174, %168, %162
  %188 = add nuw nsw i64 %164, 1
  %189 = load ptr, ptr @cfun, align 8, !tbaa !597
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !1028
  %192 = getelementptr inbounds %struct.gimple_df, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !1030
  %194 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %193) #19
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %188, %195
  br i1 %196, label %162, label %197, !llvm.loop !1079

197:                                              ; preds = %187, %153, %146, %149, %51
  %198 = phi i8 [ 0, %51 ], [ 1, %149 ], [ 1, %146 ], [ 1, %153 ], [ 1, %187 ]
  store i8 0, ptr @may_insert, align 1, !tbaa !592
  ret i8 %198
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_scc_vn() unnamed_addr #0 !prof !1027 !PGOFuncName !1080 {
  tail call void @calculate_dominance_info(i32 noundef 1) #20
  store ptr null, ptr @sccstack, align 8, !tbaa !597
  %1 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_constant_hash, ptr noundef nonnull @vn_constant_eq, ptr noundef nonnull @free) #20
  store ptr %1, ptr @constant_to_value_id, align 8, !tbaa !597
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %2, ptr @constant_value_ids, align 8, !tbaa !597
  store i32 1, ptr @next_dfs_num, align 4, !tbaa !641
  store i32 1, ptr @next_value_id, align 4, !tbaa !641
  %3 = load ptr, ptr @cfun, align 8, !tbaa !597
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1028
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1030
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %7) #19
  %9 = add i32 %8, 1
  %10 = tail call fastcc ptr @VEC_vn_ssa_aux_t_heap_alloc(i32 noundef %9) #19
  store ptr %10, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  %11 = load ptr, ptr @cfun, align 8, !tbaa !597
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1028
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1030
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #19
  %17 = add i32 %16, 1
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow_cleared(i32 noundef %17) #19
  %18 = tail call i32 @_obstack_begin(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  store ptr null, ptr @shared_lookup_phiargs, align 8, !tbaa !597
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !597
  %19 = load ptr, ptr @cfun, align 8, !tbaa !597
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1081
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !1082
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #20
  store ptr %26, ptr @rpo_numbers, align 8, !tbaa !597
  %27 = load ptr, ptr @cfun, align 8, !tbaa !597
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1081
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !1082
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 4) #20
  %35 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %34, i8 noundef zeroext 0) #20
  %36 = load ptr, ptr @cfun, align 8, !tbaa !597
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1081
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !1084
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %56, !prof !1056

42:                                               ; preds = %0
  %43 = load ptr, ptr @rpo_numbers, align 8, !tbaa !597
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %51, %44 ]
  %46 = getelementptr inbounds i32, ptr %34, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !641
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %43, i64 %48
  %50 = trunc i64 %45 to i32
  store i32 %50, ptr %49, align 4, !tbaa !641
  %51 = add nuw nsw i64 %45, 1
  %52 = load i32, ptr %39, align 8, !tbaa !1084
  %53 = add nsw i32 %52, -2
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %44, label %56, !prof !1085, !llvm.loop !1086

56:                                               ; preds = %44, %0
  tail call void @free(ptr noundef %34) #19
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !597
  %58 = tail call ptr @create_tmp_var_raw(ptr noundef %57, ptr noundef nonnull @.str.6) #20
  store ptr %58, ptr @VN_TOP, align 8, !tbaa !597
  %59 = load ptr, ptr @cfun, align 8, !tbaa !597
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !1028
  %62 = getelementptr inbounds %struct.gimple_df, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !1030
  %64 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %63) #19
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %91, label %66, !prof !1034

66:                                               ; preds = %56, %81
  %67 = phi ptr [ %82, %81 ], [ %59, %56 ]
  %68 = phi ptr [ %87, %81 ], [ %63, %56 ]
  %69 = phi i64 [ %83, %81 ], [ 0, %56 ]
  %70 = trunc i64 %69 to i32
  %71 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %68, i32 noundef %70) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73, !prof !1087

73:                                               ; preds = %66
  %74 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %75 = tail call ptr @VN_INFO_GET(ptr noundef nonnull %71) #19
  store ptr %74, ptr %75, align 8, !tbaa !628
  %76 = tail call ptr @VN_INFO(ptr noundef nonnull %71) #19
  %77 = getelementptr inbounds %struct.vn_ssa_aux, ptr %76, i64 0, i32 1
  store ptr null, ptr %77, align 8, !tbaa !633
  %78 = tail call ptr @VN_INFO(ptr noundef nonnull %71) #19
  %79 = getelementptr inbounds %struct.vn_ssa_aux, ptr %78, i64 0, i32 2
  store i32 0, ptr %79, align 8, !tbaa !948
  %80 = load ptr, ptr @cfun, align 8, !tbaa !597
  br label %81

81:                                               ; preds = %73, %66
  %82 = phi ptr [ %80, %73 ], [ %67, %66 ]
  %83 = add nuw nsw i64 %69, 1
  %84 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !1028
  %86 = getelementptr inbounds %struct.gimple_df, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !1030
  %88 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %87) #19
  %89 = zext i32 %88 to i64
  %90 = icmp ult i64 %83, %89
  br i1 %90, label %66, label %91, !prof !1088, !llvm.loop !1089

91:                                               ; preds = %81, %56
  tail call void @renumber_gimple_stmt_uids() #20
  %92 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #20
  store ptr %92, ptr @valid_info, align 8, !tbaa !597
  tail call fastcc void @allocate_vn_table(ptr noundef %92) #19
  %93 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #20
  store ptr %93, ptr @optimistic_info, align 8, !tbaa !597
  tail call fastcc void @allocate_vn_table(ptr noundef %93) #19
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !1090 !PGOFuncName !1091 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1092
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !1094

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !641
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !1095

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #20
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @DFS(ptr noundef %0) unnamed_addr #0 !prof !1096 !PGOFuncName !1097 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !597
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !597
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  br label %5

5:                                                ; preds = %87, %1
  %6 = phi ptr [ %0, %1 ], [ %77, %87 ]
  %7 = phi ptr [ null, %1 ], [ %43, %87 ]
  %8 = load i32, ptr @next_dfs_num, align 4, !tbaa !641
  %9 = add i32 %8, 1
  store i32 %9, ptr @next_dfs_num, align 4, !tbaa !641
  %10 = call ptr @VN_INFO(ptr noundef %6) #19
  %11 = getelementptr inbounds %struct.vn_ssa_aux, ptr %10, i64 0, i32 3
  store i32 %8, ptr %11, align 4, !tbaa !1098
  %12 = call ptr @VN_INFO(ptr noundef %6) #19
  %13 = getelementptr inbounds %struct.vn_ssa_aux, ptr %12, i64 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 1
  store i8 %15, ptr %13, align 4
  %16 = call ptr @VN_INFO(ptr noundef %6) #19
  %17 = getelementptr inbounds %struct.vn_ssa_aux, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !1098
  %19 = call ptr @VN_INFO(ptr noundef %6) #19
  %20 = getelementptr inbounds %struct.vn_ssa_aux, ptr %19, i64 0, i32 4
  store i32 %18, ptr %20, align 8, !tbaa !1099
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @sccstack, ptr noundef %6) #19
  %21 = call ptr @VN_INFO(ptr noundef %6) #19
  %22 = getelementptr inbounds %struct.vn_ssa_aux, ptr %21, i64 0, i32 5
  %23 = load i8, ptr %22, align 4
  %24 = or i8 %23, 2
  store i8 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !592
  %27 = call fastcc zeroext i8 @gimple_nop_p(ptr noundef %26) #19, !range !635
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36, !prof !1100

29:                                               ; preds = %5
  %30 = call fastcc i32 @gimple_code(ptr noundef %26) #19, !range !637
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %34, !prof !1101

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
  br i1 %45, label %76, label %46, !prof !1102

46:                                               ; preds = %41
  %47 = call ptr @VN_INFO(ptr noundef %42) #19
  %48 = getelementptr inbounds %struct.vn_ssa_aux, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !1099
  %50 = call ptr @VN_INFO(ptr noundef %42) #19
  %51 = getelementptr inbounds %struct.vn_ssa_aux, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !1098
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %57, !prof !1103

54:                                               ; preds = %46
  %55 = call fastcc zeroext i8 @extract_and_process_scc_for_name(ptr noundef %42) #19, !range !635
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %126, label %57, !prof !1104

57:                                               ; preds = %54, %46
  %58 = call fastcc i32 @VEC_tree_base_length(ptr noundef %39) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %126, label %60, !prof !1105

60:                                               ; preds = %57
  %61 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %39) #19
  %62 = call fastcc ptr @VEC_ssa_op_iter_base_last(ptr noundef %40) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %62, i64 40, i1 false)
  call fastcc void @VEC_ssa_op_iter_base_pop(ptr noundef %40) #19
  %63 = call ptr @VN_INFO(ptr noundef %61) #19
  %64 = getelementptr inbounds %struct.vn_ssa_aux, ptr %63, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !1099
  %66 = call ptr @VN_INFO(ptr noundef %42) #19
  %67 = getelementptr inbounds %struct.vn_ssa_aux, ptr %66, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !1099
  %69 = icmp ult i32 %65, %68
  %70 = select i1 %69, ptr %61, ptr %42, !prof !1106
  %71 = call ptr @VN_INFO(ptr noundef %70) #19
  %72 = getelementptr inbounds %struct.vn_ssa_aux, ptr %71, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !1099
  %74 = call ptr @VN_INFO(ptr noundef %61) #19
  %75 = getelementptr inbounds %struct.vn_ssa_aux, ptr %74, i64 0, i32 4
  store i32 %73, ptr %75, align 8, !tbaa !1099
  br label %88

76:                                               ; preds = %41
  %77 = call fastcc ptr @get_use_from_ptr(ptr noundef %43) #19
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %81, label %123, !prof !1107

81:                                               ; preds = %76
  %82 = call ptr @VN_INFO(ptr noundef nonnull %77) #19
  %83 = getelementptr inbounds %struct.vn_ssa_aux, ptr %82, i64 0, i32 5
  %84 = load i8, ptr %83, align 4
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88, !prof !1108

87:                                               ; preds = %81
  call fastcc void @VEC_ssa_op_iter_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %42) #19
  br label %5

88:                                               ; preds = %60, %81
  %89 = phi ptr [ %61, %60 ], [ %42, %81 ]
  %90 = phi ptr [ %42, %60 ], [ %77, %81 ]
  %91 = call ptr @VN_INFO(ptr noundef %90) #19
  %92 = getelementptr inbounds %struct.vn_ssa_aux, ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !1098
  %94 = call ptr @VN_INFO(ptr noundef %89) #19
  %95 = getelementptr inbounds %struct.vn_ssa_aux, ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !1098
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %123, !prof !1109

98:                                               ; preds = %88
  %99 = call ptr @VN_INFO(ptr noundef %90) #19
  %100 = getelementptr inbounds %struct.vn_ssa_aux, ptr %99, i64 0, i32 5
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %123, label %104, !prof !1110

104:                                              ; preds = %98
  %105 = call ptr @VN_INFO(ptr noundef %90) #19
  %106 = getelementptr inbounds %struct.vn_ssa_aux, ptr %105, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !1098
  %108 = call ptr @VN_INFO(ptr noundef %89) #19
  %109 = getelementptr inbounds %struct.vn_ssa_aux, ptr %108, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !1099
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %115, !prof !1111

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
  %120 = load i32, ptr %119, align 4, !tbaa !641
  %121 = call ptr @VN_INFO(ptr noundef %89) #19
  %122 = getelementptr inbounds %struct.vn_ssa_aux, ptr %121, i64 0, i32 4
  store i32 %120, ptr %122, align 8, !tbaa !1099
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
define internal fastcc void @set_hashtable_value_ids() unnamed_addr #0 !prof !1027 !PGOFuncName !1112 {
  %1 = alloca %struct.htab_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %2 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %3 = load ptr, ptr %2, align 8, !tbaa !976
  %4 = call fastcc ptr @first_htab_element(ptr noundef nonnull %1, ptr noundef %3) #19
  %5 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !635
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %32, !prof !1056

7:                                                ; preds = %0, %28
  %8 = phi ptr [ %29, %28 ], [ %4, %0 ]
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !981
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !prof !1113

12:                                               ; preds = %7
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %20, !prof !1114

16:                                               ; preds = %12
  %17 = tail call ptr @VN_INFO(ptr noundef nonnull %10) #19
  %18 = getelementptr inbounds %struct.vn_ssa_aux, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !948
  br label %26

20:                                               ; preds = %12
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %10) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %9, align 8, !tbaa !981
  %25 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %24) #19
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi i32 [ %25, %23 ], [ %19, %16 ]
  store i32 %27, ptr %8, align 8, !tbaa !1008
  br label %28

28:                                               ; preds = %26, %7, %20
  %29 = call fastcc ptr @next_htab_element(ptr noundef nonnull %1) #19
  %30 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !635
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %7, label %32, !prof !1115, !llvm.loop !1116

32:                                               ; preds = %28, %0
  %33 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1053
  %36 = call fastcc ptr @first_htab_element(ptr noundef nonnull %1, ptr noundef %35) #19
  %37 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !635
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %64, !prof !1056

39:                                               ; preds = %32, %60
  %40 = phi ptr [ %61, %60 ], [ %36, %32 ]
  %41 = getelementptr inbounds %struct.vn_phi_s, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !1117
  %43 = icmp eq ptr %42, null
  br i1 %43, label %60, label %44, !prof !1119

44:                                               ; preds = %39
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %52, !prof !1120

48:                                               ; preds = %44
  %49 = tail call ptr @VN_INFO(ptr noundef nonnull %42) #19
  %50 = getelementptr inbounds %struct.vn_ssa_aux, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !948
  br label %58

52:                                               ; preds = %44
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %42) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %41, align 8, !tbaa !1117
  %57 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %48, %55
  %59 = phi i32 [ %57, %55 ], [ %51, %48 ]
  store i32 %59, ptr %40, align 8, !tbaa !1121
  br label %60

60:                                               ; preds = %58, %39, %52
  %61 = call fastcc ptr @next_htab_element(ptr noundef nonnull %1) #19
  %62 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !635
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %39, label %64, !prof !1122, !llvm.loop !1123

64:                                               ; preds = %60, %32
  %65 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %66 = getelementptr inbounds %struct.vn_tables_s, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !861
  %68 = call fastcc ptr @first_htab_element(ptr noundef nonnull %1, ptr noundef %67) #19
  %69 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !635
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %96, !prof !1056

71:                                               ; preds = %64, %92
  %72 = phi ptr [ %93, %92 ], [ %68, %64 ]
  %73 = getelementptr inbounds %struct.vn_reference_s, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !832
  %75 = icmp eq ptr %74, null
  br i1 %75, label %92, label %76, !prof !1124

76:                                               ; preds = %71
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  br i1 %79, label %80, label %84, !prof !1125

80:                                               ; preds = %76
  %81 = tail call ptr @VN_INFO(ptr noundef nonnull %74) #19
  %82 = getelementptr inbounds %struct.vn_ssa_aux, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !948
  br label %90

84:                                               ; preds = %76
  %85 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %74) #20
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87, !prof !1126

87:                                               ; preds = %84
  %88 = load ptr, ptr %73, align 8, !tbaa !832
  %89 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %88) #19
  br label %90

90:                                               ; preds = %80, %87
  %91 = phi i32 [ %89, %87 ], [ %83, %80 ]
  store i32 %91, ptr %72, align 8, !tbaa !920
  br label %92

92:                                               ; preds = %90, %71, %84
  %93 = call fastcc ptr @next_htab_element(ptr noundef nonnull %1) #19
  %94 = call fastcc zeroext i8 @end_htab_p(ptr noundef nonnull %1) #19, !range !635
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %71, label %96, !prof !1127, !llvm.loop !1128

96:                                               ; preds = %92, %64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_constant_hash(ptr nocapture noundef readonly %0) #2 !prof !1129 !PGOFuncName !1130 {
  %2 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !683
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vn_constant_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1131 !PGOFuncName !1132 {
  %3 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !683
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !683
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %15, !prof !1133

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !685
  %11 = getelementptr inbounds %struct.vn_constant_s, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !685
  %13 = tail call fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %10, ptr noundef %12) #19, !range !635
  %14 = zext nneg i8 %13 to i32
  br label %15

15:                                               ; preds = %2, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_vn_ssa_aux_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1027 !PGOFuncName !1134 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !1027 !PGOFuncName !1135 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !597
  %3 = tail call fastcc i32 @VEC_vn_ssa_aux_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_vn_ssa_aux_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !597
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
define internal fastcc void @allocate_vn_table(ptr noundef %0) unnamed_addr #0 !prof !1051 !PGOFuncName !1136 {
  %2 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_phi_hash, ptr noundef nonnull @vn_phi_eq, ptr noundef nonnull @free_phi) #20
  %3 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !1053
  %4 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_nary_op_hash, ptr noundef nonnull @vn_nary_op_eq, ptr noundef null) #20
  store ptr %4, ptr %0, align 8, !tbaa !976
  %5 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_reference_hash, ptr noundef nonnull @vn_reference_eq, ptr noundef nonnull @free_reference) #20
  %6 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !861
  %7 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3
  %8 = tail call i32 @_obstack_begin(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 32, i64 noundef 30) #20
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !1055
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 48, i64 noundef 30) #20
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !919
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1137 !PGOFuncName !1138 {
  %3 = tail call zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) #19, !range !635
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !1139

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !592
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !592
  %10 = tail call zeroext i8 @types_compatible_p(ptr noundef %7, ptr noundef %9) #20
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %5 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_vn_ssa_aux_t_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !1027 !PGOFuncName !1140 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1039
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_phi_hash(ptr nocapture noundef readonly %0) #2 !prof !1141 !PGOFuncName !1142 {
  %2 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !1143
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vn_phi_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1144 !PGOFuncName !1145 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1143
  %6 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !1143
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %58, !prof !1146

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1147
  %12 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1147
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %58, !prof !1148

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %16 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1149
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef 0) #19
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !592
  %21 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1149
  %23 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef 0) #19
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !592
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %20, ptr noundef %25) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %56, label %28, !prof !1150

28:                                               ; preds = %15
  %29 = load ptr, ptr %16, align 8, !tbaa !1149
  %30 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3) #19, !range !623
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %56, label %32, !prof !1151

32:                                               ; preds = %28
  %33 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  br label %34

34:                                               ; preds = %32, %50
  %35 = phi ptr [ %51, %50 ], [ %29, %32 ]
  %36 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %37 = phi i32 [ %53, %50 ], [ 0, %32 ]
  %38 = load ptr, ptr %21, align 8, !tbaa !1149
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %38, i32 noundef %37) #19
  %40 = load ptr, ptr %3, align 8, !tbaa !597
  %41 = icmp eq ptr %40, %36
  %42 = icmp eq ptr %39, %36
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %50, label %44, !prof !1152

44:                                               ; preds = %34
  %45 = tail call zeroext i8 @expressions_equal_p(ptr noundef %40, ptr noundef %39) #19, !range !635
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47, !prof !1153

47:                                               ; preds = %44
  %48 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %49 = load ptr, ptr %16, align 8, !tbaa !1149
  br label %50

50:                                               ; preds = %47, %34
  %51 = phi ptr [ %35, %34 ], [ %49, %47 ]
  %52 = phi ptr [ %36, %34 ], [ %48, %47 ]
  %53 = add nuw nsw i32 %37, 1
  %54 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %51, i32 noundef %53, ptr noundef nonnull %3) #19, !range !623
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %34, !prof !1154, !llvm.loop !1155

56:                                               ; preds = %50, %44, %28, %15
  %57 = phi i32 [ 0, %15 ], [ 1, %28 ], [ 1, %50 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %58

58:                                               ; preds = %9, %2, %56
  %59 = phi i32 [ %57, %56 ], [ 0, %2 ], [ 0, %9 ]
  ret i32 %59
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @free_phi(ptr nocapture noundef %0) #9 !prof !1156 !PGOFuncName !1157 {
  %2 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_nary_op_hash(ptr nocapture noundef readonly %0) #2 !prof !1158 !PGOFuncName !1159 {
  %2 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !964
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vn_reference_hash(ptr nocapture noundef readonly %0) #2 !prof !1160 !PGOFuncName !1161 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !721
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !1162 !PGOFuncName !1163 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1164

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1046
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1165

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !597
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !597
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1166 !PGOFuncName !1167 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1168 !PGOFuncName !1169 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !1170
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %5, align 8, !tbaa !1172
  %6 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !1173
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1174
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1175 !PGOFuncName !1176 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !1174
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !1177 !PGOFuncName !1178 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1179 !PGOFuncName !1180 {
  %2 = load i8, ptr %0, align 8, !tbaa !1170
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @extract_and_process_scc_for_name(ptr noundef readnone %0) unnamed_addr #0 !prof !1181 !PGOFuncName !1182 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !597
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
  br i1 %10, label %11, label %3, !prof !1103, !llvm.loop !1183

11:                                               ; preds = %3
  %12 = load ptr, ptr %2, align 8
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #19
  %14 = load ptr, ptr @compiler_params, align 8, !tbaa !597
  %15 = getelementptr inbounds %struct.param_info, ptr %14, i64 104, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !1184
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %23, !prof !1104

18:                                               ; preds = %11
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %19, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %16) #19
  br label %35

23:                                               ; preds = %11
  %24 = icmp ugt i32 %13, 1
  br i1 %24, label %25, label %26, !prof !1186

25:                                               ; preds = %23
  tail call fastcc void @sort_scc(ptr noundef %12) #19
  br label %26

26:                                               ; preds = %25, %23
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29, !prof !1187

29:                                               ; preds = %26
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !641
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
define internal fastcc void @VEC_ssa_op_iter_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !1096 !PGOFuncName !1188 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1189

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !597
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1190 !PGOFuncName !1191 {
  %2 = load i32, ptr %0, align 8, !tbaa !1046
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1046
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !597
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_ssa_op_iter_base_last(ptr noundef readonly %0) unnamed_addr #2 !prof !1192 !PGOFuncName !1193 {
  %2 = load i32, ptr %0, align 8, !tbaa !1194
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_op_iter_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1192 !PGOFuncName !1196 {
  %2 = load i32, ptr %0, align 8, !tbaa !1194
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1197 !PGOFuncName !1198 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1199
  %4 = load ptr, ptr %3, align 8, !tbaa !597
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_op_iter_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1192 !PGOFuncName !1200 {
  tail call fastcc void @VEC_ssa_op_iter_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  tail call fastcc void @VEC_ssa_op_iter_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1201 !PGOFuncName !1202 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1203
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1204

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1205
  store ptr %7, ptr %2, align 8, !tbaa !1203
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1207
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1173
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1208

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1172
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1207
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1170
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1166 !PGOFuncName !1209 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1210

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !597
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1166 !PGOFuncName !1211 {
  %3 = load i32, ptr %0, align 8, !tbaa !1046
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1046
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !597
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !1166 !PGOFuncName !1212 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1213

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1214
  %6 = load i32, ptr %0, align 8, !tbaa !1046
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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1168 !PGOFuncName !1215 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !592
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1216 !PGOFuncName !1217 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !592
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1218 !PGOFuncName !1219 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !1220

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 747, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !1221

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !1222
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !1222
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !1223

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !1224
  store ptr %25, ptr %18, align 8, !tbaa !1222
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !1226

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !1203
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !1203
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !1227

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !1205
  store ptr %41, ptr %32, align 8, !tbaa !1203
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !1170
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1228 !PGOFuncName !1229 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1230

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !592
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1231 !PGOFuncName !1232 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1233

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !592
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1175 !PGOFuncName !1234 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1235

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !592
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1236 !PGOFuncName !1237 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1238

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !592
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1239 !PGOFuncName !1240 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_scc(ptr noundef %0) unnamed_addr #0 !prof !1241 !PGOFuncName !1242 {
  %2 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %0) #19
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #19
  %4 = zext i32 %3 to i64
  tail call void @spec_qsort(ptr noundef %2, i64 noundef %4, i64 noundef 8, ptr noundef nonnull @compare_ops) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_scc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !928 !PGOFuncName !1243 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr %0)
  %5 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #19, !range !623
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0) #20
  %10 = tail call i32 @fputc(i32 32, ptr %0)
  %11 = add i32 %8, 1
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %3) #19, !range !623
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7, !llvm.loop !1244

14:                                               ; preds = %7, %2
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_scc(ptr noundef %0) unnamed_addr #0 !prof !1181 !PGOFuncName !1245 {
  %2 = alloca ptr, align 8
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #19
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %14, !prof !1246

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %0, i32 noundef 0) #19
  %7 = tail call ptr @VN_INFO(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.vn_ssa_aux, ptr %7, i64 0, i32 5
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %93, !prof !1247

12:                                               ; preds = %5
  %13 = tail call fastcc zeroext i8 @visit_use(ptr noundef %6) #19
  br label %93

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %15 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  store ptr %15, ptr @current_info, align 8, !tbaa !597
  br label %18

16:                                               ; preds = %73
  %17 = icmp eq i8 %78, 0
  br i1 %17, label %82, label %18, !prof !1248, !llvm.loop !1249

18:                                               ; preds = %14, %16
  %19 = phi i32 [ 0, %14 ], [ %20, %16 ]
  %20 = add i32 %19, 1
  %21 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %22 = load ptr, ptr %21, align 8, !tbaa !976
  tail call void @htab_empty(ptr noundef %22) #20
  %23 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %24 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1053
  tail call void @htab_empty(ptr noundef %25) #20
  %26 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !861
  tail call void @htab_empty(ptr noundef %28) #20
  %29 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %30 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1007
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !1000
  %35 = icmp sgt i64 %33, 0
  br i1 %35, label %36, label %46, !prof !1250

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !1001
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %32
  %41 = icmp sgt i64 %40, %33
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %31, i64 %33
  %44 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !1004
  %45 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !1002
  br label %50

46:                                               ; preds = %36, %18
  %47 = getelementptr inbounds %struct.vn_tables_s, ptr %29, i64 0, i32 3
  %48 = getelementptr inbounds i8, ptr %31, i64 %33
  tail call void @obstack_free(ptr noundef nonnull %47, ptr noundef %48) #20
  %49 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %49, %46 ], [ %29, %42 ]
  %52 = getelementptr inbounds %struct.vn_tables_s, ptr %51, i64 0, i32 3
  %53 = tail call i32 @_obstack_begin(ptr noundef nonnull %52, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  %54 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !1055
  tail call void @empty_alloc_pool(ptr noundef %56) #20
  %57 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %58 = getelementptr inbounds %struct.vn_tables_s, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !919
  tail call void @empty_alloc_pool(ptr noundef %59) #20
  %60 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !623
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65, !prof !1251

62:                                               ; preds = %65, %50
  %63 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !623
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %73, !prof !1251

65:                                               ; preds = %50, %65
  %66 = phi i32 [ %70, %65 ], [ 0, %50 ]
  %67 = load ptr, ptr %2, align 8, !tbaa !597
  %68 = tail call ptr @VN_INFO(ptr noundef %67) #19
  %69 = getelementptr inbounds %struct.vn_ssa_aux, ptr %68, i64 0, i32 1
  store ptr null, ptr %69, align 8, !tbaa !633
  %70 = add i32 %66, 1
  %71 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %2) #19, !range !623
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %62, label %65, !prof !1252, !llvm.loop !1253

73:                                               ; preds = %62, %73
  %74 = phi i8 [ %78, %73 ], [ 0, %62 ]
  %75 = phi i32 [ %79, %73 ], [ 0, %62 ]
  %76 = load ptr, ptr %2, align 8, !tbaa !597
  %77 = tail call fastcc zeroext i8 @visit_use(ptr noundef %76) #19
  %78 = or i8 %77, %74
  %79 = add i32 %75, 1
  %80 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %79, ptr noundef nonnull %2) #19, !range !623
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %16, label %73, !prof !1252, !llvm.loop !1254

82:                                               ; preds = %62, %16
  %83 = load ptr, ptr @cfun, align 8, !tbaa !597
  tail call void @statistics_histogram_event(ptr noundef %83, ptr noundef nonnull @.str.13, i32 noundef %20) #20
  %84 = load ptr, ptr @valid_info, align 8, !tbaa !597
  store ptr %84, ptr @current_info, align 8, !tbaa !597
  %85 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %86 = load ptr, ptr %85, align 8, !tbaa !976
  tail call void @htab_traverse(ptr noundef %86, ptr noundef nonnull @copy_nary, ptr noundef null) #20
  %87 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %88 = getelementptr inbounds %struct.vn_tables_s, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !1053
  tail call void @htab_traverse(ptr noundef %89, ptr noundef nonnull @copy_phis, ptr noundef null) #20
  %90 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %91 = getelementptr inbounds %struct.vn_tables_s, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !861
  tail call void @htab_traverse(ptr noundef %92, ptr noundef nonnull @copy_references, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %93

93:                                               ; preds = %5, %12, %82
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !1241 !PGOFuncName !1255 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1256
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_ops(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !1257 !PGOFuncName !1258 {
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  %4 = load ptr, ptr %1, align 8, !tbaa !597
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !592
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !592
  %9 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %6) #19, !range !635
  %10 = icmp eq i8 %9, 0
  %11 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %8) #19, !range !635
  %12 = icmp eq i8 %11, 0
  br i1 %10, label %20, label %13, !prof !1259

13:                                               ; preds = %2
  br i1 %12, label %74, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !592
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !592
  %19 = sub i32 %16, %18
  br label %74

20:                                               ; preds = %2
  br i1 %12, label %21, label %74, !prof !1259

21:                                               ; preds = %20
  %22 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #19
  %23 = tail call fastcc ptr @gimple_bb(ptr noundef %8) #19
  %24 = icmp eq ptr %22, null
  %25 = icmp eq ptr %23, null
  br i1 %24, label %26, label %33, !prof !1260

26:                                               ; preds = %21
  br i1 %25, label %27, label %74

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !592
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !592
  %32 = sub i32 %29, %31
  br label %74

33:                                               ; preds = %21
  br i1 %25, label %74, label %34, !prof !1260

34:                                               ; preds = %33
  %35 = icmp eq ptr %22, %23
  br i1 %35, label %36, label %61, !prof !1261

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !637
  %38 = icmp eq i32 %37, 16
  %39 = tail call fastcc i32 @gimple_code(ptr noundef %8) #19, !range !637
  %40 = icmp eq i32 %39, 16
  br i1 %38, label %41, label %48, !prof !1262

41:                                               ; preds = %36
  br i1 %40, label %42, label %74, !prof !1263

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !592
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !592
  %47 = sub i32 %44, %46
  br label %74

48:                                               ; preds = %36
  br i1 %40, label %74, label %49, !prof !1264

49:                                               ; preds = %48
  %50 = tail call fastcc i32 @gimple_uid(ptr noundef %6) #19
  %51 = tail call fastcc i32 @gimple_uid(ptr noundef %8) #19
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %55, label %53, !prof !1265

53:                                               ; preds = %49
  %54 = sub i32 %50, %51
  br label %74

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !592
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !592
  %60 = sub i32 %57, %59
  br label %74

61:                                               ; preds = %34
  %62 = load ptr, ptr @rpo_numbers, align 8, !tbaa !597
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !1266
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %62, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !641
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !1266
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %62, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !641
  %73 = sub nsw i32 %67, %72
  br label %74

74:                                               ; preds = %41, %26, %13, %48, %33, %20, %61, %55, %53, %42, %27, %14
  %75 = phi i32 [ %19, %14 ], [ %47, %42 ], [ %54, %53 ], [ %60, %55 ], [ %73, %61 ], [ %32, %27 ], [ 1, %20 ], [ 1, %33 ], [ 1, %48 ], [ -1, %13 ], [ -1, %26 ], [ -1, %41 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1268 !PGOFuncName !1269 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !592
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1270 !PGOFuncName !1271 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !592
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @visit_use(ptr noundef %0) unnamed_addr #0 !prof !1272 !PGOFuncName !1273 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !592
  %4 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.vn_ssa_aux, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 8
  store i8 %7, ptr %5, align 4
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 33554432
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11, !prof !1274

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2488, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %1, %11
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !1274

15:                                               ; preds = %12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !641
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
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %25, ptr noundef nonnull %0, i32 noundef 0) #20
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %27 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %26)
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_gimple_stmt(ptr noundef %28, ptr noundef %3, i32 noundef 0, i32 noundef 0) #20
  br label %29

29:                                               ; preds = %23, %19, %15, %12
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 4294967296
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33, !prof !1275

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %0, ptr noundef nonnull %0) #19, !range !635
  br label %311

35:                                               ; preds = %29
  %36 = tail call fastcc i32 @gimple_code(ptr noundef %3) #19, !range !637
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %40, !prof !1276

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @visit_phi(ptr noundef %3) #19, !range !635
  br label %311

40:                                               ; preds = %35
  %41 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %3) #19, !range !635
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43, !prof !1277

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %3) #19, !range !635
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49, !prof !1278

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %3) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49, !prof !1279

49:                                               ; preds = %46, %43, %40
  %50 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

51:                                               ; preds = %46
  %52 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %3) #19, !range !635
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %268, label %54, !prof !1280

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #19
  %56 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %3) #20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %70, label %58, !prof !1281

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %70, !prof !1282

63:                                               ; preds = %58
  %64 = load i64, ptr %55, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 141
  br i1 %66, label %67, label %70, !prof !1283

67:                                               ; preds = %63
  %68 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %69 = tail call fastcc zeroext i8 @visit_copy(ptr noundef nonnull %55, ptr noundef %68) #19, !range !635
  br label %311

70:                                               ; preds = %63, %58, %54
  %71 = tail call fastcc ptr @try_to_simplify(ptr noundef %3) #19
  %72 = icmp ne ptr %71, null
  %73 = load ptr, ptr @dump_file, align 8
  %74 = icmp ne ptr %73, null
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %96, !prof !1284

76:                                               ; preds = %70
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !641
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %76
  %81 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr nonnull %73)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_gimple_expr(ptr noundef %82, ptr noundef %3, i32 noundef 0, i32 noundef 0) #20
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %84 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %83)
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %85, ptr noundef nonnull %71, i32 noundef 0) #20
  %86 = load i64, ptr %55, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 141
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !597
  br i1 %88, label %90, label %94

90:                                               ; preds = %80
  %91 = tail call fastcc zeroext i8 @expr_has_constants(ptr noundef nonnull %71) #19
  %92 = zext i8 %91 to i32
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.18, i32 noundef %92) #19
  br label %97

94:                                               ; preds = %80
  %95 = tail call i32 @fputc(i32 10, ptr %89)
  br label %97

96:                                               ; preds = %70
  br i1 %72, label %97, label %135, !prof !1285

97:                                               ; preds = %90, %94, %76, %96
  %98 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %71) #20
  %99 = icmp ne i8 %98, 0
  %100 = load i64, ptr %55, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 141
  %103 = select i1 %99, i1 %102, i1 false
  br i1 %103, label %104, label %112, !prof !1286

104:                                              ; preds = %97
  %105 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %106 = getelementptr inbounds %struct.vn_ssa_aux, ptr %105, i64 0, i32 1
  store ptr %71, ptr %106, align 8, !tbaa !633
  %107 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %108 = getelementptr inbounds %struct.vn_ssa_aux, ptr %107, i64 0, i32 5
  %109 = load i8, ptr %108, align 4
  %110 = or i8 %109, 4
  store i8 %110, ptr %108, align 4
  %111 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %55, ptr noundef nonnull %71) #19, !range !635
  br label %311

112:                                              ; preds = %97
  %113 = load i64, ptr %71, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 141
  %116 = and i64 %100, 65535
  %117 = icmp eq i64 %116, 141
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %121, !prof !1287

119:                                              ; preds = %112
  %120 = tail call fastcc zeroext i8 @visit_copy(ptr noundef nonnull %55, ptr noundef nonnull %71) #19, !range !635
  br label %311

121:                                              ; preds = %112
  %122 = icmp eq i64 %116, 141
  br i1 %122, label %123, label %156, !prof !1288

123:                                              ; preds = %121
  %124 = tail call fastcc zeroext i8 @expr_has_constants(ptr noundef nonnull %71) #19
  %125 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %126 = getelementptr inbounds %struct.vn_ssa_aux, ptr %125, i64 0, i32 5
  %127 = load i8, ptr %126, align 4
  %128 = shl i8 %124, 2
  %129 = and i8 %128, 4
  %130 = and i8 %127, -5
  %131 = or disjoint i8 %130, %129
  store i8 %131, ptr %126, align 4
  %132 = tail call ptr @unshare_expr(ptr noundef nonnull %71) #20
  %133 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %134 = getelementptr inbounds %struct.vn_ssa_aux, ptr %133, i64 0, i32 1
  store ptr %132, ptr %134, align 8, !tbaa !633
  br label %156

135:                                              ; preds = %96
  %136 = tail call fastcc zeroext i8 @stmt_has_constants(ptr noundef %3) #19
  %137 = icmp ne i8 %136, 0
  %138 = load i64, ptr %55, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 141
  %141 = select i1 %137, i1 %140, i1 false
  br i1 %141, label %142, label %147, !prof !1289

142:                                              ; preds = %135
  %143 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %144 = getelementptr inbounds %struct.vn_ssa_aux, ptr %143, i64 0, i32 5
  %145 = load i8, ptr %144, align 4
  %146 = or i8 %145, 4
  store i8 %146, ptr %144, align 4
  br label %156

147:                                              ; preds = %135
  %148 = icmp eq i64 %139, 141
  br i1 %148, label %149, label %156, !prof !1290

149:                                              ; preds = %147
  %150 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %151 = getelementptr inbounds %struct.vn_ssa_aux, ptr %150, i64 0, i32 5
  %152 = load i8, ptr %151, align 4
  %153 = and i8 %152, -5
  store i8 %153, ptr %151, align 4
  %154 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %155 = getelementptr inbounds %struct.vn_ssa_aux, ptr %154, i64 0, i32 1
  store ptr null, ptr %155, align 8, !tbaa !633
  br label %156

156:                                              ; preds = %142, %149, %147, %121, %123
  %157 = load i64, ptr %55, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 141
  br i1 %159, label %160, label %175, !prof !1291

160:                                              ; preds = %156
  %161 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %3) #20
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163, !prof !1292

163:                                              ; preds = %160
  %164 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %165 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %164) #20
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %175, !prof !1293

167:                                              ; preds = %163, %160
  br i1 %72, label %168, label %171, !prof !1294

168:                                              ; preds = %167
  %169 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %71) #20
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %175, !prof !1295

171:                                              ; preds = %168, %167
  %172 = load i64, ptr %55, align 8
  %173 = and i64 %172, 4194304
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %188, !prof !1296

175:                                              ; preds = %171, %168, %163, %156
  %176 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %3) #20
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %190, label %178, !prof !1297

178:                                              ; preds = %175
  %179 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 141
  br i1 %182, label %183, label %190, !prof !1298

183:                                              ; preds = %178
  %184 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %185 = load i64, ptr %184, align 8
  %186 = and i64 %185, 4194304
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %190, label %188, !prof !1299

188:                                              ; preds = %183, %171
  %189 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

190:                                              ; preds = %183, %178, %175
  %191 = load i64, ptr %55, align 8
  %192 = and i64 %191, 65535
  %193 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !641
  %195 = add i32 %194, -3
  %196 = icmp ult i32 %195, 2
  br i1 %196, label %197, label %200, !prof !1300

197:                                              ; preds = %190
  %198 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %199 = tail call fastcc zeroext i8 @visit_reference_op_store(ptr noundef nonnull %55, ptr noundef %198, ptr noundef %3) #19, !range !635
  br label %311

200:                                              ; preds = %190
  %201 = icmp eq i64 %192, 141
  br i1 %201, label %202, label %266, !prof !1301

202:                                              ; preds = %200
  %203 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %3) #20
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %209, label %205, !prof !1292

205:                                              ; preds = %202
  %206 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %207 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %206) #20
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %213, !prof !1293

209:                                              ; preds = %205, %202
  br i1 %72, label %210, label %223, !prof !1294

210:                                              ; preds = %209
  %211 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %71) #20
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %223, label %213, !prof !1295

213:                                              ; preds = %210, %205
  %214 = tail call ptr @VN_INFO(ptr noundef nonnull %55) #19
  %215 = getelementptr inbounds %struct.vn_ssa_aux, ptr %214, i64 0, i32 5
  %216 = load i8, ptr %215, align 4
  %217 = or i8 %216, 4
  store i8 %217, ptr %215, align 4
  br i1 %72, label %218, label %220, !prof !1293

218:                                              ; preds = %213
  %219 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %55, ptr noundef nonnull %71) #19, !range !635
  br label %311

220:                                              ; preds = %213
  %221 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %222 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %55, ptr noundef %221) #19, !range !635
  br label %311

223:                                              ; preds = %210, %209
  %224 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !640
  %225 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %224) #19, !range !637
  %226 = trunc i32 %225 to i8
  switch i8 %226, label %264 [
    i8 2, label %227
    i8 1, label %229
    i8 3, label %231
  ], !prof !1302

227:                                              ; preds = %223
  %228 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !635
  br label %311

229:                                              ; preds = %223
  %230 = tail call fastcc zeroext i8 @visit_binary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !635
  br label %311

231:                                              ; preds = %223
  %232 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !640
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !641
  switch i32 %235, label %262 [
    i32 4, label %236
    i32 3, label %254
    i32 10, label %257
  ], !prof !1303

236:                                              ; preds = %231
  %237 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !640
  %238 = icmp eq i32 %237, 43
  br i1 %238, label %245, label %239, !prof !1304

239:                                              ; preds = %236
  %240 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !640
  %241 = icmp eq i32 %240, 44
  br i1 %241, label %245, label %242, !prof !1304

242:                                              ; preds = %239
  %243 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !640
  %244 = icmp eq i32 %243, 118
  br i1 %244, label %245, label %254, !prof !1304

245:                                              ; preds = %242, %239, %236
  %246 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %247 = getelementptr inbounds %struct.tree_exp, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !592
  %249 = load i64, ptr %248, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 141
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !635
  br label %311

254:                                              ; preds = %242, %245, %231
  %255 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #19
  %256 = tail call fastcc zeroext i8 @visit_reference_op_load(ptr noundef nonnull %55, ptr noundef %255, ptr noundef %3) #19, !range !635
  br label %311

257:                                              ; preds = %231
  %258 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #19, !range !640
  %259 = icmp eq i32 %258, 121
  br i1 %259, label %260, label %262, !prof !1305

260:                                              ; preds = %257
  %261 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %55, ptr noundef %3) #19, !range !635
  br label %311

262:                                              ; preds = %257, %231
  %263 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

264:                                              ; preds = %223
  %265 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

266:                                              ; preds = %200
  %267 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

268:                                              ; preds = %51
  %269 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #19, !range !635
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %311, label %271, !prof !1306

271:                                              ; preds = %268
  %272 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %3) #19
  %273 = tail call fastcc zeroext i8 @stmt_has_constants(ptr noundef %3) #19
  %274 = icmp eq i8 %273, 0
  %275 = load i64, ptr %272, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 141
  br i1 %274, label %284, label %278, !prof !1307

278:                                              ; preds = %271
  br i1 %277, label %279, label %292, !prof !1308

279:                                              ; preds = %278
  %280 = tail call ptr @VN_INFO(ptr noundef nonnull %272) #19
  %281 = getelementptr inbounds %struct.vn_ssa_aux, ptr %280, i64 0, i32 5
  %282 = load i8, ptr %281, align 4
  %283 = or i8 %282, 4
  store i8 %283, ptr %281, align 4
  br label %292

284:                                              ; preds = %271
  br i1 %277, label %285, label %292, !prof !1309

285:                                              ; preds = %284
  %286 = tail call ptr @VN_INFO(ptr noundef nonnull %272) #19
  %287 = getelementptr inbounds %struct.vn_ssa_aux, ptr %286, i64 0, i32 5
  %288 = load i8, ptr %287, align 4
  %289 = and i8 %288, -5
  store i8 %289, ptr %287, align 4
  %290 = tail call ptr @VN_INFO(ptr noundef nonnull %272) #19
  %291 = getelementptr inbounds %struct.vn_ssa_aux, ptr %290, i64 0, i32 1
  store ptr null, ptr %291, align 8, !tbaa !633
  br label %292

292:                                              ; preds = %278, %284, %285, %279
  %293 = load i64, ptr %272, align 8
  %294 = and i64 %293, 4259839
  %295 = icmp eq i64 %294, 4194445
  br i1 %295, label %296, label %298, !prof !1310

296:                                              ; preds = %292
  %297 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

298:                                              ; preds = %292
  %299 = and i64 %293, 65535
  %300 = icmp eq i64 %299, 141
  br i1 %300, label %301, label %309, !prof !1311

301:                                              ; preds = %298
  %302 = tail call i32 @gimple_call_flags(ptr noundef %3) #20
  %303 = and i32 %302, 3
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305, !prof !1312

305:                                              ; preds = %301
  %306 = tail call fastcc zeroext i8 @visit_reference_op_call(ptr noundef nonnull %272, ptr noundef %3) #19, !range !635
  br label %311

307:                                              ; preds = %301
  %308 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

309:                                              ; preds = %298
  %310 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %3) #19, !range !635
  br label %311

311:                                              ; preds = %38, %268, %49, %33, %188, %266, %227, %229, %264, %262, %260, %254, %252, %218, %220, %197, %119, %104, %67, %309, %307, %305, %296
  %312 = phi i8 [ %34, %33 ], [ %39, %38 ], [ %50, %49 ], [ 0, %268 ], [ %69, %67 ], [ %111, %104 ], [ %120, %119 ], [ %189, %188 ], [ %199, %197 ], [ %219, %218 ], [ %222, %220 ], [ %265, %264 ], [ %263, %262 ], [ %261, %260 ], [ %256, %254 ], [ %253, %252 ], [ %230, %229 ], [ %228, %227 ], [ %267, %266 ], [ %297, %296 ], [ %306, %305 ], [ %308, %307 ], [ %310, %309 ]
  ret i8 %312
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
define internal noundef i32 @copy_nary(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !1313 !PGOFuncName !1314 {
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  %4 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 16
  %7 = sub nsw i32 4, %6
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = sub nsw i64 64, %9
  %11 = load ptr, ptr @current_info, align 8, !tbaa !597
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 5
  store i64 %10, ptr %12, align 8, !tbaa !1000
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1001
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1002
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, %10
  br i1 %20, label %21, label %29, !prof !1315

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3
  %23 = trunc i64 %10 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %22, i32 noundef %23) #20
  %24 = load ptr, ptr @current_info, align 8, !tbaa !597
  %25 = getelementptr inbounds %struct.vn_tables_s, ptr %24, i64 0, i32 3, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !1000
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %24, i64 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !1002
  br label %29

29:                                               ; preds = %2, %21
  %30 = phi ptr [ %16, %2 ], [ %28, %21 ]
  %31 = phi i64 [ %10, %2 ], [ %26, %21 ]
  %32 = phi ptr [ %11, %2 ], [ %24, %21 ]
  %33 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 5
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 3
  %35 = getelementptr inbounds i8, ptr %30, i64 %31
  %36 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !1004
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %39, label %43, !prof !1316

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 10
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 2
  store i8 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %29, %39
  %44 = ptrtoint ptr %37 to i64
  store i64 %44, ptr %33, align 8, !tbaa !1000
  %45 = ptrtoint ptr %35 to i64
  %46 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !1006
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = xor i32 %47, -1
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = inttoptr i64 %52 to ptr
  store ptr %53, ptr %34, align 8, !tbaa !1002
  %54 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !1007
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %52, %56
  %58 = getelementptr inbounds %struct.vn_tables_s, ptr %32, i64 0, i32 3, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !1001
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %56
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %64, !prof !1316

63:                                               ; preds = %43
  store ptr %59, ptr %34, align 8, !tbaa !1002
  br label %64

64:                                               ; preds = %43, %63
  %65 = phi ptr [ %53, %43 ], [ %59, %63 ]
  store ptr %65, ptr %36, align 8, !tbaa !1004
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr nonnull align 8 %3, i64 %10, i1 false)
  %66 = load ptr, ptr %32, align 8, !tbaa !976
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !964
  %69 = tail call ptr @htab_find_slot_with_hash(ptr noundef %66, ptr noundef %37, i32 noundef %68, i32 noundef 1) #20
  %70 = load ptr, ptr %69, align 8, !tbaa !597
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72, !prof !1317

72:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2781, ptr noundef nonnull @.str.1) #20
  br label %73

73:                                               ; preds = %64, %72
  store ptr %37, ptr %69, align 8, !tbaa !597
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_phis(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !1318 !PGOFuncName !1319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  %4 = load ptr, ptr @current_info, align 8, !tbaa !597
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !1055
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.vn_phi_s, ptr %3, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !1149
  %9 = load ptr, ptr @current_info, align 8, !tbaa !597
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1053
  %12 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !1143
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 1) #20
  store ptr %7, ptr %14, align 8, !tbaa !597
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_references(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !1320 !PGOFuncName !1321 {
  %3 = load ptr, ptr %0, align 8, !tbaa !597
  %4 = load ptr, ptr @current_info, align 8, !tbaa !597
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !919
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %8 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !696
  %9 = load ptr, ptr @current_info, align 8, !tbaa !597
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !861
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !721
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 1) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !597
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !1322

17:                                               ; preds = %2
  tail call void @free_reference(ptr noundef nonnull %15) #19
  br label %18

18:                                               ; preds = %17, %2
  store ptr %7, ptr %14, align 8, !tbaa !597
  ret i32 1
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1323 !PGOFuncName !1324 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !1325

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 4259839
  %7 = icmp eq i64 %6, 4194445
  br i1 %7, label %8, label %10, !prof !1326

8:                                                ; preds = %4, %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10, !prof !1327

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %0, %8 ], [ %1, %4 ]
  %12 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %23, label %14, !prof !1328

14:                                               ; preds = %10
  %15 = load i64, ptr %11, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %23, label %18, !prof !1329

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %11) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !1330

21:                                               ; preds = %18, %8
  %22 = phi ptr [ %11, %18 ], [ null, %8 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #20
  br label %23

23:                                               ; preds = %10, %14, %18, %21
  %24 = phi ptr [ %11, %10 ], [ %11, %14 ], [ %11, %18 ], [ %22, %21 ]
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27, !prof !1331

27:                                               ; preds = %23
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !641
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef %0, i32 noundef 0) #20
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %35 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef %24, i32 noundef 0) #20
  br label %37

37:                                               ; preds = %31, %27, %23
  %38 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %39 = load ptr, ptr %38, align 8, !tbaa !628
  %40 = icmp eq ptr %39, %24
  br i1 %40, label %54, label %41, !prof !1332

41:                                               ; preds = %37
  %42 = tail call i32 @operand_equal_p(ptr noundef %39, ptr noundef %24, i32 noundef 2) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54, !prof !1333

44:                                               ; preds = %41
  %45 = tail call ptr @VN_INFO(ptr noundef %0) #19
  store ptr %24, ptr %45, align 8, !tbaa !628
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48, !prof !1333

48:                                               ; preds = %44
  %49 = load i32, ptr @dump_flags, align 4, !tbaa !641
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %46)
  br label %63

54:                                               ; preds = %41, %37
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57, !prof !1334

57:                                               ; preds = %54
  %58 = load i32, ptr @dump_flags, align 4, !tbaa !641
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
define internal fastcc noundef zeroext i8 @visit_phi(ptr noundef %0) unnamed_addr #0 !prof !1335 !PGOFuncName !1336 {
  %2 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #19
  %3 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 4194304
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11, !prof !1337

7:                                                ; preds = %1
  %8 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %13, !prof !1338

11:                                               ; preds = %1
  %12 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %3, ptr noundef nonnull %3) #19, !range !635
  br label %87

13:                                               ; preds = %7, %33
  %14 = phi i32 [ %35, %33 ], [ 0, %7 ]
  %15 = phi ptr [ %34, %33 ], [ %8, %7 ]
  %16 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %14) #19
  %17 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %16) #19
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %24, !prof !1339

21:                                               ; preds = %13
  %22 = tail call ptr @VN_INFO(ptr noundef nonnull %17) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !628
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi ptr [ %23, %21 ], [ %17, %13 ]
  %26 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %33, label %28, !prof !1340

28:                                               ; preds = %24
  %29 = icmp eq ptr %15, %26
  br i1 %29, label %33, label %30, !prof !1341

30:                                               ; preds = %28
  %31 = tail call zeroext i8 @expressions_equal_p(ptr noundef %25, ptr noundef %15) #19, !range !635
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28, %24, %30
  %34 = phi ptr [ %15, %30 ], [ %15, %24 ], [ %25, %28 ]
  %35 = add nuw i32 %14, 1
  %36 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %13, label %38, !prof !1342, !llvm.loop !1343

38:                                               ; preds = %33, %30
  %39 = phi ptr [ %34, %33 ], [ %15, %30 ]
  %40 = phi i1 [ false, %33 ], [ true, %30 ]
  br i1 %40, label %63, label %41, !prof !901

41:                                               ; preds = %7, %38
  %42 = phi ptr [ %39, %38 ], [ %8, %7 ]
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %42) #20
  %44 = icmp eq i8 %43, 0
  %45 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %46 = tail call ptr @VN_INFO(ptr noundef %45) #19
  %47 = getelementptr inbounds %struct.vn_ssa_aux, ptr %46, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, -5
  %50 = select i1 %44, i8 0, i8 4, !prof !1344
  %51 = or disjoint i8 %49, %50
  store i8 %51, ptr %47, align 4
  %52 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %53 = tail call ptr @VN_INFO(ptr noundef %52) #19
  %54 = getelementptr inbounds %struct.vn_ssa_aux, ptr %53, i64 0, i32 1
  store ptr %42, ptr %54, align 8, !tbaa !633
  %55 = load i64, ptr %42, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 141
  %58 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  br i1 %57, label %59, label %61, !prof !1344

59:                                               ; preds = %41
  %60 = tail call fastcc zeroext i8 @visit_copy(ptr noundef %58, ptr noundef nonnull %42) #19, !range !635
  br label %87

61:                                               ; preds = %41
  %62 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %58, ptr noundef nonnull %42) #19, !range !635
  br label %87

63:                                               ; preds = %38
  %64 = tail call fastcc ptr @vn_phi_lookup(ptr noundef %0) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66, !prof !1345

66:                                               ; preds = %63
  %67 = load i64, ptr %64, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  %70 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  br i1 %69, label %71, label %73, !prof !1148

71:                                               ; preds = %66
  %72 = tail call fastcc zeroext i8 @visit_copy(ptr noundef %70, ptr noundef nonnull %64) #19, !range !635
  br label %87

73:                                               ; preds = %66
  %74 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %70, ptr noundef nonnull %64) #19, !range !635
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
  store ptr %82, ptr %84, align 8, !tbaa !633
  %85 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %2) #19
  %86 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %85, ptr noundef %85) #19, !range !635
  br label %87

87:                                               ; preds = %75, %73, %71, %61, %59, %11
  %88 = phi i8 [ %12, %11 ], [ %60, %59 ], [ %62, %61 ], [ %72, %71 ], [ %74, %73 ], [ %86, %75 ]
  ret i8 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1346 !PGOFuncName !1347 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1348

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !635
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1349

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
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1350 !PGOFuncName !1351 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1352

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
define internal fastcc zeroext i8 @defs_to_varying(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1228 !PGOFuncName !1353 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  %3 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %0) #19
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19, !prof !1354

6:                                                ; preds = %1, %6
  %7 = phi i8 [ %15, %6 ], [ 0, %1 ]
  %8 = phi ptr [ %16, %6 ], [ %3, %1 ]
  %9 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %8) #19
  %10 = tail call ptr @VN_INFO(ptr noundef %9) #19
  %11 = getelementptr inbounds %struct.vn_ssa_aux, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 8
  store i8 %13, ptr %11, align 4
  %14 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %9, ptr noundef %9) #19, !range !635
  %15 = or i8 %14, %7
  %16 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #19
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %6, label %19, !prof !1355, !llvm.loop !1356

19:                                               ; preds = %6, %1
  %20 = phi i8 [ 0, %1 ], [ %15, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  ret i8 %20
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1357 !PGOFuncName !1358 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %19, !prof !1359

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %15, %13 ], [ %1, %2 ]
  %8 = tail call ptr @VN_INFO(ptr noundef nonnull %7) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !628
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %11, label %13, !prof !1360

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8
  br label %19

13:                                               ; preds = %6
  %14 = tail call ptr @VN_INFO(ptr noundef nonnull %7) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !628
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %6, label %19, !prof !1361, !llvm.loop !1362

19:                                               ; preds = %13, %11, %2
  %20 = phi i64 [ %3, %2 ], [ %12, %11 ], [ %16, %13 ]
  %21 = phi ptr [ %1, %2 ], [ %7, %11 ], [ %15, %13 ]
  %22 = and i64 %20, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %24, label %39, !prof !1363

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
  %36 = load ptr, ptr %35, align 8, !tbaa !633
  %37 = tail call ptr @VN_INFO(ptr noundef %0) #19
  %38 = getelementptr inbounds %struct.vn_ssa_aux, ptr %37, i64 0, i32 1
  store ptr %36, ptr %38, align 8, !tbaa !633
  br label %39

39:                                               ; preds = %24, %19
  %40 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %21) #19, !range !635
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @try_to_simplify(ptr noundef %0) unnamed_addr #0 !prof !1364 !PGOFuncName !1365 {
  %2 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #20
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1366

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %42, label %9, !prof !1367

9:                                                ; preds = %4, %1
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !641
  switch i32 %13, label %41 [
    i32 3, label %14
    i32 4, label %18
    i32 6, label %37
    i32 5, label %39
    i32 7, label %39
  ], !prof !1368

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %16 = tail call ptr @get_symbol_constant_value(ptr noundef %15) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %42, !prof !1369

18:                                               ; preds = %9
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %20 = tail call ptr @fold_const_aggregate_ref(ptr noundef %19) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %42, !prof !1370

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 43
  br i1 %26, label %37, label %27, !prof !1371

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 44
  br i1 %31, label %37, label %32, !prof !1371

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 118
  br i1 %36, label %37, label %41, !prof !1371

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
define internal fastcc zeroext i8 @expr_has_constants(ptr noundef %0) unnamed_addr #0 !prof !1372 !PGOFuncName !1373 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !641
  switch i32 %5, label %21 [
    i32 6, label %6
    i32 7, label %10
    i32 4, label %23
    i32 3, label %23
  ], !prof !1374

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !592
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %8) #20
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !592
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23, !prof !1375

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !592
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
define internal fastcc zeroext i8 @stmt_has_constants(ptr noundef %0) unnamed_addr #0 !prof !1376 !PGOFuncName !1377 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !637
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %4, label %24, !prof !1378

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #19, !range !637
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %23 [
    i8 2, label %8
    i8 1, label %11
    i8 3, label %20
  ], !prof !1379

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %10 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %9) #20
  br label %24

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24, !prof !1380

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
define internal fastcc noundef zeroext i8 @visit_reference_op_store(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1231 !PGOFuncName !1381 {
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  %5 = tail call ptr @vn_reference_lookup(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 0, ptr noundef null) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7, !prof !1382

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %14, !prof !1383

11:                                               ; preds = %7
  %12 = tail call ptr @VN_INFO(ptr noundef nonnull %5) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !628
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %5, %7 ]
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %22, !prof !1384

19:                                               ; preds = %14
  %20 = tail call ptr @VN_INFO(ptr noundef nonnull %1) #19
  %21 = load ptr, ptr %20, align 8, !tbaa !628
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi ptr [ %21, %19 ], [ %1, %14 ]
  %24 = tail call zeroext i8 @expressions_equal_p(ptr noundef %15, ptr noundef %23) #19, !range !635
  %25 = icmp ne ptr %15, null
  %26 = icmp ne i8 %24, 0
  %27 = and i1 %25, %26
  br i1 %27, label %64, label %28, !prof !1385

28:                                               ; preds = %3, %22
  %29 = phi ptr [ %23, %22 ], [ %1, %3 ]
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !1386

32:                                               ; preds = %28
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !641
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %30)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %39 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %38)
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %40, ptr noundef %0, i32 noundef 0) #20
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %42 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %41)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !597
  tail call void @print_generic_expr(ptr noundef %43, ptr noundef %29, i32 noundef 0) #20
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %45 = tail call i32 @fputc(i32 10, ptr %44)
  br label %46

46:                                               ; preds = %36, %32, %28
  %47 = tail call fastcc ptr @gimple_vdef(ptr noundef %2) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49, !prof !1387

49:                                               ; preds = %46
  %50 = tail call ptr @VN_INFO(ptr noundef nonnull %47) #19
  %51 = getelementptr inbounds %struct.vn_ssa_aux, ptr %50, i64 0, i32 5
  %52 = load i8, ptr %51, align 4
  %53 = or i8 %52, 8
  store i8 %53, ptr %51, align 4
  %54 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %47, ptr noundef nonnull %47) #19, !range !635
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i8 [ %54, %49 ], [ 0, %46 ]
  %57 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %29) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62, !prof !1388

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @is_gimple_reg(ptr noundef %29) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %83, label %62, !prof !1389

62:                                               ; preds = %59, %55
  %63 = tail call ptr @vn_reference_insert(ptr noundef %0, ptr noundef %29, ptr noundef %47) #19
  br label %83

64:                                               ; preds = %22
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67, !prof !1390

67:                                               ; preds = %64
  %68 = load i32, ptr @dump_flags, align 4, !tbaa !641
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
  %81 = load ptr, ptr %80, align 8, !tbaa !628
  %82 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %74, ptr noundef %81) #19, !range !635
  br label %83

83:                                               ; preds = %59, %62, %73
  %84 = phi i8 [ %82, %73 ], [ %56, %62 ], [ %56, %59 ]
  ret i8 %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_unary_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1391 !PGOFuncName !1392 {
  %3 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %1, ptr noundef null) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1393

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %3) #19, !range !635
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !635
  %9 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %1, ptr noundef %0) #19
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_binary_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1394 !PGOFuncName !1395 {
  %3 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %1, ptr noundef null) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1396

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %3) #19, !range !635
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !635
  %9 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %1, ptr noundef %0) #19
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_reference_op_load(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1397 !PGOFuncName !1398 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  store ptr %5, ptr %4, align 8, !tbaa !597
  store ptr %4, ptr @last_vuse_ptr, align 8, !tbaa !597
  %6 = call ptr @vn_reference_lookup(ptr noundef %1, ptr noundef %5, i8 noundef zeroext 1, ptr noundef null) #19
  store ptr null, ptr @last_vuse_ptr, align 8, !tbaa !597
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18, !prof !1399

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 118
  br i1 %11, label %12, label %138, !prof !1400

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !592
  %15 = call fastcc ptr @gimple_vuse(ptr noundef %2) #19
  %16 = call ptr @vn_reference_lookup(ptr noundef %14, ptr noundef %15, i8 noundef zeroext 1, ptr noundef null) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %138, label %18, !prof !1401

18:                                               ; preds = %3, %12
  %19 = phi ptr [ %16, %12 ], [ %6, %3 ]
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !592
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !592
  %24 = call zeroext i8 @useless_type_conversion_p(ptr noundef %21, ptr noundef %23) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %116, !prof !1402

26:                                               ; preds = %18
  %27 = load ptr, ptr %22, align 8, !tbaa !592
  %28 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 118, ptr noundef %27, ptr noundef nonnull %19) #20
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i16
  switch i16 %30, label %51 [
    i16 116, label %31
    i16 113, label %31
    i16 118, label %31
  ], !prof !1403

31:                                               ; preds = %26, %26, %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !592
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %51, !prof !1404

37:                                               ; preds = %31
  %38 = call ptr @vn_get_expr_for(ptr noundef nonnull %33) #19
  %39 = call fastcc ptr @valueize_expr(ptr noundef %38) #19
  %40 = load i64, ptr %38, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %51 [
    i16 116, label %42
    i16 113, label %42
    i16 118, label %42
  ], !prof !1405

42:                                               ; preds = %37, %37, %37
  %43 = load i64, ptr %28, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65535
  %46 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !592
  %48 = call ptr @fold_unary_ignore_overflow_loc(i32 noundef 0, i32 noundef %45, ptr noundef %47, ptr noundef nonnull %38) #20
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %28, ptr %48, !prof !1406
  br label %51

51:                                               ; preds = %42, %37, %26, %31
  %52 = phi ptr [ %28, %31 ], [ %28, %26 ], [ %28, %37 ], [ %50, %42 ]
  %53 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %52) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61, !prof !1404

55:                                               ; preds = %51
  %56 = load i64, ptr %52, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %116, label %59, !prof !1407

59:                                               ; preds = %55
  %60 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %52, ptr noundef null) #19
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi ptr [ %52, %51 ], [ %60, %59 ]
  %63 = icmp eq ptr %62, null
  %64 = load i8, ptr @may_insert, align 1
  %65 = icmp ne i8 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %113, !prof !1408

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !592
  %70 = call fastcc ptr @make_ssa_name(ptr noundef %69) #19
  %71 = call ptr @VN_INFO_GET(ptr noundef %70) #19
  store ptr %70, ptr %71, align 8, !tbaa !628
  %72 = call i32 @get_next_value_id() #19
  %73 = call ptr @VN_INFO(ptr noundef %70) #19
  %74 = getelementptr inbounds %struct.vn_ssa_aux, ptr %73, i64 0, i32 2
  store i32 %72, ptr %74, align 8, !tbaa !948
  %75 = call ptr @VN_INFO(ptr noundef %70) #19
  %76 = getelementptr inbounds %struct.vn_ssa_aux, ptr %75, i64 0, i32 1
  store ptr %52, ptr %76, align 8, !tbaa !633
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
  %89 = load ptr, ptr @current_info, align 8, !tbaa !597
  %90 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %96, !prof !1409

92:                                               ; preds = %67
  %93 = load ptr, ptr @valid_info, align 8, !tbaa !597
  store ptr %93, ptr @current_info, align 8, !tbaa !597
  %94 = call ptr @vn_nary_op_insert(ptr noundef %52, ptr noundef %70) #19
  %95 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  store ptr %95, ptr @current_info, align 8, !tbaa !597
  br label %98

96:                                               ; preds = %67
  %97 = call ptr @vn_nary_op_insert(ptr noundef %52, ptr noundef %70) #19
  br label %98

98:                                               ; preds = %96, %92
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101, !prof !1018

101:                                              ; preds = %98
  %102 = load i32, ptr @dump_flags, align 4, !tbaa !641
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = call i64 @fwrite(ptr nonnull @.str.25, i64 15, i64 1, ptr nonnull %99)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !597
  call void @print_generic_expr(ptr noundef %107, ptr noundef %70, i32 noundef 0) #20
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %109 = call i64 @fwrite(ptr nonnull @.str.26, i64 16, i64 1, ptr %108)
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !597
  call void @print_generic_expr(ptr noundef %110, ptr noundef %52, i32 noundef 0) #20
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !597
  %112 = call i32 @fputc(i32 10, ptr %111)
  br label %113

113:                                              ; preds = %61, %105, %101, %98
  %114 = phi ptr [ %70, %105 ], [ %70, %101 ], [ %70, %98 ], [ %62, %61 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %138, label %116, !prof !785

116:                                              ; preds = %55, %18, %113
  %117 = phi ptr [ %114, %113 ], [ %19, %18 ], [ %52, %55 ]
  %118 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %117) #19, !range !635
  %119 = load i64, ptr %117, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 141
  br i1 %121, label %122, label %142, !prof !1410

122:                                              ; preds = %116
  %123 = call ptr @VN_INFO(ptr noundef nonnull %117) #19
  %124 = getelementptr inbounds %struct.vn_ssa_aux, ptr %123, i64 0, i32 5
  %125 = load i8, ptr %124, align 4
  %126 = and i8 %125, 4
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %142, label %128, !prof !1411

128:                                              ; preds = %122
  %129 = call ptr @VN_INFO(ptr noundef nonnull %117) #19
  %130 = getelementptr inbounds %struct.vn_ssa_aux, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !633
  %132 = call ptr @VN_INFO(ptr noundef %0) #19
  %133 = getelementptr inbounds %struct.vn_ssa_aux, ptr %132, i64 0, i32 1
  store ptr %131, ptr %133, align 8, !tbaa !633
  %134 = call ptr @VN_INFO(ptr noundef %0) #19
  %135 = getelementptr inbounds %struct.vn_ssa_aux, ptr %134, i64 0, i32 5
  %136 = load i8, ptr %135, align 4
  %137 = or i8 %136, 4
  store i8 %137, ptr %135, align 4
  br label %142

138:                                              ; preds = %8, %12, %113
  %139 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !635
  %140 = load ptr, ptr %4, align 8, !tbaa !597
  %141 = call ptr @vn_reference_insert(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %140) #19
  br label %142

142:                                              ; preds = %116, %122, %128, %138
  %143 = phi i8 [ %118, %128 ], [ %118, %122 ], [ %118, %116 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %143
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1412 !PGOFuncName !1413 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @visit_reference_op_call(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1414 !PGOFuncName !1415 {
  %3 = alloca %struct.vn_reference_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #21
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !1416

6:                                                ; preds = %2
  %7 = tail call ptr @VN_INFO(ptr noundef nonnull %4) #19
  %8 = load ptr, ptr %7, align 8, !tbaa !628
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !702
  %12 = tail call fastcc ptr @valueize_shared_reference_ops_from_call(ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !696
  %14 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #19
  %15 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !826
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !827
  %17 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %3) #19
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !721
  %19 = call fastcc ptr @vn_reference_lookup_1(ptr noundef nonnull %3, ptr noundef null) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21, !prof !1417

21:                                               ; preds = %9
  %22 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %19) #19, !range !635
  %23 = load i64, ptr %19, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %63, !prof !1418

26:                                               ; preds = %21
  %27 = call ptr @VN_INFO(ptr noundef nonnull %19) #19
  %28 = getelementptr inbounds %struct.vn_ssa_aux, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %63, label %32, !prof !1418

32:                                               ; preds = %26
  %33 = call ptr @VN_INFO(ptr noundef %0) #19
  %34 = getelementptr inbounds %struct.vn_ssa_aux, ptr %33, i64 0, i32 5
  %35 = load i8, ptr %34, align 4
  %36 = or i8 %35, 4
  store i8 %36, ptr %34, align 4
  br label %63

37:                                               ; preds = %9
  %38 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0) #19, !range !635
  %39 = load ptr, ptr @current_info, align 8, !tbaa !597
  %40 = getelementptr inbounds %struct.vn_tables_s, ptr %39, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !919
  %42 = call ptr @pool_alloc(ptr noundef %41) #20
  %43 = load ptr, ptr %11, align 8, !tbaa !702
  %44 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !702
  %45 = call fastcc ptr @create_reference_ops_from_call(ptr noundef %1) #19
  %46 = call fastcc ptr @valueize_refs(ptr noundef %45) #19
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !696
  %48 = load ptr, ptr %15, align 8, !tbaa !826
  %49 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !826
  %50 = load i32, ptr %16, align 8, !tbaa !827
  %51 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 3
  store i32 %50, ptr %51, align 8, !tbaa !827
  %52 = load i32, ptr %18, align 4, !tbaa !721
  %53 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 1
  store i32 %52, ptr %53, align 4, !tbaa !721
  %54 = getelementptr inbounds %struct.vn_reference_s, ptr %42, i64 0, i32 6
  store ptr %0, ptr %54, align 8, !tbaa !832
  %55 = load ptr, ptr @current_info, align 8, !tbaa !597
  %56 = getelementptr inbounds %struct.vn_tables_s, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !861
  %58 = call ptr @htab_find_slot_with_hash(ptr noundef %57, ptr noundef %42, i32 noundef %52, i32 noundef 1) #20
  %59 = load ptr, ptr %58, align 8, !tbaa !597
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !1419

61:                                               ; preds = %37
  call void @free_reference(ptr noundef nonnull %59) #19
  br label %62

62:                                               ; preds = %61, %37
  store ptr %42, ptr %58, align 8, !tbaa !597
  br label %63

63:                                               ; preds = %21, %26, %32, %62
  %64 = phi i8 [ %22, %32 ], [ %22, %26 ], [ %22, %21 ], [ %38, %62 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #21
  ret i8 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1420 !PGOFuncName !1421 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #6 !prof !1422 !PGOFuncName !1423 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1424 !PGOFuncName !1425 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vn_phi_lookup(ptr noundef %0) unnamed_addr #0 !prof !1426 !PGOFuncName !1427 {
  %2 = alloca %struct.vn_phi_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %3 = load ptr, ptr @shared_lookup_phiargs, align 8
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %3) #19
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6, !prof !1428

6:                                                ; preds = %1, %16
  %7 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %8 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %7) #19
  %9 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %8) #19
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %16, !prof !1429

13:                                               ; preds = %6
  %14 = tail call ptr @VN_INFO(ptr noundef nonnull %9) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !628
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %15, %13 ], [ %9, %6 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @shared_lookup_phiargs, ptr noundef %17) #19
  %18 = add nuw i32 %7, 1
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %6, label %21, !prof !1430, !llvm.loop !1431

21:                                               ; preds = %16, %1
  %22 = load ptr, ptr @shared_lookup_phiargs, align 8, !tbaa !597
  %23 = getelementptr inbounds %struct.vn_phi_s, ptr %2, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !1149
  %24 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %25 = getelementptr inbounds %struct.vn_phi_s, ptr %2, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !1147
  %26 = call fastcc i32 @vn_phi_compute_hash(ptr noundef nonnull %2) #19
  %27 = getelementptr inbounds %struct.vn_phi_s, ptr %2, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !1143
  %28 = load ptr, ptr @current_info, align 8, !tbaa !597
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !1053
  %31 = call ptr @htab_find_slot_with_hash(ptr noundef %30, ptr noundef nonnull %2, i32 noundef %26, i32 noundef 0) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %44, !prof !1432

33:                                               ; preds = %21
  %34 = load ptr, ptr @current_info, align 8, !tbaa !597
  %35 = load ptr, ptr @optimistic_info, align 8, !tbaa !597
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %49, !prof !1433

37:                                               ; preds = %33
  %38 = load ptr, ptr @valid_info, align 8, !tbaa !597
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1053
  %41 = load i32, ptr %27, align 4, !tbaa !1143
  %42 = call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef nonnull %2, i32 noundef %41, i32 noundef 0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44, !prof !1434

44:                                               ; preds = %21, %37
  %45 = phi ptr [ %42, %37 ], [ %31, %21 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !597
  %47 = getelementptr inbounds %struct.vn_phi_s, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !1117
  br label %49

49:                                               ; preds = %33, %37, %44
  %50 = phi ptr [ %48, %44 ], [ null, %37 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vn_phi_insert(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1435 !PGOFuncName !1436 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @current_info, align 8, !tbaa !597
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !1055
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !597
  %8 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10, !prof !1437

10:                                               ; preds = %2, %20
  %11 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %12 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %11) #19
  %13 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %12) #19
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %20, !prof !1438

17:                                               ; preds = %10
  %18 = tail call ptr @VN_INFO(ptr noundef nonnull %13) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !628
  br label %20

20:                                               ; preds = %10, %17
  %21 = phi ptr [ %19, %17 ], [ %13, %10 ]
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %21) #19
  %22 = add nuw i32 %11, 1
  %23 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %10, label %25, !prof !1439, !llvm.loop !1440

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8, !tbaa !597
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi ptr [ %26, %25 ], [ null, %2 ]
  %29 = tail call ptr @VN_INFO(ptr noundef %1) #19
  %30 = getelementptr inbounds %struct.vn_ssa_aux, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !948
  store i32 %31, ptr %7, align 8, !tbaa !1121
  %32 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 2
  store ptr %28, ptr %32, align 8, !tbaa !1149
  %33 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %34 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !1147
  %35 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 4
  store ptr %1, ptr %35, align 8, !tbaa !1117
  %36 = tail call fastcc i32 @vn_phi_compute_hash(ptr noundef nonnull %7) #19
  %37 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !1143
  %38 = load ptr, ptr @current_info, align 8, !tbaa !597
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1053
  %41 = tail call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef nonnull %7, i32 noundef %36, i32 noundef 1) #20
  store ptr %7, ptr %41, align 8, !tbaa !597
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1424 !PGOFuncName !1441 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !592
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1442

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #11 !prof !1426 !PGOFuncName !1443 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !1444

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !1046
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_phi_compute_hash(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1445 !PGOFuncName !1446 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1147
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !1266
  %7 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1149
  %9 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %8, i32 noundef 0) #19
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !592
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -6
  %16 = icmp ult i32 %15, 3
  %17 = zext i1 %16 to i32
  br i1 %16, label %18, label %25, !prof !1447

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
  %29 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #19, !range !623
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31, !prof !1448

31:                                               ; preds = %25
  %32 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  br label %33

33:                                               ; preds = %31, %44
  %34 = phi ptr [ %45, %44 ], [ %8, %31 ]
  %35 = phi ptr [ %46, %44 ], [ %32, %31 ]
  %36 = phi i32 [ %47, %44 ], [ %28, %31 ]
  %37 = phi i32 [ %48, %44 ], [ 0, %31 ]
  %38 = load ptr, ptr %2, align 8, !tbaa !597
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %44, label %40, !prof !1449

40:                                               ; preds = %33
  %41 = tail call i32 @iterative_hash_expr(ptr noundef %38, i32 noundef %36) #20
  %42 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %43 = load ptr, ptr %7, align 8, !tbaa !1149
  br label %44

44:                                               ; preds = %33, %40
  %45 = phi ptr [ %34, %33 ], [ %43, %40 ]
  %46 = phi ptr [ %35, %33 ], [ %42, %40 ]
  %47 = phi i32 [ %36, %33 ], [ %41, %40 ]
  %48 = add nuw nsw i32 %37, 1
  %49 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %45, i32 noundef %48, ptr noundef nonnull %2) #19, !range !623
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %33, !prof !1450, !llvm.loop !1451

51:                                               ; preds = %44, %25
  %52 = phi i32 [ %28, %25 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1228 !PGOFuncName !1452 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !1174
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #14 !prof !1453 !PGOFuncName !1454 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1222
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1455

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1456
  %8 = load ptr, ptr %3, align 8, !tbaa !1224
  store ptr %8, ptr %2, align 8, !tbaa !1222
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !1170
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
define internal fastcc noundef ptr @simplify_unary_expression(ptr noundef %0) unnamed_addr #0 !prof !1457 !PGOFuncName !1458 {
  %2 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %11, label %5, !prof !1459

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %7 = icmp eq i32 %6, 44
  br i1 %7, label %11, label %8, !prof !1459

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %10 = icmp eq i32 %9, 118
  br i1 %10, label %11, label %14, !prof !1459

11:                                               ; preds = %8, %5, %1
  %12 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !592
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %13, %11 ], [ %2, %8 ]
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %67, !prof !1460

19:                                               ; preds = %14
  %20 = tail call ptr @VN_INFO(ptr noundef nonnull %15) #19
  %21 = getelementptr inbounds %struct.vn_ssa_aux, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25, !prof !1461

25:                                               ; preds = %19
  %26 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %15) #19
  %27 = tail call fastcc ptr @valueize_expr(ptr noundef %26) #19
  br label %54

28:                                               ; preds = %19
  %29 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #19, !range !635
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40, !prof !1462

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %40, label %34, !prof !1463

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %40, label %37, !prof !1463

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %39 = icmp eq i32 %38, 118
  br i1 %39, label %40, label %67, !prof !1463

40:                                               ; preds = %37, %34, %31, %28
  %41 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %15) #19
  %42 = tail call fastcc ptr @valueize_expr(ptr noundef %41) #19
  %43 = load i64, ptr %41, align 8
  %44 = and i64 %43, 65535
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !641
  %47 = and i32 %46, -2
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %54, label %49, !prof !1464

49:                                               ; preds = %40
  %50 = trunc i64 %43 to i16
  switch i16 %50, label %51 [
    i16 118, label %54
    i16 141, label %54
  ], !prof !1465

51:                                               ; preds = %49
  %52 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %41) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %67, label %54, !prof !1466

54:                                               ; preds = %51, %49, %49, %40, %25
  %55 = phi ptr [ %26, %25 ], [ %41, %40 ], [ %41, %49 ], [ %41, %49 ], [ %41, %51 ]
  %56 = icmp eq ptr %55, %15
  br i1 %56, label %67, label %57, !prof !1467

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %59 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %60 = tail call ptr @fold_unary_ignore_overflow_loc(i32 noundef 0, i32 noundef %58, ptr noundef %59, ptr noundef %55) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62, !prof !1468

62:                                               ; preds = %57
  %63 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %60) #20
  %64 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %63) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67, !prof !1469

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %51, %37, %62, %54, %14, %66
  %68 = phi ptr [ null, %66 ], [ null, %14 ], [ null, %54 ], [ %63, %62 ], [ null, %37 ], [ null, %51 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_binary_expression(ptr noundef %0) unnamed_addr #0 !prof !1470 !PGOFuncName !1471 {
  %2 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %3 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  %4 = load i64, ptr %2, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %34, !prof !1472

7:                                                ; preds = %1
  %8 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %9 = getelementptr inbounds %struct.vn_ssa_aux, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19, !prof !1473

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !641
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %22, !prof !1474

19:                                               ; preds = %13, %7
  %20 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %2) #19
  %21 = tail call fastcc ptr @valueize_expr(ptr noundef %20) #19
  br label %34

22:                                               ; preds = %13
  %23 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %24 = load ptr, ptr %23, align 8, !tbaa !628
  %25 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %34, label %27, !prof !1475

27:                                               ; preds = %22
  %28 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %29 = load ptr, ptr %28, align 8, !tbaa !628
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %34, label %31, !prof !1476

31:                                               ; preds = %27
  %32 = tail call ptr @VN_INFO(ptr noundef nonnull %2) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !628
  br label %34

34:                                               ; preds = %19, %31, %27, %22, %1
  %35 = phi ptr [ %20, %19 ], [ %33, %31 ], [ %2, %27 ], [ %2, %22 ], [ %2, %1 ]
  %36 = load i64, ptr %3, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60, !prof !1477

39:                                               ; preds = %34
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 5
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45, !prof !1478

45:                                               ; preds = %39
  %46 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %3) #19
  %47 = tail call fastcc ptr @valueize_expr(ptr noundef %46) #19
  br label %60

48:                                               ; preds = %39
  %49 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %50 = load ptr, ptr %49, align 8, !tbaa !628
  %51 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %60, label %53, !prof !1479

53:                                               ; preds = %48
  %54 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %55 = load ptr, ptr %54, align 8, !tbaa !628
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %60, label %57, !prof !1480

57:                                               ; preds = %53
  %58 = tail call ptr @VN_INFO(ptr noundef nonnull %3) #19
  %59 = load ptr, ptr %58, align 8, !tbaa !628
  br label %60

60:                                               ; preds = %45, %57, %53, %48, %34
  %61 = phi ptr [ %46, %45 ], [ %59, %57 ], [ %3, %53 ], [ %3, %48 ], [ %3, %34 ]
  %62 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %63 = icmp eq ptr %35, %62
  br i1 %63, label %64, label %67, !prof !1481

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #19
  %66 = icmp eq ptr %61, %65
  br i1 %66, label %83, label %67, !prof !1482

67:                                               ; preds = %64, %60
  tail call void @fold_defer_overflow_warnings() #20
  %68 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %69 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #19
  %70 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %68, ptr noundef %69, ptr noundef %35, ptr noundef %61) #20
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72, !prof !1483

72:                                               ; preds = %67
  %73 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %70) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75, !prof !785

75:                                               ; preds = %72
  %76 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %73) #20
  %77 = icmp ne i8 %76, 0
  %78 = zext i1 %77 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %78, ptr noundef %0, i32 noundef 0) #20
  %79 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %73) #20
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %83, !prof !1484

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
define internal fastcc noundef ptr @valueize_expr(ptr noundef returned %0) unnamed_addr #0 !prof !1485 !PGOFuncName !1486 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !641
  switch i32 %5, label %48 [
    i32 6, label %6
    i32 7, label %17
  ], !prof !1487

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !592
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %48, !prof !1488

12:                                               ; preds = %6
  %13 = tail call ptr @VN_INFO(ptr noundef nonnull %8) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !628
  %15 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %48, label %43, !prof !1489

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !592
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %32, !prof !1490

23:                                               ; preds = %17
  %24 = tail call ptr @VN_INFO(ptr noundef nonnull %19) #19
  %25 = load ptr, ptr %24, align 8, !tbaa !628
  %26 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %32, label %28, !prof !1491

28:                                               ; preds = %23
  %29 = load ptr, ptr %18, align 8, !tbaa !592
  %30 = tail call ptr @VN_INFO(ptr noundef %29) #19
  %31 = load ptr, ptr %30, align 8, !tbaa !628
  store ptr %31, ptr %18, align 8, !tbaa !592
  br label %32

32:                                               ; preds = %28, %23, %17
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !592
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %48, !prof !1492

38:                                               ; preds = %32
  %39 = tail call ptr @VN_INFO(ptr noundef nonnull %34) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !628
  %41 = load ptr, ptr @VN_TOP, align 8, !tbaa !597
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %48, label %43, !prof !1493

43:                                               ; preds = %38, %12
  %44 = phi ptr [ %7, %12 ], [ %33, %38 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !592
  %46 = tail call ptr @VN_INFO(ptr noundef %45) #19
  %47 = load ptr, ptr %46, align 8, !tbaa !628
  store ptr %47, ptr %44, align 8, !tbaa !592
  br label %48

48:                                               ; preds = %43, %1, %32, %38, %6, %12
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !1494 !PGOFuncName !1495 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !635
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !1496

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !640
  %6 = icmp eq i32 %5, 113
  %7 = and i32 %5, 65533
  %8 = icmp eq i32 %7, 116
  %9 = or i1 %6, %8
  %10 = icmp eq i32 %5, 77
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi i8 [ %12, %4 ], [ 0, %1 ]
  ret i8 %14
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !1013 !PGOFuncName !1497 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !597
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #20
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @valueize_shared_reference_ops_from_call(ptr noundef %0) unnamed_addr #0 !prof !1414 !PGOFuncName !1498 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !1499

3:                                                ; preds = %1
  %4 = load ptr, ptr @shared_lookup_references, align 8
  tail call fastcc void @VEC_vn_reference_op_s_base_truncate(ptr noundef %4, i32 noundef 0) #19
  tail call void @copy_reference_ops_from_call(ptr noundef nonnull %0, ptr noundef nonnull @shared_lookup_references) #19
  %5 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !597
  %6 = tail call fastcc ptr @valueize_refs(ptr noundef %5) #19
  store ptr %6, ptr @shared_lookup_references, align 8, !tbaa !597
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_reference_ops_from_call(ptr noundef %0) unnamed_addr #0 !prof !1500 !PGOFuncName !1501 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !597
  call void @copy_reference_ops_from_call(ptr noundef %0, ptr noundef nonnull %2) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !597
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_op_iter_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1192 !PGOFuncName !1502 {
  %2 = load ptr, ptr %0, align 8, !tbaa !597
  %3 = tail call fastcc i32 @VEC_ssa_op_iter_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1503

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 40) #20
  store ptr %6, ptr %0, align 8, !tbaa !597
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_op_iter_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !prof !1192 !PGOFuncName !1504 {
  %3 = load i32, ptr %0, align 8, !tbaa !1194
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1194
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !1505

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !1506
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_op_iter_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !1192 !PGOFuncName !1507 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1508

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1509
  %6 = load i32, ptr %0, align 8, !tbaa !1194
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1510 !PGOFuncName !1511 {
  store ptr %1, ptr %0, align 8, !tbaa !1512
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1514
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1516
  %6 = tail call i64 @htab_size(ptr noundef %1) #20
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !1517
  %9 = load ptr, ptr %5, align 8, !tbaa !1516
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !597
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !1516
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !1518, !llvm.loop !1519

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !1520

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !597
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1521 !PGOFuncName !1522 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1516
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1517
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #15 !prof !1523 !PGOFuncName !1524 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1517
  %5 = load ptr, ptr %2, align 8, !tbaa !1516
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !1516
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !1525

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !597
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_value_id() local_unnamed_addr #16 !prof !1526 {
  %1 = load i32, ptr @next_value_id, align 4, !tbaa !641
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vn_nary_may_trap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1527 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !641
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %44, !prof !1528

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !968
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %32 [
    i16 9, label %22
    i16 13, label %16
    i16 14, label %16
  ], !prof !1529

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !592
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 9
  br i1 %21, label %22, label %44, !prof !1530

22:                                               ; preds = %11, %16
  %23 = load i32, ptr @flag_trapping_math, align 4, !tbaa !641
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @flag_finite_math_only, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false, !prof !1531
  %28 = zext i1 %27 to i8
  %29 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !641
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %44

32:                                               ; preds = %11
  %33 = trunc i64 %14 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -6
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %44, !prof !1532

37:                                               ; preds = %32
  %38 = and i64 %14, 2097152
  %39 = icmp eq i64 %38, 0
  %40 = load i32, ptr @flag_trapv, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !1533

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %16, %32, %1, %22, %43, %37
  %45 = phi i8 [ %28, %22 ], [ 0, %43 ], [ 0, %37 ], [ 0, %1 ], [ 0, %32 ], [ 0, %16 ]
  %46 = phi i8 [ %31, %22 ], [ 0, %43 ], [ 0, %37 ], [ 0, %1 ], [ 0, %32 ], [ 0, %16 ]
  %47 = phi i8 [ 1, %22 ], [ 0, %43 ], [ 0, %37 ], [ 0, %1 ], [ 0, %32 ], [ 0, %16 ]
  %48 = phi i8 [ 0, %22 ], [ 1, %43 ], [ 0, %37 ], [ 0, %1 ], [ 0, %32 ], [ 0, %16 ]
  %49 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !597
  %51 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %5, i8 noundef zeroext %47, i8 noundef zeroext %48, i8 noundef zeroext %45, i8 noundef zeroext %46, ptr noundef %50, ptr noundef nonnull %2) #20
  %52 = load i8, ptr %2, align 1, !tbaa !592
  %53 = icmp ne i8 %52, 0
  %54 = icmp ne i8 %51, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %71, label %56, !prof !1534

56:                                               ; preds = %44
  %57 = load i32, ptr %3, align 4
  %58 = icmp ult i32 %57, 65536
  br i1 %58, label %71, label %65, !prof !1535

59:                                               ; preds = %65
  %60 = add nuw nsw i64 %66, 1
  %61 = load i32, ptr %3, align 4
  %62 = lshr i32 %61, 16
  %63 = zext nneg i32 %62 to i64
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %71, !prof !1536, !llvm.loop !1537

65:                                               ; preds = %56, %59
  %66 = phi i64 [ %60, %59 ], [ 0, %56 ]
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !597
  %69 = call zeroext i8 @tree_could_trap_p(ptr noundef %68) #20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %59, label %71, !prof !1538

71:                                               ; preds = %65, %59, %56, %44
  %72 = phi i8 [ 1, %44 ], [ 0, %56 ], [ 1, %65 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #21
  ret i8 %72
}

; Function Attrs: optsize
declare zeroext i8 @operation_could_trap_helper_p(i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

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
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!590}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!36 = !{ptr @VN_INFO, ptr @VEC_vn_ssa_aux_t_base_index, i64 107202223}
!37 = !{ptr @VN_INFO, ptr @fancy_abort, i64 1}
!38 = !{ptr @VN_INFO_GET, ptr @_obstack_newchunk, i64 9695}
!39 = !{ptr @VN_INFO_GET, ptr @VEC_vn_ssa_aux_t_base_length, i64 1708752}
!40 = !{ptr @VN_INFO_GET, ptr @VEC_vn_ssa_aux_t_heap_safe_grow, i64 131566}
!41 = !{ptr @VN_INFO_GET, ptr @VEC_vn_ssa_aux_t_base_replace, i64 1708752}
!42 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow, ptr @VEC_vn_ssa_aux_t_heap_reserve_exact, i64 144869}
!43 = !{ptr @VEC_vn_ssa_aux_t_heap_reserve_exact, ptr @VEC_vn_ssa_aux_t_base_space, i64 144869}
!44 = !{ptr @VEC_vn_ssa_aux_t_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 131564}
!45 = !{ptr @vn_get_expr_for, ptr @VN_INFO, i64 502902}
!46 = !{ptr @vn_get_expr_for, ptr @gimple_nop_p, i64 198176}
!47 = !{ptr @vn_get_expr_for, ptr @gimple_code, i64 193088}
!48 = !{ptr @vn_get_expr_for, ptr @is_gimple_assign, i64 193087}
!49 = !{ptr @vn_get_expr_for, ptr @gimple_assign_rhs_code, i64 501212}
!50 = !{ptr @vn_get_expr_for, ptr @gimple_assign_rhs1, i64 67624}
!51 = !{ptr @vn_get_expr_for, ptr @gimple_expr_type, i64 67621}
!52 = !{ptr @vn_get_expr_for, ptr @fold_build1_stat_loc, i64 8153}
!53 = !{ptr @vn_get_expr_for, ptr @gimple_assign_rhs2, i64 59468}
!54 = !{ptr @vn_get_expr_for, ptr @fold_build2_stat_loc, i64 59468}
!55 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 10066495}
!56 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 3791726}
!57 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 10094666}
!58 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 10094666}
!59 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 5843270}
!60 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 13741576}
!61 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 1078810}
!62 = !{ptr @gimple_expr_type, ptr @gimple_call_return_type, i64 359603}
!63 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 359603}
!64 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 47391}
!65 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 312213}
!66 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 838986}
!67 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 838985}
!68 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 10094666}
!69 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 18585592}
!70 = !{ptr @gimple_op, ptr @gimple_ops, i64 18585591}
!71 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 20053413}
!72 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 18585592}
!73 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!74 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 18585592}
!75 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 18585592}
!76 = !{ptr @gimple_call_return_type, ptr @gimple_call_fn, i64 48269}
!77 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 488178}
!78 = !{ptr @get_constant_value_id, ptr @vn_hash_constant_with_type, i64 180382}
!79 = !{ptr @get_constant_value_id, ptr @htab_find_slot_with_hash, i64 180382}
!80 = !{ptr @vn_hash_constant_with_type, ptr @iterative_hash_expr, i64 305893}
!81 = !{ptr @get_or_alloc_constant_value_id, ptr @vn_hash_constant_with_type, i64 125511}
!82 = !{ptr @get_or_alloc_constant_value_id, ptr @htab_find_slot_with_hash, i64 125511}
!83 = !{ptr @get_or_alloc_constant_value_id, ptr @xmalloc, i64 29659}
!84 = !{ptr @get_or_alloc_constant_value_id, ptr @get_next_value_id, i64 29659}
!85 = !{ptr @get_or_alloc_constant_value_id, ptr @bitmap_set_bit, i64 29659}
!86 = !{ptr @value_id_constant_p, ptr @bitmap_bit_p, i64 69797801}
!87 = !{ptr @vn_reference_compute_hash, ptr @VEC_vn_reference_op_s_base_iterate, i64 13344233}
!88 = !{ptr @vn_reference_compute_hash, ptr @vn_reference_op_compute_hash, i64 10066763}
!89 = !{ptr @vn_reference_op_compute_hash, ptr @iterative_hash_hashval_t, i64 10066765}
!90 = !{ptr @vn_reference_op_compute_hash, ptr @iterative_hash_expr, i64 9580784}
!91 = !{ptr @vn_reference_eq, ptr @VEC_vn_reference_op_s_base_length, i64 1514924}
!92 = !{ptr @vn_reference_eq, ptr @VEC_vn_reference_op_s_base_iterate, i64 2921323}
!93 = !{ptr @vn_reference_eq, ptr @VEC_vn_reference_op_s_base_index, i64 2163863}
!94 = !{ptr @vn_reference_eq, ptr @vn_reference_op_eq, i64 2163863}
!95 = !{ptr @vn_reference_op_eq, ptr @types_compatible_p, i64 2165211}
!96 = !{ptr @vn_reference_op_eq, ptr @expressions_equal_p, i64 6495541}
!97 = !{ptr @expressions_equal_p, ptr @operand_equal_p, i64 406471}
!98 = !{ptr @copy_reference_ops_from_ref, ptr @VEC_vn_reference_op_s_heap_safe_push, i64 7672737}
!99 = !{ptr @copy_reference_ops_from_ref, ptr @integer_zerop, i64 692649}
!100 = !{ptr @copy_reference_ops_from_ref, ptr @host_integerp, i64 346323}
!101 = !{ptr @copy_reference_ops_from_ref, ptr @array_ref_low_bound, i64 666245}
!102 = !{ptr @copy_reference_ops_from_ref, ptr @array_ref_element_size, i64 666245}
!103 = !{ptr @copy_reference_ops_from_ref, ptr @is_gimple_min_invariant, i64 6394}
!104 = !{ptr @copy_reference_ops_from_ref, ptr @fancy_abort, i64 1}
!105 = !{ptr @VEC_vn_reference_op_s_heap_safe_push, ptr @VEC_vn_reference_op_s_heap_reserve, i64 7708228}
!106 = !{ptr @VEC_vn_reference_op_s_heap_safe_push, ptr @VEC_vn_reference_op_s_base_quick_push, i64 7708228}
!107 = !{ptr @VEC_vn_reference_op_s_heap_reserve, ptr @VEC_vn_reference_op_s_base_space, i64 7708246}
!108 = !{ptr @VEC_vn_reference_op_s_heap_reserve, ptr @vec_heap_o_reserve, i64 1013208}
!109 = !{ptr @ao_ref_init_from_vn_reference, ptr @VEC_vn_reference_op_s_base_index, i64 984701}
!110 = !{ptr @ao_ref_init_from_vn_reference, ptr @vector_type_mode, i64 1}
!111 = !{ptr @ao_ref_init_from_vn_reference, ptr @host_integerp, i64 2069928}
!112 = !{ptr @ao_ref_init_from_vn_reference, ptr @VEC_vn_reference_op_s_base_iterate, i64 3714010}
!113 = !{ptr @ao_ref_init_from_vn_reference, ptr @build1_stat, i64 604482}
!114 = !{ptr @ao_ref_init_from_vn_reference, ptr @build2_stat, i64 1}
!115 = !{ptr @ao_ref_init_from_vn_reference, ptr @tree_low_cst, i64 16506}
!116 = !{ptr @copy_reference_ops_from_call, ptr @gimple_call_return_type, i64 35488}
!117 = !{ptr @copy_reference_ops_from_call, ptr @gimple_call_fn, i64 35488}
!118 = !{ptr @copy_reference_ops_from_call, ptr @gimple_call_chain, i64 35488}
!119 = !{ptr @copy_reference_ops_from_call, ptr @VEC_vn_reference_op_s_heap_safe_push, i64 35488}
!120 = !{ptr @copy_reference_ops_from_call, ptr @gimple_call_num_args, i64 94940}
!121 = !{ptr @copy_reference_ops_from_call, ptr @gimple_call_arg, i64 59452}
!122 = !{ptr @copy_reference_ops_from_call, ptr @copy_reference_ops_from_ref, i64 59452}
!123 = !{ptr @gimple_call_chain, ptr @gimple_op, i64 35488}
!124 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 94941}
!125 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 107206}
!126 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_base_index, i64 4595}
!127 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_heap_safe_push, i64 1}
!128 = !{ptr @vn_reference_fold_indirect, ptr @copy_reference_ops_from_ref, i64 1736}
!129 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_base_length, i64 1736}
!130 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_base_replace, i64 2859}
!131 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_base_ordered_remove, i64 611}
!132 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_base_iterate, i64 36}
!133 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_heap_safe_insert, i64 18}
!134 = !{ptr @vn_reference_fold_indirect, ptr @fancy_abort, i64 1}
!135 = !{ptr @vn_reference_fold_indirect, ptr @VEC_vn_reference_op_s_heap_free, i64 1736}
!136 = !{ptr @VEC_vn_reference_op_s_heap_safe_insert, ptr @VEC_vn_reference_op_s_heap_reserve, i64 18}
!137 = !{ptr @VEC_vn_reference_op_s_heap_safe_insert, ptr @VEC_vn_reference_op_s_base_quick_insert, i64 18}
!138 = !{ptr @VEC_vn_reference_op_s_heap_free, ptr @free, i64 1205221}
!139 = !{ptr @vn_reference_lookup_pieces, ptr @VN_INFO, i64 499528}
!140 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_base_truncate, i64 500352}
!141 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_base_length, i64 1000704}
!142 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_heap_safe_grow, i64 500352}
!143 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_base_address, i64 1000704}
!144 = !{ptr @vn_reference_lookup_pieces, ptr @valueize_refs, i64 500352}
!145 = !{ptr @vn_reference_lookup_pieces, ptr @vn_reference_compute_hash, i64 500352}
!146 = !{ptr @vn_reference_lookup_pieces, ptr @vn_reference_lookup_1, i64 500352}
!147 = !{ptr @vn_reference_lookup_pieces, ptr @ao_ref_init_from_vn_reference, i64 357802}
!148 = !{ptr @vn_reference_lookup_pieces, ptr @walk_non_aliased_vuses, i64 347303}
!149 = !{ptr @vn_reference_lookup_pieces, ptr @VEC_vn_reference_op_s_heap_free, i64 1}
!150 = !{ptr @VEC_vn_reference_op_s_heap_safe_grow, ptr @VEC_vn_reference_op_s_heap_reserve_exact, i64 500669}
!151 = !{ptr @valueize_refs, ptr @VEC_vn_reference_op_s_base_iterate, i64 13385189}
!152 = !{ptr @valueize_refs, ptr @VN_INFO, i64 2585880}
!153 = !{ptr @valueize_refs, ptr @VEC_vn_reference_op_s_base_index, i64 1242}
!154 = !{ptr @valueize_refs, ptr @vn_reference_fold_indirect, i64 1227}
!155 = !{ptr @vn_reference_lookup_1, ptr @htab_find_slot_with_hash, i64 879685}
!156 = !{ptr @vn_reference_lookup_2, ptr @VN_INFO, i64 2958122}
!157 = !{ptr @vn_reference_lookup_2, ptr @htab_find_slot_with_hash, i64 3638398}
!158 = !{ptr @vn_reference_lookup_3, ptr @ao_ref_base, i64 452170}
!159 = !{ptr @vn_reference_lookup_3, ptr @is_gimple_reg_type, i64 886362}
!160 = !{ptr @vn_reference_lookup_3, ptr @is_gimple_call, i64 443355}
!161 = !{ptr @vn_reference_lookup_3, ptr @gimple_call_fndecl, i64 404418}
!162 = !{ptr @vn_reference_lookup_3, ptr @gimple_call_arg, i64 47755}
!163 = !{ptr @vn_reference_lookup_3, ptr @integer_zerop, i64 15981}
!164 = !{ptr @vn_reference_lookup_3, ptr @host_integerp, i64 14919}
!165 = !{ptr @vn_reference_lookup_3, ptr @get_ref_base_and_extent, i64 3149}
!166 = !{ptr @vn_reference_lookup_3, ptr @operand_equal_p, i64 3148}
!167 = !{ptr @vn_reference_lookup_3, ptr @fold_convert_loc, i64 791}
!168 = !{ptr @vn_reference_lookup_3, ptr @get_or_alloc_constant_value_id, i64 791}
!169 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_heap_copy, i64 791}
!170 = !{ptr @vn_reference_lookup_3, ptr @vn_reference_insert_pieces, i64 791}
!171 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_single_p, i64 884226}
!172 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_rhs_code, i64 38937}
!173 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_rhs1, i64 191654}
!174 = !{ptr @vn_reference_lookup_3, ptr @VEC_constructor_elt_base_length, i64 1}
!175 = !{ptr @vn_reference_lookup_3, ptr @handled_component_p, i64 37816}
!176 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_lhs, i64 2774}
!177 = !{ptr @vn_reference_lookup_3, ptr @copy_reference_ops_from_ref, i64 1909}
!178 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_length, i64 3818}
!179 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_index, i64 1782}
!180 = !{ptr @vn_reference_lookup_3, ptr @vn_reference_op_eq, i64 891}
!181 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_heap_free, i64 1909}
!182 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_heap_safe_grow, i64 211}
!183 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_truncate, i64 534}
!184 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_iterate, i64 1834}
!185 = !{ptr @vn_reference_lookup_3, ptr @VEC_vn_reference_op_s_base_replace, i64 1090}
!186 = !{ptr @vn_reference_lookup_3, ptr @vn_reference_compute_hash, i64 744}
!187 = !{ptr @vn_reference_lookup_3, ptr @ao_ref_init_from_vn_reference, i64 744}
!188 = !{ptr @VEC_vn_reference_op_s_heap_reserve_exact, ptr @VEC_vn_reference_op_s_base_space, i64 500669}
!189 = !{ptr @VEC_vn_reference_op_s_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 7}
!190 = !{ptr @is_gimple_call, ptr @gimple_code, i64 947993}
!191 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 404421}
!192 = !{ptr @vn_reference_insert_pieces, ptr @pool_alloc, i64 337700}
!193 = !{ptr @vn_reference_insert_pieces, ptr @VN_INFO, i64 337505}
!194 = !{ptr @vn_reference_insert_pieces, ptr @valueize_refs, i64 337700}
!195 = !{ptr @vn_reference_insert_pieces, ptr @vn_reference_compute_hash, i64 337700}
!196 = !{ptr @vn_reference_insert_pieces, ptr @htab_find_slot_with_hash, i64 337700}
!197 = !{ptr @vn_reference_insert_pieces, ptr @fancy_abort, i64 1}
!198 = !{ptr @vn_reference_insert_pieces, ptr @free_reference, i64 1}
!199 = !{ptr @VEC_vn_reference_op_s_heap_copy, ptr @vec_heap_o_reserve_exact, i64 792}
!200 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 1482060}
!201 = !{ptr @vn_reference_lookup, ptr @VN_INFO, i64 1585555}
!202 = !{ptr @vn_reference_lookup, ptr @valueize_shared_reference_ops_from_ref, i64 1585824}
!203 = !{ptr @vn_reference_lookup, ptr @get_alias_set, i64 1585824}
!204 = !{ptr @vn_reference_lookup, ptr @vn_reference_compute_hash, i64 1585824}
!205 = !{ptr @vn_reference_lookup, ptr @ao_ref_init, i64 1364123}
!206 = !{ptr @vn_reference_lookup, ptr @walk_non_aliased_vuses, i64 1364123}
!207 = !{ptr @vn_reference_lookup, ptr @VEC_vn_reference_op_s_heap_free, i64 6}
!208 = !{ptr @vn_reference_lookup, ptr @vn_reference_lookup_1, i64 221701}
!209 = !{ptr @valueize_shared_reference_ops_from_ref, ptr @VEC_vn_reference_op_s_base_truncate, i64 1585823}
!210 = !{ptr @valueize_shared_reference_ops_from_ref, ptr @copy_reference_ops_from_ref, i64 1585823}
!211 = !{ptr @valueize_shared_reference_ops_from_ref, ptr @valueize_refs, i64 1585823}
!212 = !{ptr @vn_reference_insert, ptr @pool_alloc, i64 839692}
!213 = !{ptr @vn_reference_insert, ptr @VN_INFO, i64 2379775}
!214 = !{ptr @vn_reference_insert, ptr @get_or_alloc_constant_value_id, i64 69568}
!215 = !{ptr @vn_reference_insert, ptr @create_reference_ops_from_ref, i64 839692}
!216 = !{ptr @vn_reference_insert, ptr @valueize_refs, i64 839692}
!217 = !{ptr @vn_reference_insert, ptr @get_alias_set, i64 839692}
!218 = !{ptr @vn_reference_insert, ptr @vn_reference_compute_hash, i64 839692}
!219 = !{ptr @vn_reference_insert, ptr @htab_find_slot_with_hash, i64 839692}
!220 = !{ptr @vn_reference_insert, ptr @free_reference, i64 1}
!221 = !{ptr @create_reference_ops_from_ref, ptr @copy_reference_ops_from_ref, i64 839692}
!222 = !{ptr @free_reference, ptr @VEC_vn_reference_op_s_heap_free, i64 1346781}
!223 = !{ptr @vn_nary_op_compute_hash, ptr @VN_INFO, i64 1829539}
!224 = !{ptr @vn_nary_op_compute_hash, ptr @commutative_tree_code, i64 1042641}
!225 = !{ptr @vn_nary_op_compute_hash, ptr @tree_swap_operands_p, i64 730117}
!226 = !{ptr @vn_nary_op_compute_hash, ptr @iterative_hash_hashval_t, i64 1576848}
!227 = !{ptr @vn_nary_op_compute_hash, ptr @iterative_hash_expr, i64 2619488}
!228 = !{ptr @vn_nary_op_eq, ptr @types_compatible_p, i64 3021520}
!229 = !{ptr @vn_nary_op_eq, ptr @expressions_equal_p, i64 5133752}
!230 = !{ptr @vn_nary_op_lookup_pieces, ptr @vn_nary_op_compute_hash, i64 531488}
!231 = !{ptr @vn_nary_op_lookup_pieces, ptr @htab_find_slot_with_hash, i64 531489}
!232 = !{ptr @vn_nary_op_lookup, ptr @vn_nary_op_compute_hash, i64 5079}
!233 = !{ptr @vn_nary_op_lookup, ptr @htab_find_slot_with_hash, i64 6893}
!234 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_assign_rhs_code, i64 449975}
!235 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_num_ops, i64 449975}
!236 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_expr_type, i64 449975}
!237 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_op, i64 736669}
!238 = !{ptr @vn_nary_op_lookup_stmt, ptr @vn_nary_op_compute_hash, i64 449975}
!239 = !{ptr @vn_nary_op_lookup_stmt, ptr @htab_find_slot_with_hash, i64 674158}
!240 = !{ptr @vn_nary_op_insert_pieces, ptr @_obstack_newchunk, i64 1978}
!241 = !{ptr @vn_nary_op_insert_pieces, ptr @vn_nary_op_compute_hash, i64 193921}
!242 = !{ptr @vn_nary_op_insert_pieces, ptr @htab_find_slot_with_hash, i64 193921}
!243 = !{ptr @vn_nary_op_insert_pieces, ptr @fancy_abort, i64 1}
!244 = !{ptr @vn_nary_op_insert, ptr @_obstack_newchunk, i64 8}
!245 = !{ptr @vn_nary_op_insert, ptr @VN_INFO, i64 1283}
!246 = !{ptr @vn_nary_op_insert, ptr @vn_nary_op_compute_hash, i64 1283}
!247 = !{ptr @vn_nary_op_insert, ptr @htab_find_slot_with_hash, i64 1283}
!248 = !{ptr @vn_nary_op_insert, ptr @fancy_abort, i64 1}
!249 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_num_ops, i64 395102}
!250 = !{ptr @vn_nary_op_insert_stmt, ptr @_obstack_newchunk, i64 1519}
!251 = !{ptr @vn_nary_op_insert_stmt, ptr @VN_INFO, i64 395102}
!252 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_assign_rhs_code, i64 395102}
!253 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_expr_type, i64 395102}
!254 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_op, i64 650791}
!255 = !{ptr @vn_nary_op_insert_stmt, ptr @vn_nary_op_compute_hash, i64 395102}
!256 = !{ptr @vn_nary_op_insert_stmt, ptr @htab_find_slot_with_hash, i64 395102}
!257 = !{ptr @vn_nary_op_insert_stmt, ptr @fancy_abort, i64 1}
!258 = !{ptr @free_scc_vn, ptr @htab_delete, i64 13304}
!259 = !{ptr @free_scc_vn, ptr @bitmap_obstack_free, i64 13304}
!260 = !{ptr @free_scc_vn, ptr @VEC_tree_heap_free, i64 26608}
!261 = !{ptr @free_scc_vn, ptr @VEC_vn_reference_op_s_heap_free, i64 13304}
!262 = !{ptr @free_scc_vn, ptr @free, i64 39912}
!263 = !{ptr @free_scc_vn, ptr @VEC_tree_base_length, i64 1922061}
!264 = !{ptr @free_scc_vn, ptr @VEC_tree_base_index, i64 1908757}
!265 = !{ptr @free_scc_vn, ptr @VN_INFO, i64 1706421}
!266 = !{ptr @free_scc_vn, ptr @release_ssa_name, i64 1284}
!267 = !{ptr @free_scc_vn, ptr @obstack_free, i64 13304}
!268 = !{ptr @free_scc_vn, ptr @VEC_vn_ssa_aux_t_heap_free, i64 13304}
!269 = !{ptr @free_scc_vn, ptr @free_vn_table, i64 26608}
!270 = !{ptr @VEC_tree_heap_free, ptr @free, i64 1459288}
!271 = !{ptr @VEC_vn_ssa_aux_t_heap_free, ptr @free, i64 13303}
!272 = !{ptr @free_vn_table, ptr @htab_delete, i64 79824}
!273 = !{ptr @free_vn_table, ptr @obstack_free, i64 26608}
!274 = !{ptr @free_vn_table, ptr @free_alloc_pool, i64 53216}
!275 = !{ptr @run_scc_vn, ptr @init_scc_vn, i64 13304}
!276 = !{ptr @run_scc_vn, ptr @VEC_tree_base_length, i64 6875599}
!277 = !{ptr @run_scc_vn, ptr @gimple_default_def, i64 52989}
!278 = !{ptr @run_scc_vn, ptr @VN_INFO, i64 6160107}
!279 = !{ptr @run_scc_vn, ptr @VEC_tree_base_index, i64 6829183}
!280 = !{ptr @run_scc_vn, ptr @has_zero_uses, i64 572769}
!281 = !{ptr @run_scc_vn, ptr @DFS, i64 526739}
!282 = !{ptr @run_scc_vn, ptr @free_scc_vn, i64 1}
!283 = !{ptr @run_scc_vn, ptr @get_next_value_id, i64 1264957}
!284 = !{ptr @run_scc_vn, ptr @is_gimple_min_invariant, i64 178201}
!285 = !{ptr @run_scc_vn, ptr @get_or_alloc_constant_value_id, i64 1887}
!286 = !{ptr @run_scc_vn, ptr @set_hashtable_value_ids, i64 13303}
!287 = !{ptr @run_scc_vn, ptr @print_generic_expr, i64 4}
!288 = !{ptr @run_scc_vn, ptr @fwrite, i64 2}
!289 = !{ptr @run_scc_vn, ptr @fputc, i64 2}
!290 = !{ptr @init_scc_vn, ptr @calculate_dominance_info, i64 13304}
!291 = !{ptr @init_scc_vn, ptr @htab_create, i64 13304}
!292 = !{ptr @init_scc_vn, ptr @bitmap_obstack_alloc_stat, i64 13304}
!293 = !{ptr @init_scc_vn, ptr @VEC_tree_base_length, i64 1815204}
!294 = !{ptr @init_scc_vn, ptr @VEC_vn_ssa_aux_t_heap_alloc, i64 13304}
!295 = !{ptr @init_scc_vn, ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, i64 13304}
!296 = !{ptr @init_scc_vn, ptr @_obstack_begin, i64 13304}
!297 = !{ptr @init_scc_vn, ptr @xcalloc, i64 53216}
!298 = !{ptr @init_scc_vn, ptr @pre_and_rev_post_order_compute, i64 13304}
!299 = !{ptr @init_scc_vn, ptr @free, i64 13304}
!300 = !{ptr @init_scc_vn, ptr @create_tmp_var_raw, i64 13304}
!301 = !{ptr @init_scc_vn, ptr @VEC_tree_base_index, i64 1775292}
!302 = !{ptr @init_scc_vn, ptr @VN_INFO_GET, i64 1441984}
!303 = !{ptr @init_scc_vn, ptr @VN_INFO, i64 2883968}
!304 = !{ptr @init_scc_vn, ptr @renumber_gimple_stmt_uids, i64 13304}
!305 = !{ptr @init_scc_vn, ptr @allocate_vn_table, i64 26608}
!306 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!307 = !{ptr @DFS, ptr @VN_INFO, i64 24034500}
!308 = !{ptr @DFS, ptr @VEC_tree_heap_safe_push, i64 2267760}
!309 = !{ptr @DFS, ptr @gimple_nop_p, i64 1397289}
!310 = !{ptr @DFS, ptr @gimple_code, i64 1358839}
!311 = !{ptr @DFS, ptr @op_iter_init_phiuse, i64 192078}
!312 = !{ptr @DFS, ptr @op_iter_init_use, i64 1166761}
!313 = !{ptr @DFS, ptr @clear_and_done_ssa_iter, i64 38450}
!314 = !{ptr @DFS, ptr @op_iter_done, i64 4091183}
!315 = !{ptr @DFS, ptr @extract_and_process_scc_for_name, i64 999237}
!316 = !{ptr @DFS, ptr @VEC_tree_base_length, i64 1397288}
!317 = !{ptr @DFS, ptr @VEC_tree_base_pop, i64 870471}
!318 = !{ptr @DFS, ptr @VEC_ssa_op_iter_base_last, i64 870471}
!319 = !{ptr @DFS, ptr @VEC_ssa_op_iter_base_pop, i64 870471}
!320 = !{ptr @DFS, ptr @get_use_from_ptr, i64 2693895}
!321 = !{ptr @DFS, ptr @VEC_ssa_op_iter_heap_safe_push, i64 870471}
!322 = !{ptr @DFS, ptr @op_iter_next_use, i64 2693894}
!323 = !{ptr @DFS, ptr @VEC_tree_heap_free, i64 526818}
!324 = !{ptr @DFS, ptr @VEC_ssa_op_iter_heap_free, i64 526818}
!325 = !{ptr @set_hashtable_value_ids, ptr @first_htab_element, i64 39912}
!326 = !{ptr @set_hashtable_value_ids, ptr @end_htab_p, i64 973428}
!327 = !{ptr @set_hashtable_value_ids, ptr @VN_INFO, i64 896431}
!328 = !{ptr @set_hashtable_value_ids, ptr @is_gimple_min_invariant, i64 37082}
!329 = !{ptr @set_hashtable_value_ids, ptr @get_or_alloc_constant_value_id, i64 37081}
!330 = !{ptr @set_hashtable_value_ids, ptr @next_htab_element, i64 933516}
!331 = !{ptr @vn_constant_eq, ptr @vn_constant_eq_with_type, i64 310445}
!332 = !{ptr @VEC_vn_ssa_aux_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!333 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, ptr @VEC_vn_ssa_aux_t_base_length, i64 13304}
!334 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, ptr @VEC_vn_ssa_aux_t_heap_safe_grow, i64 13304}
!335 = !{ptr @VEC_vn_ssa_aux_t_heap_safe_grow_cleared, ptr @VEC_vn_ssa_aux_t_base_address, i64 13304}
!336 = !{ptr @allocate_vn_table, ptr @htab_create, i64 79824}
!337 = !{ptr @allocate_vn_table, ptr @_obstack_begin, i64 26608}
!338 = !{ptr @allocate_vn_table, ptr @create_alloc_pool, i64 53216}
!339 = !{ptr @vn_constant_eq_with_type, ptr @expressions_equal_p, i64 310446}
!340 = !{ptr @vn_constant_eq_with_type, ptr @types_compatible_p, i64 310445}
!341 = !{ptr @vn_phi_eq, ptr @VEC_tree_base_index, i64 1323}
!342 = !{ptr @vn_phi_eq, ptr @types_compatible_p, i64 295}
!343 = !{ptr @vn_phi_eq, ptr @VEC_tree_base_iterate, i64 1026}
!344 = !{ptr @vn_phi_eq, ptr @expressions_equal_p, i64 731}
!345 = !{ptr @free_phi, ptr @VEC_tree_heap_free, i64 456707}
!346 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 5671919}
!347 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 5671919}
!348 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 192078}
!349 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 192078}
!350 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 192078}
!351 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 192078}
!352 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 192078}
!353 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 1166764}
!354 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 1166764}
!355 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_base_pop, i64 1397292}
!356 = !{ptr @extract_and_process_scc_for_name, ptr @VN_INFO, i64 1397292}
!357 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_heap_safe_push, i64 1397292}
!358 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_base_length, i64 999239}
!359 = !{ptr @extract_and_process_scc_for_name, ptr @fprintf, i64 1}
!360 = !{ptr @extract_and_process_scc_for_name, ptr @sort_scc, i64 27159}
!361 = !{ptr @extract_and_process_scc_for_name, ptr @process_scc, i64 999238}
!362 = !{ptr @extract_and_process_scc_for_name, ptr @VEC_tree_heap_free, i64 999238}
!363 = !{ptr @VEC_ssa_op_iter_heap_free, ptr @free, i64 85977}
!364 = !{ptr @VEC_ssa_op_iter_heap_safe_push, ptr @VEC_ssa_op_iter_heap_reserve, i64 870473}
!365 = !{ptr @VEC_ssa_op_iter_heap_safe_push, ptr @VEC_ssa_op_iter_base_quick_push, i64 870473}
!366 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 565012}
!367 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 5671919}
!368 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 1574957}
!369 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!370 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 301058}
!371 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!372 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 1166763}
!373 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1}
!374 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 301057}
!375 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 221431}
!376 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 1166764}
!377 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 1750641}
!378 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 3642236}
!379 = !{ptr @sort_scc, ptr @VEC_tree_base_address, i64 27158}
!380 = !{ptr @sort_scc, ptr @VEC_tree_base_length, i64 27158}
!381 = !{ptr @sort_scc, ptr @spec_qsort, i64 27158}
!382 = !{ptr @process_scc, ptr @VEC_tree_base_length, i64 999239}
!383 = !{ptr @process_scc, ptr @VEC_tree_base_index, i64 972080}
!384 = !{ptr @process_scc, ptr @VN_INFO, i64 2333875}
!385 = !{ptr @process_scc, ptr @visit_use, i64 2259153}
!386 = !{ptr @process_scc, ptr @htab_empty, i64 246279}
!387 = !{ptr @process_scc, ptr @obstack_free, i64 82092}
!388 = !{ptr @process_scc, ptr @_obstack_begin, i64 82093}
!389 = !{ptr @process_scc, ptr @empty_alloc_pool, i64 164186}
!390 = !{ptr @process_scc, ptr @VEC_tree_base_iterate, i64 2887776}
!391 = !{ptr @process_scc, ptr @statistics_histogram_event, i64 27159}
!392 = !{ptr @process_scc, ptr @htab_traverse, i64 81477}
!393 = !{ptr @compare_ops, ptr @gimple_nop_p, i64 5647350}
!394 = !{ptr @compare_ops, ptr @gimple_bb, i64 5647346}
!395 = !{ptr @compare_ops, ptr @gimple_code, i64 1341792}
!396 = !{ptr @compare_ops, ptr @gimple_uid, i64 1123676}
!397 = !{ptr @visit_use, ptr @VN_INFO, i64 4888367}
!398 = !{ptr @visit_use, ptr @fancy_abort, i64 1}
!399 = !{ptr @visit_use, ptr @set_ssa_val_to, i64 48981}
!400 = !{ptr @visit_use, ptr @gimple_code, i64 2220707}
!401 = !{ptr @visit_use, ptr @visit_phi, i64 427578}
!402 = !{ptr @visit_use, ptr @gimple_has_lhs, i64 1793129}
!403 = !{ptr @visit_use, ptr @gimple_has_volatile_ops, i64 1670162}
!404 = !{ptr @visit_use, ptr @stmt_could_throw_p, i64 1670124}
!405 = !{ptr @visit_use, ptr @defs_to_varying, i64 301065}
!406 = !{ptr @visit_use, ptr @is_gimple_assign, i64 1670123}
!407 = !{ptr @visit_use, ptr @gimple_assign_lhs, i64 1479288}
!408 = !{ptr @visit_use, ptr @gimple_assign_copy_p, i64 3895346}
!409 = !{ptr @visit_use, ptr @gimple_assign_rhs1, i64 2420214}
!410 = !{ptr @visit_use, ptr @visit_copy, i64 39343}
!411 = !{ptr @visit_use, ptr @try_to_simplify, i64 1444271}
!412 = !{ptr @visit_use, ptr @fwrite, i64 2}
!413 = !{ptr @visit_use, ptr @print_gimple_expr, i64 1}
!414 = !{ptr @visit_use, ptr @print_generic_expr, i64 1}
!415 = !{ptr @visit_use, ptr @is_gimple_min_invariant, i64 56018}
!416 = !{ptr @visit_use, ptr @expr_has_constants, i64 13703}
!417 = !{ptr @visit_use, ptr @unshare_expr, i64 13703}
!418 = !{ptr @visit_use, ptr @stmt_has_constants, i64 1606589}
!419 = !{ptr @visit_use, ptr @gimple_assign_single_p, i64 1429461}
!420 = !{ptr @visit_use, ptr @visit_reference_op_store, i64 221432}
!421 = !{ptr @visit_use, ptr @gimple_assign_rhs_code, i64 3954734}
!422 = !{ptr @visit_use, ptr @get_gimple_rhs_class, i64 1207980}
!423 = !{ptr @visit_use, ptr @visit_unary_op, i64 163281}
!424 = !{ptr @visit_use, ptr @visit_binary_op, i64 286693}
!425 = !{ptr @visit_use, ptr @visit_reference_op_load, i64 758003}
!426 = !{ptr @visit_use, ptr @is_gimple_call, i64 190835}
!427 = !{ptr @visit_use, ptr @gimple_call_lhs, i64 190834}
!428 = !{ptr @visit_use, ptr @gimple_call_flags, i64 190658}
!429 = !{ptr @visit_use, ptr @visit_reference_op_call, i64 12782}
!430 = !{ptr @copy_nary, ptr @_obstack_newchunk, i64 419}
!431 = !{ptr @copy_nary, ptr @htab_find_slot_with_hash, i64 73121}
!432 = !{ptr @copy_nary, ptr @fancy_abort, i64 1}
!433 = !{ptr @copy_phis, ptr @pool_alloc, i64 104956}
!434 = !{ptr @copy_phis, ptr @htab_find_slot_with_hash, i64 104956}
!435 = !{ptr @copy_references, ptr @pool_alloc, i64 157387}
!436 = !{ptr @copy_references, ptr @htab_find_slot_with_hash, i64 157387}
!437 = !{ptr @copy_references, ptr @free_reference, i64 1}
!438 = !{ptr @set_ssa_val_to, ptr @is_gimple_min_invariant, i64 26460}
!439 = !{ptr @set_ssa_val_to, ptr @fancy_abort, i64 2}
!440 = !{ptr @set_ssa_val_to, ptr @VN_INFO, i64 3891748}
!441 = !{ptr @set_ssa_val_to, ptr @operand_equal_p, i64 1454712}
!442 = !{ptr @visit_phi, ptr @gimple_phi_result_ptr, i64 427578}
!443 = !{ptr @visit_phi, ptr @get_def_from_ptr, i64 2136803}
!444 = !{ptr @visit_phi, ptr @gimple_phi_num_args, i64 4799496}
!445 = !{ptr @visit_phi, ptr @set_ssa_val_to, i64 427215}
!446 = !{ptr @visit_phi, ptr @gimple_phi_arg_imm_use_ptr, i64 4436819}
!447 = !{ptr @visit_phi, ptr @get_use_from_ptr, i64 4436819}
!448 = !{ptr @visit_phi, ptr @VN_INFO, i64 4873112}
!449 = !{ptr @visit_phi, ptr @expressions_equal_p, i64 2076790}
!450 = !{ptr @visit_phi, ptr @is_gimple_min_invariant, i64 6}
!451 = !{ptr @visit_phi, ptr @visit_copy, i64 363}
!452 = !{ptr @visit_phi, ptr @vn_phi_lookup, i64 427571}
!453 = !{ptr @visit_phi, ptr @vn_phi_insert, i64 427212}
!454 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 1793130}
!455 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 313802}
!456 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 313801}
!457 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 1670164}
!458 = !{ptr @defs_to_varying, ptr @op_iter_init_def, i64 301057}
!459 = !{ptr @defs_to_varying, ptr @op_iter_done, i64 779993}
!460 = !{ptr @defs_to_varying, ptr @get_def_from_ptr, i64 478936}
!461 = !{ptr @defs_to_varying, ptr @VN_INFO, i64 478936}
!462 = !{ptr @defs_to_varying, ptr @set_ssa_val_to, i64 478936}
!463 = !{ptr @defs_to_varying, ptr @op_iter_next_def, i64 478936}
!464 = !{ptr @visit_copy, ptr @VN_INFO, i64 543135}
!465 = !{ptr @visit_copy, ptr @set_ssa_val_to, i64 101943}
!466 = !{ptr @try_to_simplify, ptr @gimple_assign_copy_p, i64 1444276}
!467 = !{ptr @try_to_simplify, ptr @gimple_assign_rhs1, i64 2930459}
!468 = !{ptr @try_to_simplify, ptr @gimple_assign_rhs_code, i64 1294341}
!469 = !{ptr @try_to_simplify, ptr @get_symbol_constant_value, i64 109674}
!470 = !{ptr @try_to_simplify, ptr @fold_const_aggregate_ref, i64 650125}
!471 = !{ptr @try_to_simplify, ptr @simplify_unary_expression, i64 146066}
!472 = !{ptr @try_to_simplify, ptr @simplify_binary_expression, i64 292824}
!473 = !{ptr @expr_has_constants, ptr @is_gimple_min_invariant, i64 23168}
!474 = !{ptr @stmt_has_constants, ptr @gimple_code, i64 1606596}
!475 = !{ptr @stmt_has_constants, ptr @gimple_assign_rhs_code, i64 1415760}
!476 = !{ptr @stmt_has_constants, ptr @get_gimple_rhs_class, i64 1415760}
!477 = !{ptr @stmt_has_constants, ptr @gimple_assign_rhs1, i64 1415760}
!478 = !{ptr @stmt_has_constants, ptr @is_gimple_min_invariant, i64 1683151}
!479 = !{ptr @stmt_has_constants, ptr @gimple_assign_rhs2, i64 267391}
!480 = !{ptr @stmt_has_constants, ptr @fancy_abort, i64 1}
!481 = !{ptr @visit_reference_op_store, ptr @gimple_vuse, i64 221833}
!482 = !{ptr @visit_reference_op_store, ptr @vn_reference_lookup, i64 221431}
!483 = !{ptr @visit_reference_op_store, ptr @VN_INFO, i64 260742}
!484 = !{ptr @visit_reference_op_store, ptr @expressions_equal_p, i64 20822}
!485 = !{ptr @visit_reference_op_store, ptr @fwrite, i64 3}
!486 = !{ptr @visit_reference_op_store, ptr @print_generic_expr, i64 2}
!487 = !{ptr @visit_reference_op_store, ptr @fputc, i64 1}
!488 = !{ptr @visit_reference_op_store, ptr @gimple_vdef, i64 221431}
!489 = !{ptr @visit_reference_op_store, ptr @set_ssa_val_to, i64 221430}
!490 = !{ptr @visit_reference_op_store, ptr @is_gimple_min_invariant, i64 221029}
!491 = !{ptr @visit_reference_op_store, ptr @is_gimple_reg, i64 151462}
!492 = !{ptr @visit_reference_op_store, ptr @vn_reference_insert, i64 219285}
!493 = !{ptr @visit_unary_op, ptr @vn_nary_op_lookup_stmt, i64 163280}
!494 = !{ptr @visit_unary_op, ptr @set_ssa_val_to, i64 163280}
!495 = !{ptr @visit_unary_op, ptr @vn_nary_op_insert_stmt, i64 139411}
!496 = !{ptr @visit_binary_op, ptr @vn_nary_op_lookup_stmt, i64 286695}
!497 = !{ptr @visit_binary_op, ptr @set_ssa_val_to, i64 286695}
!498 = !{ptr @visit_binary_op, ptr @vn_nary_op_insert_stmt, i64 255689}
!499 = !{ptr @visit_reference_op_load, ptr @gimple_vuse, i64 758015}
!500 = !{ptr @visit_reference_op_load, ptr @vn_reference_lookup, i64 758015}
!501 = !{ptr @visit_reference_op_load, ptr @useless_type_conversion_p, i64 137610}
!502 = !{ptr @visit_reference_op_load, ptr @fold_build1_stat_loc, i64 3648}
!503 = !{ptr @visit_reference_op_load, ptr @vn_get_expr_for, i64 3647}
!504 = !{ptr @visit_reference_op_load, ptr @valueize_expr, i64 3647}
!505 = !{ptr @visit_reference_op_load, ptr @fold_unary_ignore_overflow_loc, i64 5}
!506 = !{ptr @visit_reference_op_load, ptr @is_gimple_min_invariant, i64 3648}
!507 = !{ptr @visit_reference_op_load, ptr @vn_nary_op_lookup, i64 3644}
!508 = !{ptr @visit_reference_op_load, ptr @make_ssa_name, i64 1283}
!509 = !{ptr @visit_reference_op_load, ptr @VN_INFO_GET, i64 1283}
!510 = !{ptr @visit_reference_op_load, ptr @get_next_value_id, i64 1283}
!511 = !{ptr @visit_reference_op_load, ptr @VN_INFO, i64 145592}
!512 = !{ptr @visit_reference_op_load, ptr @expr_has_constants, i64 1283}
!513 = !{ptr @visit_reference_op_load, ptr @vn_nary_op_insert, i64 1283}
!514 = !{ptr @visit_reference_op_load, ptr @set_ssa_val_to, i64 758014}
!515 = !{ptr @visit_reference_op_load, ptr @vn_reference_insert, i64 620404}
!516 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 504636}
!517 = !{ptr @visit_reference_op_call, ptr @gimple_vuse, i64 12781}
!518 = !{ptr @visit_reference_op_call, ptr @VN_INFO, i64 12886}
!519 = !{ptr @visit_reference_op_call, ptr @valueize_shared_reference_ops_from_call, i64 12781}
!520 = !{ptr @visit_reference_op_call, ptr @gimple_expr_type, i64 12781}
!521 = !{ptr @visit_reference_op_call, ptr @vn_reference_compute_hash, i64 12781}
!522 = !{ptr @visit_reference_op_call, ptr @vn_reference_lookup_1, i64 12781}
!523 = !{ptr @visit_reference_op_call, ptr @set_ssa_val_to, i64 12781}
!524 = !{ptr @visit_reference_op_call, ptr @pool_alloc, i64 12001}
!525 = !{ptr @visit_reference_op_call, ptr @create_reference_ops_from_call, i64 12001}
!526 = !{ptr @visit_reference_op_call, ptr @valueize_refs, i64 12001}
!527 = !{ptr @visit_reference_op_call, ptr @htab_find_slot_with_hash, i64 12001}
!528 = !{ptr @visit_reference_op_call, ptr @free_reference, i64 1}
!529 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 3482395}
!530 = !{ptr @vn_phi_lookup, ptr @VEC_tree_base_truncate, i64 352046}
!531 = !{ptr @vn_phi_lookup, ptr @gimple_phi_num_args, i64 1355845}
!532 = !{ptr @vn_phi_lookup, ptr @gimple_phi_arg_imm_use_ptr, i64 1003799}
!533 = !{ptr @vn_phi_lookup, ptr @get_use_from_ptr, i64 1003799}
!534 = !{ptr @vn_phi_lookup, ptr @VN_INFO, i64 876409}
!535 = !{ptr @vn_phi_lookup, ptr @VEC_tree_heap_safe_push, i64 1003799}
!536 = !{ptr @vn_phi_lookup, ptr @gimple_bb, i64 352046}
!537 = !{ptr @vn_phi_lookup, ptr @vn_phi_compute_hash, i64 352046}
!538 = !{ptr @vn_phi_lookup, ptr @htab_find_slot_with_hash, i64 626414}
!539 = !{ptr @vn_phi_insert, ptr @pool_alloc, i64 351751}
!540 = !{ptr @vn_phi_insert, ptr @gimple_phi_num_args, i64 1354812}
!541 = !{ptr @vn_phi_insert, ptr @gimple_phi_arg_imm_use_ptr, i64 1003061}
!542 = !{ptr @vn_phi_insert, ptr @get_use_from_ptr, i64 1003061}
!543 = !{ptr @vn_phi_insert, ptr @VN_INFO, i64 1227454}
!544 = !{ptr @vn_phi_insert, ptr @VEC_tree_heap_safe_push, i64 1003061}
!545 = !{ptr @vn_phi_insert, ptr @gimple_bb, i64 351751}
!546 = !{ptr @vn_phi_insert, ptr @vn_phi_compute_hash, i64 351751}
!547 = !{ptr @vn_phi_insert, ptr @htab_find_slot_with_hash, i64 351751}
!548 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!549 = !{ptr @vn_phi_compute_hash, ptr @VEC_tree_base_index, i64 703797}
!550 = !{ptr @vn_phi_compute_hash, ptr @VEC_tree_base_iterate, i64 2710659}
!551 = !{ptr @vn_phi_compute_hash, ptr @iterative_hash_expr, i64 2006847}
!552 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 301057}
!553 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 301057}
!554 = !{ptr @simplify_unary_expression, ptr @gimple_assign_rhs1, i64 146063}
!555 = !{ptr @simplify_unary_expression, ptr @gimple_assign_rhs_code, i64 489441}
!556 = !{ptr @simplify_unary_expression, ptr @VN_INFO, i64 145533}
!557 = !{ptr @simplify_unary_expression, ptr @vn_get_expr_for, i64 142341}
!558 = !{ptr @simplify_unary_expression, ptr @valueize_expr, i64 142341}
!559 = !{ptr @simplify_unary_expression, ptr @gimple_assign_cast_p, i64 135375}
!560 = !{ptr @simplify_unary_expression, ptr @is_gimple_min_invariant, i64 132}
!561 = !{ptr @simplify_unary_expression, ptr @gimple_expr_type, i64 41673}
!562 = !{ptr @simplify_unary_expression, ptr @fold_unary_ignore_overflow_loc, i64 41673}
!563 = !{ptr @simplify_unary_expression, ptr @tree_ssa_strip_useless_type_conversions, i64 8268}
!564 = !{ptr @simplify_unary_expression, ptr @valid_gimple_rhs_p, i64 8268}
!565 = !{ptr @simplify_binary_expression, ptr @gimple_assign_rhs1, i64 585646}
!566 = !{ptr @simplify_binary_expression, ptr @gimple_assign_rhs2, i64 512124}
!567 = !{ptr @simplify_binary_expression, ptr @VN_INFO, i64 968044}
!568 = !{ptr @simplify_binary_expression, ptr @gimple_assign_rhs_code, i64 353692}
!569 = !{ptr @simplify_binary_expression, ptr @vn_get_expr_for, i64 108497}
!570 = !{ptr @simplify_binary_expression, ptr @valueize_expr, i64 108497}
!571 = !{ptr @simplify_binary_expression, ptr @fold_defer_overflow_warnings, i64 111659}
!572 = !{ptr @simplify_binary_expression, ptr @gimple_expr_type, i64 111659}
!573 = !{ptr @simplify_binary_expression, ptr @fold_binary_loc, i64 111659}
!574 = !{ptr @simplify_binary_expression, ptr @tree_ssa_strip_useless_type_conversions, i64 29432}
!575 = !{ptr @simplify_binary_expression, ptr @valid_gimple_rhs_p, i64 58864}
!576 = !{ptr @simplify_binary_expression, ptr @fold_undefer_overflow_warnings, i64 111659}
!577 = !{ptr @valueize_expr, ptr @VN_INFO, i64 204822}
!578 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 135377}
!579 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 135376}
!580 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 1283}
!581 = !{ptr @valueize_shared_reference_ops_from_call, ptr @VEC_vn_reference_op_s_base_truncate, i64 12780}
!582 = !{ptr @valueize_shared_reference_ops_from_call, ptr @copy_reference_ops_from_call, i64 12780}
!583 = !{ptr @valueize_shared_reference_ops_from_call, ptr @valueize_refs, i64 12780}
!584 = !{ptr @create_reference_ops_from_call, ptr @copy_reference_ops_from_call, i64 12002}
!585 = !{ptr @VEC_ssa_op_iter_heap_reserve, ptr @VEC_ssa_op_iter_base_space, i64 870473}
!586 = !{ptr @VEC_ssa_op_iter_heap_reserve, ptr @vec_heap_o_reserve, i64 111889}
!587 = !{ptr @first_htab_element, ptr @htab_size, i64 39912}
!588 = !{ptr @vn_nary_may_trap, ptr @operation_could_trap_helper_p, i64 223306}
!589 = !{ptr @vn_nary_may_trap, ptr @tree_could_trap_p, i64 385504}
!590 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!591 = !{!"function_entry_count", i64 107202223}
!592 = !{!593, !593, i64 0}
!593 = !{!"omnipotent char", !594, i64 0}
!594 = !{!"Simple C/C++ TBAA"}
!595 = !{!"branch_weights", i32 1, i32 107202224}
!596 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_index"}
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !593, i64 0}
!599 = !{!"function_entry_count", i64 1708752}
!600 = !{!601, !602, i64 40}
!601 = !{!"obstack", !602, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !602, i64 40, !603, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !603, i64 80, !603, i64 80, !603, i64 80}
!602 = !{!"long", !593, i64 0}
!603 = !{!"int", !593, i64 0}
!604 = !{!601, !598, i64 32}
!605 = !{!601, !598, i64 24}
!606 = !{!"branch_weights", i32 9695, i32 1699059}
!607 = !{!601, !598, i64 16}
!608 = !{!"branch_weights", i32 1, i32 1708753}
!609 = !{!601, !603, i64 48}
!610 = !{!601, !598, i64 8}
!611 = !{!"branch_weights", i32 1577188, i32 131566}
!612 = !{!"function_entry_count", i64 1866925}
!613 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_length"}
!614 = !{!"branch_weights", i32 1, i32 1866926}
!615 = !{!616, !603, i64 0}
!616 = !{!"VEC_vn_ssa_aux_t_base", !603, i64 0, !603, i64 4, !593, i64 8}
!617 = !{!"function_entry_count", i64 144869}
!618 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_safe_grow"}
!619 = !{!"branch_weights", i32 1, i32 144870}
!620 = !{}
!621 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_replace"}
!622 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_reserve_exact"}
!623 = !{i32 0, i32 2}
!624 = !{!"branch_weights", i32 131566, i32 13305}
!625 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_space"}
!626 = !{!616, !603, i64 4}
!627 = !{!"function_entry_count", i64 257351}
!628 = !{!629, !598, i64 0}
!629 = !{!"vn_ssa_aux", !598, i64 0, !598, i64 8, !603, i64 16, !603, i64 20, !603, i64 24, !603, i64 28, !603, i64 28, !603, i64 28, !603, i64 28, !603, i64 28}
!630 = !{!"branch_weights", i32 1, i32 257352}
!631 = !{!"branch_weights", i32 245554, i32 11799}
!632 = !{!"branch_weights", i32 245554, i32 1}
!633 = !{!629, !598, i64 8}
!634 = !{!"branch_weights", i32 198180, i32 47375}
!635 = !{i8 0, i8 2}
!636 = !{!"branch_weights", i32 193093, i32 5088}
!637 = !{i32 0, i32 256}
!638 = !{!"branch_weights", i32 1, i32 193093}
!639 = !{!"branch_weights", i32 17098, i32 175996}
!640 = !{i32 0, i32 65536}
!641 = !{!603, !603, i64 0}
!642 = !{!"branch_weights", i32 22504, i32 85872, i32 8152, i32 59471}
!643 = !{!"branch_weights", i32 1, i32 85872}
!644 = !{!"branch_weights", i32 54989, i32 2147428659}
!645 = !{!"function_entry_count", i64 10066495}
!646 = !{!"tree-ssa-sccvn.c:gimple_nop_p"}
!647 = !{!"function_entry_count", i64 99318718}
!648 = !{!"tree-ssa-sccvn.c:gimple_code"}
!649 = !{!"function_entry_count", i64 3791726}
!650 = !{!"tree-ssa-sccvn.c:is_gimple_assign"}
!651 = !{!"function_entry_count", i64 10094666}
!652 = !{!"tree-ssa-sccvn.c:gimple_assign_rhs_code"}
!653 = !{!"branch_weights", i32 5843271, i32 4251397}
!654 = !{!"function_entry_count", i64 13741576}
!655 = !{!"tree-ssa-sccvn.c:gimple_assign_rhs1"}
!656 = !{!"function_entry_count", i64 1078810}
!657 = !{!"tree-ssa-sccvn.c:gimple_expr_type"}
!658 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 1}
!659 = !{!"branch_weights", i32 140488, i32 925543}
!660 = !{!"function_entry_count", i64 838986}
!661 = !{!"tree-ssa-sccvn.c:gimple_assign_rhs2"}
!662 = !{!"branch_weights", i32 838987, i32 1}
!663 = !{!"tree-ssa-sccvn.c:gimple_expr_code"}
!664 = !{!"branch_weights", i32 1, i32 40378668, i32 2, i32 1}
!665 = !{!"function_entry_count", i64 12718416}
!666 = !{!"tree-ssa-sccvn.c:get_gimple_rhs_class"}
!667 = !{!"function_entry_count", i64 18585592}
!668 = !{!"tree-ssa-sccvn.c:gimple_op"}
!669 = !{!"branch_weights", i32 1, i32 18585593}
!670 = !{!"function_entry_count", i64 20053413}
!671 = !{!"tree-ssa-sccvn.c:gimple_has_ops"}
!672 = !{!"tree-ssa-sccvn.c:gimple_ops"}
!673 = !{!602, !602, i64 0}
!674 = !{!"tree-ssa-sccvn.c:gimple_statement_structure"}
!675 = !{!"tree-ssa-sccvn.c:gss_for_code"}
!676 = !{!"function_entry_count", i64 48269}
!677 = !{!"tree-ssa-sccvn.c:gimple_call_return_type"}
!678 = !{!"function_entry_count", i64 488178}
!679 = !{!"tree-ssa-sccvn.c:gimple_call_fn"}
!680 = !{!"function_entry_count", i64 1779004}
!681 = !{!"tree-ssa-sccvn.c:gimple_num_ops"}
!682 = !{!"function_entry_count", i64 180382}
!683 = !{!684, !603, i64 4}
!684 = !{!"vn_constant_s", !603, i64 0, !603, i64 4, !598, i64 8}
!685 = !{!684, !598, i64 8}
!686 = !{!"branch_weights", i32 1, i32 180383}
!687 = !{!684, !603, i64 0}
!688 = !{!"function_entry_count", i64 305893}
!689 = !{!"tree-ssa-sccvn.c:vn_hash_constant_with_type"}
!690 = !{!"branch_weights", i32 -2007768478, i32 0}
!691 = !{!"function_entry_count", i64 125511}
!692 = !{!"branch_weights", i32 29659, i32 95854}
!693 = !{!"function_entry_count", i64 1816219}
!694 = !{!"function_entry_count", i64 69797801}
!695 = !{!"function_entry_count", i64 3277470}
!696 = !{!697, !598, i64 32}
!697 = !{!"vn_reference_s", !603, i64 0, !603, i64 4, !598, i64 8, !603, i64 16, !598, i64 24, !598, i64 32, !598, i64 40}
!698 = !{!"branch_weights", i32 1, i32 3277470}
!699 = !{!"branch_weights", i32 3277470, i32 6789296}
!700 = distinct !{!700, !701}
!701 = !{!"llvm.loop.mustprogress"}
!702 = !{!697, !598, i64 8}
!703 = !{!"branch_weights", i32 2125, i32 3275347}
!704 = !{!"function_entry_count", i64 33343074}
!705 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_iterate"}
!706 = !{!"branch_weights", i32 1, i32 33343075}
!707 = !{!708, !603, i64 0}
!708 = !{!"VEC_vn_reference_op_s_base", !603, i64 0, !603, i64 4, !593, i64 8}
!709 = !{!"branch_weights", i32 25059122, i32 8283954}
!710 = !{!"function_entry_count", i64 10066765}
!711 = !{!"tree-ssa-sccvn.c:vn_reference_op_compute_hash"}
!712 = !{!713, !603, i64 0}
!713 = !{!"vn_reference_op_struct", !603, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32}
!714 = !{!713, !598, i64 16}
!715 = !{!"branch_weights", i32 2279776, i32 7786991}
!716 = !{!713, !598, i64 24}
!717 = !{!"branch_weights", i32 9146116, i32 920651}
!718 = !{!713, !598, i64 32}
!719 = !{!"branch_weights", i32 9193623, i32 873144}
!720 = !{!"function_entry_count", i64 9564793}
!721 = !{!697, !603, i64 4}
!722 = !{!"branch_weights", i32 3934666, i32 5630129}
!723 = !{!"branch_weights", i32 3934666, i32 1}
!724 = !{!"branch_weights", i32 3177204, i32 757463}
!725 = !{!"branch_weights", i32 757463, i32 1}
!726 = !{!"branch_weights", i32 1, i32 757462}
!727 = !{!"branch_weights", i32 757462, i32 1406407}
!728 = distinct !{!728, !701}
!729 = !{!"branch_weights", i32 1, i32 2163869}
!730 = !{!"function_entry_count", i64 3024867}
!731 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_length"}
!732 = !{!"branch_weights", i32 1, i32 3024868}
!733 = !{!"function_entry_count", i64 2165212}
!734 = !{!"tree-ssa-sccvn.c:vn_reference_op_eq"}
!735 = !{!"branch_weights", i32 2165213, i32 1}
!736 = !{!713, !598, i64 8}
!737 = !{!"branch_weights", i32 1, i32 2165213}
!738 = !{!"branch_weights", i32 44, i32 2165170}
!739 = !{!"branch_weights", i32 1, i32 2165170}
!740 = !{!"function_entry_count", i64 3157095}
!741 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_index"}
!742 = !{!"function_entry_count", i64 12505115}
!743 = !{!"branch_weights", i32 12053840, i32 451277}
!744 = !{!"branch_weights", i32 -1112921504, i32 14102}
!745 = !{!"branch_weights", i32 406474, i32 44804}
!746 = !{!"branch_weights", i32 330560, i32 75915}
!747 = !{!"function_entry_count", i64 2488990}
!748 = !{!"branch_weights", i32 1, i32 2488991}
!749 = !{!"branch_weights", i32 1, i32 1, i32 1747814, i32 1, i32 32284, i32 2737410, i32 1, i32 666246, i32 590, i32 11485, i32 1, i32 1, i32 1, i32 1, i32 677976, i32 2965, i32 1, i32 217, i32 1792567, i32 3197, i32 1, i32 1, i32 1}
!750 = !{!"branch_weights", i32 -2017656442, i32 -799078352}
!751 = !{!"branch_weights", i32 346327, i32 733481}
!752 = !{!"branch_weights", i32 1, i32 346327}
!753 = !{!"branch_weights", i32 1, i32 3197}
!754 = !{!"branch_weights", i32 5183751, i32 2488991}
!755 = !{!"branch_weights", i32 3197, i32 2485795}
!756 = !{!"branch_weights", i32 548, i32 2147483100}
!757 = distinct !{!757, !701}
!758 = !{!"function_entry_count", i64 7708228}
!759 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_safe_push"}
!760 = !{!"function_entry_count", i64 7708246}
!761 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_reserve"}
!762 = !{!"branch_weights", i32 1013208, i32 6695040}
!763 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_quick_push"}
!764 = !{!"branch_weights", i32 1, i32 7708229}
!765 = !{i64 0, i64 4, !641, i64 8, i64 8, !597, i64 16, i64 8, !597, i64 24, i64 8, !597, i64 32, i64 8, !597}
!766 = !{!"function_entry_count", i64 8208915}
!767 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_space"}
!768 = !{!"branch_weights", i32 878228, i32 7330689}
!769 = !{!708, !603, i64 4}
!770 = !{!"function_entry_count", i64 984701}
!771 = !{!"branch_weights", i32 -1657963796, i32 -591202091, i32 107112695}
!772 = !{!"branch_weights", i32 1, i32 565629}
!773 = !{!"branch_weights", i32 1, i32 402717}
!774 = !{!"branch_weights", i32 116, i32 402602}
!775 = !{!"branch_weights", i32 7233, i32 2147476415}
!776 = !{!"branch_weights", i32 1, i32 582101}
!777 = !{!"branch_weights", i32 1, i32 959531}
!778 = !{!"branch_weights", i32 25180, i32 1, i32 1, i32 1, i32 599060, i32 1, i32 369803, i32 1092, i32 1, i32 588639, i32 16358, i32 890183, i32 1, i32 239690, i32 1}
!779 = !{!"branch_weights", i32 1, i32 890183}
!780 = !{!"branch_weights", i32 890183, i32 1}
!781 = !{!"branch_weights", i32 67384, i32 172307}
!782 = !{!"branch_weights", i32 1, i32 172307}
!783 = !{!"branch_weights", i32 959531, i32 1770458}
!784 = distinct !{!784, !701}
!785 = !{!"branch_weights", i32 0, i32 -2147483648}
!786 = !{!787, !598, i64 0}
!787 = !{!"ao_ref_s", !598, i64 0, !598, i64 8, !602, i64 16, !602, i64 24, !602, i64 32, !603, i64 40, !603, i64 44}
!788 = !{!787, !598, i64 8}
!789 = !{!787, !602, i64 16}
!790 = !{!787, !602, i64 24}
!791 = !{!787, !602, i64 32}
!792 = !{!787, !603, i64 40}
!793 = !{!787, !603, i64 44}
!794 = !{!"function_entry_count", i64 35488}
!795 = !{!"branch_weights", i32 1, i32 35488}
!796 = !{!"branch_weights", i32 23966, i32 35488}
!797 = distinct !{!797, !701}
!798 = !{!"tree-ssa-sccvn.c:gimple_call_chain"}
!799 = !{!"function_entry_count", i64 94941}
!800 = !{!"tree-ssa-sccvn.c:gimple_call_num_args"}
!801 = !{!"function_entry_count", i64 107206}
!802 = !{!"tree-ssa-sccvn.c:gimple_call_arg"}
!803 = !{!"function_entry_count", i64 1736}
!804 = !{!"branch_weights", i32 18, i32 1720}
!805 = !{!"branch_weights", i32 18, i32 1}
!806 = !{!"branch_weights", i32 21394, i32 689724, i32 1247608}
!807 = !{!"branch_weights", i32 19, i32 1}
!808 = !{!"branch_weights", i32 1, i32 151}
!809 = !{!"branch_weights", i32 151, i32 1}
!810 = distinct !{!810, !701}
!811 = !{!"function_entry_count", i64 4503}
!812 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_replace"}
!813 = !{!"branch_weights", i32 1, i32 4504}
!814 = !{!"function_entry_count", i64 611}
!815 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_ordered_remove"}
!816 = !{!"function_entry_count", i64 18}
!817 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_safe_insert"}
!818 = !{!"function_entry_count", i64 1364111}
!819 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_free"}
!820 = !{!"branch_weights", i32 158890, i32 1205223}
!821 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_quick_insert"}
!822 = !{!"branch_weights", i32 1, i32 19}
!823 = !{!"function_entry_count", i64 500352}
!824 = !{!"branch_weights", i32 1, i32 500353}
!825 = !{!"branch_weights", i32 824, i32 499530}
!826 = !{!697, !598, i64 24}
!827 = !{!697, !603, i64 16}
!828 = !{!"branch_weights", i32 -1561435674, i32 1089056440}
!829 = !{!"branch_weights", i32 10499, i32 347307}
!830 = !{!"branch_weights", i32 357805, i32 1}
!831 = !{!"branch_weights", i32 336934, i32 163420}
!832 = !{!697, !598, i64 40}
!833 = !{!"function_entry_count", i64 2099761}
!834 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_truncate"}
!835 = !{!"branch_weights", i32 11808, i32 2087955}
!836 = !{!"function_entry_count", i64 500669}
!837 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_safe_grow"}
!838 = !{!"branch_weights", i32 1, i32 500670}
!839 = !{!"function_entry_count", i64 1000704}
!840 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_base_address"}
!841 = !{!"branch_weights", i32 1, i32 1000705}
!842 = !{!"function_entry_count", i64 3288351}
!843 = !{!"tree-ssa-sccvn.c:valueize_refs"}
!844 = !{!"branch_weights", i32 1, i32 3288351}
!845 = !{!"branch_weights", i32 2335391, i32 7761451}
!846 = !{!"branch_weights", i32 2280626, i32 5480826}
!847 = !{!"branch_weights", i32 250488, i32 5230339}
!848 = !{!"branch_weights", i32 2582992, i32 2887}
!849 = !{!"branch_weights", i32 2086, i32 802}
!850 = !{!"branch_weights", i32 172622, i32 2413257}
!851 = !{!"branch_weights", i32 1242, i32 2412016}
!852 = !{!"branch_weights", i32 1228, i32 15}
!853 = !{!"branch_weights", i32 9175981, i32 919634}
!854 = !{!"branch_weights", i32 1, i32 919634}
!855 = !{!"branch_weights", i32 9223440, i32 872175}
!856 = !{!"branch_weights", i32 1, i32 872175}
!857 = !{!"branch_weights", i32 3288351, i32 6808490}
!858 = distinct !{!858, !701}
!859 = !{!"function_entry_count", i64 734832}
!860 = !{!"tree-ssa-sccvn.c:vn_reference_lookup_1"}
!861 = !{!862, !598, i64 16}
!862 = !{!"vn_tables_s", !598, i64 0, !598, i64 8, !598, i64 16, !601, i64 24, !598, i64 112, !598, i64 120}
!863 = !{!"branch_weights", i32 570975, i32 163859}
!864 = !{!"branch_weights", i32 144854, i32 426122}
!865 = !{!"branch_weights", i32 2145571196, i32 1912452}
!866 = !{!"branch_weights", i32 21601, i32 142388}
!867 = !{!"function_entry_count", i64 2958122}
!868 = !{!"tree-ssa-sccvn.c:vn_reference_lookup_2"}
!869 = !{!"branch_weights", i32 1641872, i32 1316252}
!870 = !{!"branch_weights", i32 1, i32 2958123}
!871 = !{!"branch_weights", i32 2366753, i32 591371}
!872 = !{!"branch_weights", i32 680277, i32 1686477}
!873 = !{!"branch_weights", i32 2140838630, i32 6645018}
!874 = !{!"function_entry_count", i64 452170}
!875 = !{!"tree-ssa-sccvn.c:vn_reference_lookup_3"}
!876 = !{!"branch_weights", i32 8219, i32 443953}
!877 = !{!"branch_weights", i32 596, i32 443358}
!878 = !{!"branch_weights", i32 38937, i32 404422}
!879 = !{!"branch_weights", i32 10892, i32 393531}
!880 = !{!"branch_weights", i32 96109754, i32 -2024473986}
!881 = !{!"branch_weights", i32 1063, i32 14920}
!882 = !{!"branch_weights", i32 2684, i32 12237}
!883 = !{!"branch_weights", i32 1540, i32 10698}
!884 = !{!"branch_weights", i32 1540, i32 1}
!885 = !{!"branch_weights", i32 747, i32 794}
!886 = !{!"branch_weights", i32 1, i32 794}
!887 = !{!"branch_weights", i32 596, i32 441819}
!888 = !{!"branch_weights", i32 402883, i32 38937}
!889 = !{!"branch_weights", i32 1, i32 38937}
!890 = !{!"branch_weights", i32 403183, i32 39232}
!891 = !{!"branch_weights", i32 1007, i32 38226}
!892 = !{!"branch_weights", i32 407, i32 37820}
!893 = !{!"branch_weights", i32 1, i32 37820}
!894 = !{!"branch_weights", i32 37628, i32 193}
!895 = !{!"branch_weights", i32 421, i32 1185}
!896 = !{!"branch_weights", i32 1, i32 1185}
!897 = !{!"branch_weights", i32 21, i32 1165}
!898 = !{!"branch_weights", i32 1809025, i32 1511557}
!899 = !{!"branch_weights", i32 1165, i32 1302}
!900 = distinct !{!900, !701}
!901 = !{!"branch_weights", i32 -2147483648, i32 0}
!902 = !{!"branch_weights", i32 318, i32 805}
!903 = !{!"branch_weights", i32 318, i32 1}
!904 = !{!"branch_weights", i32 313, i32 6}
!905 = !{!"branch_weights", i32 1, i32 1121}
!906 = !{!"branch_weights", i32 1121, i32 522}
!907 = distinct !{!907, !701}
!908 = !{!"branch_weights", i32 1, i32 1122}
!909 = !{!"branch_weights", i32 1122, i32 1}
!910 = !{i64 0, i64 8, !597, i64 8, i64 8, !597, i64 16, i64 8, !673, i64 24, i64 8, !673, i64 32, i64 8, !673, i64 40, i64 4, !641, i64 44, i64 4, !641}
!911 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_reserve_exact"}
!912 = !{!"branch_weights", i32 7, i32 500664}
!913 = !{!"function_entry_count", i64 947993}
!914 = !{!"tree-ssa-sccvn.c:is_gimple_call"}
!915 = !{!"function_entry_count", i64 404421}
!916 = !{!"tree-ssa-sccvn.c:gimple_call_fndecl"}
!917 = !{!"branch_weights", i32 393531, i32 10892}
!918 = !{!"function_entry_count", i64 337700}
!919 = !{!862, !598, i64 120}
!920 = !{!697, !603, i64 0}
!921 = !{!"branch_weights", i32 196, i32 337506}
!922 = !{!"branch_weights", i32 336908, i32 794}
!923 = !{!"branch_weights", i32 337701, i32 1}
!924 = !{!"function_entry_count", i64 793}
!925 = !{!"tree-ssa-sccvn.c:VEC_vn_reference_op_s_heap_copy"}
!926 = !{!927, !603, i64 0}
!927 = !{!"VEC_vn_reference_op_s_heap", !708, i64 0}
!928 = !{!"function_entry_count", i64 0}
!929 = !{!"tree-ssa-sccvn.c:VEC_constructor_elt_base_length"}
!930 = !{!931, !603, i64 0}
!931 = !{!"VEC_constructor_elt_base", !603, i64 0, !603, i64 4, !593, i64 8}
!932 = !{!"function_entry_count", i64 1482060}
!933 = !{!"tree-ssa-sccvn.c:gimple_assign_lhs"}
!934 = !{!"function_entry_count", i64 37819}
!935 = !{!"tree-ssa-sccvn.c:handled_component_p"}
!936 = !{!"branch_weights", i32 37628, i32 1, i32 122, i32 72, i32 1, i32 1, i32 1, i32 1}
!937 = !{!"function_entry_count", i64 1585824}
!938 = !{!"branch_weights", i32 1096430, i32 489396}
!939 = !{!"branch_weights", i32 269, i32 1585557}
!940 = !{!"branch_weights", i32 -659800637, i32 590796358}
!941 = !{!"branch_weights", i32 1364121, i32 6}
!942 = !{!"branch_weights", i32 790950, i32 573177}
!943 = !{!"branch_weights", i32 162520, i32 410658}
!944 = !{!"tree-ssa-sccvn.c:valueize_shared_reference_ops_from_ref"}
!945 = !{!"branch_weights", i32 1, i32 1585825}
!946 = !{!"function_entry_count", i64 839692}
!947 = !{!"branch_weights", i32 770126, i32 69568}
!948 = !{!629, !603, i64 16}
!949 = !{!"branch_weights", i32 165, i32 839529}
!950 = !{!"branch_weights", i32 839693, i32 1}
!951 = !{!"tree-ssa-sccvn.c:create_reference_ops_from_ref"}
!952 = !{!"function_entry_count", i64 1346781}
!953 = !{!"tree-ssa-sccvn.c:free_reference"}
!954 = !{!"function_entry_count", i64 1576848}
!955 = !{!"branch_weights", i32 1, i32 1576848}
!956 = !{!"branch_weights", i32 1829541, i32 789950}
!957 = !{!"branch_weights", i32 1042642, i32 1576848}
!958 = distinct !{!958, !701}
!959 = !{!"branch_weights", i32 1042642, i32 534208}
!960 = !{!"branch_weights", i32 312524, i32 730119}
!961 = !{!"branch_weights", i32 661277, i32 68843}
!962 = distinct !{!962, !701}
!963 = !{!"function_entry_count", i64 4654263}
!964 = !{!965, !603, i64 8}
!965 = !{!"vn_nary_op_s", !603, i64 0, !603, i64 4, !603, i64 6, !603, i64 8, !598, i64 16, !598, i64 24, !593, i64 32}
!966 = !{!"branch_weights", i32 3021522, i32 1632743}
!967 = !{!"branch_weights", i32 3021522, i32 1}
!968 = !{!965, !598, i64 24}
!969 = !{!"branch_weights", i32 23979, i32 2997544}
!970 = !{!"branch_weights", i32 1, i32 2997543}
!971 = !{!"branch_weights", i32 2136215, i32 2997543}
!972 = distinct !{!972, !701}
!973 = !{!"branch_weights", i32 1, i32 5133758}
!974 = !{!"function_entry_count", i64 531488}
!975 = !{!"branch_weights", i32 1, i32 531489}
!976 = !{!862, !598, i64 0}
!977 = !{!"branch_weights", i32 195988, i32 335502}
!978 = !{!"branch_weights", i32 1, i32 195988}
!979 = !{!"branch_weights", i32 2147262329, i32 221319}
!980 = !{!"branch_weights", i32 1, i32 335502}
!981 = !{!965, !598, i64 16}
!982 = !{!"function_entry_count", i64 5079}
!983 = !{!"branch_weights", i32 3646, i32 1435}
!984 = !{!"branch_weights", i32 1, i32 5079}
!985 = !{!"branch_weights", i32 2601, i32 2480}
!986 = !{!"branch_weights", i32 1815, i32 787}
!987 = !{!"branch_weights", i32 588627820, i32 1558855828}
!988 = !{!"branch_weights", i32 2363, i32 1435}
!989 = !{!"function_entry_count", i64 449975}
!990 = !{!"branch_weights", i32 449976, i32 1}
!991 = !{!"branch_weights", i32 1, i32 449975}
!992 = !{!"branch_weights", i32 449975, i32 286696}
!993 = distinct !{!993, !701}
!994 = !{!"branch_weights", i32 -1579665164, i32 6033, i32 6033, i32 6034}
!995 = !{!"branch_weights", i32 395389, i32 54588}
!996 = !{!"branch_weights", i32 224185, i32 171205}
!997 = !{!"branch_weights", i32 2144744027, i32 2739621}
!998 = !{!"branch_weights", i32 54874, i32 1}
!999 = !{!"function_entry_count", i64 193921}
!1000 = !{!862, !602, i64 64}
!1001 = !{!862, !598, i64 56}
!1002 = !{!862, !598, i64 48}
!1003 = !{!"branch_weights", i32 1978, i32 191945}
!1004 = !{!862, !598, i64 40}
!1005 = !{!"branch_weights", i32 1, i32 193922}
!1006 = !{!862, !603, i64 72}
!1007 = !{!862, !598, i64 32}
!1008 = !{!965, !603, i64 0}
!1009 = !{!"branch_weights", i32 610961213, i32 1536522435}
!1010 = !{!"branch_weights", i32 15478, i32 2147468170}
!1011 = !{!"branch_weights", i32 84672, i32 2147398976}
!1012 = !{!"branch_weights", i32 193922, i32 1}
!1013 = !{!"function_entry_count", i64 1283}
!1014 = !{!"branch_weights", i32 8, i32 1277}
!1015 = !{!"branch_weights", i32 1, i32 1284}
!1016 = !{!"branch_weights", i32 1, i32 1283}
!1017 = distinct !{!1017, !701}
!1018 = !{!"branch_weights", i32 1284, i32 1}
!1019 = !{!"function_entry_count", i64 395102}
!1020 = !{!"branch_weights", i32 1519, i32 393585}
!1021 = !{!"branch_weights", i32 1, i32 395103}
!1022 = !{!"branch_weights", i32 1, i32 395102}
!1023 = !{!"branch_weights", i32 255691, i32 395102}
!1024 = distinct !{!1024, !701}
!1025 = !{!"branch_weights", i32 -618666097, i32 9303, i32 9303, i32 9304}
!1026 = !{!"branch_weights", i32 395103, i32 1}
!1027 = !{!"function_entry_count", i64 13304}
!1028 = !{!1029, !598, i64 24}
!1029 = !{!"function", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !603, i64 104, !603, i64 108, !603, i64 112, !603, i64 116, !603, i64 120, !603, i64 124, !598, i64 128, !603, i64 136, !603, i64 137, !603, i64 138, !603, i64 138, !603, i64 138, !603, i64 138, !603, i64 138, !603, i64 138, !603, i64 138, !603, i64 139, !603, i64 139, !603, i64 139, !603, i64 139, !603, i64 139, !603, i64 139, !603, i64 139}
!1030 = !{!1031, !598, i64 16}
!1031 = !{!"gimple_df", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !1032, i64 32, !1032, i64 48, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !603, i64 96, !1033, i64 104}
!1032 = !{!"pt_solution", !603, i64 0, !603, i64 0, !603, i64 0, !603, i64 0, !603, i64 0, !603, i64 0, !598, i64 8}
!1033 = !{!"ssa_operands", !598, i64 0, !603, i64 8, !603, i64 12, !593, i64 16, !598, i64 24, !598, i64 32}
!1034 = !{!"branch_weights", i32 1, i32 13304}
!1035 = !{!"branch_weights", i32 202351, i32 1706550}
!1036 = !{!"branch_weights", i32 1705267, i32 1284}
!1037 = !{!"branch_weights", i32 1895596, i32 13304}
!1038 = distinct !{!1038, !701}
!1039 = !{!"branch_weights", i32 1, i32 13305}
!1040 = !{!"function_entry_count", i64 2009372}
!1041 = !{!"tree-ssa-sccvn.c:VEC_tree_heap_free"}
!1042 = !{!"branch_weights", i32 550085, i32 1459289}
!1043 = !{!"function_entry_count", i64 15036321}
!1044 = !{!"tree-ssa-sccvn.c:VEC_tree_base_length"}
!1045 = !{!"branch_weights", i32 440843, i32 14595480}
!1046 = !{!1047, !603, i64 0}
!1047 = !{!"VEC_tree_base", !603, i64 0, !603, i64 4, !593, i64 8}
!1048 = !{!"function_entry_count", i64 12191725}
!1049 = !{!"tree-ssa-sccvn.c:VEC_tree_base_index"}
!1050 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_free"}
!1051 = !{!"function_entry_count", i64 26608}
!1052 = !{!"tree-ssa-sccvn.c:free_vn_table"}
!1053 = !{!862, !598, i64 8}
!1054 = !{!"branch_weights", i32 1, i32 26609}
!1055 = !{!862, !598, i64 112}
!1056 = !{!"branch_weights", i32 13304, i32 1}
!1057 = !{!"branch_weights", i32 2085, i32 25455}
!1058 = !{!"branch_weights", i32 13304, i32 14235}
!1059 = distinct !{!1059, !701}
!1060 = !{!"branch_weights", i32 319740, i32 1443328}
!1061 = !{!"branch_weights", i32 572855, i32 870474}
!1062 = !{!"branch_weights", i32 526819, i32 46037}
!1063 = !{!"branch_weights", i32 1, i32 526819}
!1064 = !{!"branch_weights", i32 1749763, i32 13304}
!1065 = distinct !{!1065, !701}
!1066 = !{!"branch_weights", i32 319692, i32 1443376}
!1067 = !{!"branch_weights", i32 -12280388, i32 603324658}
!1068 = !{!"branch_weights", i32 176343, i32 1887}
!1069 = distinct !{!1069, !701}
!1070 = !{!"branch_weights", i32 1442061501, i32 705422147}
!1071 = distinct !{!1071, !701}
!1072 = !{!"branch_weights", i32 19812, i32 1}
!1073 = !{!"branch_weights", i32 584229, i32 2719837}
!1074 = !{!"branch_weights", i32 -1236462125, i32 455690201}
!1075 = !{!"branch_weights", i32 176343, i32 176343}
!1076 = !{!"branch_weights", i32 3284253, i32 19812}
!1077 = distinct !{!1077, !701}
!1078 = !{!"branch_weights", i32 13305, i32 1}
!1079 = distinct !{!1079, !701}
!1080 = !{!"tree-ssa-sccvn.c:init_scc_vn"}
!1081 = !{!1029, !598, i64 8}
!1082 = !{!1083, !603, i64 32}
!1083 = !{!"control_flow_graph", !598, i64 0, !598, i64 8, !598, i64 16, !603, i64 24, !603, i64 28, !603, i64 32, !598, i64 40, !603, i64 48, !593, i64 52, !593, i64 60, !603, i64 68, !603, i64 72}
!1084 = !{!1083, !603, i64 24}
!1085 = !{!"branch_weights", i32 631460, i32 13304}
!1086 = distinct !{!1086, !701}
!1087 = !{!"branch_weights", i32 333333, i32 1442093}
!1088 = !{!"branch_weights", i32 1762121, i32 13304}
!1089 = distinct !{!1089, !701}
!1090 = !{!"function_entry_count", i64 572854}
!1091 = !{!"tree-ssa-sccvn.c:has_zero_uses"}
!1092 = !{!1093, !598, i64 8}
!1093 = !{!"ssa_use_operand_d", !598, i64 0, !598, i64 8, !593, i64 16, !598, i64 24}
!1094 = !{!"branch_weights", i32 46037, i32 526819}
!1095 = !{!"branch_weights", i32 526819, i32 1}
!1096 = !{!"function_entry_count", i64 526818}
!1097 = !{!"tree-ssa-sccvn.c:DFS"}
!1098 = !{!629, !603, i64 20}
!1099 = !{!629, !603, i64 24}
!1100 = !{!"branch_weights", i32 1358843, i32 38450}
!1101 = !{!"branch_weights", i32 192079, i32 1166765}
!1102 = !{!"branch_weights", i32 2693901, i32 1397292}
!1103 = !{!"branch_weights", i32 999240, i32 398053}
!1104 = !{!"branch_weights", i32 1, i32 999240}
!1105 = !{!"branch_weights", i32 526819, i32 870474}
!1106 = !{!"branch_weights", i32 559806, i32 310669}
!1107 = !{!"branch_weights", i32 2593113, i32 100789}
!1108 = !{!"branch_weights", i32 870474, i32 1722640}
!1109 = !{!"branch_weights", i32 1633243, i32 959871}
!1110 = !{!"branch_weights", i32 1293483, i32 339761}
!1111 = !{!"branch_weights", i32 247057, i32 92705}
!1112 = !{!"tree-ssa-sccvn.c:set_hashtable_value_ids"}
!1113 = !{!"branch_weights", i32 1, i32 245609}
!1114 = !{!"branch_weights", i32 245609, i32 1}
!1115 = !{!"branch_weights", i32 232305, i32 13304}
!1116 = distinct !{!1116, !701}
!1117 = !{!1118, !598, i64 24}
!1118 = !{!"vn_phi_s", !603, i64 0, !603, i64 4, !598, i64 8, !598, i64 16, !598, i64 24}
!1119 = !{!"branch_weights", i32 1, i32 182349}
!1120 = !{!"branch_weights", i32 182349, i32 1}
!1121 = !{!1118, !603, i64 0}
!1122 = !{!"branch_weights", i32 169045, i32 13304}
!1123 = distinct !{!1123, !701}
!1124 = !{!"branch_weights", i32 1, i32 505628}
!1125 = !{!"branch_weights", i32 468546, i32 37083}
!1126 = !{!"branch_weights", i32 1, i32 37083}
!1127 = !{!"branch_weights", i32 492324, i32 13304}
!1128 = distinct !{!1128, !701}
!1129 = !{!"function_entry_count", i64 4865}
!1130 = !{!"tree-ssa-sccvn.c:vn_constant_hash"}
!1131 = !{!"function_entry_count", i64 391368}
!1132 = !{!"tree-ssa-sccvn.c:vn_constant_eq"}
!1133 = !{!"branch_weights", i32 310447, i32 80923}
!1134 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_alloc"}
!1135 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_heap_safe_grow_cleared"}
!1136 = !{!"tree-ssa-sccvn.c:allocate_vn_table"}
!1137 = !{!"function_entry_count", i64 310446}
!1138 = !{!"tree-ssa-sccvn.c:vn_constant_eq_with_type"}
!1139 = !{!"branch_weights", i32 1, i32 310447}
!1140 = !{!"tree-ssa-sccvn.c:VEC_vn_ssa_aux_t_base_address"}
!1141 = !{!"function_entry_count", i64 212974}
!1142 = !{!"tree-ssa-sccvn.c:vn_phi_hash"}
!1143 = !{!1118, !603, i64 4}
!1144 = !{!"function_entry_count", i64 657224}
!1145 = !{!"tree-ssa-sccvn.c:vn_phi_eq"}
!1146 = !{!"branch_weights", i32 296, i32 656930}
!1147 = !{!1118, !598, i64 16}
!1148 = !{!"branch_weights", i32 296, i32 1}
!1149 = !{!1118, !598, i64 8}
!1150 = !{!"branch_weights", i32 1, i32 296}
!1151 = !{!"branch_weights", i32 1, i32 295}
!1152 = !{!"branch_weights", i32 1479, i32 546121}
!1153 = !{!"branch_weights", i32 1, i32 739}
!1154 = !{!"branch_weights", i32 295, i32 444}
!1155 = distinct !{!1155, !701}
!1156 = !{!"function_entry_count", i64 456707}
!1157 = !{!"tree-ssa-sccvn.c:free_phi"}
!1158 = !{!"function_entry_count", i64 532363}
!1159 = !{!"tree-ssa-sccvn.c:vn_nary_op_hash"}
!1160 = !{!"function_entry_count", i64 1166733}
!1161 = !{!"tree-ssa-sccvn.c:vn_reference_hash"}
!1162 = !{!"function_entry_count", i64 5599472}
!1163 = !{!"tree-ssa-sccvn.c:VEC_tree_base_iterate"}
!1164 = !{!"branch_weights", i32 1, i32 5599473}
!1165 = !{!"branch_weights", i32 4731197, i32 868277}
!1166 = !{!"function_entry_count", i64 5671919}
!1167 = !{!"tree-ssa-sccvn.c:VEC_tree_heap_safe_push"}
!1168 = !{!"function_entry_count", i64 192078}
!1169 = !{!"tree-ssa-sccvn.c:op_iter_init_phiuse"}
!1170 = !{!1171, !593, i64 0}
!1171 = !{!"ssa_operand_iterator_d", !593, i64 0, !603, i64 4, !598, i64 8, !598, i64 16, !603, i64 24, !603, i64 28, !598, i64 32}
!1172 = !{!1171, !598, i64 32}
!1173 = !{!1171, !603, i64 28}
!1174 = !{!1171, !603, i64 4}
!1175 = !{!"function_entry_count", i64 1166764}
!1176 = !{!"tree-ssa-sccvn.c:op_iter_init_use"}
!1177 = !{!"function_entry_count", i64 230527}
!1178 = !{!"tree-ssa-sccvn.c:clear_and_done_ssa_iter"}
!1179 = !{!"function_entry_count", i64 4871185}
!1180 = !{!"tree-ssa-sccvn.c:op_iter_done"}
!1181 = !{!"function_entry_count", i64 999239}
!1182 = !{!"tree-ssa-sccvn.c:extract_and_process_scc_for_name"}
!1183 = distinct !{!1183, !701}
!1184 = !{!1185, !603, i64 8}
!1185 = !{!"param_info", !598, i64 0, !603, i64 8, !593, i64 12, !603, i64 16, !603, i64 20, !598, i64 24}
!1186 = !{!"branch_weights", i32 27159, i32 972082}
!1187 = !{!"branch_weights", i32 999240, i32 1}
!1188 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_heap_free"}
!1189 = !{!"branch_weights", i32 440843, i32 85977}
!1190 = !{!"function_entry_count", i64 2267764}
!1191 = !{!"tree-ssa-sccvn.c:VEC_tree_base_pop"}
!1192 = !{!"function_entry_count", i64 870473}
!1193 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_last"}
!1194 = !{!1195, !603, i64 0}
!1195 = !{!"VEC_ssa_op_iter_base", !603, i64 0, !603, i64 4, !593, i64 8}
!1196 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_pop"}
!1197 = !{!"function_entry_count", i64 5611283}
!1198 = !{!"tree-ssa-sccvn.c:get_use_from_ptr"}
!1199 = !{!1093, !598, i64 24}
!1200 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_heap_safe_push"}
!1201 = !{!"function_entry_count", i64 4052742}
!1202 = !{!"tree-ssa-sccvn.c:op_iter_next_use"}
!1203 = !{!1171, !598, i64 16}
!1204 = !{!"branch_weights", i32 1923855, i32 2128889}
!1205 = !{!1206, !598, i64 0}
!1206 = !{!"use_optype_d", !598, i64 0, !1093, i64 8}
!1207 = !{!1171, !603, i64 24}
!1208 = !{!"branch_weights", i32 565013, i32 1358843}
!1209 = !{!"tree-ssa-sccvn.c:VEC_tree_heap_reserve"}
!1210 = !{!"branch_weights", i32 1574958, i32 4096963}
!1211 = !{!"tree-ssa-sccvn.c:VEC_tree_base_quick_push"}
!1212 = !{!"tree-ssa-sccvn.c:VEC_tree_base_space"}
!1213 = !{!"branch_weights", i32 1459289, i32 4212632}
!1214 = !{!1047, !603, i64 4}
!1215 = !{!"tree-ssa-sccvn.c:gimple_phi_result"}
!1216 = !{!"function_entry_count", i64 3888790}
!1217 = !{!"tree-ssa-sccvn.c:gimple_phi_num_args"}
!1218 = !{!"function_entry_count", i64 1467821}
!1219 = !{!"tree-ssa-sccvn.c:op_iter_init"}
!1220 = !{!"branch_weights", i32 3662, i32 -1606267134}
!1221 = !{!"branch_weights", i32 1166765, i32 301058}
!1222 = !{!1171, !598, i64 8}
!1223 = !{!"branch_weights", i32 2147476515, i32 7133}
!1224 = !{!1225, !598, i64 0}
!1225 = !{!"def_optype_d", !598, i64 0, !598, i64 8}
!1226 = !{!"branch_weights", i32 301058, i32 1166765}
!1227 = !{!"branch_weights", i32 2147481808, i32 1840}
!1228 = !{!"function_entry_count", i64 301057}
!1229 = !{!"tree-ssa-sccvn.c:gimple_def_ops"}
!1230 = !{!"branch_weights", i32 1, i32 301058}
!1231 = !{!"function_entry_count", i64 221431}
!1232 = !{!"tree-ssa-sccvn.c:gimple_vdef"}
!1233 = !{!"branch_weights", i32 1, i32 221432}
!1234 = !{!"tree-ssa-sccvn.c:gimple_use_ops"}
!1235 = !{!"branch_weights", i32 1, i32 1166765}
!1236 = !{!"function_entry_count", i64 1750641}
!1237 = !{!"tree-ssa-sccvn.c:gimple_vuse"}
!1238 = !{!"branch_weights", i32 1, i32 1750642}
!1239 = !{!"function_entry_count", i64 3642236}
!1240 = !{!"tree-ssa-sccvn.c:gimple_has_mem_ops"}
!1241 = !{!"function_entry_count", i64 27158}
!1242 = !{!"tree-ssa-sccvn.c:sort_scc"}
!1243 = !{!"tree-ssa-sccvn.c:print_scc"}
!1244 = distinct !{!1244, !701}
!1245 = !{!"tree-ssa-sccvn.c:process_scc"}
!1246 = !{!"branch_weights", i32 972082, i32 27159}
!1247 = !{!"branch_weights", i32 897361, i32 74722}
!1248 = !{!"branch_weights", i32 710439031, i32 1437044617}
!1249 = distinct !{!1249, !701}
!1250 = !{!"branch_weights", i32 1, i32 82093}
!1251 = !{!"branch_weights", i32 1, i32 82092}
!1252 = !{!"branch_weights", i32 82092, i32 1279706}
!1253 = distinct !{!1253, !701}
!1254 = distinct !{!1254, !701}
!1255 = !{!"tree-ssa-sccvn.c:VEC_tree_base_address"}
!1256 = !{!"branch_weights", i32 1, i32 27159}
!1257 = !{!"function_entry_count", i64 2823675}
!1258 = !{!"tree-ssa-sccvn.c:compare_ops"}
!1259 = !{!"branch_weights", i32 2823676, i32 1}
!1260 = !{!"branch_weights", i32 1, i32 2823676}
!1261 = !{!"branch_weights", i32 670897, i32 2152780}
!1262 = !{!"branch_weights", i32 64776, i32 606122}
!1263 = !{!"branch_weights", i32 29789, i32 34988}
!1264 = !{!"branch_weights", i32 44282, i32 561841}
!1265 = !{!"branch_weights", i32 14800, i32 547042}
!1266 = !{!1267, !603, i64 80}
!1267 = !{!"basic_block_def", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !593, i64 32, !598, i64 48, !598, i64 56, !593, i64 64, !602, i64 72, !603, i64 80, !603, i64 84, !603, i64 88, !603, i64 92, !603, i64 96}
!1268 = !{!"function_entry_count", i64 6351147}
!1269 = !{!"tree-ssa-sccvn.c:gimple_bb"}
!1270 = !{!"function_entry_count", i64 2217762}
!1271 = !{!"tree-ssa-sccvn.c:gimple_uid"}
!1272 = !{!"function_entry_count", i64 2259157}
!1273 = !{!"tree-ssa-sccvn.c:visit_use"}
!1274 = !{!"branch_weights", i32 2259158, i32 1}
!1275 = !{!"branch_weights", i32 2220709, i32 38450}
!1276 = !{!"branch_weights", i32 427579, i32 1793131}
!1277 = !{!"branch_weights", i32 122967, i32 1670165}
!1278 = !{!"branch_weights", i32 1670128, i32 38}
!1279 = !{!"branch_weights", i32 1670128, i32 1}
!1280 = !{!"branch_weights", i32 190836, i32 1479293}
!1281 = !{!"branch_weights", i32 1223681, i32 255613}
!1282 = !{!"branch_weights", i32 184952, i32 70662}
!1283 = !{!"branch_weights", i32 35017, i32 149936}
!1284 = !{!"branch_weights", i32 1782, i32 -1720814346}
!1285 = !{!"branch_weights", i32 42398720, i32 2105084928}
!1286 = !{!"branch_weights", i32 109956195, i32 189130101}
!1287 = !{!"branch_weights", i32 18722929, i32 59323895}
!1288 = !{!"branch_weights", i32 13704, i32 3}
!1289 = !{!"branch_weights", i32 382708886, i32 -1813653997}
!1290 = !{!"branch_weights", i32 1005150, i32 221430}
!1291 = !{!"branch_weights", i32 1208036, i32 221432}
!1292 = !{!"branch_weights", i32 1207990, i32 47}
!1293 = !{!"branch_weights", i32 1, i32 47}
!1294 = !{!"branch_weights", i32 13704, i32 1194287}
!1295 = !{!"branch_weights", i32 13704, i32 1}
!1296 = !{!"branch_weights", i32 1207990, i32 1}
!1297 = !{!"branch_weights", i32 429391, i32 1000077}
!1298 = !{!"branch_weights", i32 149936, i32 850142}
!1299 = !{!"branch_weights", i32 149936, i32 1}
!1300 = !{!"branch_weights", i32 532279043, i32 -1391101213}
!1301 = !{!"branch_weights", i32 1208036, i32 1}
!1302 = !{!"branch_weights", i32 1, i32 142696, i32 286696, i32 778600}
!1303 = !{!"branch_weights", i32 1, i32 649203, i32 108813, i32 20586}
!1304 = !{!"branch_weights", i32 1, i32 649203}
!1305 = !{!"branch_weights", i32 20586, i32 1}
!1306 = !{!"branch_weights", i32 1, i32 190836}
!1307 = !{!"branch_weights", i32 190836, i32 1}
!1308 = !{!"branch_weights", i32 2145514378, i32 1969270}
!1309 = !{!"branch_weights", i32 2145520000, i32 1963648}
!1310 = !{!"branch_weights", i32 11916, i32 -2020882030}
!1311 = !{!"branch_weights", i32 190662, i32 175}
!1312 = !{!"branch_weights", i32 177881, i32 12782}
!1313 = !{!"function_entry_count", i64 73121}
!1314 = !{!"tree-ssa-sccvn.c:copy_nary"}
!1315 = !{!"branch_weights", i32 419, i32 72704}
!1316 = !{!"branch_weights", i32 1, i32 73122}
!1317 = !{!"branch_weights", i32 73122, i32 1}
!1318 = !{!"function_entry_count", i64 104956}
!1319 = !{!"tree-ssa-sccvn.c:copy_phis"}
!1320 = !{!"function_entry_count", i64 157387}
!1321 = !{!"tree-ssa-sccvn.c:copy_references"}
!1322 = !{!"branch_weights", i32 157388, i32 1}
!1323 = !{!"function_entry_count", i64 2437037}
!1324 = !{!"tree-ssa-sccvn.c:set_ssa_val_to"}
!1325 = !{!"branch_weights", i32 2117677, i32 319362}
!1326 = !{!"branch_weights", i32 9153, i32 -1371767070}
!1327 = !{!"branch_weights", i32 1014, i32 2147482634}
!1328 = !{!"branch_weights", i32 1, i32 2437038}
!1329 = !{!"branch_weights", i32 2410579, i32 26460}
!1330 = !{!"branch_weights", i32 1, i32 26460}
!1331 = !{!"branch_weights", i32 2437038, i32 1}
!1332 = !{!"branch_weights", i32 982326, i32 1454713}
!1333 = !{!"branch_weights", i32 1454713, i32 1}
!1334 = !{!"branch_weights", i32 982326, i32 1}
!1335 = !{!"function_entry_count", i64 427578}
!1336 = !{!"tree-ssa-sccvn.c:visit_phi"}
!1337 = !{!"branch_weights", i32 427579, i32 1}
!1338 = !{!"branch_weights", i32 1, i32 75532}
!1339 = !{!"branch_weights", i32 824710, i32 85811}
!1340 = !{!"branch_weights", i32 56745, i32 853776}
!1341 = !{!"branch_weights", i32 427579, i32 426198}
!1342 = !{!"branch_weights", i32 834988, i32 75532}
!1343 = distinct !{!1343, !701}
!1344 = !{!"branch_weights", i32 62307, i32 13227}
!1345 = !{!"branch_weights", i32 351752, i32 296}
!1346 = !{!"function_entry_count", i64 1793130}
!1347 = !{!"tree-ssa-sccvn.c:gimple_has_lhs"}
!1348 = !{!"branch_weights", i32 313802, i32 1479330}
!1349 = !{!"branch_weights", i32 1, i32 313802}
!1350 = !{!"function_entry_count", i64 1670164}
!1351 = !{!"tree-ssa-sccvn.c:gimple_has_volatile_ops"}
!1352 = !{!"branch_weights", i32 1, i32 1670165}
!1353 = !{!"tree-ssa-sccvn.c:defs_to_varying"}
!1354 = !{!"branch_weights", i32 301057, i32 1}
!1355 = !{!"branch_weights", i32 177881, i32 301057}
!1356 = distinct !{!1356, !701}
!1357 = !{!"function_entry_count", i64 101943}
!1358 = !{!"tree-ssa-sccvn.c:visit_copy"}
!1359 = !{!"branch_weights", i32 160, i32 1}
!1360 = !{!"branch_weights", i32 101944, i32 17473}
!1361 = !{!"branch_weights", i32 119096, i32 160}
!1362 = distinct !{!1362, !701}
!1363 = !{!"branch_weights", i32 101784, i32 161}
!1364 = !{!"function_entry_count", i64 1444276}
!1365 = !{!"tree-ssa-sccvn.c:try_to_simplify"}
!1366 = !{!"branch_weights", i32 1223681, i32 220597}
!1367 = !{!"branch_weights", i32 149936, i32 70662}
!1368 = !{!"branch_weights", i32 95655, i32 109675, i32 650128, i32 146064, i32 24893, i32 267932}
!1369 = !{!"branch_weights", i32 109673, i32 3}
!1370 = !{!"branch_weights", i32 650026, i32 103}
!1371 = !{!"branch_weights", i32 1, i32 650026}
!1372 = !{!"function_entry_count", i64 14986}
!1373 = !{!"tree-ssa-sccvn.c:expr_has_constants"}
!1374 = !{!"branch_weights", i32 530, i32 6214, i32 8245, i32 1, i32 1}
!1375 = !{!"branch_weights", i32 8188, i32 58}
!1376 = !{!"function_entry_count", i64 1606596}
!1377 = !{!"tree-ssa-sccvn.c:stmt_has_constants"}
!1378 = !{!"branch_weights", i32 1415762, i32 190836}
!1379 = !{!"branch_weights", i32 1, i32 138016, i32 277731, i32 1000017}
!1380 = !{!"branch_weights", i32 267393, i32 10339}
!1381 = !{!"tree-ssa-sccvn.c:visit_reference_op_store"}
!1382 = !{!"branch_weights", i32 200611, i32 20822}
!1383 = !{!"branch_weights", i32 20246, i32 577}
!1384 = !{!"branch_weights", i32 18666, i32 2157}
!1385 = !{!"branch_weights", i32 41458411, i32 2106025237}
!1386 = !{!"branch_weights", i32 221031, i32 1}
!1387 = !{!"branch_weights", i32 1, i32 221031}
!1388 = !{!"branch_weights", i32 151464, i32 69568}
!1389 = !{!"branch_weights", i32 1744, i32 149721}
!1390 = !{!"branch_weights", i32 402, i32 1}
!1391 = !{!"function_entry_count", i64 163280}
!1392 = !{!"tree-ssa-sccvn.c:visit_unary_op"}
!1393 = !{!"branch_weights", i32 139413, i32 23869}
!1394 = !{!"function_entry_count", i64 286695}
!1395 = !{!"tree-ssa-sccvn.c:visit_binary_op"}
!1396 = !{!"branch_weights", i32 255691, i32 31006}
!1397 = !{!"function_entry_count", i64 758014}
!1398 = !{!"tree-ssa-sccvn.c:visit_reference_op_load"}
!1399 = !{!"branch_weights", i32 620406, i32 137610}
!1400 = !{!"branch_weights", i32 1, i32 620406}
!1401 = !{!"branch_weights", i32 2147402903, i32 80745}
!1402 = !{!"branch_weights", i32 3648, i32 133963}
!1403 = !{!"branch_weights", i32 1, i32 14592, i32 2, i32 1}
!1404 = !{!"branch_weights", i32 3648, i32 1}
!1405 = !{!"branch_weights", i32 -1265752913, i32 2493864, i32 831060, i32 830832}
!1406 = !{!"branch_weights", i32 1, i32 3}
!1407 = !{!"branch_weights", i32 3, i32 3646}
!1408 = !{!"branch_weights", i32 755683645, i32 1391800003}
!1409 = !{!"branch_weights", i32 498, i32 787}
!1410 = !{!"branch_weights", i32 135067, i32 2544}
!1411 = !{!"branch_weights", i32 133270, i32 1798}
!1412 = !{!"function_entry_count", i64 504636}
!1413 = !{!"tree-ssa-sccvn.c:gimple_call_lhs"}
!1414 = !{!"function_entry_count", i64 12781}
!1415 = !{!"tree-ssa-sccvn.c:visit_reference_op_call"}
!1416 = !{!"branch_weights", i32 675, i32 12108}
!1417 = !{!"branch_weights", i32 12003, i32 780}
!1418 = !{!"branch_weights", i32 780, i32 1}
!1419 = !{!"branch_weights", i32 12003, i32 1}
!1420 = !{!"function_entry_count", i64 3243912}
!1421 = !{!"tree-ssa-sccvn.c:get_def_from_ptr"}
!1422 = !{!"function_entry_count", i64 2764975}
!1423 = !{!"tree-ssa-sccvn.c:gimple_phi_result_ptr"}
!1424 = !{!"function_entry_count", i64 3482395}
!1425 = !{!"tree-ssa-sccvn.c:gimple_phi_arg_imm_use_ptr"}
!1426 = !{!"function_entry_count", i64 352046}
!1427 = !{!"tree-ssa-sccvn.c:vn_phi_lookup"}
!1428 = !{!"branch_weights", i32 1, i32 352046}
!1429 = !{!"branch_weights", i32 876412, i32 127391}
!1430 = !{!"branch_weights", i32 651756, i32 352046}
!1431 = distinct !{!1431, !701}
!1432 = !{!"branch_weights", i32 351762, i32 286}
!1433 = !{!"branch_weights", i32 274370, i32 77393}
!1434 = !{!"branch_weights", i32 2147405380, i32 78268}
!1435 = !{!"function_entry_count", i64 351751}
!1436 = !{!"tree-ssa-sccvn.c:vn_phi_insert"}
!1437 = !{!"branch_weights", i32 1, i32 351751}
!1438 = !{!"branch_weights", i32 875706, i32 127359}
!1439 = !{!"branch_weights", i32 651313, i32 351751}
!1440 = distinct !{!1440, !701}
!1441 = !{!"tree-ssa-sccvn.c:gimple_phi_arg"}
!1442 = !{!"branch_weights", i32 1, i32 3482396}
!1443 = !{!"tree-ssa-sccvn.c:VEC_tree_base_truncate"}
!1444 = !{!"branch_weights", i32 9285, i32 342763}
!1445 = !{!"function_entry_count", i64 703797}
!1446 = !{!"tree-ssa-sccvn.c:vn_phi_compute_hash"}
!1447 = !{!"branch_weights", i32 -534605527, i32 0}
!1448 = !{!"branch_weights", i32 1, i32 703797}
!1449 = !{!"branch_weights", i32 15, i32 2006851}
!1450 = !{!"branch_weights", i32 703797, i32 1303068}
!1451 = distinct !{!1451, !701}
!1452 = !{!"tree-ssa-sccvn.c:op_iter_init_def"}
!1453 = !{!"function_entry_count", i64 779994}
!1454 = !{!"tree-ssa-sccvn.c:op_iter_next_def"}
!1455 = !{!"branch_weights", i32 301058, i32 478938}
!1456 = !{!1225, !598, i64 8}
!1457 = !{!"function_entry_count", i64 146063}
!1458 = !{!"tree-ssa-sccvn.c:simplify_unary_expression"}
!1459 = !{!"branch_weights", i32 1, i32 146064}
!1460 = !{!"branch_weights", i32 145535, i32 530}
!1461 = !{!"branch_weights", i32 135378, i32 10158}
!1462 = !{!"branch_weights", i32 3195, i32 132184}
!1463 = !{!"branch_weights", i32 1, i32 3195}
!1464 = !{!"branch_weights", i32 533053936, i32 -776385751}
!1465 = !{!"branch_weights", i32 3788235, i32 28699, i32 -1004253826}
!1466 = !{!"branch_weights", i32 5, i32 128}
!1467 = !{!"branch_weights", i32 1518743835, i32 628739813}
!1468 = !{!"branch_weights", i32 33407, i32 8268}
!1469 = !{!"branch_weights", i32 214, i32 8055}
!1470 = !{!"function_entry_count", i64 292823}
!1471 = !{!"tree-ssa-sccvn.c:simplify_binary_expression"}
!1472 = !{!"branch_weights", i32 282445, i32 10380}
!1473 = !{!"branch_weights", i32 242036, i32 40410}
!1474 = !{!"branch_weights", i32 22385, i32 219652}
!1475 = !{!"branch_weights", i32 1, i32 219652}
!1476 = !{!"branch_weights", i32 186797, i32 32856}
!1477 = !{!"branch_weights", i32 98838, i32 193987}
!1478 = !{!"branch_weights", i32 53135, i32 45704}
!1479 = !{!"branch_weights", i32 1, i32 53135}
!1480 = !{!"branch_weights", i32 44791, i32 8345}
!1481 = !{!"branch_weights", i32 219302, i32 73523}
!1482 = !{!"branch_weights", i32 181166, i32 38137}
!1483 = !{!"branch_weights", i32 82228, i32 29432}
!1484 = !{!"branch_weights", i32 9075, i32 20358}
!1485 = !{!"function_entry_count", i64 254483}
!1486 = !{!"tree-ssa-sccvn.c:valueize_expr"}
!1487 = !{!"branch_weights", i32 159732, i32 12104, i32 82650}
!1488 = !{!"branch_weights", i32 11684, i32 421}
!1489 = !{!"branch_weights", i32 1, i32 11684}
!1490 = !{!"branch_weights", i32 72173, i32 10478}
!1491 = !{!"branch_weights", i32 1, i32 72173}
!1492 = !{!"branch_weights", i32 18559, i32 64092}
!1493 = !{!"branch_weights", i32 1, i32 18559}
!1494 = !{!"function_entry_count", i64 135377}
!1495 = !{!"tree-ssa-sccvn.c:gimple_assign_cast_p"}
!1496 = !{!"branch_weights", i32 1, i32 135378}
!1497 = !{!"tree-ssa-sccvn.c:make_ssa_name"}
!1498 = !{!"tree-ssa-sccvn.c:valueize_shared_reference_ops_from_call"}
!1499 = !{!"branch_weights", i32 1, i32 12782}
!1500 = !{!"function_entry_count", i64 12002}
!1501 = !{!"tree-ssa-sccvn.c:create_reference_ops_from_call"}
!1502 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_heap_reserve"}
!1503 = !{!"branch_weights", i32 111889, i32 758586}
!1504 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_quick_push"}
!1505 = !{!"branch_weights", i32 1, i32 870474}
!1506 = !{i64 0, i64 1, !592, i64 4, i64 4, !641, i64 8, i64 8, !597, i64 16, i64 8, !597, i64 24, i64 4, !641, i64 28, i64 4, !641, i64 32, i64 8, !597}
!1507 = !{!"tree-ssa-sccvn.c:VEC_ssa_op_iter_base_space"}
!1508 = !{!"branch_weights", i32 85977, i32 784498}
!1509 = !{!1195, !603, i64 4}
!1510 = !{!"function_entry_count", i64 39912}
!1511 = !{!"tree-ssa-sccvn.c:first_htab_element"}
!1512 = !{!1513, !598, i64 0}
!1513 = !{!"", !598, i64 0, !598, i64 8, !598, i64 16}
!1514 = !{!1515, !598, i64 24}
!1515 = !{!"htab", !598, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !602, i64 32, !602, i64 40, !602, i64 48, !603, i64 56, !603, i64 60, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !603, i64 104}
!1516 = !{!1513, !598, i64 8}
!1517 = !{!1513, !598, i64 16}
!1518 = !{!"branch_weights", i32 421188, i32 8951}
!1519 = distinct !{!1519, !701}
!1520 = !{!"branch_weights", i32 30963, i32 8951}
!1521 = !{!"function_entry_count", i64 973495}
!1522 = !{!"tree-ssa-sccvn.c:end_htab_p"}
!1523 = !{!"function_entry_count", i64 933583}
!1524 = !{!"tree-ssa-sccvn.c:next_htab_element"}
!1525 = !{!"branch_weights", i32 2034638, i32 30963}
!1526 = !{!"function_entry_count", i64 546644}
!1527 = !{!"function_entry_count", i64 223306}
!1528 = !{!"branch_weights", i32 -1442850524, i32 12772}
!1529 = !{!"branch_weights", i32 -1642997398, i32 986069, i32 11879, i32 11880}
!1530 = !{!"branch_weights", i32 83, i32 223225}
!1531 = !{!"branch_weights", i32 83, i32 1}
!1532 = !{!"branch_weights", i32 1783454824, i32 364028824}
!1533 = !{!"branch_weights", i32 18646, i32 -838158194}
!1534 = !{!"branch_weights", i32 4839952, i32 -963976518}
!1535 = !{!"branch_weights", i32 1, i32 222983}
!1536 = !{!"branch_weights", i32 162525, i32 222983}
!1537 = distinct !{!1537, !701}
!1538 = !{!"branch_weights", i32 385508, i32 1}
