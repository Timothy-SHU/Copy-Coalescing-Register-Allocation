; ModuleID = 'tree-complex.c'
source_filename = "tree-complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_complex_lattice_t_base = type { i32, i32, [1 x i32] }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.int_tree_map = type { i32, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"cplxlower\00", align 1
@pass_lower_complex = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @tree_lower_complex, ptr null, ptr null, i32 0, i32 0, i32 32, i32 1024, i32 0, i32 0, i32 2067 } }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cplxlower0\00", align 1
@pass_lower_complex_O0 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_no_optimization, ptr @tree_lower_complex, ptr null, ptr null, i32 0, i32 0, i32 8, i32 1024, i32 0, i32 0, i32 2067 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@complex_lattice_values = internal unnamed_addr global ptr null, align 8
@complex_variable_components = internal unnamed_addr global ptr null, align 8
@complex_ssa_name_components = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"tree-complex.c\00", align 1
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@libiberty_concat_ptr = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@dconst1 = external global %struct.real_value, align 8
@flag_complex_method = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_lower_complex() #0 !prof !98 !PGOFuncName !99 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %3 = tail call fastcc zeroext i8 @init_dont_simulate_again() #15, !range !100
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %68, label %5, !prof !101

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %10) #15
  %12 = tail call fastcc ptr @VEC_complex_lattice_t_heap_alloc(i32 noundef %11) #15
  store ptr %12, ptr @complex_lattice_values, align 8, !tbaa !102
  %13 = load ptr, ptr @cfun, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #15
  tail call fastcc void @VEC_complex_lattice_t_heap_safe_grow_cleared(i32 noundef %18) #15
  tail call fastcc void @init_parameter_lattice_values() #15
  tail call void @ssa_propagate(ptr noundef nonnull @complex_visit_stmt, ptr noundef nonnull @complex_visit_phi) #16
  %19 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @int_tree_map_hash, ptr noundef nonnull @int_tree_map_eq, ptr noundef nonnull @free) #16
  store ptr %19, ptr @complex_variable_components, align 8, !tbaa !102
  %20 = load ptr, ptr @cfun, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %24) #15
  %26 = shl i32 %25, 1
  %27 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %26) #15
  store ptr %27, ptr @complex_ssa_name_components, align 8, !tbaa !102
  %28 = load ptr, ptr @cfun, align 8, !tbaa !102
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !109
  %33 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %32) #15
  %34 = shl i32 %33, 1
  tail call fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %34) #15
  tail call fastcc void @update_parameter_components() #15
  %35 = load ptr, ptr @cfun, align 8, !tbaa !102
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !114
  %40 = load ptr, ptr %37, align 8, !tbaa !116
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !120
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %5, %57
  %47 = phi ptr [ %59, %57 ], [ %42, %5 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !121
  %50 = icmp slt i32 %49, %39
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  call fastcc void @update_phi_components(ptr noundef nonnull %47) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %47) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !100
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %54
  call fastcc void @expand_complex_operations_1(ptr noundef nonnull %1) #15
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %55 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !100
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %54, label %57, !llvm.loop !123

57:                                               ; preds = %54, %51, %46
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !117
  %60 = load ptr, ptr @cfun, align 8, !tbaa !102
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !120
  %65 = icmp eq ptr %59, %64
  br i1 %65, label %66, label %46, !llvm.loop !125

66:                                               ; preds = %57, %5
  call void @gsi_commit_edge_inserts() #16
  %67 = load ptr, ptr @complex_variable_components, align 8, !tbaa !102
  call void @htab_delete(ptr noundef %67) #16
  call fastcc void @VEC_tree_heap_free() #15
  call fastcc void @VEC_complex_lattice_t_heap_free() #15
  br label %68

68:                                               ; preds = %0, %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_no_optimization() #1 !prof !98 !PGOFuncName !126 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !127
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @init_dont_simulate_again() unnamed_addr #0 !prof !98 !PGOFuncName !128 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %3 = load ptr, ptr @cfun, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %113, label %22, !prof !129

12:                                               ; preds = %109, %33
  %13 = phi i8 [ %24, %33 ], [ %110, %109 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !117
  %16 = load ptr, ptr @cfun, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %113, label %22, !prof !130, !llvm.loop !131

22:                                               ; preds = %0, %12
  %23 = phi ptr [ %15, %12 ], [ %8, %0 ]
  %24 = phi i8 [ %13, %12 ], [ 0, %0 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %23) #16
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !100
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33, !prof !132

27:                                               ; preds = %22, %27
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %29 = call fastcc ptr @gimple_phi_result(ptr noundef %28) #15
  %30 = call fastcc zeroext i8 @is_complex_reg(ptr noundef %29) #15, !range !100
  call fastcc void @prop_set_simulate_again(ptr noundef %28, i8 noundef zeroext %30) #15
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !100
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %27, label %33, !prof !133, !llvm.loop !134

33:                                               ; preds = %27, %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !100
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %12, !prof !135

36:                                               ; preds = %33, %109
  %37 = phi i8 [ %110, %109 ], [ %24, %33 ]
  %38 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %39 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %38) #16
  %40 = call fastcc i32 @gimple_code(ptr noundef %38) #15, !range !136
  %41 = trunc i32 %40 to i8
  switch i8 %41, label %71 [
    i8 8, label %42
    i8 6, label %48
    i8 1, label %68
  ], !prof !137

42:                                               ; preds = %36
  %43 = call fastcc ptr @gimple_call_lhs(ptr noundef %38) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %71, label %45, !prof !138

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_call_lhs(ptr noundef %38) #15
  %47 = call fastcc zeroext i8 @is_complex_reg(ptr noundef %46) #15, !range !100
  br label %71

48:                                               ; preds = %36
  %49 = call fastcc ptr @gimple_assign_lhs(ptr noundef %38) #15
  %50 = call fastcc zeroext i8 @is_complex_reg(ptr noundef %49) #15, !range !100
  %51 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %38) #15, !range !139
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %56, label %53, !prof !140

53:                                               ; preds = %48
  %54 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %38) #15, !range !139
  %55 = icmp eq i32 %54, 44
  br i1 %55, label %56, label %60, !prof !140

56:                                               ; preds = %53, %48
  %57 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %38) #15
  %58 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !141
  br label %62

60:                                               ; preds = %53
  %61 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %38) #15
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %59, %56 ], [ %61, %60 ]
  %64 = call fastcc i32 @gimple_num_ops(ptr noundef %38) #15
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %66, label %71, !prof !142

66:                                               ; preds = %62
  %67 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %38) #15
  br label %71

68:                                               ; preds = %36
  %69 = call fastcc ptr @gimple_cond_lhs(ptr noundef %38) #15
  %70 = call fastcc ptr @gimple_cond_rhs(ptr noundef %38) #15
  br label %71

71:                                               ; preds = %36, %62, %66, %42, %45, %68
  %72 = phi ptr [ null, %36 ], [ %69, %68 ], [ %63, %66 ], [ %63, %62 ], [ null, %45 ], [ null, %42 ]
  %73 = phi ptr [ null, %36 ], [ %70, %68 ], [ %67, %66 ], [ null, %62 ], [ null, %45 ], [ null, %42 ]
  %74 = phi i8 [ %39, %36 ], [ %39, %68 ], [ %50, %66 ], [ %50, %62 ], [ %47, %45 ], [ %39, %42 ]
  %75 = icmp ne ptr %72, null
  %76 = icmp ne ptr %73, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %109, !prof !143

78:                                               ; preds = %71
  %79 = call fastcc i32 @gimple_expr_code(ptr noundef %38) #15, !range !139
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %109 [
    i16 101, label %81
    i16 102, label %81
    i16 63, label %81
    i16 64, label %81
    i16 65, label %81
    i16 67, label %81
    i16 68, label %81
    i16 69, label %81
    i16 70, label %81
    i16 75, label %81
    i16 79, label %94
    i16 124, label %94
    i16 43, label %101
    i16 44, label %101
  ], !prof !144

81:                                               ; preds = %78, %78, %78, %78, %78, %78, %78, %78, %78, %78
  %82 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !141
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 13
  br i1 %86, label %93, label %87, !prof !145

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !141
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 13
  br i1 %92, label %93, label %109, !prof !145

93:                                               ; preds = %87, %81
  br label %109

94:                                               ; preds = %78, %78
  %95 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !141
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 13
  %100 = select i1 %99, i8 1, i8 %37
  br label %109

101:                                              ; preds = %78, %78
  %102 = load i64, ptr %72, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 141
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %72) #16
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i8 %37, i8 1
  br label %109

109:                                              ; preds = %105, %94, %93, %87, %101, %78, %71
  %110 = phi i8 [ %37, %78 ], [ %37, %101 ], [ 1, %93 ], [ %37, %87 ], [ %37, %71 ], [ %100, %94 ], [ %108, %105 ]
  call fastcc void @prop_set_simulate_again(ptr noundef %38, i8 noundef zeroext %74) #15
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !100
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %36, label %12, !prof !146, !llvm.loop !147

113:                                              ; preds = %12, %0
  %114 = phi i8 [ 0, %0 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  ret i8 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_complex_lattice_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !149 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !150 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !151
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !153 {
  %2 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !102
  %3 = tail call fastcc i32 @VEC_complex_lattice_t_base_length(ptr noundef %2) #15
  tail call fastcc void @VEC_complex_lattice_t_heap_safe_grow(i32 noundef %0) #15
  %4 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !102
  %5 = tail call fastcc ptr @VEC_complex_lattice_t_base_address(ptr noundef %4) #15
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_parameter_lattice_values() unnamed_addr #0 !prof !148 !PGOFuncName !154 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %0, %22
  %8 = phi ptr [ %24, %22 ], [ %5, %0 ]
  %9 = tail call fastcc zeroext i8 @is_complex_reg(ptr noundef nonnull %8) #15, !range !100
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @var_ann(ptr noundef nonnull %8) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @cfun, align 8, !tbaa !102
  %16 = tail call ptr @gimple_default_def(ptr noundef %15, ptr noundef nonnull %8) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @complex_lattice_values, align 8
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !141
  tail call fastcc void @VEC_complex_lattice_t_base_replace(ptr noundef %19, i32 noundef %21, i32 noundef 3) #15
  br label %22

22:                                               ; preds = %7, %11, %14, %18
  %23 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !156

26:                                               ; preds = %22, %0
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @complex_visit_stmt(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #0 !prof !148 !PGOFuncName !157 {
  %4 = tail call ptr @gimple_get_lhs(ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.3) #16
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 13
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 314, ptr noundef nonnull @.str.3) #16
  br label %18

18:                                               ; preds = %11, %17
  store ptr %4, ptr %2, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !141
  %21 = load ptr, ptr @complex_lattice_values, align 8
  %22 = tail call fastcc i32 @VEC_complex_lattice_t_base_index(ptr noundef %21, i32 noundef %20) #15
  %23 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !139
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %59 [
    i16 141, label %25
    i16 26, label %25
    i16 123, label %28
    i16 63, label %32
    i16 64, label %32
    i16 65, label %38
    i16 75, label %38
    i16 67, label %38
    i16 68, label %38
    i16 69, label %38
    i16 70, label %38
    i16 79, label %56
    i16 124, label %56
  ]

25:                                               ; preds = %18, %18
  %26 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %27 = tail call fastcc i32 @find_lattice_value(ptr noundef %26) #15
  br label %59

28:                                               ; preds = %18
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %30 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #15
  %31 = tail call fastcc i32 @find_lattice_value_parts(ptr noundef %29, ptr noundef %30) #15, !range !158
  br label %59

32:                                               ; preds = %18, %18
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %34 = tail call fastcc i32 @find_lattice_value(ptr noundef %33) #15
  %35 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #15
  %36 = tail call fastcc i32 @find_lattice_value(ptr noundef %35) #15
  %37 = or i32 %36, %34
  br label %59

38:                                               ; preds = %18, %18, %18, %18, %18, %18
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %40 = tail call fastcc i32 @find_lattice_value(ptr noundef %39) #15
  %41 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #15
  %42 = tail call fastcc i32 @find_lattice_value(ptr noundef %41) #15
  %43 = icmp eq i32 %40, 3
  %44 = icmp eq i32 %42, 3
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %38
  %47 = icmp eq i32 %40, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %46
  %49 = icmp eq i32 %42, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %48
  %51 = add nsw i32 %40, -1
  %52 = add nsw i32 %42, -1
  %53 = xor i32 %52, %51
  %54 = add nsw i32 %53, 1
  %55 = or i32 %54, %22
  br label %59

56:                                               ; preds = %18, %18
  %57 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %58 = tail call fastcc i32 @find_lattice_value(ptr noundef %57) #15
  br label %59

59:                                               ; preds = %18, %48, %46, %38, %50, %56, %32, %28, %25
  %60 = phi i32 [ %58, %56 ], [ %55, %50 ], [ %37, %32 ], [ %31, %28 ], [ %27, %25 ], [ 3, %38 ], [ %42, %46 ], [ %40, %48 ], [ 3, %18 ]
  %61 = icmp eq i32 %60, %22
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @complex_lattice_values, align 8
  tail call fastcc void @VEC_complex_lattice_t_base_replace(ptr noundef %63, i32 noundef %20, i32 noundef %60) #15
  %64 = icmp eq i32 %60, 3
  %65 = select i1 %64, i32 2, i32 1
  br label %66

66:                                               ; preds = %59, %3, %62
  %67 = phi i32 [ %65, %62 ], [ 2, %3 ], [ 0, %59 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @complex_visit_phi(ptr noundef %0) #0 !prof !148 !PGOFuncName !159 {
  %2 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 13
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 405, ptr noundef nonnull @.str.3) #16
  br label %9

9:                                                ; preds = %1, %8
  %10 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #15
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ %14, %13 ], [ %21, %15 ]
  %17 = phi i32 [ 0, %13 ], [ %20, %15 ]
  %18 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %16) #15
  %19 = tail call fastcc i32 @find_lattice_value(ptr noundef %18) #15
  %20 = or i32 %19, %17
  %21 = add nsw i64 %16, -1
  %22 = icmp eq i64 %16, 0
  br i1 %22, label %23, label %15, !llvm.loop !160

23:                                               ; preds = %15, %9
  %24 = phi i32 [ 0, %9 ], [ %20, %15 ]
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !141
  %27 = load ptr, ptr @complex_lattice_values, align 8
  %28 = tail call fastcc i32 @VEC_complex_lattice_t_base_index(ptr noundef %27, i32 noundef %26) #15
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  tail call fastcc void @VEC_complex_lattice_t_base_replace(ptr noundef %27, i32 noundef %26, i32 noundef %24) #15
  %31 = icmp eq i32 %24, 3
  %32 = select i1 %31, i32 2, i32 1
  br label %33

33:                                               ; preds = %23, %30
  %34 = phi i32 [ %32, %30 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @int_tree_map_hash(ptr noundef) #4

; Function Attrs: optsize
declare i32 @int_tree_map_eq(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !161 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !162 {
  %2 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !102
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #15
  tail call fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) #15
  %4 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !102
  %5 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %4) #15
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_parameter_components() unnamed_addr #0 !prof !148 !PGOFuncName !163 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !102
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = tail call fastcc ptr @single_succ_edge(ptr noundef %4) #15
  %6 = load ptr, ptr @cfun, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = getelementptr inbounds %struct.tree_decl_non_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %0, %31
  %13 = phi ptr [ %33, %31 ], [ %10, %0 ]
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 13
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %13) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = load ptr, ptr @cfun, align 8, !tbaa !102
  %26 = tail call ptr @gimple_default_def(ptr noundef %25, ptr noundef nonnull %13) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %24, ptr noundef nonnull %26) #16
  %30 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %24, ptr noundef nonnull %26) #16
  tail call fastcc void @update_complex_components_on_edge(ptr noundef %5, ptr noundef nonnull %26, ptr noundef %29, ptr noundef %30) #15
  br label %31

31:                                               ; preds = %22, %12, %19, %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !164

35:                                               ; preds = %31, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_phi_components(ptr noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !165 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #16
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !100
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %1, %52
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %7 = call fastcc ptr @gimple_phi_result(ptr noundef %6) #15
  %8 = call fastcc zeroext i8 @is_complex_reg(ptr noundef %7) #15, !range !100
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %5
  %11 = call fastcc ptr @gimple_phi_result(ptr noundef %6) #15
  %12 = call fastcc ptr @get_component_ssa_name(ptr noundef %11, i8 noundef zeroext 0) #15
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call ptr @create_phi_node(ptr noundef nonnull %12, ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !141
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %17, %16 ], [ null, %10 ]
  %21 = call fastcc ptr @gimple_phi_result(ptr noundef %6) #15
  %22 = call fastcc ptr @get_component_ssa_name(ptr noundef %21, i8 noundef zeroext 1) #15
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call ptr @create_phi_node(ptr noundef nonnull %22, ptr noundef %0) #16
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !141
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi ptr [ %27, %26 ], [ null, %19 ]
  %31 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %20, null
  %35 = icmp eq ptr %30, null
  %36 = zext i32 %31 to i64
  br label %37

37:                                               ; preds = %33, %49
  %38 = phi i64 [ 0, %33 ], [ %50, %49 ]
  %39 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %6, i64 noundef %38) #15
  br i1 %34, label %44, label %40

40:                                               ; preds = %37
  %41 = call fastcc ptr @extract_component(ptr noundef null, ptr noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %42 = trunc i64 %38 to i32
  %43 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %20, i32 noundef %42) #15
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %43, ptr noundef %41) #15
  br label %44

44:                                               ; preds = %40, %37
  br i1 %35, label %49, label %45

45:                                               ; preds = %44
  %46 = call fastcc ptr @extract_component(ptr noundef null, ptr noundef %39, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  %47 = trunc i64 %38 to i32
  %48 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %30, i32 noundef %47) #15
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %48, ptr noundef %46) #15
  br label %49

49:                                               ; preds = %45, %44
  %50 = add nuw nsw i64 %38, 1
  %51 = icmp eq i64 %50, %36
  br i1 %51, label %52, label %37, !llvm.loop !166

52:                                               ; preds = %49, %29, %5
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !100
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %5, label %55, !llvm.loop !167

55:                                               ; preds = %52, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !168 !PGOFuncName !169 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !174 !PGOFuncName !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_operations_1(ptr noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !176 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %3 = tail call ptr @gimple_get_lhs(ptr noundef %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %2) #15, !range !136
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %112

8:                                                ; preds = %5, %1
  %9 = tail call fastcc ptr @gimple_op(ptr noundef %2, i32 noundef 0) #15
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = tail call fastcc i32 @gimple_expr_code(ptr noundef %2) #15, !range !139
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %28 [
    i16 63, label %14
    i16 64, label %14
    i16 65, label %14
    i16 67, label %14
    i16 68, label %14
    i16 69, label %14
    i16 70, label %14
    i16 75, label %14
    i16 79, label %14
    i16 124, label %14
    i16 101, label %21
    i16 102, label %21
  ]

14:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %15 = load i64, ptr %11, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 13
  br i1 %17, label %18, label %112

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  br label %58

21:                                               ; preds = %8, %8
  %22 = tail call fastcc ptr @gimple_op(ptr noundef %2, i32 noundef 1) #15
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 13
  br i1 %27, label %58, label %112

28:                                               ; preds = %8
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %2) #15, !range !136
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %112, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr %11, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 13
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call fastcc void @expand_complex_move(ptr noundef %0, ptr noundef nonnull %11) #15
  br label %112

36:                                               ; preds = %31
  %37 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #15, !range !100
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %112, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #15, !range !139
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #15, !range !139
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %112

45:                                               ; preds = %42, %39
  %46 = load i64, ptr %3, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %112

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #15
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !141
  %53 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #15, !range !139
  %54 = icmp eq i32 %53, 44
  %55 = zext i1 %54 to i8
  %56 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef %52, i8 noundef zeroext %55, i8 noundef zeroext 0) #15
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %56) #16
  %57 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  tail call fastcc void @update_stmt(ptr noundef %57) #15
  br label %112

58:                                               ; preds = %21, %18
  %59 = phi ptr [ %24, %21 ], [ %20, %18 ]
  %60 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #15, !range !100
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #15
  %64 = tail call fastcc i32 @gimple_num_ops(ptr noundef %2) #15
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #15
  br label %71

68:                                               ; preds = %58
  %69 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %2) #15
  %70 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %2) #15
  br label %71

71:                                               ; preds = %66, %62, %68
  %72 = phi ptr [ %69, %68 ], [ %63, %62 ], [ %63, %66 ]
  %73 = phi ptr [ %70, %68 ], [ null, %62 ], [ %67, %66 ]
  %74 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef %72, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  %75 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef %72, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %76 = icmp eq ptr %72, %73
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = icmp eq ptr %73, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef nonnull %73, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  %81 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef nonnull %73, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %82

82:                                               ; preds = %77, %71, %79
  %83 = phi ptr [ %80, %79 ], [ %74, %71 ], [ null, %77 ]
  %84 = phi ptr [ %81, %79 ], [ %75, %71 ], [ null, %77 ]
  %85 = load ptr, ptr @cfun, align 8, !tbaa !102
  %86 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %85) #15, !range !100
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @find_lattice_value(ptr noundef %72) #15
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 3, i32 %89
  %92 = zext nneg i32 %12 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !177
  %95 = icmp eq i32 %94, 6
  %96 = or i1 %76, %95
  %97 = select i1 %95, i32 0, i32 %91
  br i1 %96, label %102, label %98

98:                                               ; preds = %88
  %99 = tail call fastcc i32 @find_lattice_value(ptr noundef %73) #15
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 3, i32 %99
  br label %102

102:                                              ; preds = %88, %82, %98
  %103 = phi i32 [ %91, %98 ], [ %91, %88 ], [ 3, %82 ]
  %104 = phi i32 [ %101, %98 ], [ %97, %88 ], [ 3, %82 ]
  switch i16 %13, label %111 [
    i16 63, label %105
    i16 64, label %105
    i16 65, label %106
    i16 67, label %107
    i16 68, label %107
    i16 69, label %107
    i16 70, label %107
    i16 75, label %107
    i16 79, label %108
    i16 124, label %109
    i16 101, label %110
    i16 102, label %110
  ]

105:                                              ; preds = %102, %102
  tail call fastcc void @expand_complex_addition(ptr noundef %0, ptr noundef %59, ptr noundef %74, ptr noundef %75, ptr noundef %83, ptr noundef %84, i32 noundef %12, i32 noundef %103, i32 noundef %104) #15
  br label %112

106:                                              ; preds = %102
  tail call fastcc void @expand_complex_multiplication(ptr noundef %0, ptr noundef %59, ptr noundef %74, ptr noundef %75, ptr noundef %83, ptr noundef %84, i32 noundef %103, i32 noundef %104) #15
  br label %112

107:                                              ; preds = %102, %102, %102, %102, %102
  tail call fastcc void @expand_complex_division(ptr noundef %0, ptr noundef %59, ptr noundef %74, ptr noundef %75, ptr noundef %83, ptr noundef %84, i32 noundef %12, i32 noundef %103, i32 noundef %104) #15
  br label %112

108:                                              ; preds = %102
  tail call fastcc void @expand_complex_negation(ptr noundef %0, ptr noundef %59, ptr noundef %74, ptr noundef %75) #15
  br label %112

109:                                              ; preds = %102
  tail call fastcc void @expand_complex_conjugate(ptr noundef %0, ptr noundef %59, ptr noundef %74, ptr noundef %75) #15
  br label %112

110:                                              ; preds = %102, %102
  tail call fastcc void @expand_complex_comparison(ptr noundef %0, ptr noundef %74, ptr noundef %75, ptr noundef %83, ptr noundef %84, i32 noundef %12) #15
  br label %112

111:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1563, ptr noundef nonnull @.str.3) #16
  br label %112

112:                                              ; preds = %105, %106, %107, %108, %109, %110, %111, %28, %36, %42, %45, %49, %35, %21, %14, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !178 !PGOFuncName !179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  store ptr %4, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #4

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #8 !prof !148 !PGOFuncName !182 {
  %1 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !102
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @complex_ssa_name_components, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_free() unnamed_addr #8 !prof !148 !PGOFuncName !183 {
  %1 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !102
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @complex_lattice_values, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !178 !PGOFuncName !184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !178 !PGOFuncName !186 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_complex_reg(ptr noundef %0) unnamed_addr #0 !prof !187 !PGOFuncName !188 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 13
  br i1 %6, label %7, label %11, !prof !189

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %0) #16
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i8 [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !190 !PGOFuncName !191 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !192 !PGOFuncName !193 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !194 !PGOFuncName !195 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !196 !PGOFuncName !197 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !198 !PGOFuncName !199 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !139
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !136
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !200

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !201 !PGOFuncName !202 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !203 !PGOFuncName !204 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !141
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !205 !PGOFuncName !206 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !207

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #15
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !208 !PGOFuncName !209 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !208 !PGOFuncName !210 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !211 !PGOFuncName !212 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !136
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare zeroext i8 @ssa_undefined_value_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !178 !PGOFuncName !213 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 9
  %7 = and i32 %3, -513
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !214 !PGOFuncName !215 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !100
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !216

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !214 !PGOFuncName !217 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !136
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !214 !PGOFuncName !218 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !219
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !216

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !214 !PGOFuncName !220 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !136
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !214 !PGOFuncName !221 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !177
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 !prof !198 !PGOFuncName !222 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !141
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !223 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !224
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !226 {
  %2 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !224
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_complex_lattice_t_heap_reserve_exact(i32 noundef %8) #15
  %9 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !102, !nonnull !227, !noundef !227
  store i32 %0, ptr %9, align 4, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_complex_lattice_t_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !148 !PGOFuncName !228 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !229 {
  %2 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !102
  %3 = tail call fastcc i32 @VEC_complex_lattice_t_base_space(ptr noundef %2, i32 noundef %0) #15, !range !230
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #16
  store ptr %6, ptr @complex_lattice_values, align 8, !tbaa !102
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !148 !PGOFuncName !231 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !232
  %7 = load i32, ptr %0, align 4, !tbaa !224
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !148 !PGOFuncName !233 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_complex_lattice_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !148 !PGOFuncName !234 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %0, i64 0, i32 2, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !177
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !148 !PGOFuncName !235 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !177
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_lattice_value(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !148 !PGOFuncName !236 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %15 [
    i16 141, label %4
    i16 26, label %9
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @complex_lattice_values, align 8
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !141
  %8 = tail call fastcc i32 @VEC_complex_lattice_t_base_index(ptr noundef %5, i32 noundef %7) #15
  br label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = tail call fastcc i32 @find_lattice_value_parts(ptr noundef %11, ptr noundef %13) #15, !range !158
  br label %16

15:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 158, ptr noundef nonnull @.str.3) #16
  unreachable

16:                                               ; preds = %9, %4
  %17 = phi i32 [ %14, %9 ], [ %8, %4 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_lattice_value_parts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !237 {
  %3 = tail call fastcc i32 @some_nonzerop(ptr noundef %0) #15, !range !230
  %4 = tail call fastcc i32 @some_nonzerop(ptr noundef %1) #15, !range !230
  %5 = shl nuw nsw i32 %4, 1
  %6 = or disjoint i32 %5, %3
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @some_nonzerop(ptr noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !238 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp ne i64 %3, 24
  %5 = load i32, ptr @flag_signed_zeros, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = tail call zeroext i8 @real_identical(ptr noundef %10, ptr noundef nonnull @dconst0) #16
  %12 = zext i8 %11 to i32
  br label %19

13:                                               ; preds = %1
  %14 = trunc i64 %2 to i16
  switch i16 %14, label %19 [
    i16 25, label %15
    i16 23, label %17
  ]

15:                                               ; preds = %13
  %16 = tail call i32 @fixed_zerop(ptr noundef nonnull %0) #16
  br label %19

17:                                               ; preds = %13
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %13, %15, %17, %8
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], [ %12, %8 ], [ 0, %13 ]
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: optsize
declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @fixed_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !239 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !141
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !240 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #15
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #15
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !241 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !141
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !148 !PGOFuncName !242 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !245 {
  %2 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !151
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %8) #15
  %9 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !102, !nonnull !227, !noundef !227
  store i32 %0, ptr %9, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !148 !PGOFuncName !246 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !247 {
  %2 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !102
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #15, !range !230
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #16
  store ptr %6, ptr @complex_ssa_name_components, align 8, !tbaa !102
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !148 !PGOFuncName !248 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !249
  %7 = load i32, ptr %0, align 8, !tbaa !151
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !148 !PGOFuncName !250 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #15, !range !100
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.3) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !251
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #15
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_complex_components_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !148 !PGOFuncName !252 {
  %5 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %2) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %8

8:                                                ; preds = %7, %4
  %9 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %3) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef nonnull %9) #16
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !148 !PGOFuncName !253 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !148 !PGOFuncName !254 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !255 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !256
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @set_component_ssa_name(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !148 !PGOFuncName !258 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc i32 @find_lattice_value(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %6 = icmp eq i8 %1, 0
  %7 = select i1 %6, i32 2, i32 1
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %65, label %9

9:                                                ; preds = %3
  %10 = zext nneg i8 %1 to i32
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !141
  %13 = shl i32 %12, 1
  %14 = add i32 %13, %10
  %15 = load ptr, ptr @complex_ssa_name_components, align 8
  %16 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %15, i32 noundef %14) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %9
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 4194304
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr @complex_ssa_name_components, align 8
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %26, i32 noundef %14, ptr noundef %2) #15
  br label %65

27:                                               ; preds = %21, %18
  %28 = load i64, ptr %2, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 4194304
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !141
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %37, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 1024
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 1024
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = tail call fastcc ptr @get_component_var(ptr noundef nonnull %44, i8 noundef zeroext %1) #15
  tail call void @replace_ssa_name_symbol(ptr noundef nonnull %2, ptr noundef %50) #16
  br label %51

51:                                               ; preds = %49, %42, %35
  %52 = load ptr, ptr @complex_ssa_name_components, align 8
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %52, i32 noundef %14, ptr noundef nonnull %2) #15
  br label %65

53:                                               ; preds = %31, %27
  %54 = tail call fastcc ptr @get_component_ssa_name(ptr noundef nonnull %0, i8 noundef zeroext %1) #15
  br label %55

55:                                               ; preds = %9, %53
  %56 = phi ptr [ %16, %9 ], [ %54, %53 ]
  store ptr null, ptr %4, align 8, !tbaa !102
  %57 = call ptr @force_gimple_operand(ptr noundef %2, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef null) #16
  %58 = call ptr @gimple_build_assign_stat(ptr noundef %56, ptr noundef %57) #16
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %58) #16
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !141
  %61 = icmp eq ptr %60, %58
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 578, ptr noundef nonnull @.str.3) #16
  br label %63

63:                                               ; preds = %55, %62
  %64 = load ptr, ptr %4, align 8, !tbaa !102
  br label %65

65:                                               ; preds = %3, %63, %51, %25
  %66 = phi ptr [ %64, %63 ], [ null, %51 ], [ null, %25 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %66
}

; Function Attrs: optsize
declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !148 !PGOFuncName !259 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !148 !PGOFuncName !260 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_component_var(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !148 !PGOFuncName !261 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !141
  %5 = shl i32 %4, 1
  %6 = zext nneg i8 %1 to i32
  %7 = add i32 %5, %6
  %8 = tail call fastcc ptr @cvc_lookup(i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = icmp eq i8 %1, 0
  %16 = select i1 %15, ptr @.str.7, ptr @.str.6
  %17 = select i1 %15, ptr @.str.9, ptr @.str.8
  %18 = select i1 %15, i32 43, i32 44
  %19 = tail call fastcc ptr @create_one_component_var(ptr noundef %14, ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %18) #15
  tail call fastcc void @cvc_insert(i32 noundef %7, ptr noundef %19) #15
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi ptr [ %19, %10 ], [ %8, %2 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @replace_ssa_name_symbol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_component_ssa_name(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !148 !PGOFuncName !262 {
  %3 = tail call fastcc i32 @find_lattice_value(ptr noundef %0) #15
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i32 2, i32 1
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !141
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 9
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call ptr @build_real(ptr noundef nonnull %11, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #16
  br label %53

17:                                               ; preds = %7
  %18 = tail call ptr @build_int_cst(ptr noundef nonnull %11, i64 noundef 0) #16
  br label %53

19:                                               ; preds = %2
  %20 = zext nneg i8 %1 to i32
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !141
  %23 = shl i32 %22, 1
  %24 = add i32 %23, %20
  %25 = load ptr, ptr @complex_ssa_name_components, align 8
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %24) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !141
  %31 = tail call fastcc ptr @get_component_var(ptr noundef %30, i8 noundef zeroext %1) #15
  %32 = tail call fastcc ptr @make_ssa_name(ptr noundef %31, ptr noundef null) #15
  %33 = load i64, ptr %0, align 8
  %34 = and i64 %33, 4194304
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, -4194305
  %37 = or disjoint i64 %36, %34
  store i64 %37, ptr %32, align 8
  %38 = load ptr, ptr %29, align 8, !tbaa !141
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 32
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %44) #15, !range !100
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %32, i64 0, i32 2
  store ptr %44, ptr %48, align 8, !tbaa !141
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %32, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !141
  tail call void @set_default_def(ptr noundef %50, ptr noundef nonnull %32) #16
  br label %51

51:                                               ; preds = %47, %42, %28
  %52 = load ptr, ptr @complex_ssa_name_components, align 8
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %52, i32 noundef %24, ptr noundef nonnull %32) #15
  br label %53

53:                                               ; preds = %19, %51, %15, %17
  %54 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %32, %51 ], [ %26, %19 ]
  ret ptr %54
}

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cvc_lookup(i32 noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !263 {
  %2 = alloca %struct.int_tree_map, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  store i32 %0, ptr %2, align 8, !tbaa !264
  %3 = load ptr, ptr @complex_variable_components, align 8, !tbaa !102
  %4 = call ptr @htab_find_with_hash(ptr noundef %3, ptr noundef nonnull %2, i32 noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.int_tree_map, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !266
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_one_component_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !148 !PGOFuncName !267 {
  %6 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %2) #16
  %7 = tail call zeroext i8 @add_referenced_var(ptr noundef %6) #16
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !141
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !141
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = or i64 %12, 4096
  store i64 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !141
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 1024
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = tail call i64 (ptr, ...) @concat_length(ptr noundef %24, ptr noundef %3, ptr noundef null) #16
  %26 = add i64 %25, 1
  %27 = alloca i8, i64 %26, align 16
  store ptr %27, ptr @libiberty_concat_ptr, align 8, !tbaa !102
  %28 = call ptr (ptr, ...) @concat_copy2(ptr noundef %24, ptr noundef %3, ptr noundef null) #16
  %29 = call ptr @get_identifier(ptr noundef %28) #16
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !141
  %31 = call ptr @build1_stat(i32 noundef %4, ptr noundef %0, ptr noundef nonnull %1) #16
  call void @decl_debug_expr_insert(ptr noundef nonnull %6, ptr noundef %31) #16
  %32 = load i64, ptr %11, align 8
  %33 = and i64 %32, -17409
  %34 = or disjoint i64 %33, 16384
  store i64 %34, ptr %11, align 8
  %35 = load i64, ptr %1, align 8
  %36 = and i64 %35, 8388608
  %37 = load i64, ptr %6, align 8
  %38 = and i64 %37, -8388609
  %39 = or disjoint i64 %38, %36
  br label %44

40:                                               ; preds = %17, %5
  %41 = or i64 %12, 5120
  store i64 %41, ptr %11, align 8
  %42 = load i64, ptr %6, align 8
  %43 = or i64 %42, 8388608
  br label %44

44:                                               ; preds = %40, %22
  %45 = phi i64 [ %39, %22 ], [ %43, %40 ]
  store i64 %45, ptr %6, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cvc_insert(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !268 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #16
  store i32 %0, ptr %3, align 8, !tbaa !264
  %4 = getelementptr inbounds %struct.int_tree_map, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !266
  %5 = load ptr, ptr @complex_variable_components, align 8, !tbaa !102
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %0, i32 noundef 1) #16
  store ptr %3, ptr %6, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !269 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !102
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !270 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !136
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @extract_component(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !148 !PGOFuncName !271 {
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %28 [
    i16 26, label %7
    i16 123, label %13
    i16 32, label %14
    i16 36, label %14
    i16 34, label %14
    i16 47, label %14
    i16 41, label %14
    i16 45, label %14
    i16 118, label %14
    i16 141, label %26
  ]

7:                                                ; preds = %4
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  br label %29

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 597, ptr noundef nonnull @.str.3) #16
  br label %14

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %13
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = icmp eq i8 %2, 0
  %20 = select i1 %19, i32 43, i32 44
  %21 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #16
  %22 = tail call ptr @build1_stat(i32 noundef %20, ptr noundef %18, ptr noundef %21) #16
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %22, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  br label %29

26:                                               ; preds = %4
  %27 = tail call fastcc ptr @get_component_ssa_name(ptr noundef nonnull %1, i8 noundef zeroext %2) #15
  br label %29

28:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 623, ptr noundef nonnull @.str.3) #16
  br label %29

29:                                               ; preds = %14, %24, %28, %26, %7
  %30 = phi ptr [ null, %28 ], [ %27, %26 ], [ %12, %7 ], [ %25, %24 ], [ %22, %14 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !148 !PGOFuncName !272 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  store ptr %1, ptr %4, align 8, !tbaa !102
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !273 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !148 !PGOFuncName !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !275
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !276
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !276
  store ptr %2, ptr %6, align 8, !tbaa !275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !148 !PGOFuncName !277 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !275
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #15
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !148 !PGOFuncName !278 {
  store ptr %1, ptr %0, align 8, !tbaa !275
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !276
  store ptr %0, ptr %4, align 8, !tbaa !275
  store ptr %0, ptr %3, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !168 !PGOFuncName !279 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !280
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !281

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !282

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !283
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !168 !PGOFuncName !285 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !282

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !286
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_move(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !148 !PGOFuncName !288 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %7) #15, !range !100
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %7) #15
  %12 = tail call fastcc i32 @gimple_num_ops(ptr noundef %7) #15
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %7) #15
  br label %22

16:                                               ; preds = %2
  %17 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #15, !range !100
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %7) #15
  br label %22

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 781, ptr noundef nonnull @.str.3) #16
  br label %22

22:                                               ; preds = %10, %19, %21, %14
  %23 = phi ptr [ %15, %14 ], [ null, %19 ], [ undef, %21 ], [ null, %10 ]
  %24 = phi ptr [ %11, %14 ], [ %20, %19 ], [ undef, %21 ], [ %11, %10 ]
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  %29 = tail call zeroext i8 @is_ctrl_altering_stmt(ptr noundef %7) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %32 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 1
  %34 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %33) #15
  store i32 0, ptr %3, align 8, !tbaa.struct !289
  %35 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %34, ptr %35, align 8, !tbaa.struct !290
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %34, ptr noundef nonnull %4) #15, !range !100
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %31, %44
  %39 = load ptr, ptr %4, align 8, !tbaa !102
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !291
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  call fastcc void @ei_next(ptr noundef nonnull %3) #15
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %35, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %4) #15, !range !100
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %38, !llvm.loop !293

49:                                               ; preds = %44, %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 796, ptr noundef nonnull @.str.3) #16
  %50 = load ptr, ptr %4, align 8, !tbaa !102
  br label %51

51:                                               ; preds = %38, %49
  %52 = phi ptr [ %50, %49 ], [ %39, %38 ]
  %53 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %6, ptr noundef nonnull %24) #16
  %54 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %6, ptr noundef nonnull %24) #16
  tail call fastcc void @update_complex_components_on_edge(ptr noundef %52, ptr noundef nonnull %24, ptr noundef %53, ptr noundef %54) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %108

55:                                               ; preds = %28
  %56 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #15, !range !100
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %7) #16
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %7) #15, !range !139
  %63 = icmp eq i32 %62, 112
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58, %55
  %65 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %6, ptr noundef nonnull %24) #16
  %66 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %6, ptr noundef nonnull %24) #16
  tail call fastcc void @update_complex_components(ptr noundef %0, ptr noundef %7, ptr noundef %65, ptr noundef %66) #15
  br label %108

67:                                               ; preds = %61
  %68 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %7) #15, !range !139
  %69 = icmp eq i32 %68, 123
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  %72 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %76

73:                                               ; preds = %67
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %7) #15
  %75 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %7) #15
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi ptr [ %72, %70 ], [ %75, %73 ]
  %78 = phi ptr [ %71, %70 ], [ %74, %73 ]
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %78, ptr noundef %77) #15
  br label %108

79:                                               ; preds = %22
  %80 = icmp eq ptr %23, null
  br i1 %80, label %108, label %81

81:                                               ; preds = %79
  %82 = load i64, ptr %23, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 141
  %85 = and i64 %25, 65536
  %86 = icmp eq i64 %85, 0
  %87 = and i1 %86, %84
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef nonnull %23, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %90 = tail call fastcc ptr @extract_component(ptr noundef %0, ptr noundef nonnull %23, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  %91 = tail call ptr @unshare_expr(ptr noundef nonnull %24) #16
  %92 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %6, ptr noundef %91) #16
  %93 = tail call ptr @gimple_build_assign_stat(ptr noundef %92, ptr noundef %89) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %93, i32 noundef 1) #16
  %94 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %95 = icmp eq ptr %7, %94
  %96 = tail call ptr @unshare_expr(ptr noundef nonnull %24) #16
  %97 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %6, ptr noundef %96) #16
  br i1 %95, label %98, label %99

98:                                               ; preds = %88
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %7, ptr noundef %97) #15
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %7, ptr noundef %90) #15
  br label %106

99:                                               ; preds = %88
  %100 = tail call ptr @gimple_build_assign_stat(ptr noundef %97, ptr noundef %90) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %100, i32 noundef 1) #16
  %101 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %102 = tail call fastcc i32 @gimple_code(ptr noundef %101) #15, !range !136
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 851, ptr noundef nonnull @.str.3) #16
  br label %105

105:                                              ; preds = %99, %104
  tail call fastcc void @gimple_return_set_retval(ptr noundef %101, ptr noundef nonnull %24) #15
  br label %106

106:                                              ; preds = %105, %98
  %107 = phi ptr [ %7, %98 ], [ %101, %105 ]
  tail call fastcc void @update_stmt(ptr noundef %107) #15
  br label %108

108:                                              ; preds = %79, %81, %106, %51, %76, %64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !294 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !136
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !295 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !100
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #16
  tail call void @update_stmt_operands(ptr noundef %0) #16
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #1 !prof !148 !PGOFuncName !296 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_addition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !prof !148 !PGOFuncName !297 {
  %10 = shl i32 %7, 2
  %11 = or i32 %10, %8
  switch i32 %11, label %39 [
    i32 5, label %12
    i32 6, label %14
    i32 9, label %18
    i32 10, label %22
    i32 13, label %24
    i32 14, label %26
    i32 7, label %28
    i32 11, label %32
    i32 15, label %36
  ]

12:                                               ; preds = %9
  %13 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  br label %40

14:                                               ; preds = %9
  %15 = icmp eq i32 %6, 64
  br i1 %15, label %16, label %40

16:                                               ; preds = %14
  %17 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  br label %40

18:                                               ; preds = %9
  %19 = icmp eq i32 %6, 64
  br i1 %19, label %20, label %40

20:                                               ; preds = %18
  %21 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  br label %40

22:                                               ; preds = %9
  %23 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  br label %40

24:                                               ; preds = %9
  %25 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  br label %40

26:                                               ; preds = %9
  %27 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  br label %40

28:                                               ; preds = %9
  %29 = icmp eq i32 %6, 64
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  br label %40

32:                                               ; preds = %9
  %33 = icmp eq i32 %6, 64
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  br label %40

36:                                               ; preds = %9, %32, %28
  %37 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  %38 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  br label %40

39:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 931, ptr noundef nonnull @.str.3) #16
  unreachable

40:                                               ; preds = %20, %18, %14, %16, %36, %34, %30, %26, %24, %22, %12
  %41 = phi ptr [ %37, %36 ], [ %4, %34 ], [ %31, %30 ], [ %2, %26 ], [ %25, %24 ], [ %2, %22 ], [ %2, %16 ], [ %13, %12 ], [ %2, %14 ], [ %21, %20 ], [ %4, %18 ]
  %42 = phi ptr [ %38, %36 ], [ %35, %34 ], [ %5, %30 ], [ %27, %26 ], [ %3, %24 ], [ %23, %22 ], [ %17, %16 ], [ %3, %12 ], [ %5, %14 ], [ %3, %20 ], [ %3, %18 ]
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %41, ptr noundef %42) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_multiplication(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !148 !PGOFuncName !298 {
  %9 = icmp slt i32 %6, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %7, %10 ], [ %6, %8 ]
  %13 = phi i32 [ %6, %10 ], [ %7, %8 ]
  %14 = phi ptr [ %3, %10 ], [ %5, %8 ]
  %15 = phi ptr [ %2, %10 ], [ %4, %8 ]
  %16 = phi ptr [ %5, %10 ], [ %3, %8 ]
  %17 = phi ptr [ %4, %10 ], [ %2, %8 ]
  %18 = shl i32 %12, 2
  %19 = or i32 %18, %13
  switch i32 %19, label %64 [
    i32 5, label %20
    i32 9, label %22
    i32 10, label %33
    i32 13, label %36
    i32 14, label %39
    i32 15, label %43
  ]

20:                                               ; preds = %11
  %21 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %17, ptr noundef %15) #16
  br label %65

22:                                               ; preds = %11
  %23 = load i64, ptr %16, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_real_cst, ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !141
  %29 = tail call zeroext i8 @real_identical(ptr noundef %28, ptr noundef nonnull @dconst1) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26, %22
  %32 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef nonnull %16, ptr noundef %15) #16
  br label %65

33:                                               ; preds = %11
  %34 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %16, ptr noundef %14) #16
  %35 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %34) #16
  br label %65

36:                                               ; preds = %11
  %37 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %17, ptr noundef %15) #16
  %38 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %16, ptr noundef %15) #16
  br label %65

39:                                               ; preds = %11
  %40 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %16, ptr noundef %14) #16
  %41 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %40) #16
  %42 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %17, ptr noundef %14) #16
  br label %65

43:                                               ; preds = %11
  %44 = load i32, ptr @flag_complex_method, align 4, !tbaa !177
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i64, ptr %1, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 9
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call fastcc void @expand_complex_libcall(ptr noundef %0, ptr noundef %17, ptr noundef %16, ptr noundef %15, ptr noundef %14, i32 noundef 65) #15
  br label %68

51:                                               ; preds = %46, %43
  %52 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %17, ptr noundef %15) #16
  %53 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %16, ptr noundef %14) #16
  %54 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %17, ptr noundef %14) #16
  %55 = icmp eq ptr %17, %15
  %56 = icmp eq ptr %16, %14
  %57 = and i1 %56, %55
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %16, ptr noundef %15) #16
  br label %60

60:                                               ; preds = %51, %58
  %61 = phi ptr [ %59, %58 ], [ %54, %51 ]
  %62 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %52, ptr noundef %53) #16
  %63 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %54, ptr noundef %61) #16
  br label %65

64:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1063, ptr noundef nonnull @.str.3) #16
  br label %65

65:                                               ; preds = %26, %31, %64, %60, %39, %36, %33, %20
  %66 = phi ptr [ %2, %64 ], [ %62, %60 ], [ %41, %39 ], [ %37, %36 ], [ %35, %33 ], [ %17, %31 ], [ %21, %20 ], [ %17, %26 ]
  %67 = phi ptr [ %3, %64 ], [ %63, %60 ], [ %42, %39 ], [ %38, %36 ], [ %17, %33 ], [ %32, %31 ], [ %16, %20 ], [ %15, %26 ]
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %66, ptr noundef %67) #15
  br label %68

68:                                               ; preds = %65, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_division(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !prof !148 !PGOFuncName !299 {
  %10 = shl i32 %7, 2
  %11 = or i32 %10, %8
  switch i32 %11, label %38 [
    i32 5, label %12
    i32 6, label %14
    i32 9, label %17
    i32 10, label %19
    i32 13, label %21
    i32 14, label %24
    i32 7, label %28
    i32 11, label %28
    i32 15, label %28
  ]

12:                                               ; preds = %9
  %13 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  br label %39

14:                                               ; preds = %9
  %15 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %5) #16
  %16 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %15) #16
  br label %39

17:                                               ; preds = %9
  %18 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %4) #16
  br label %39

19:                                               ; preds = %9
  %20 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  br label %39

21:                                               ; preds = %9
  %22 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  %23 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %4) #16
  br label %39

24:                                               ; preds = %9
  %25 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  %26 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %5) #16
  %27 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %26) #16
  br label %28

28:                                               ; preds = %9, %9, %9, %24
  %29 = load i32, ptr @flag_complex_method, align 4, !tbaa !177
  switch i32 %29, label %37 [
    i32 0, label %30
    i32 2, label %31
    i32 1, label %36
  ]

30:                                               ; preds = %28
  tail call fastcc void @expand_complex_div_straight(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #15
  br label %42

31:                                               ; preds = %28
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 9
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call fastcc void @expand_complex_libcall(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #15
  br label %42

36:                                               ; preds = %31, %28
  tail call fastcc void @expand_complex_div_wide(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #15
  br label %42

37:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1323, ptr noundef nonnull @.str.3) #16
  br label %42

38:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1328, ptr noundef nonnull @.str.3) #16
  unreachable

39:                                               ; preds = %21, %19, %17, %14, %12
  %40 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %2, %17 ], [ %3, %14 ], [ %13, %12 ]
  %41 = phi ptr [ %23, %21 ], [ %2, %19 ], [ %18, %17 ], [ %16, %14 ], [ %3, %12 ]
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %40, ptr noundef %41) #15
  br label %42

42:                                               ; preds = %30, %35, %36, %37, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_negation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !148 !PGOFuncName !300 {
  %5 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %2) #16
  %6 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %3) #16
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %5, ptr noundef %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_conjugate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !148 !PGOFuncName !301 {
  %5 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 79, ptr noundef %1, ptr noundef %3) #16
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %2, ptr noundef %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_comparison(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !prof !148 !PGOFuncName !302 {
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !102
  %8 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %3) #16
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !102
  %10 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %5, ptr noundef %9, ptr noundef %2, ptr noundef %4) #16
  %11 = icmp eq i32 %5, 101
  %12 = select i1 %11, i32 93, i32 94
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !102
  %14 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %12, ptr noundef %13, ptr noundef %8, ptr noundef %10) #16
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %15) #15, !range !136
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %31 [
    i8 9, label %18
    i8 6, label %23
    i8 1, label %29
  ]

18:                                               ; preds = %6
  %19 = tail call fastcc ptr @gimple_return_retval(ptr noundef %15) #15
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !141
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %21, ptr noundef %14) #16
  tail call fastcc void @gimple_return_set_retval(ptr noundef %15, ptr noundef %22) #15
  br label %32

23:                                               ; preds = %6
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %15) #15
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !141
  %27 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %26, ptr noundef %14) #16
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %27) #16
  %28 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  br label %32

29:                                               ; preds = %6
  tail call fastcc void @gimple_cond_set_code(ptr noundef %15) #15
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %15, ptr noundef %14) #15
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !102
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %15, ptr noundef %30) #15
  br label %32

31:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1402, ptr noundef nonnull @.str.3) #16
  br label %32

32:                                               ; preds = %31, %29, %23, %18
  %33 = phi ptr [ %15, %31 ], [ %15, %29 ], [ %28, %23 ], [ %15, %18 ]
  tail call fastcc void @update_stmt(ptr noundef %33) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !303 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !136
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_altering_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !148 !PGOFuncName !304 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !148 !PGOFuncName !305 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !148 !PGOFuncName !306 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #15, !range !100
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #15
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !102
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !307 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #15
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #15
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.3) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !308
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !308
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_complex_components(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !148 !PGOFuncName !310 {
  %5 = tail call ptr @gimple_get_lhs(ptr noundef %1) #16
  %6 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gsi_insert_seq_after(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2) #16
  br label %9

9:                                                ; preds = %8, %4
  %10 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %5, i8 noundef zeroext 1, ptr noundef %3) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @gsi_insert_seq_after(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #16
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !148 !PGOFuncName !311 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !122
  %5 = load ptr, ptr @cfun, align 8, !tbaa !102
  %6 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %5) #15, !range !100
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  tail call fastcc void @update_complex_components(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %1, ptr noundef %2) #15
  br label %10

10:                                               ; preds = %8, %3
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %4, i32 noundef 123, ptr noundef %1, ptr noundef %2) #16
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  call fastcc void @update_stmt(ptr noundef %11) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !312 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #15
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !141
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !313 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_return_set_retval(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !314 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !148 !PGOFuncName !315 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #15
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !148 !PGOFuncName !316 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #15
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !148 !PGOFuncName !317 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.3) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !148 !PGOFuncName !318 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !100
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #16
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimplify_build2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimplify_build1(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_libcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !prof !148 !PGOFuncName !319 {
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %8 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = tail call i32 @vector_type_mode(ptr noundef nonnull %10) #16
  br label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !141
  %26 = icmp eq i8 %25, 11
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 954, ptr noundef nonnull @.str.3) #16
  br label %28

28:                                               ; preds = %21, %27
  switch i32 %5, label %33 [
    i32 65, label %29
    i32 75, label %31
  ]

29:                                               ; preds = %28
  %30 = add i32 %22, 662
  br label %34

31:                                               ; preds = %28
  %32 = add i32 %22, 666
  br label %34

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 963, ptr noundef nonnull @.str.3) #16
  br label %34

34:                                               ; preds = %31, %33, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ], [ undef, %33 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %38, i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %39, ptr noundef nonnull %8) #15
  tail call fastcc void @update_stmt(ptr noundef %39) #15
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %39, i8 noundef zeroext 0) #16
  %40 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %7, ptr noundef %39) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %44 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %43) #16
  br label %45

45:                                               ; preds = %42, %34
  %46 = load ptr, ptr @cfun, align 8, !tbaa !102
  %47 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %46) #15, !range !100
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !141
  %52 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %51, ptr noundef nonnull %8) #16
  %53 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %51, ptr noundef nonnull %8) #16
  tail call fastcc void @update_complex_components(ptr noundef %0, ptr noundef %39, ptr noundef %52, ptr noundef %53) #15
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %39, ptr %54, align 8, !tbaa !141
  br label %55

55:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !320 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #15
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !141
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_div_straight(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 !prof !148 !PGOFuncName !321 {
  %8 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %4, ptr noundef %4) #16
  %9 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %5, ptr noundef %5) #16
  %10 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %8, ptr noundef %9) #16
  %11 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %4) #16
  %12 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %3, ptr noundef %5) #16
  %13 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %11, ptr noundef %12) #16
  %14 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %13, ptr noundef %10) #16
  %15 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %3, ptr noundef %4) #16
  %16 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %5) #16
  %17 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %15, ptr noundef %16) #16
  %18 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %17, ptr noundef %10) #16
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %14, ptr noundef %18) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_complex_div_wide(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 !prof !148 !PGOFuncName !322 {
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 82, ptr noundef %1, ptr noundef %4) #16
  %12 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 82, ptr noundef %1, ptr noundef %5) #16
  %13 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %14 = tail call fastcc i32 @gimple_location(ptr noundef %13) #15
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !102
  %16 = tail call ptr @fold_build2_stat_loc(i32 noundef %14, i32 noundef 97, ptr noundef %15, ptr noundef %11, ptr noundef %12) #16
  %17 = tail call ptr @tree_strip_nop_conversions(ptr noundef %16) #16
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 23
  br i1 %20, label %55, label %21

21:                                               ; preds = %7
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !102
  %23 = tail call ptr @create_tmp_var(ptr noundef %22, ptr noundef null) #16
  %24 = tail call ptr @gimple_build_assign_stat(ptr noundef %23, ptr noundef nonnull %17) #16
  %25 = load ptr, ptr @cfun, align 8, !tbaa !102
  %26 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %25) #15, !range !100
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = tail call fastcc ptr @make_ssa_name(ptr noundef %23, ptr noundef %24) #15
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %24, ptr noundef %29) #15
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %29, %28 ], [ %23, %21 ]
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %24, i32 noundef 1) #16
  %32 = tail call fastcc i32 @gimple_location(ptr noundef %24) #15
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !102
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !102
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef %32, i32 noundef 101, ptr noundef %33, ptr noundef %31, ptr noundef %34) #16
  %36 = tail call ptr @gimple_build_cond_from_tree(ptr noundef %35, ptr noundef null, ptr noundef null) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %36, i32 noundef 1) #16
  %37 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %38 = tail call ptr @split_block(ptr noundef %37, ptr noundef %36) #16
  %39 = load ptr, ptr %38, align 8, !tbaa !323
  %40 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !324
  %42 = tail call ptr @create_empty_bb(ptr noundef %39) #16
  %43 = tail call ptr @create_empty_bb(ptr noundef %42) #16
  %44 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 7
  store i32 1024, ptr %44, align 8, !tbaa !291
  tail call void @redirect_edge_succ(ptr noundef nonnull %38, ptr noundef %42) #16
  %45 = tail call ptr @make_edge(ptr noundef %39, ptr noundef %43, i32 noundef 2048) #16
  %46 = tail call ptr @make_edge(ptr noundef %42, ptr noundef %41, i32 noundef 1) #16
  %47 = tail call ptr @make_edge(ptr noundef %43, ptr noundef %41, i32 noundef 1) #16
  %48 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %30
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %42, ptr noundef %39) #16
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %43, ptr noundef %39) #16
  br label %51

51:                                               ; preds = %30, %50
  %52 = tail call ptr @make_rename_temp(ptr noundef %1, ptr noundef null) #16
  %53 = tail call ptr @make_rename_temp(ptr noundef %1, ptr noundef null) #16
  %54 = icmp eq ptr %42, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %7, %51
  %56 = phi ptr [ %52, %51 ], [ null, %7 ]
  %57 = phi ptr [ %53, %51 ], [ null, %7 ]
  %58 = phi ptr [ %41, %51 ], [ null, %7 ]
  %59 = phi ptr [ %43, %51 ], [ null, %7 ]
  %60 = tail call i32 @integer_nonzerop(ptr noundef nonnull %17) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %64

62:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %42) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %63 = tail call ptr @gimple_build_nop() #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %63, i32 noundef 0) #16
  br label %64

64:                                               ; preds = %55, %62
  %65 = phi i1 [ false, %62 ], [ true, %55 ]
  %66 = phi ptr [ %52, %62 ], [ %56, %55 ]
  %67 = phi ptr [ %53, %62 ], [ %57, %55 ]
  %68 = phi ptr [ %41, %62 ], [ %58, %55 ]
  %69 = phi ptr [ %43, %62 ], [ %59, %55 ]
  %70 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %4, ptr noundef %5) #16
  %71 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %4, ptr noundef %70) #16
  %72 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %71, ptr noundef %5) #16
  %73 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %70) #16
  %74 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %73, ptr noundef %3) #16
  %75 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %3, ptr noundef %70) #16
  %76 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %75, ptr noundef %2) #16
  %77 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %74, ptr noundef %72) #16
  %78 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %76, ptr noundef %72) #16
  br i1 %65, label %82, label %79

79:                                               ; preds = %64
  %80 = tail call ptr @gimple_build_assign_stat(ptr noundef %66, ptr noundef %77) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %80, i32 noundef 1) #16
  %81 = tail call ptr @gimple_build_assign_stat(ptr noundef %67, ptr noundef %78) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %81, i32 noundef 1) #16
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 1) #16
  br label %82

82:                                               ; preds = %64, %79, %55
  %83 = phi ptr [ %66, %79 ], [ %66, %64 ], [ %56, %55 ]
  %84 = phi ptr [ %67, %79 ], [ %67, %64 ], [ %57, %55 ]
  %85 = phi ptr [ %68, %79 ], [ %68, %64 ], [ %58, %55 ]
  %86 = phi ptr [ %69, %79 ], [ %69, %64 ], [ %59, %55 ]
  %87 = phi ptr [ %77, %79 ], [ %77, %64 ], [ null, %55 ]
  %88 = phi ptr [ %78, %79 ], [ %78, %64 ], [ null, %55 ]
  %89 = icmp eq ptr %86, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = tail call i32 @integer_zerop(ptr noundef nonnull %17) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %108, label %95

93:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %86) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  %94 = tail call ptr @gimple_build_nop() #16
  tail call void @gsi_insert_after(ptr noundef %0, ptr noundef %94, i32 noundef 0) #16
  br label %95

95:                                               ; preds = %90, %93
  %96 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %5, ptr noundef %4) #16
  %97 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %5, ptr noundef %96) #16
  %98 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %97, ptr noundef %4) #16
  %99 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %3, ptr noundef %96) #16
  %100 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 63, ptr noundef %1, ptr noundef %99, ptr noundef %2) #16
  %101 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 65, ptr noundef %1, ptr noundef %2, ptr noundef %96) #16
  %102 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %3, ptr noundef %101) #16
  %103 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %100, ptr noundef %98) #16
  %104 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %102, ptr noundef %98) #16
  br i1 %89, label %108, label %105

105:                                              ; preds = %95
  %106 = tail call ptr @gimple_build_assign_stat(ptr noundef %83, ptr noundef %103) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %106, i32 noundef 1) #16
  %107 = tail call ptr @gimple_build_assign_stat(ptr noundef %84, ptr noundef %104) #16
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %107, i32 noundef 1) #16
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 1) #16
  br label %108

108:                                              ; preds = %95, %105, %90
  %109 = phi ptr [ %103, %105 ], [ %103, %95 ], [ %87, %90 ]
  %110 = phi ptr [ %104, %105 ], [ %104, %95 ], [ %88, %90 ]
  %111 = icmp eq ptr %85, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef nonnull %85) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  br label %113

113:                                              ; preds = %108, %112
  %114 = phi ptr [ %84, %112 ], [ %110, %108 ]
  %115 = phi ptr [ %83, %112 ], [ %109, %108 ]
  tail call fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %115, ptr noundef %114) #15
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !325 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !141
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !148 !PGOFuncName !326 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 !prof !148 !PGOFuncName !327 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !148 !PGOFuncName !329 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0) unnamed_addr #9 !prof !148 !PGOFuncName !330 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = or disjoint i32 %3, 6619136
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !331 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !148 !PGOFuncName !332 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!97}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!35 = !{ptr @tree_lower_complex, ptr @init_dont_simulate_again, i64 38}
!36 = !{ptr @tree_lower_complex, ptr @VEC_tree_base_length, i64 4}
!37 = !{ptr @tree_lower_complex, ptr @VEC_complex_lattice_t_heap_alloc, i64 1}
!38 = !{ptr @tree_lower_complex, ptr @VEC_complex_lattice_t_heap_safe_grow_cleared, i64 1}
!39 = !{ptr @tree_lower_complex, ptr @init_parameter_lattice_values, i64 1}
!40 = !{ptr @tree_lower_complex, ptr @ssa_propagate, i64 1}
!41 = !{ptr @tree_lower_complex, ptr @htab_create, i64 1}
!42 = !{ptr @tree_lower_complex, ptr @VEC_tree_heap_alloc, i64 1}
!43 = !{ptr @tree_lower_complex, ptr @VEC_tree_heap_safe_grow_cleared, i64 1}
!44 = !{ptr @tree_lower_complex, ptr @update_parameter_components, i64 1}
!45 = !{ptr @tree_lower_complex, ptr @update_phi_components, i64 9}
!46 = !{ptr @tree_lower_complex, ptr @gsi_start_bb, i64 9}
!47 = !{ptr @tree_lower_complex, ptr @gsi_end_p, i64 123}
!48 = !{ptr @tree_lower_complex, ptr @expand_complex_operations_1, i64 114}
!49 = !{ptr @tree_lower_complex, ptr @gsi_next, i64 114}
!50 = !{ptr @tree_lower_complex, ptr @gsi_commit_edge_inserts, i64 1}
!51 = !{ptr @tree_lower_complex, ptr @htab_delete, i64 1}
!52 = !{ptr @tree_lower_complex, ptr @VEC_tree_heap_free, i64 1}
!53 = !{ptr @tree_lower_complex, ptr @VEC_complex_lattice_t_heap_free, i64 1}
!54 = !{ptr @init_dont_simulate_again, ptr @gsi_start_phis, i64 141190}
!55 = !{ptr @init_dont_simulate_again, ptr @gsi_end_p, i64 653709}
!56 = !{ptr @init_dont_simulate_again, ptr @gsi_stmt, i64 371329}
!57 = !{ptr @init_dont_simulate_again, ptr @gimple_phi_result, i64 39962}
!58 = !{ptr @init_dont_simulate_again, ptr @is_complex_reg, i64 228143}
!59 = !{ptr @init_dont_simulate_again, ptr @prop_set_simulate_again, i64 371329}
!60 = !{ptr @init_dont_simulate_again, ptr @gsi_next, i64 371329}
!61 = !{ptr @init_dont_simulate_again, ptr @gsi_start_bb, i64 141190}
!62 = !{ptr @init_dont_simulate_again, ptr @stmt_ends_bb_p, i64 331367}
!63 = !{ptr @init_dont_simulate_again, ptr @gimple_code, i64 331367}
!64 = !{ptr @init_dont_simulate_again, ptr @gimple_call_lhs, i64 132497}
!65 = !{ptr @init_dont_simulate_again, ptr @gimple_assign_lhs, i64 123041}
!66 = !{ptr @init_dont_simulate_again, ptr @gimple_assign_rhs_code, i64 246081}
!67 = !{ptr @init_dont_simulate_again, ptr @gimple_assign_rhs1, i64 123041}
!68 = !{ptr @init_dont_simulate_again, ptr @gimple_num_ops, i64 123041}
!69 = !{ptr @init_dont_simulate_again, ptr @gimple_assign_rhs2, i64 46345}
!70 = !{ptr @init_dont_simulate_again, ptr @gimple_cond_lhs, i64 138024}
!71 = !{ptr @init_dont_simulate_again, ptr @gimple_cond_rhs, i64 138024}
!72 = !{ptr @init_dont_simulate_again, ptr @gimple_expr_code, i64 261067}
!73 = !{ptr @init_dont_simulate_again, ptr @ssa_undefined_value_p, i64 1}
!74 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 144905}
!75 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 144905}
!76 = !{ptr @prop_set_simulate_again, ptr @gimple_set_visited, i64 381099}
!77 = !{ptr @is_complex_reg, ptr @is_gimple_reg, i64 1}
!78 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 135984}
!79 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 126279}
!80 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 252558}
!81 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 252558}
!82 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 156630}
!83 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 282909}
!84 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 47564}
!85 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 47563}
!86 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 141657}
!87 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 141657}
!88 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 520494}
!89 = !{ptr @gimple_expr_code, ptr @fancy_abort, i64 130124}
!90 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 876050}
!91 = !{ptr @gimple_op, ptr @gimple_ops, i64 876049}
!92 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 876050}
!93 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 876050}
!94 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!95 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 876050}
!96 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 876050}
!97 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!98 = !{!"function_entry_count", i64 38}
!99 = !{!"tree-complex.c:tree_lower_complex"}
!100 = !{i8 0, i8 2}
!101 = !{!"branch_weights", i32 39, i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"any pointer", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !103, i64 24}
!107 = !{!"function", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !103, i64 32, !103, i64 40, !103, i64 48, !103, i64 56, !103, i64 64, !103, i64 72, !103, i64 80, !103, i64 88, !103, i64 96, !108, i64 104, !108, i64 108, !108, i64 112, !108, i64 116, !108, i64 120, !108, i64 124, !103, i64 128, !108, i64 136, !108, i64 137, !108, i64 138, !108, i64 138, !108, i64 138, !108, i64 138, !108, i64 138, !108, i64 138, !108, i64 138, !108, i64 139, !108, i64 139, !108, i64 139, !108, i64 139, !108, i64 139, !108, i64 139, !108, i64 139}
!108 = !{!"int", !104, i64 0}
!109 = !{!110, !103, i64 16}
!110 = !{!"gimple_df", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !111, i64 32, !111, i64 48, !103, i64 64, !103, i64 72, !103, i64 80, !103, i64 88, !108, i64 96, !112, i64 104}
!111 = !{!"pt_solution", !108, i64 0, !108, i64 0, !108, i64 0, !108, i64 0, !108, i64 0, !108, i64 0, !103, i64 8}
!112 = !{!"ssa_operands", !103, i64 0, !108, i64 8, !108, i64 12, !104, i64 16, !103, i64 24, !103, i64 32}
!113 = !{!107, !103, i64 8}
!114 = !{!115, !108, i64 32}
!115 = !{!"control_flow_graph", !103, i64 0, !103, i64 8, !103, i64 16, !108, i64 24, !108, i64 28, !108, i64 32, !103, i64 40, !108, i64 48, !104, i64 52, !104, i64 60, !108, i64 68, !108, i64 72}
!116 = !{!115, !103, i64 0}
!117 = !{!118, !103, i64 56}
!118 = !{!"basic_block_def", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !104, i64 32, !103, i64 48, !103, i64 56, !104, i64 64, !119, i64 72, !108, i64 80, !108, i64 84, !108, i64 88, !108, i64 92, !108, i64 96}
!119 = !{!"long", !104, i64 0}
!120 = !{!115, !103, i64 8}
!121 = !{!118, !108, i64 80}
!122 = !{i64 0, i64 8, !102, i64 8, i64 8, !102, i64 16, i64 8, !102}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.mustprogress"}
!125 = distinct !{!125, !124}
!126 = !{!"tree-complex.c:gate_no_optimization"}
!127 = !{!107, !108, i64 120}
!128 = !{!"tree-complex.c:init_dont_simulate_again"}
!129 = !{!"branch_weights", i32 1, i32 155}
!130 = !{!"branch_weights", i32 155, i32 579469}
!131 = distinct !{!131, !124}
!132 = !{!"branch_weights", i32 41014, i32 103892}
!133 = !{!"branch_weights", i32 0, i32 41014}
!134 = distinct !{!134, !124}
!135 = !{!"branch_weights", i32 144905, i32 1}
!136 = !{i32 0, i32 256}
!137 = !{!"branch_weights", i32 3022, i32 69130, i32 126280, i32 141658}
!138 = !{!"branch_weights", i32 2275, i32 66856}
!139 = !{i32 0, i32 65536}
!140 = !{!"branch_weights", i32 1, i32 126280}
!141 = !{!104, !104, i64 0}
!142 = !{!"branch_weights", i32 47565, i32 78716}
!143 = !{!"branch_weights", i32 -1878434475, i32 650720850}
!144 = !{!"branch_weights", i32 106356, i32 123931, i32 34279, i32 3362, i32 7, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!145 = !{!"branch_weights", i32 1, i32 161582}
!146 = !{!"branch_weights", i32 195182, i32 144905}
!147 = distinct !{!147, !124}
!148 = !{!"function_entry_count", i64 0}
!149 = !{!"tree-complex.c:VEC_complex_lattice_t_heap_alloc"}
!150 = !{!"tree-complex.c:VEC_tree_base_length"}
!151 = !{!152, !108, i64 0}
!152 = !{!"VEC_tree_base", !108, i64 0, !108, i64 4, !104, i64 8}
!153 = !{!"tree-complex.c:VEC_complex_lattice_t_heap_safe_grow_cleared"}
!154 = !{!"tree-complex.c:init_parameter_lattice_values"}
!155 = !{!107, !103, i64 48}
!156 = distinct !{!156, !124}
!157 = !{!"tree-complex.c:complex_visit_stmt"}
!158 = !{i32 0, i32 4}
!159 = !{!"tree-complex.c:complex_visit_phi"}
!160 = distinct !{!160, !124}
!161 = !{!"tree-complex.c:VEC_tree_heap_alloc"}
!162 = !{!"tree-complex.c:VEC_tree_heap_safe_grow_cleared"}
!163 = !{!"tree-complex.c:update_parameter_components"}
!164 = distinct !{!164, !124}
!165 = !{!"tree-complex.c:update_phi_components"}
!166 = distinct !{!166, !124}
!167 = distinct !{!167, !124}
!168 = !{!"function_entry_count", i64 144905}
!169 = !{!"tree-complex.c:gsi_start_bb"}
!170 = !{!171, !103, i64 0}
!171 = !{!"", !103, i64 0, !103, i64 8, !103, i64 16}
!172 = !{!171, !103, i64 8}
!173 = !{!171, !103, i64 16}
!174 = !{!"function_entry_count", i64 670909}
!175 = !{!"tree-complex.c:gsi_end_p"}
!176 = !{!"tree-complex.c:expand_complex_operations_1"}
!177 = !{!108, !108, i64 0}
!178 = !{!"function_entry_count", i64 381099}
!179 = !{!"tree-complex.c:gsi_next"}
!180 = !{!181, !103, i64 16}
!181 = !{!"gimple_seq_node_d", !103, i64 0, !103, i64 8, !103, i64 16}
!182 = !{!"tree-complex.c:VEC_tree_heap_free"}
!183 = !{!"tree-complex.c:VEC_complex_lattice_t_heap_free"}
!184 = !{!"tree-complex.c:gsi_stmt"}
!185 = !{!181, !103, i64 0}
!186 = !{!"tree-complex.c:prop_set_simulate_again"}
!187 = !{!"function_entry_count", i64 234147}
!188 = !{!"tree-complex.c:is_complex_reg"}
!189 = !{!"branch_weights", i32 1, i32 234148}
!190 = !{!"function_entry_count", i64 41013}
!191 = !{!"tree-complex.c:gimple_phi_result"}
!192 = !{!"function_entry_count", i64 3488730}
!193 = !{!"tree-complex.c:gimple_code"}
!194 = !{!"function_entry_count", i64 135984}
!195 = !{!"tree-complex.c:gimple_call_lhs"}
!196 = !{!"function_entry_count", i64 126279}
!197 = !{!"tree-complex.c:gimple_assign_lhs"}
!198 = !{!"function_entry_count", i64 252558}
!199 = !{!"tree-complex.c:gimple_assign_rhs_code"}
!200 = !{!"branch_weights", i32 156631, i32 95929}
!201 = !{!"function_entry_count", i64 282909}
!202 = !{!"tree-complex.c:gimple_assign_rhs1"}
!203 = !{!"function_entry_count", i64 173843}
!204 = !{!"tree-complex.c:gimple_num_ops"}
!205 = !{!"function_entry_count", i64 47564}
!206 = !{!"tree-complex.c:gimple_assign_rhs2"}
!207 = !{!"branch_weights", i32 47565, i32 1}
!208 = !{!"function_entry_count", i64 141657}
!209 = !{!"tree-complex.c:gimple_cond_lhs"}
!210 = !{!"tree-complex.c:gimple_cond_rhs"}
!211 = !{!"function_entry_count", i64 520494}
!212 = !{!"tree-complex.c:gimple_expr_code"}
!213 = !{!"tree-complex.c:gimple_set_visited"}
!214 = !{!"function_entry_count", i64 876050}
!215 = !{!"tree-complex.c:gimple_op"}
!216 = !{!"branch_weights", i32 1, i32 876051}
!217 = !{!"tree-complex.c:gimple_has_ops"}
!218 = !{!"tree-complex.c:gimple_ops"}
!219 = !{!119, !119, i64 0}
!220 = !{!"tree-complex.c:gimple_statement_structure"}
!221 = !{!"tree-complex.c:gss_for_code"}
!222 = !{!"tree-complex.c:get_gimple_rhs_class"}
!223 = !{!"tree-complex.c:VEC_complex_lattice_t_base_length"}
!224 = !{!225, !108, i64 0}
!225 = !{!"VEC_complex_lattice_t_base", !108, i64 0, !108, i64 4, !104, i64 8}
!226 = !{!"tree-complex.c:VEC_complex_lattice_t_heap_safe_grow"}
!227 = !{}
!228 = !{!"tree-complex.c:VEC_complex_lattice_t_base_address"}
!229 = !{!"tree-complex.c:VEC_complex_lattice_t_heap_reserve_exact"}
!230 = !{i32 0, i32 2}
!231 = !{!"tree-complex.c:VEC_complex_lattice_t_base_space"}
!232 = !{!225, !108, i64 4}
!233 = !{!"tree-complex.c:var_ann"}
!234 = !{!"tree-complex.c:VEC_complex_lattice_t_base_replace"}
!235 = !{!"tree-complex.c:VEC_complex_lattice_t_base_index"}
!236 = !{!"tree-complex.c:find_lattice_value"}
!237 = !{!"tree-complex.c:find_lattice_value_parts"}
!238 = !{!"tree-complex.c:some_nonzerop"}
!239 = !{!"tree-complex.c:gimple_phi_num_args"}
!240 = !{!"tree-complex.c:gimple_phi_arg_def"}
!241 = !{!"tree-complex.c:gimple_phi_arg"}
!242 = !{!"tree-complex.c:get_use_from_ptr"}
!243 = !{!244, !103, i64 24}
!244 = !{!"ssa_use_operand_d", !103, i64 0, !103, i64 8, !104, i64 16, !103, i64 24}
!245 = !{!"tree-complex.c:VEC_tree_heap_safe_grow"}
!246 = !{!"tree-complex.c:VEC_tree_base_address"}
!247 = !{!"tree-complex.c:VEC_tree_heap_reserve_exact"}
!248 = !{!"tree-complex.c:VEC_tree_base_space"}
!249 = !{!152, !108, i64 4}
!250 = !{!"tree-complex.c:single_succ_edge"}
!251 = !{!118, !103, i64 8}
!252 = !{!"tree-complex.c:update_complex_components_on_edge"}
!253 = !{!"tree-complex.c:single_succ_p"}
!254 = !{!"tree-complex.c:VEC_edge_base_index"}
!255 = !{!"tree-complex.c:VEC_edge_base_length"}
!256 = !{!257, !108, i64 0}
!257 = !{!"VEC_edge_base", !108, i64 0, !108, i64 4, !104, i64 8}
!258 = !{!"tree-complex.c:set_component_ssa_name"}
!259 = !{!"tree-complex.c:VEC_tree_base_index"}
!260 = !{!"tree-complex.c:VEC_tree_base_replace"}
!261 = !{!"tree-complex.c:get_component_var"}
!262 = !{!"tree-complex.c:get_component_ssa_name"}
!263 = !{!"tree-complex.c:cvc_lookup"}
!264 = !{!265, !108, i64 0}
!265 = !{!"int_tree_map", !108, i64 0, !103, i64 8}
!266 = !{!265, !103, i64 8}
!267 = !{!"tree-complex.c:create_one_component_var"}
!268 = !{!"tree-complex.c:cvc_insert"}
!269 = !{!"tree-complex.c:make_ssa_name"}
!270 = !{!"tree-complex.c:gimple_nop_p"}
!271 = !{!"tree-complex.c:extract_component"}
!272 = !{!"tree-complex.c:set_ssa_use_from_ptr"}
!273 = !{!"tree-complex.c:gimple_phi_arg_imm_use_ptr"}
!274 = !{!"tree-complex.c:delink_imm_use"}
!275 = !{!244, !103, i64 0}
!276 = !{!244, !103, i64 8}
!277 = !{!"tree-complex.c:link_imm_use"}
!278 = !{!"tree-complex.c:link_imm_use_to_list"}
!279 = !{!"tree-complex.c:bb_seq"}
!280 = !{!118, !108, i64 96}
!281 = !{!"branch_weights", i32 144906, i32 1}
!282 = !{!"branch_weights", i32 1, i32 144906}
!283 = !{!284, !103, i64 0}
!284 = !{!"gimple_bb_info", !103, i64 0, !103, i64 8}
!285 = !{!"tree-complex.c:gimple_seq_first"}
!286 = !{!287, !103, i64 0}
!287 = !{!"gimple_seq_d", !103, i64 0, !103, i64 8, !103, i64 16}
!288 = !{!"tree-complex.c:expand_complex_move"}
!289 = !{i64 0, i64 4, !177, i64 8, i64 8, !102}
!290 = !{i64 0, i64 8, !102}
!291 = !{!292, !108, i64 48}
!292 = !{!"edge_def", !103, i64 0, !103, i64 8, !104, i64 16, !103, i64 24, !103, i64 32, !108, i64 40, !108, i64 44, !108, i64 48, !108, i64 52, !119, i64 56}
!293 = distinct !{!293, !124}
!294 = !{!"tree-complex.c:is_gimple_assign"}
!295 = !{!"tree-complex.c:update_stmt"}
!296 = !{!"tree-complex.c:gimple_in_ssa_p"}
!297 = !{!"tree-complex.c:expand_complex_addition"}
!298 = !{!"tree-complex.c:expand_complex_multiplication"}
!299 = !{!"tree-complex.c:expand_complex_division"}
!300 = !{!"tree-complex.c:expand_complex_negation"}
!301 = !{!"tree-complex.c:expand_complex_conjugate"}
!302 = !{!"tree-complex.c:expand_complex_comparison"}
!303 = !{!"tree-complex.c:is_gimple_call"}
!304 = !{!"tree-complex.c:ei_start_1"}
!305 = !{!"tree-complex.c:gsi_bb"}
!306 = !{!"tree-complex.c:ei_cond"}
!307 = !{!"tree-complex.c:ei_next"}
!308 = !{!309, !108, i64 0}
!309 = !{!"", !108, i64 0, !103, i64 8}
!310 = !{!"tree-complex.c:update_complex_components"}
!311 = !{!"tree-complex.c:update_complex_assignment"}
!312 = !{!"tree-complex.c:gimple_assign_set_lhs"}
!313 = !{!"tree-complex.c:gimple_assign_set_rhs1"}
!314 = !{!"tree-complex.c:gimple_return_set_retval"}
!315 = !{!"tree-complex.c:ei_end_p"}
!316 = !{!"tree-complex.c:ei_edge"}
!317 = !{!"tree-complex.c:ei_container"}
!318 = !{!"tree-complex.c:gimple_set_op"}
!319 = !{!"tree-complex.c:expand_complex_libcall"}
!320 = !{!"tree-complex.c:gimple_call_set_lhs"}
!321 = !{!"tree-complex.c:expand_complex_div_straight"}
!322 = !{!"tree-complex.c:expand_complex_div_wide"}
!323 = !{!292, !103, i64 0}
!324 = !{!292, !103, i64 8}
!325 = !{!"tree-complex.c:gimple_location"}
!326 = !{!"tree-complex.c:gsi_last_bb"}
!327 = !{!"tree-complex.c:gimple_seq_last"}
!328 = !{!287, !103, i64 8}
!329 = !{!"tree-complex.c:gimple_return_retval"}
!330 = !{!"tree-complex.c:gimple_cond_set_code"}
!331 = !{!"tree-complex.c:gimple_cond_set_lhs"}
!332 = !{!"tree-complex.c:gimple_cond_set_rhs"}
