; ModuleID = 'tree-predcom.c'
source_filename = "tree-predcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.dref_d = type { ptr, ptr, ptr, i32, %struct.double_int, i32, i8 }
%struct.double_int = type { i64, i64 }
%struct.chain = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_dref_base = type { i32, i32, [1 x ptr] }
%struct.VEC_chain_p_base = type { i32, i32, [1 x ptr] }
%struct.component = type { ptr, i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.epcc_data = type { ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (id %u%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c", write\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"      offset \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"      distance %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"    looparound ref\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"    combination ref\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"      in statement \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Load motion\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Loads-only\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Store-loads\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Combination\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"tree-predcom.c\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%s chain %p%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c" (combined)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"  max distance %u%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c", may reuse first\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"  equal to %p %s %p in type \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"  vars\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"  inits\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"  references:\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Component%s:\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c" (invariant)\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"Processing loop %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Initial state:\0A\0A\00", align 1
@looparound_phis = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [49 x i8] c"Predictive commoning failed: no suitable chains\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Before commoning:\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Unrolling %u times.\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"Executing predictive commoning without unrolling.\0A\00", align 1
@name_expansions = internal global ptr null, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@target_avail_regs = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"predreastmp\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@reltable.dump_chain = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_dref(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !54 {
  %3 = load ptr, ptr %1, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 4, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 2) #23
  %10 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = load ptr, ptr %1, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.data_reference, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !69
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.3, ptr @.str.2
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef nonnull %16) #24
  %18 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 13, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 4, i32 1
  %22 = load i64, ptr %21, align 8
  tail call void @dump_double_int(ptr noundef %0, i64 %20, i64 %22, i8 noundef zeroext 0) #23
  br label %35

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %25) #24, !range !71
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %0)
  br label %32

30:                                               ; preds = %23
  %31 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr %0)
  br label %32

32:                                               ; preds = %30, %28
  %33 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 19, i64 1, ptr %0)
  %34 = load ptr, ptr %24, align 8, !tbaa !70
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %34, i32 noundef 0, i32 noundef 2) #23
  br label %35

35:                                               ; preds = %32, %5
  %36 = tail call i32 @fputc(i32 10, ptr %0)
  %37 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !72
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %38) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !73 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_chain(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !54 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load i32, ptr %1, align 8, !tbaa !74
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 401, ptr noundef nonnull @.str.15) #23
  unreachable

8:                                                ; preds = %2
  %9 = zext nneg i32 %5 to i64
  %10 = shl i64 %9, 2
  %11 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_chain, i64 %10)
  %12 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.2, ptr @.str.17
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %11, ptr noundef nonnull %1, ptr noundef nonnull %16) #24
  %18 = load i32, ptr %1, align 8, !tbaa !74
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = load i8, ptr %12, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, ptr @.str.19, ptr @.str.2
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %22, ptr noundef nonnull %26) #24
  %28 = load i32, ptr %1, align 8, !tbaa !74
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !78
  %35 = tail call ptr @op_symbol_code(i32 noundef %34) #23
  %36 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %32, ptr noundef %35, ptr noundef %37) #24
  %39 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %40, i32 noundef 2) #23
  %41 = tail call i32 @fputc(i32 10, ptr %0)
  br label %42

42:                                               ; preds = %8, %30, %20
  %43 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !81
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %0)
  %48 = load ptr, ptr %43, align 8, !tbaa !81
  %49 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46, %51
  %52 = phi i32 [ %55, %51 ], [ 0, %46 ]
  %53 = tail call i32 @fputc(i32 32, ptr %0)
  %54 = load ptr, ptr %4, align 8, !tbaa !83
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %54, i32 noundef 2) #23
  %55 = add i32 %52, 1
  %56 = load ptr, ptr %43, align 8, !tbaa !81
  %57 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %56, i32 noundef %55, ptr noundef nonnull %4) #24, !range !82
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %51, !llvm.loop !84

59:                                               ; preds = %51, %46
  %60 = tail call i32 @fputc(i32 10, ptr %0)
  br label %61

61:                                               ; preds = %59, %42
  %62 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 7, i64 1, ptr %0)
  %67 = load ptr, ptr %62, align 8, !tbaa !86
  %68 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %67, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65, %70
  %71 = phi i32 [ %74, %70 ], [ 0, %65 ]
  %72 = tail call i32 @fputc(i32 32, ptr %0)
  %73 = load ptr, ptr %4, align 8, !tbaa !83
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %73, i32 noundef 2) #23
  %74 = add i32 %71, 1
  %75 = load ptr, ptr %62, align 8, !tbaa !86
  %76 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %75, i32 noundef %74, ptr noundef nonnull %4) #24, !range !82
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %70, !llvm.loop !87

78:                                               ; preds = %70, %65
  %79 = tail call i32 @fputc(i32 10, ptr %0)
  br label %80

80:                                               ; preds = %78, %61
  %81 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 14, i64 1, ptr %0)
  %82 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !88
  %84 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %83, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80, %86
  %87 = phi i32 [ %89, %86 ], [ 0, %80 ]
  %88 = load ptr, ptr %3, align 8, !tbaa !83
  tail call void @dump_dref(ptr noundef %0, ptr noundef %88) #24
  %89 = add i32 %87, 1
  %90 = load ptr, ptr %82, align 8, !tbaa !88
  %91 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %90, i32 noundef %89, ptr noundef nonnull %3) #24, !range !82
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %86, !llvm.loop !89

93:                                               ; preds = %86, %80
  %94 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @op_symbol_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !54 !PGOFuncName !90 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !91
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_dref_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !54 !PGOFuncName !93 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !94
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_dref_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_chains(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !54 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !83
  tail call void @dump_chain(ptr noundef %0, ptr noundef %8) #24
  %9 = add i32 %7, 1
  %10 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %3) #24, !range !82
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !96

12:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_chain_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !54 !PGOFuncName !97 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_component(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !54 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.component, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.26, ptr @.str.2
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %7) #24
  %9 = load ptr, ptr %1, align 8, !tbaa !102
  %10 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %2 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  tail call void @dump_dref(ptr noundef %0, ptr noundef %14) #24
  %15 = add i32 %13, 1
  %16 = load ptr, ptr %1, align 8, !tbaa !102
  %17 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %3) #24, !range !82
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %12, !llvm.loop !103

19:                                               ; preds = %12, %2
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_components(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !54 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  tail call void @dump_component(ptr noundef %0, ptr noundef nonnull %5) #24
  %6 = getelementptr inbounds %struct.component, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !105

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_virtual_ops_for_renaming(ptr noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #24
  %6 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %5) #24
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i64, ptr %6, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  br label %22

16:                                               ; preds = %1
  tail call fastcc void @update_stmt(ptr noundef %0) #24
  %17 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @cfun, align 8, !tbaa !83
  %21 = tail call fastcc ptr @gimple_vop(ptr noundef %20) #24
  br label %22

22:                                               ; preds = %9, %13, %19
  %23 = phi ptr [ %21, %19 ], [ %15, %13 ], [ %6, %9 ]
  tail call void @mark_sym_for_renaming(ptr noundef %23) #23
  br label %24

24:                                               ; preds = %22, %16, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #6 !prof !54 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !109 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !110
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #23
  tail call void @update_stmt_operands(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !111 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !110
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !54 !PGOFuncName !112 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 51, ptr noundef nonnull @.str.15) #23
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @tree_predictive_commoning() local_unnamed_addr #0 !prof !119 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  tail call void @initialize_original_copy_tables() #23
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1) #24
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !120

5:                                                ; preds = %0, %13
  %6 = phi ptr [ %15, %13 ], [ %3, %0 ]
  %7 = phi i8 [ %14, %13 ], [ 0, %0 ]
  %8 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %6) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @tree_predictive_commoning_loop(ptr noundef nonnull %6) #24, !range !110
  %12 = or i8 %11, %7
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i8 [ %12, %10 ], [ %7, %5 ]
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #24
  %15 = load ptr, ptr %1, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !prof !121, !llvm.loop !122

17:                                               ; preds = %13
  %18 = icmp eq i8 %14, 0
  br i1 %18, label %20, label %19, !prof !123

19:                                               ; preds = %17
  tail call void @scev_reset() #23
  br label %20

20:                                               ; preds = %0, %19, %17
  %21 = phi i32 [ 32, %19 ], [ 0, %17 ], [ 0, %0 ]
  tail call void @free_original_copy_tables() #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret i32 %21
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !119 !PGOFuncName !124 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !125
  %5 = load ptr, ptr @cfun, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !128

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !129
  store ptr null, ptr %1, align 8, !tbaa !83
  br label %45

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @number_of_loops() #24
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #24
  store ptr %12, ptr %0, align 8, !tbaa !129
  %13 = load ptr, ptr @cfun, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20, !prof !132

20:                                               ; preds = %10, %35
  %21 = phi ptr [ %36, %35 ], [ %13, %10 ]
  %22 = phi i32 [ %37, %35 ], [ 0, %10 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !83
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25, !prof !128

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35, !prof !136

29:                                               ; preds = %25
  %30 = load i32, ptr %23, align 8, !tbaa !137
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35, !prof !128

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !129
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %33, i32 noundef %30) #24
  %34 = load ptr, ptr @cfun, align 8, !tbaa !83
  br label %35

35:                                               ; preds = %20, %25, %29, %32
  %36 = phi ptr [ %21, %20 ], [ %21, %25 ], [ %21, %29 ], [ %34, %32 ]
  %37 = add i32 %22, 1
  %38 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !127
  %40 = getelementptr inbounds %struct.loops, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !130
  %42 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %41, i32 noundef %37, ptr noundef nonnull %3) #24, !range !82
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20, !prof !138, !llvm.loop !139

44:                                               ; preds = %35, %10
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #24
  br label %45

45:                                               ; preds = %44, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @tree_predictive_commoning_loop(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !140 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.tree_niter_desc, align 8
  %6 = alloca %struct.epcc_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #25
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %0, align 8, !tbaa !137
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.28, i32 noundef %14) #24
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = tail call fastcc ptr @VEC_data_reference_p_heap_alloc() #24
  store ptr %17, ptr %2, align 8, !tbaa !83
  %18 = tail call fastcc ptr @VEC_ddr_p_heap_alloc() #24
  store ptr %18, ptr %3, align 8, !tbaa !83
  %19 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8, !tbaa !83
  call void @dump_data_dependence_relations(ptr noundef nonnull %20, ptr noundef %27) #23
  br label %28

28:                                               ; preds = %26, %22, %16
  %29 = load ptr, ptr %2, align 8, !tbaa !83
  %30 = load ptr, ptr %3, align 8, !tbaa !83
  %31 = call fastcc ptr @split_data_refs_to_components(ptr noundef %0, ptr noundef %29, ptr noundef %30) #24
  %32 = load ptr, ptr %3, align 8, !tbaa !83
  call void @free_dependence_relations(ptr noundef %32) #23
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load ptr, ptr %2, align 8, !tbaa !83
  call void @free_data_refs(ptr noundef %35) #23
  br label %108

36:                                               ; preds = %28
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = call i64 @fwrite(ptr nonnull @.str.29, i64 16, i64 1, ptr nonnull %37)
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !83
  call void @dump_components(ptr noundef %45, ptr noundef nonnull %31) #24
  br label %46

46:                                               ; preds = %43, %39, %36
  %47 = call fastcc ptr @filter_suitable_components(ptr noundef %0, ptr noundef nonnull %31) #24
  %48 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %49 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %49, ptr @looparound_phis, align 8, !tbaa !83
  call fastcc void @determine_roots(ptr noundef %0, ptr noundef %47, ptr noundef nonnull %4) #24
  call fastcc void @release_components(ptr noundef %47) #24
  %50 = load ptr, ptr %4, align 8, !tbaa !83
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %54 = icmp eq ptr %53, null
  br i1 %54, label %103, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %55
  %60 = call i64 @fwrite(ptr nonnull @.str.30, i64 48, i64 1, ptr nonnull %53)
  br label %103

61:                                               ; preds = %46
  call fastcc void @prepare_initializers(ptr noundef %0, ptr noundef nonnull %50) #24
  call fastcc void @try_combine_chains(ptr noundef nonnull %4) #24
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = call i64 @fwrite(ptr nonnull @.str.31, i64 19, i64 1, ptr nonnull %62)
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %71 = load ptr, ptr %4, align 8, !tbaa !83
  call void @dump_chains(ptr noundef %70, ptr noundef %71) #24
  br label %72

72:                                               ; preds = %68, %64, %61
  %73 = load ptr, ptr %4, align 8, !tbaa !83
  %74 = call fastcc i32 @determine_unroll_factor(ptr noundef %73) #24
  call void @scev_reset() #23
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call ptr @single_dom_exit(ptr noundef %0) #23
  br label %93

78:                                               ; preds = %72
  %79 = call zeroext i8 @can_unroll_loop_p(ptr noundef %0, i32 noundef %74, ptr noundef nonnull %5) #23
  %80 = icmp eq i8 %79, 0
  %81 = call ptr @single_dom_exit(ptr noundef %0) #23
  br i1 %80, label %93, label %82

82:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %83, ptr noundef nonnull @.str.32, i32 noundef %74) #24
  br label %91

91:                                               ; preds = %89, %85, %82
  store ptr %73, ptr %6, align 8, !tbaa !142
  %92 = getelementptr inbounds %struct.epcc_data, ptr %6, i64 0, i32 1
  store ptr %48, ptr %92, align 8, !tbaa !144
  call void @update_ssa(i32 noundef 16384) #23
  call fastcc void @replace_phis_by_defined_names(ptr noundef %73) #24
  call void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %74, ptr noundef %81, ptr noundef nonnull %5, ptr noundef nonnull @execute_pred_commoning_cbck, ptr noundef nonnull %6) #23
  call fastcc void @eliminate_temp_copies(ptr noundef %0, ptr noundef %48) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  br label %103

93:                                               ; preds = %76, %78
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !83
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr @dump_flags, align 4, !tbaa !141
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i64 @fwrite(ptr nonnull @.str.33, i64 50, i64 1, ptr nonnull %94)
  br label %102

102:                                              ; preds = %100, %96, %93
  call fastcc void @execute_pred_commoning(ptr noundef %0, ptr noundef %73, ptr noundef %48) #24
  br label %103

103:                                              ; preds = %91, %102, %52, %55, %59
  %104 = phi ptr [ %73, %91 ], [ %73, %102 ], [ null, %59 ], [ null, %55 ], [ null, %52 ]
  %105 = phi i8 [ 1, %91 ], [ 0, %102 ], [ 0, %59 ], [ 0, %55 ], [ 0, %52 ]
  call fastcc void @release_chains(ptr noundef %104) #24
  %106 = load ptr, ptr %2, align 8, !tbaa !83
  call void @free_data_refs(ptr noundef %106) #23
  call void @bitmap_obstack_free(ptr noundef %48) #23
  %107 = load ptr, ptr @looparound_phis, align 8, !tbaa !83
  call void @bitmap_obstack_free(ptr noundef %107) #23
  store ptr null, ptr @looparound_phis, align 8, !tbaa !83
  call void @free_affine_expand_cache(ptr noundef nonnull @name_expansions) #23
  br label %108

108:                                              ; preds = %103, %34
  %109 = phi i8 [ %105, %103 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i8 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !119 !PGOFuncName !145 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !125
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !129
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #24, !range !82
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !136

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !125
  %13 = load i32, ptr %3, align 4, !tbaa !141
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #24
  store ptr %14, ptr %1, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !146

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #24
  store ptr null, ptr %1, align 8, !tbaa !83
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !147 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !148 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !119 !PGOFuncName !149 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #7 !prof !119 !PGOFuncName !150 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !128

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #24
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !151 !PGOFuncName !152 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !153

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !154
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !156

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !54 !PGOFuncName !157 {
  %3 = load i32, ptr %0, align 4, !tbaa !158
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !158
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !119 !PGOFuncName !160 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !128

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !154
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !54 !PGOFuncName !161 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_data_reference_p_heap_alloc() unnamed_addr #0 !prof !54 !PGOFuncName !162 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ddr_p_heap_alloc() unnamed_addr #0 !prof !54 !PGOFuncName !163 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #23
  ret ptr %1
}

; Function Attrs: optsize
declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_data_dependence_relations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @split_data_refs_to_components(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !164 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.double_int, align 8
  %8 = tail call fastcc i32 @VEC_data_reference_p_base_length(ptr noundef %1) #24
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = tail call ptr @xmalloc(i64 noundef %11) #23
  %13 = tail call ptr @xmalloc(i64 noundef %11) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %14 = tail call fastcc ptr @last_always_executed_block(ptr noundef %0) #24
  %15 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %3, %23
  %18 = phi i32 [ %29, %23 ], [ 0, %3 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = icmp eq ptr %21, null
  br i1 %22, label %163, label %23

23:                                               ; preds = %17
  %24 = zext i32 %18 to i64
  %25 = inttoptr i64 %24 to ptr
  %26 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !165
  %27 = getelementptr inbounds i32, ptr %12, i64 %24
  store i32 %18, ptr %27, align 4, !tbaa !141
  %28 = getelementptr inbounds i32, ptr %13, i64 %24
  store i32 1, ptr %28, align 4, !tbaa !141
  %29 = add i32 %18, 1
  %30 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef %29, ptr noundef nonnull %4) #24, !range !82
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %17, !llvm.loop !166

32:                                               ; preds = %23, %3
  %33 = zext i32 %8 to i64
  %34 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %8, ptr %34, align 4, !tbaa !141
  %35 = getelementptr inbounds i32, ptr %13, i64 %33
  store i32 1, ptr %35, align 4, !tbaa !141
  %36 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %51, %32
  %39 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #24, !range !82
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %98, label %55

41:                                               ; preds = %32, %51
  %42 = phi i32 [ %52, %51 ], [ 0, %32 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %43 = load ptr, ptr %4, align 8, !tbaa !83
  %44 = call fastcc zeroext i8 @suitable_reference_p(ptr noundef %43, ptr noundef nonnull %6) #24, !range !110
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.data_reference, ptr %43, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !165
  %49 = ptrtoint ptr %48 to i64
  %50 = trunc i64 %49 to i32
  tail call fastcc void @merge_comps(ptr noundef %12, ptr noundef %13, i32 noundef %8, i32 noundef %50) #24
  br label %51

51:                                               ; preds = %46, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %52 = add i32 %42, 1
  %53 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef %52, ptr noundef nonnull %4) #24, !range !82
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %38, label %41, !llvm.loop !167

55:                                               ; preds = %38, %94
  %56 = phi i32 [ %95, %94 ], [ 0, %38 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  %57 = load ptr, ptr %5, align 8, !tbaa !83
  %58 = getelementptr inbounds %struct.data_dependence_relation, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !168
  %60 = load ptr, ptr @chrec_known, align 8, !tbaa !83
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %94, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %57, align 8, !tbaa !170
  %64 = getelementptr inbounds %struct.data_dependence_relation, ptr %57, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !171
  %66 = getelementptr inbounds %struct.data_reference, ptr %63, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !165
  %68 = ptrtoint ptr %67 to i64
  %69 = trunc i64 %68 to i32
  %70 = call fastcc i32 @component_of(ptr noundef %12, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct.data_reference, ptr %65, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !165
  %73 = ptrtoint ptr %72 to i64
  %74 = trunc i64 %73 to i32
  %75 = call fastcc i32 @component_of(ptr noundef %12, i32 noundef %74) #24
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %62
  %78 = call fastcc i32 @component_of(ptr noundef %12, i32 noundef %8) #24
  %79 = getelementptr inbounds %struct.data_reference, ptr %63, i64 0, i32 3
  %80 = load i8, ptr %79, align 8, !tbaa !69
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.data_reference, ptr %65, i64 0, i32 3
  %84 = load i8, ptr %83, align 8, !tbaa !69
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = icmp eq i32 %70, %78
  %88 = icmp eq i32 %75, %78
  %89 = or i1 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = call fastcc zeroext i8 @determine_offset(ptr noundef nonnull %63, ptr noundef nonnull %65, ptr noundef nonnull %7) #24
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %82, %77
  call fastcc void @merge_comps(ptr noundef %12, ptr noundef %13, i32 noundef %70, i32 noundef %75) #24
  br label %94

94:                                               ; preds = %86, %90, %62, %55, %93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  %95 = add i32 %56, 1
  %96 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %2, i32 noundef %95, ptr noundef nonnull %5) #24, !range !82
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %55, !llvm.loop !172

98:                                               ; preds = %94, %38
  %99 = call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #23
  %100 = call fastcc i32 @component_of(ptr noundef %12, i32 noundef %8) #24
  %101 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %145, %98
  %104 = icmp eq i32 %8, 0
  br i1 %104, label %161, label %149

105:                                              ; preds = %98, %145
  %106 = phi i32 [ %146, %145 ], [ 0, %98 ]
  %107 = load ptr, ptr %4, align 8, !tbaa !83
  %108 = getelementptr inbounds %struct.data_reference, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !165
  %110 = ptrtoint ptr %109 to i64
  %111 = trunc i64 %110 to i32
  %112 = call fastcc i32 @component_of(ptr noundef %12, i32 noundef %111) #24
  %113 = icmp eq i32 %112, %100
  br i1 %113, label %145, label %114

114:                                              ; preds = %105
  %115 = zext i32 %112 to i64
  %116 = getelementptr inbounds ptr, ptr %99, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !83
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #23
  %121 = getelementptr inbounds i32, ptr %13, i64 %115
  %122 = load i32, ptr %121, align 4, !tbaa !141
  %123 = call fastcc ptr @VEC_dref_heap_alloc(i32 noundef %122) #24
  store ptr %123, ptr %120, align 8, !tbaa !102
  store ptr %120, ptr %116, align 8, !tbaa !83
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi ptr [ %117, %114 ], [ %120, %119 ]
  %126 = call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #23
  store ptr %107, ptr %126, align 8, !tbaa !55
  %127 = load ptr, ptr %107, align 8, !tbaa !173
  %128 = getelementptr inbounds %struct.dref_d, ptr %126, i64 0, i32 1
  store ptr %127, ptr %128, align 8, !tbaa !70
  %129 = getelementptr inbounds %struct.dref_d, ptr %126, i64 0, i32 4
  %130 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #24
  %131 = extractvalue { i64, i64 } %130, 0
  %132 = extractvalue { i64, i64 } %130, 1
  store i64 %131, ptr %129, align 8, !tbaa.struct !174
  %133 = getelementptr inbounds %struct.dref_d, ptr %126, i64 0, i32 4, i32 1
  store i64 %132, ptr %133, align 8, !tbaa.struct !176
  %134 = getelementptr inbounds %struct.dref_d, ptr %126, i64 0, i32 3
  store i32 0, ptr %134, align 8, !tbaa !72
  %135 = call fastcc ptr @gimple_bb(ptr noundef %127) #24
  %136 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %14, ptr noundef %135) #23
  %137 = getelementptr inbounds %struct.dref_d, ptr %126, i64 0, i32 6
  %138 = load i8, ptr %137, align 4
  %139 = and i8 %136, 1
  %140 = and i8 %138, -2
  %141 = or disjoint i8 %140, %139
  store i8 %141, ptr %137, align 4
  %142 = load ptr, ptr %125, align 8, !tbaa !102
  %143 = call fastcc i32 @VEC_dref_base_length(ptr noundef %142) #24
  %144 = getelementptr inbounds %struct.dref_d, ptr %126, i64 0, i32 5
  store i32 %143, ptr %144, align 8, !tbaa !68
  call fastcc void @VEC_dref_base_quick_push(ptr noundef %142, ptr noundef nonnull %126) #24
  br label %145

145:                                              ; preds = %105, %124
  %146 = add i32 %106, 1
  %147 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef %146, ptr noundef nonnull %4) #24, !range !82
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %103, label %105, !llvm.loop !177

149:                                              ; preds = %103, %157
  %150 = phi i64 [ %159, %157 ], [ 0, %103 ]
  %151 = phi ptr [ %158, %157 ], [ null, %103 ]
  %152 = getelementptr inbounds ptr, ptr %99, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !83
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.component, ptr %153, i64 0, i32 2
  store ptr %151, ptr %156, align 8, !tbaa !104
  br label %157

157:                                              ; preds = %149, %155
  %158 = phi ptr [ %153, %155 ], [ %151, %149 ]
  %159 = add nuw nsw i64 %150, 1
  %160 = icmp eq i64 %159, %33
  br i1 %160, label %161, label %149, !llvm.loop !178

161:                                              ; preds = %157, %103
  %162 = phi ptr [ null, %103 ], [ %158, %157 ]
  call void @free(ptr noundef %99) #24
  br label %163

163:                                              ; preds = %17, %161
  %164 = phi ptr [ %162, %161 ], [ null, %17 ]
  call void @free(ptr noundef %12) #24
  call void @free(ptr noundef %13) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %164
}

; Function Attrs: optsize
declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_data_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @filter_suitable_components(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !179 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !83
  %5 = icmp eq ptr %1, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2, %27
  %7 = phi ptr [ %28, %27 ], [ %3, %2 ]
  %8 = phi ptr [ %29, %27 ], [ %1, %2 ]
  %9 = tail call fastcc zeroext i8 @suitable_component_p(ptr noundef %0, ptr noundef nonnull %8) #24, !range !110
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.component, ptr %8, i64 0, i32 2
  br label %27

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %14 = getelementptr inbounds %struct.component, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  store ptr %15, ptr %7, align 8, !tbaa !83
  %16 = load ptr, ptr %8, align 8, !tbaa !102
  %17 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13, %19
  %20 = phi i32 [ %22, %19 ], [ 0, %13 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !83
  tail call void @free(ptr noundef %21) #24
  %22 = add i32 %20, 1
  %23 = load ptr, ptr %8, align 8, !tbaa !102
  %24 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %23, i32 noundef %22, ptr noundef nonnull %4) #24, !range !82
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19, !llvm.loop !180

26:                                               ; preds = %19, %13
  tail call fastcc void @release_component(ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %27

27:                                               ; preds = %26, %11
  %28 = phi ptr [ %12, %11 ], [ %7, %26 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !181

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 8, !tbaa !83
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi ptr [ %32, %31 ], [ null, %2 ]
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_roots(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !182 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %1, %3 ]
  tail call fastcc void @determine_roots_comp(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2) #24
  %7 = getelementptr inbounds %struct.component, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !183

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @release_components(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !184 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.component, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  tail call fastcc void @release_component(ptr noundef nonnull %4) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !185

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_initializers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !186 {
  %3 = tail call fastcc i32 @VEC_chain_p_base_length(ptr noundef %1) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %2, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @VEC_chain_p_base_index(ptr noundef %1, i32 noundef %6) #24
  %8 = tail call fastcc zeroext i8 @prepare_initializers_chain(ptr noundef %0, ptr noundef %7) #24, !range !110
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %6, 1
  br label %13

12:                                               ; preds = %5
  tail call fastcc void @release_chain(ptr noundef %7) #24
  tail call fastcc void @VEC_chain_p_base_unordered_remove(ptr noundef %1, i32 noundef %6) #24
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ %6, %12 ]
  %15 = tail call fastcc i32 @VEC_chain_p_base_length(ptr noundef %1) #24
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %5, label %17, !llvm.loop !187

17:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @try_combine_chains(ptr nocapture noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !188 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !83
  %5 = load ptr, ptr %0, align 8, !tbaa !83
  %6 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #24, !range !82
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %14

8:                                                ; preds = %22
  %9 = load ptr, ptr %4, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_chain_p_base_length(ptr noundef %11) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %58, label %27

14:                                               ; preds = %1, %22
  %15 = phi ptr [ %23, %22 ], [ %5, %1 ]
  %16 = phi i32 [ %24, %22 ], [ 0, %1 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !83
  %18 = tail call fastcc zeroext i8 @chain_can_be_combined_p(ptr noundef %17) #24, !range !110
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  call fastcc void @VEC_chain_p_heap_safe_push(ptr noundef nonnull %4, ptr noundef %17) #24
  %21 = load ptr, ptr %0, align 8, !tbaa !83
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi ptr [ %15, %14 ], [ %21, %20 ]
  %24 = add i32 %16, 1
  %25 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %23, i32 noundef %24, ptr noundef nonnull %2) #24, !range !82
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %8, label %14, !llvm.loop !189

27:                                               ; preds = %10, %54
  %28 = phi ptr [ %55, %54 ], [ %11, %10 ]
  %29 = tail call fastcc ptr @VEC_chain_p_base_pop(ptr noundef %28) #24
  %30 = tail call fastcc zeroext i8 @chain_can_be_combined_p(ptr noundef %29) #24, !range !110
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !83
  %34 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %32, %49
  %37 = phi ptr [ %50, %49 ], [ %33, %32 ]
  %38 = phi i32 [ %51, %49 ], [ 0, %32 ]
  %39 = load ptr, ptr %3, align 8, !tbaa !83
  %40 = tail call fastcc zeroext i8 @chain_can_be_combined_p(ptr noundef %39) #24, !range !110
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = tail call fastcc ptr @combine_chains(ptr noundef %29, ptr noundef %39) #24
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 8, !tbaa !83
  br label %49

47:                                               ; preds = %42
  call fastcc void @VEC_chain_p_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %43) #24
  tail call fastcc void @VEC_chain_p_heap_safe_push(ptr noundef nonnull %0, ptr noundef nonnull %43) #24
  %48 = load ptr, ptr %4, align 8
  br label %54

49:                                               ; preds = %45, %36
  %50 = phi ptr [ %46, %45 ], [ %37, %36 ]
  %51 = add i32 %38, 1
  %52 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %50, i32 noundef %51, ptr noundef nonnull %3) #24, !range !82
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %36, !llvm.loop !190

54:                                               ; preds = %49, %47, %32, %27
  %55 = phi ptr [ %48, %47 ], [ %28, %32 ], [ %28, %27 ], [ %28, %49 ]
  %56 = tail call fastcc i32 @VEC_chain_p_base_length(ptr noundef %55) #24
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %27, !llvm.loop !191

58:                                               ; preds = %54, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @determine_unroll_factor(ptr noundef %0) unnamed_addr #8 !prof !54 !PGOFuncName !192 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 28, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !193
  %6 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #24, !range !82
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %1, %30
  %9 = phi i32 [ %31, %30 ], [ 1, %1 ]
  %10 = phi i32 [ %32, %30 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !83
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.chain, ptr %11, i64 0, i32 9
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.chain, ptr %11, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !76
  %22 = and i8 %16, 1
  %23 = zext nneg i8 %22 to i32
  %24 = add i32 %21, %23
  %25 = mul i32 %24, %9
  %26 = tail call fastcc i32 @gcd(i32 noundef %9, i32 noundef %24) #24, !range !195
  %27 = udiv i32 %25, %26
  %28 = icmp ugt i32 %27, %5
  %29 = select i1 %28, i32 %9, i32 %27
  br label %30

30:                                               ; preds = %19, %8, %14
  %31 = phi i32 [ %9, %8 ], [ %9, %14 ], [ %29, %19 ]
  %32 = add i32 %10, 1
  %33 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef %32, ptr noundef nonnull %2) #24, !range !82
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %8, !llvm.loop !196

35:                                               ; preds = %30, %1
  %36 = phi i32 [ 1, %1 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i32 %36
}

; Function Attrs: optsize
declare zeroext i8 @can_unroll_loop_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @replace_phis_by_defined_names(ptr noundef %0) unnamed_addr #9 !prof !54 !PGOFuncName !197 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #24, !range !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1, %28
  %7 = phi i32 [ %29, %28 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.chain, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %6, %24
  %14 = phi i32 [ %25, %24 ], [ 0, %6 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.dref_d, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %17) #24, !range !71
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %17) #24
  %22 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %21) #24
  %23 = getelementptr inbounds %struct.dref_d, ptr %15, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !198
  store ptr null, ptr %16, align 8, !tbaa !70
  br label %24

24:                                               ; preds = %13, %20
  %25 = add i32 %14, 1
  %26 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %10, i32 noundef %25, ptr noundef nonnull %3) #24, !range !82
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !199

28:                                               ; preds = %24, %6
  %29 = add i32 %7, 1
  %30 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %2) #24, !range !82
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %6, !llvm.loop !200

32:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @tree_transform_and_unroll_loop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @execute_pred_commoning_cbck(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !54 !PGOFuncName !201 {
  %3 = load ptr, ptr %1, align 8, !tbaa !142
  tail call fastcc void @replace_names_by_phis(ptr noundef %3) #24
  %4 = load ptr, ptr %1, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.epcc_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  tail call fastcc void @execute_pred_commoning(ptr noundef %0, ptr noundef %4, ptr noundef %6) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_temp_copies(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !202 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = tail call ptr @loop_latch_edge(ptr noundef %0) #23
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %6) #23
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !110
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 6
  br label %11

11:                                               ; preds = %9, %57
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %13 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %12) #24
  %14 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %13) #24
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !106
  %19 = call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %18) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %11
  %22 = load i32, ptr %10, align 4, !tbaa !204
  %23 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %12, i32 noundef %22) #24
  %24 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %23) #24
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1943, ptr noundef nonnull @.str.15) #23
  br label %29

29:                                               ; preds = %21, %28
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  %32 = call fastcc i32 @gimple_code(ptr noundef %31) #24, !range !71
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = call fastcc ptr @gimple_bb(ptr noundef %31) #24
  %36 = load ptr, ptr %5, align 8, !tbaa !203
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %55, label %42

38:                                               ; preds = %48
  %39 = call fastcc ptr @gimple_bb(ptr noundef %52) #24
  %40 = load ptr, ptr %5, align 8, !tbaa !203
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %55, label %42, !llvm.loop !206

42:                                               ; preds = %34, %38
  %43 = phi ptr [ %39, %38 ], [ %35, %34 ]
  %44 = phi ptr [ %52, %38 ], [ %31, %34 ]
  %45 = call fastcc zeroext i8 @single_pred_p(ptr noundef %43) #24, !range !110
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1955, ptr noundef nonnull @.str.15) #23
  br label %48

48:                                               ; preds = %42, %47
  %49 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %44, i32 noundef 0) #24
  %50 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %49) #24
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  %53 = call fastcc i32 @gimple_code(ptr noundef %52) #24, !range !71
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %38, label %55, !llvm.loop !206

55:                                               ; preds = %48, %38, %34, %29
  %56 = phi ptr [ %24, %29 ], [ %24, %34 ], [ %50, %38 ], [ %50, %48 ]
  call fastcc void @base_names_in_chain_on(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %16) #24
  br label %57

57:                                               ; preds = %11, %55
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %58 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !110
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %11, label %60, !llvm.loop !207

60:                                               ; preds = %57, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_pred_commoning(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !208 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %14
  %8 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !83
  %10 = load i32, ptr %9, align 8, !tbaa !74
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @execute_load_motion(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2) #24
  br label %14

13:                                               ; preds = %7
  tail call fastcc void @execute_pred_commoning_chain(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2) #24
  br label %14

14:                                               ; preds = %12, %13
  %15 = add i32 %8, 1
  %16 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %1, i32 noundef %15, ptr noundef nonnull %4) #24, !range !82
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %7, !llvm.loop !209

18:                                               ; preds = %14, %3
  tail call void @update_ssa(i32 noundef 16384) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @release_chains(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !210 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !83
  tail call fastcc void @release_chain(ptr noundef %8) #24
  %9 = add i32 %7, 1
  %10 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %3) #24, !range !82
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !211

12:                                               ; preds = %6, %1
  call fastcc void @VEC_chain_p_heap_free(ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_affine_expand_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_data_reference_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !212 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !213
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @last_always_executed_block(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !215 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #23
  store ptr %4, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !216
  %7 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %14, %9 ], [ %6, %1 ]
  %11 = phi i32 [ %15, %9 ], [ 0, %1 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !83
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  %14 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %10, ptr noundef %13) #23
  %15 = add i32 %11, 1
  %16 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %15, ptr noundef nonnull %3) #24, !range !82
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !218

18:                                               ; preds = %9, %1
  %19 = phi ptr [ %6, %1 ], [ %14, %9 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !54 !PGOFuncName !219 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !213
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @suitable_reference_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !54 !PGOFuncName !220 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %10) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @tree_could_throw_p(ptr noundef nonnull %4) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = tail call i32 @integer_zerop(ptr noundef nonnull %6) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @integer_nonzerop(ptr noundef nonnull %6) #23
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 1
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ 0, %16 ], [ %22, %19 ]
  store i32 %24, ptr %1, align 4, !tbaa !141
  br label %25

25:                                               ; preds = %23, %2, %8, %13
  %26 = phi i8 [ 0, %13 ], [ 0, %8 ], [ 0, %2 ], [ 1, %23 ]
  ret i8 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_comps(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !54 !PGOFuncName !222 {
  %5 = tail call fastcc i32 @component_of(ptr noundef %0, i32 noundef %2) #24
  %6 = tail call fastcc i32 @component_of(ptr noundef %0, i32 noundef %3) #24
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !141
  %12 = zext i32 %6 to i64
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !141
  %15 = icmp ult i32 %11, %14
  %16 = add i32 %14, %11
  %17 = select i1 %15, ptr %13, ptr %10
  %18 = select i1 %15, i64 %9, i64 %12
  %19 = select i1 %15, i32 %6, i32 %5
  store i32 %16, ptr %17, align 4, !tbaa !141
  %20 = getelementptr inbounds i32, ptr %0, i64 %18
  store i32 %19, ptr %20, align 4, !tbaa !141
  br label %21

21:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !54 !PGOFuncName !223 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !224
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @component_of(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !54 !PGOFuncName !226 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %1, %2 ], [ %7, %3 ]
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !141
  %8 = icmp eq i32 %4, %7
  br i1 %8, label %9, label %3, !llvm.loop !227

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, %1
  br i1 %10, label %17, label %11

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %15, %11 ], [ %1, %9 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !141
  store i32 %4, ptr %14, align 4, !tbaa !141
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %11, !llvm.loop !228

17:                                               ; preds = %11, %9
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @determine_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !229 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %14, ptr noundef %10) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !221
  %20 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !221
  %22 = tail call i32 @operand_equal_p(ptr noundef %19, ptr noundef %21, i32 noundef 0) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4
  %26 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !230
  %28 = load ptr, ptr %25, align 8, !tbaa !230
  %29 = tail call i32 @operand_equal_p(ptr noundef %27, ptr noundef %28, i32 noundef 0) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %18, align 8, !tbaa !221
  %33 = tail call i32 @integer_zerop(ptr noundef %32) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #24
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  store i64 %37, ptr %2, align 8, !tbaa.struct !174
  %39 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %38, ptr %39, align 8, !tbaa.struct !176
  %40 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !231
  %42 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !231
  %44 = tail call i32 @operand_equal_p(ptr noundef %41, ptr noundef %43, i32 noundef 0) #23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !232
  %49 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !232
  %51 = tail call i32 @operand_equal_p(ptr noundef %48, ptr noundef %50, i32 noundef 0) #23
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i8
  br label %61

54:                                               ; preds = %31
  call fastcc void @aff_combination_dr_offset(ptr noundef nonnull %0, ptr noundef nonnull %4) #24
  call fastcc void @aff_combination_dr_offset(ptr noundef nonnull %1, ptr noundef nonnull %5) #24
  %55 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #24
  %56 = extractvalue { i64, i64 } %55, 0
  %57 = extractvalue { i64, i64 } %55, 1
  call void @aff_combination_scale(ptr noundef nonnull %5, i64 %56, i64 %57) #23
  call void @aff_combination_add(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %58 = load ptr, ptr %18, align 8, !tbaa !221
  %59 = load ptr, ptr @sizetype_tab, align 16, !tbaa !83
  call void @tree_to_aff_combination_expand(ptr noundef %58, ptr noundef %59, ptr noundef nonnull %6, ptr noundef nonnull @name_expansions) #23
  %60 = call zeroext i8 @aff_combination_constant_multiple_p(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %2) #23
  br label %61

61:                                               ; preds = %35, %46, %17, %24, %3, %54
  %62 = phi i8 [ %60, %54 ], [ 0, %3 ], [ 0, %24 ], [ 0, %17 ], [ 0, %35 ], [ %53, %46 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #25
  ret i8 %62
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_dref_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !233 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %0) unnamed_addr #6 !prof !54 !PGOFuncName !234 {
  %2 = ashr i64 %0, 63
  %3 = insertvalue { i64, i64 } poison, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_dref_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !236 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !94
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_dref_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !54 !PGOFuncName !237 {
  %3 = load i32, ptr %0, align 8, !tbaa !94
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !94
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_dref_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !54 !PGOFuncName !238 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !239
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !83
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !54 !PGOFuncName !241 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @aff_combination_dr_offset(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !242 {
  %3 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !231
  %6 = load ptr, ptr @sizetype_tab, align 16, !tbaa !83
  tail call void @tree_to_aff_combination_expand(ptr noundef %5, ptr noundef %6, ptr noundef %1, ptr noundef nonnull @name_expansions) #23
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !83
  %8 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %9) #23
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  call void @aff_combination_const(ptr noundef nonnull %3, ptr noundef %7, i64 %11, i64 %12) #23
  call void @aff_combination_add(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @aff_combination_scale(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tree_to_aff_combination_expand(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @aff_combination_constant_multiple_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_const(ptr noundef, ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @suitable_component_p(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !243 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !203
  %6 = load ptr, ptr %1, align 8, !tbaa !102
  %7 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2, %23
  %10 = phi i32 [ %29, %23 ], [ 0, %2 ]
  %11 = phi i8 [ %28, %23 ], [ 0, %2 ]
  %12 = phi ptr [ %16, %23 ], [ %5, %2 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.dref_d, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #24
  %17 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %9
  %20 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %16, ptr noundef %12) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 828, ptr noundef nonnull @.str.15) #23
  br label %23

23:                                               ; preds = %19, %22
  %24 = load ptr, ptr %13, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 8, !tbaa !69
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i8 1, i8 %11
  %29 = add i32 %10, 1
  %30 = load ptr, ptr %1, align 8, !tbaa !102
  %31 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %30, i32 noundef %29, ptr noundef nonnull %3) #24, !range !82
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %9, !llvm.loop !244

33:                                               ; preds = %23
  %34 = icmp eq i8 %28, 0
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i1 [ true, %2 ], [ %34, %33 ]
  %37 = phi ptr [ %6, %2 ], [ %30, %33 ]
  %38 = tail call fastcc ptr @VEC_dref_base_index(ptr noundef %37) #24
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.component, ptr %1, i64 0, i32 1
  %41 = tail call fastcc zeroext i8 @suitable_reference_p(ptr noundef %39, ptr noundef nonnull %40) #24, !range !110
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 837, ptr noundef nonnull @.str.15) #23
  br label %44

44:                                               ; preds = %35, %43
  %45 = getelementptr inbounds %struct.dref_d, ptr %38, i64 0, i32 4
  %46 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #24
  %47 = extractvalue { i64, i64 } %46, 0
  %48 = extractvalue { i64, i64 } %46, 1
  store i64 %47, ptr %45, align 8, !tbaa.struct !174
  %49 = getelementptr inbounds %struct.dref_d, ptr %38, i64 0, i32 4, i32 1
  store i64 %48, ptr %49, align 8, !tbaa.struct !176
  %50 = load ptr, ptr %1, align 8, !tbaa !102
  %51 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %50, i32 noundef 1, ptr noundef nonnull %3) #24, !range !82
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %58

53:                                               ; preds = %58
  %54 = add i32 %59, 1
  %55 = load ptr, ptr %1, align 8, !tbaa !102
  %56 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %55, i32 noundef %54, ptr noundef nonnull %3) #24, !range !82
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58, !llvm.loop !245

58:                                               ; preds = %44, %53
  %59 = phi i32 [ %54, %53 ], [ 1, %44 ]
  %60 = load ptr, ptr %38, align 8, !tbaa !55
  %61 = load ptr, ptr %3, align 8, !tbaa !83
  %62 = load ptr, ptr %61, align 8, !tbaa !55
  %63 = getelementptr inbounds %struct.dref_d, ptr %61, i64 0, i32 4
  %64 = tail call fastcc zeroext i8 @determine_offset(ptr noundef %60, ptr noundef %62, ptr noundef nonnull %63) #24
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %71, label %53

66:                                               ; preds = %53, %44
  br i1 %36, label %70, label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %40, align 8, !tbaa !100
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %66
  br label %71

71:                                               ; preds = %9, %58, %67, %70
  %72 = phi i8 [ 1, %70 ], [ 0, %67 ], [ 0, %58 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i8 %72
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @release_component(ptr nocapture noundef %0) unnamed_addr #14 !prof !54 !PGOFuncName !246 {
  tail call fastcc void @VEC_dref_heap_free(ptr noundef %0) #24
  tail call void @free(ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_dref_base_index(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !247 {
  %2 = getelementptr inbounds %struct.VEC_dref_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_dref_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !54 !PGOFuncName !248 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_roots_comp(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !249 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.component, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @make_invariant_chain(ptr noundef nonnull %1) #24
  tail call fastcc void @VEC_chain_p_heap_safe_push(ptr noundef %2, ptr noundef %9) #24
  br label %78

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !102
  %12 = tail call fastcc ptr @VEC_dref_base_address(ptr noundef %11) #24
  %13 = tail call fastcc i32 @VEC_dref_base_length(ptr noundef %11) #24
  %14 = zext i32 %13 to i64
  tail call void @spec_qsort(ptr noundef %12, i64 noundef %14, i64 noundef 8, ptr noundef nonnull @order_drefs) #23
  %15 = load ptr, ptr %1, align 8, !tbaa !102
  %16 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %10
  %19 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #24
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  br label %22

22:                                               ; preds = %18, %64
  %23 = phi i32 [ %68, %64 ], [ 0, %18 ]
  %24 = phi ptr [ %67, %64 ], [ null, %18 ]
  %25 = phi i64 [ %66, %64 ], [ %21, %18 ]
  %26 = phi i64 [ %65, %64 ], [ %20, %18 ]
  %27 = icmp eq ptr %24, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 8, !tbaa !83
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.data_reference, ptr %30, i64 0, i32 3
  %32 = load i8, ptr %31, align 8, !tbaa !69
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr @target_avail_regs, align 4, !tbaa !141
  %36 = icmp ult i32 %35, 16
  %37 = select i1 %36, i64 4, i64 8
  %38 = tail call fastcc i64 @uhwi_to_double_int(i64 noundef %37) #24
  %39 = getelementptr inbounds %struct.dref_d, ptr %29, i64 0, i32 4
  %40 = tail call { i64, i64 } @double_int_neg(i64 %26, i64 %25) #23
  %41 = extractvalue { i64, i64 } %40, 0
  %42 = extractvalue { i64, i64 } %40, 1
  %43 = load i64, ptr %39, align 8
  %44 = getelementptr inbounds %struct.dref_d, ptr %29, i64 0, i32 4, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = tail call { i64, i64 } @double_int_add(i64 %43, i64 %45, i64 %41, i64 %42) #23
  %47 = extractvalue { i64, i64 } %46, 0
  %48 = extractvalue { i64, i64 } %46, 1
  %49 = tail call i32 @double_int_ucmp(i64 %38, i64 0, i64 %47, i64 %48) #23
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %34, %28, %22
  %52 = tail call fastcc zeroext i8 @nontrivial_chain_p(ptr noundef %24) #24, !range !110
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call fastcc void @add_looparound_copies(ptr noundef %0, ptr noundef %24) #24
  tail call fastcc void @VEC_chain_p_heap_safe_push(ptr noundef %2, ptr noundef %24) #24
  br label %56

55:                                               ; preds = %51
  tail call fastcc void @release_chain(ptr noundef %24) #24
  br label %56

56:                                               ; preds = %55, %54
  %57 = load ptr, ptr %4, align 8, !tbaa !83
  %58 = tail call fastcc ptr @make_rooted_chain(ptr noundef %57) #24
  %59 = getelementptr inbounds %struct.dref_d, ptr %57, i64 0, i32 4
  %60 = load i64, ptr %59, align 8, !tbaa.struct !174
  %61 = getelementptr inbounds %struct.dref_d, ptr %57, i64 0, i32 4, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa.struct !176
  br label %64

63:                                               ; preds = %34
  tail call fastcc void @add_ref_to_chain(ptr noundef nonnull %24, ptr noundef nonnull %29) #24
  br label %64

64:                                               ; preds = %63, %56
  %65 = phi i64 [ %60, %56 ], [ %26, %63 ]
  %66 = phi i64 [ %62, %56 ], [ %25, %63 ]
  %67 = phi ptr [ %58, %56 ], [ %24, %63 ]
  %68 = add i32 %23, 1
  %69 = load ptr, ptr %1, align 8, !tbaa !102
  %70 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %69, i32 noundef %68, ptr noundef nonnull %4) #24, !range !82
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %22, !llvm.loop !250

72:                                               ; preds = %64, %10
  %73 = phi ptr [ null, %10 ], [ %67, %64 ]
  %74 = tail call fastcc zeroext i8 @nontrivial_chain_p(ptr noundef %73) #24, !range !110
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call fastcc void @add_looparound_copies(ptr noundef %0, ptr noundef %73) #24
  tail call fastcc void @VEC_chain_p_heap_safe_push(ptr noundef %2, ptr noundef %73) #24
  br label %78

77:                                               ; preds = %72
  tail call fastcc void @release_chain(ptr noundef %73) #24
  br label %78

78:                                               ; preds = %76, %77, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_invariant_chain(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !54 !PGOFuncName !251 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store i32 0, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.chain, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 2
  store i8 %6, ptr %4, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !102
  %8 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %2) #24, !range !82
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.chain, ptr %3, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ 0, %10 ], [ %21, %12 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !83
  tail call fastcc void @VEC_dref_heap_safe_push(ptr noundef nonnull %11, ptr noundef %14) #24
  %15 = getelementptr inbounds %struct.dref_d, ptr %14, i64 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = load i8, ptr %4, align 8
  %18 = shl i8 %16, 1
  %19 = or i8 %18, -3
  %20 = and i8 %19, %17
  store i8 %20, ptr %4, align 8
  %21 = add i32 %13, 1
  %22 = load ptr, ptr %0, align 8, !tbaa !102
  %23 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %22, i32 noundef %21, ptr noundef nonnull %2) #24, !range !82
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %12, !llvm.loop !252

25:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_chain_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !253 {
  tail call fastcc void @VEC_chain_p_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  tail call fastcc void @VEC_chain_p_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_dref_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !54 !PGOFuncName !254 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_dref_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @order_drefs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !54 !PGOFuncName !255 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %1, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 4
  %7 = load i64, ptr %4, align 8
  %8 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 4, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %6, align 8
  %11 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 4, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = tail call i32 @double_int_scmp(i64 %7, i64 %9, i64 %10, i64 %12) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.dref_d, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = load ptr, ptr %1, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.dref_d, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = sub i32 %18, %21
  br label %23

23:                                               ; preds = %2, %15
  %24 = phi i32 [ %22, %15 ], [ %13, %2 ]
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @uhwi_to_double_int(i64 noundef %0) unnamed_addr #6 !prof !54 !PGOFuncName !256 {
  ret i64 %0
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @nontrivial_chain_p(ptr noundef readonly %0) unnamed_addr #7 !prof !54 !PGOFuncName !257 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = tail call fastcc i32 @VEC_dref_base_length(ptr noundef %5) #24
  %7 = icmp ugt i32 %6, 1
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_looparound_copies(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !258 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = tail call fastcc ptr @get_chain_root(ptr noundef %1) #24
  %5 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2, %21
  %10 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !83
  %12 = tail call fastcc ptr @find_looparound_phi(ptr noundef %0, ptr noundef %11, ptr noundef %4) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @looparound_phis, align 8, !tbaa !83
  %16 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef nonnull %12) #24
  %17 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %16) #24
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !106
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %19) #23
  tail call fastcc void @insert_looparound_copy(ptr noundef nonnull %1, ptr noundef %11, ptr noundef nonnull %12) #24
  br label %21

21:                                               ; preds = %9, %14
  %22 = add i32 %10, 1
  %23 = load ptr, ptr %5, align 8, !tbaa !88
  %24 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %23, i32 noundef %22, ptr noundef nonnull %3) #24, !range !82
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !259

26:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @release_chain(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !260 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #24, !range !82
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %4 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !83
  tail call void @free(ptr noundef %11) #24
  %12 = add i32 %10, 1
  %13 = load ptr, ptr %5, align 8, !tbaa !88
  %14 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #24, !range !82
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !261

16:                                               ; preds = %9, %4
  tail call fastcc void @VEC_dref_heap_free(ptr noundef nonnull %5) #24
  %17 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %17) #24
  %18 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 8
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %18) #24
  tail call void @free(ptr noundef nonnull %0) #24
  br label %19

19:                                               ; preds = %1, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_rooted_chain(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !262 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.data_reference, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 2, i32 1
  store i32 %7, ptr %2, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.chain, ptr %2, i64 0, i32 5
  tail call fastcc void @VEC_dref_heap_safe_push(ptr noundef nonnull %8, ptr noundef nonnull %0) #24
  %9 = getelementptr inbounds %struct.dref_d, ptr %0, i64 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.chain, ptr %2, i64 0, i32 9
  %12 = load i8, ptr %11, align 8
  %13 = shl i8 %10, 1
  %14 = and i8 %13, 2
  %15 = and i8 %12, -3
  %16 = or disjoint i8 %15, %14
  store i8 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.dref_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %17, align 8, !tbaa !72
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_ref_to_chain(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !263 {
  %3 = tail call fastcc ptr @get_chain_root(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 4
  %5 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 4
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = load i64, ptr %5, align 8
  %10 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 4, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = tail call i32 @double_int_scmp(i64 %6, i64 %8, i64 %9, i64 %11) #23
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 926, ptr noundef nonnull @.str.15) #23
  br label %15

15:                                               ; preds = %2, %14
  %16 = load i64, ptr %4, align 8
  %17 = load i64, ptr %7, align 8
  %18 = tail call { i64, i64 } @double_int_neg(i64 %16, i64 %17) #23
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %10, align 8
  %23 = tail call { i64, i64 } @double_int_add(i64 %21, i64 %22, i64 %19, i64 %20) #23
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  %26 = load i32, ptr @target_avail_regs, align 4, !tbaa !141
  %27 = icmp ult i32 %26, 16
  %28 = select i1 %27, i64 4, i64 8
  %29 = tail call fastcc i64 @uhwi_to_double_int(i64 noundef %28) #24
  %30 = tail call i32 @double_int_ucmp(i64 %29, i64 0, i64 %24, i64 %25) #23
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %1) #24
  br label %72

33:                                               ; preds = %15
  %34 = tail call zeroext i8 @double_int_fits_in_uhwi_p(i64 %24, i64 %25) #23
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 933, ptr noundef nonnull @.str.15) #23
  br label %37

37:                                               ; preds = %33, %36
  %38 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_dref_heap_safe_push(ptr noundef nonnull %38, ptr noundef nonnull %1) #24
  %39 = tail call i64 @double_int_to_uhwi(i64 %24, i64 %25) #23
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 3
  store i32 %40, ptr %41, align 8, !tbaa !72
  %42 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !76
  %44 = icmp ugt i32 %43, %40
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  store i32 %40, ptr %42, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 9
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, -2
  store i8 %48, ptr %46, align 8
  %49 = load i32, ptr %41, align 8, !tbaa !72
  br label %50

50:                                               ; preds = %45, %37
  %51 = phi i32 [ %40, %45 ], [ %43, %37 ]
  %52 = phi i32 [ %49, %45 ], [ %40, %37 ]
  %53 = icmp eq i32 %52, %51
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !68
  %59 = icmp ugt i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 9
  %62 = load i8, ptr %61, align 8
  %63 = or i8 %62, 1
  store i8 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %60, %54, %50
  %65 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 9
  %68 = load i8, ptr %67, align 8
  %69 = shl i8 %66, 1
  %70 = or i8 %69, -3
  %71 = and i8 %70, %68
  store i8 %71, ptr %67, align 8
  br label %72

72:                                               ; preds = %64, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_dref_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !264 {
  tail call fastcc void @VEC_dref_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  tail call fastcc void @VEC_dref_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_dref_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !265 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = tail call fastcc i32 @VEC_dref_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !83
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_dref_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_dref_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !267
  %6 = load i32, ptr %0, align 8, !tbaa !94
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_chain_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !268 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = tail call fastcc i32 @VEC_chain_p_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !83
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_chain_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !54 !PGOFuncName !269 {
  %3 = load i32, ptr %0, align 8, !tbaa !98
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !98
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_chain_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !270 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !271
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @double_int_scmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chain_root(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !54 !PGOFuncName !272 {
  %2 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call fastcc ptr @VEC_dref_base_index(ptr noundef %3) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_looparound_phi(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !54 !PGOFuncName !273 {
  %4 = alloca %struct.data_reference, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @loop_latch_edge(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %7 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %8) #24, !range !110
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.data_reference, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !69
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %8) #24
  br label %23

18:                                               ; preds = %11
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #24
  br label %23

20:                                               ; preds = %3
  %21 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %8) #24
  %22 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %21) #24
  br label %23

23:                                               ; preds = %16, %18, %20
  %24 = phi ptr [ %17, %16 ], [ %19, %18 ], [ %22, %20 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %81, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !203
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %28) #23
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24, !range !110
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %39
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24
  %35 = load i32, ptr %32, align 4, !tbaa !204
  %36 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %35) #24
  %37 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %36) #24
  %38 = icmp eq ptr %37, %24
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  call fastcc void @gsi_next(ptr noundef nonnull %5) #24
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24, !range !110
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %33, label %81, !llvm.loop !274

42:                                               ; preds = %33
  %43 = call ptr @loop_preheader_edge(ptr noundef %0) #23
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !204
  %46 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %45) #24
  %47 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #24
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %81

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %47, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !106
  %54 = call fastcc i32 @gimple_code(ptr noundef %53) #24, !range !71
  %55 = icmp eq i32 %54, 6
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = call fastcc ptr @gimple_assign_lhs(ptr noundef %53) #24
  %58 = icmp eq ptr %57, %47
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1104, ptr noundef nonnull @.str.15) #23
  br label %60

60:                                               ; preds = %56, %59
  %61 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %53) #24
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !141
  %66 = add i32 %65, -3
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = getelementptr inbounds i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %69, i8 0, i64 96, i1 false)
  %70 = getelementptr inbounds %struct.data_reference, ptr %4, i64 0, i32 1
  store ptr %61, ptr %70, align 8, !tbaa !63
  store ptr %34, ptr %4, align 8, !tbaa !173
  %71 = call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %4) #23
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !72
  %76 = add i32 %75, 1
  %77 = load ptr, ptr %2, align 8, !tbaa !55
  %78 = call fastcc zeroext i8 @valid_initializer_p(ptr noundef nonnull %4, i32 noundef %76, ptr noundef %77) #24, !range !110
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, ptr null, ptr %34
  br label %81

81:                                               ; preds = %39, %26, %60, %73, %68, %51, %42, %23
  %82 = phi ptr [ null, %23 ], [ null, %42 ], [ null, %51 ], [ null, %60 ], [ null, %68 ], [ %80, %73 ], [ null, %26 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #25
  ret ptr %82
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_looparound_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !275 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %6 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !72
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 3
  store i32 %9, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3, %24
  %19 = phi i32 [ %25, %24 ], [ 0, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.dref_d, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = icmp ult i32 %22, %9
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = add i32 %19, 1
  %26 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %15, i32 noundef %25, ptr noundef nonnull %4) #24, !range !82
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !276

28:                                               ; preds = %24, %18, %3
  %29 = phi i32 [ 0, %3 ], [ %19, %18 ], [ %25, %24 ]
  tail call fastcc void @VEC_dref_heap_safe_insert(ptr noundef nonnull %14, i32 noundef %29, ptr noundef %5) #24
  %30 = load i32, ptr %10, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !76
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  store i32 %30, ptr %31, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 9
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, -2
  store i8 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !277 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !278 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !279 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !54 !PGOFuncName !280 {
  %2 = load ptr, ptr %0, align 8, !tbaa !281
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !54 !PGOFuncName !283 {
  %2 = load ptr, ptr %0, align 8, !tbaa !281
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !54 !PGOFuncName !286 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !289 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #24
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #15 !prof !54 !PGOFuncName !290 {
  %2 = load ptr, ptr %0, align 8, !tbaa !281
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  store ptr %4, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: optsize
declare zeroext i8 @dr_analyze_innermost(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_initializer_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !54 !PGOFuncName !292 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.affine_tree_combination, align 8
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  %8 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !230
  %12 = tail call i32 @operand_equal_p(ptr noundef %9, ptr noundef %11, i32 noundef 0) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = tail call i32 @integer_zerop(ptr noundef %16) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1036, ptr noundef nonnull @.str.15) #23
  br label %20

20:                                               ; preds = %14, %19
  %21 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 4, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !231
  %28 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !231
  %30 = tail call i32 @operand_equal_p(ptr noundef %27, ptr noundef %29, i32 noundef 0) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !232
  %35 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 4, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !232
  %37 = tail call i32 @operand_equal_p(ptr noundef %34, ptr noundef %36, i32 noundef 0) #23
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i8
  br label %55

40:                                               ; preds = %20
  call fastcc void @aff_combination_dr_offset(ptr noundef nonnull %2, ptr noundef nonnull %4) #24
  call fastcc void @aff_combination_dr_offset(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  %41 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #24
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  call void @aff_combination_scale(ptr noundef nonnull %5, i64 %42, i64 %43) #23
  call void @aff_combination_add(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %44 = load ptr, ptr %21, align 8, !tbaa !221
  %45 = load ptr, ptr @sizetype_tab, align 16, !tbaa !83
  call void @tree_to_aff_combination_expand(ptr noundef %44, ptr noundef %45, ptr noundef nonnull %6, ptr noundef nonnull @name_expansions) #23
  %46 = call zeroext i8 @aff_combination_constant_multiple_p(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = zext i32 %1 to i64
  %50 = call fastcc i64 @uhwi_to_double_int(i64 noundef %49) #24
  %51 = load i64, ptr %7, align 8
  %52 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = call fastcc zeroext i8 @double_int_equal_p(i64 %51, i64 %53, i64 %50) #24
  br label %55

55:                                               ; preds = %48, %40, %25, %32, %3
  %56 = phi i8 [ 0, %3 ], [ 0, %25 ], [ %39, %32 ], [ 0, %40 ], [ %54, %48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #25
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !293 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !110
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !54 !PGOFuncName !294 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #24
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !175
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !295 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !54 !PGOFuncName !296 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !141
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !297 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !106
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 3103, ptr noundef nonnull @.str.15) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %0, i64 %1, i64 %2) unnamed_addr #6 !prof !54 !PGOFuncName !298 {
  %4 = icmp eq i64 %0, %2
  %5 = icmp eq i64 %1, 0
  %6 = select i1 %4, i1 %5, i1 false
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_dref_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !299 {
  tail call fastcc void @VEC_dref_heap_reserve(ptr noundef %0) #24
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  tail call fastcc void @VEC_dref_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_dref_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !54 !PGOFuncName !300 {
  %4 = load i32, ptr %0, align 8, !tbaa !94
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_dref_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !94
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !54 !PGOFuncName !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_in_uhwi_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @double_int_to_uhwi(i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_chain_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !302 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_chain_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !54 !PGOFuncName !303 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @prepare_initializers_chain(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !304 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load i32, ptr %1, align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !76
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ 1, %2 ]
  %12 = tail call fastcc ptr @get_chain_root(ptr noundef nonnull %1) #24
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %14 = tail call ptr @loop_preheader_edge(ptr noundef %0) #23
  %15 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %11) #24
  %16 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !86
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %25, %10
  %19 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  br label %34

25:                                               ; preds = %10, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %10 ]
  %27 = load ptr, ptr %16, align 8, !tbaa !86
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %27, ptr noundef null) #24
  %28 = add nuw i32 %26, 1
  %29 = icmp eq i32 %28, %11
  br i1 %29, label %18, label %25, !llvm.loop !305

30:                                               ; preds = %58, %18
  %31 = getelementptr inbounds %struct.data_reference, ptr %13, i64 0, i32 1
  br i1 %17, label %91, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  br label %63

34:                                               ; preds = %23, %58
  %35 = phi ptr [ %20, %23 ], [ %59, %58 ]
  %36 = phi i32 [ 0, %23 ], [ %60, %58 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !83
  %38 = getelementptr inbounds %struct.dref_d, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %39) #24, !range !71
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.dref_d, ptr %37, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !72
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2406, ptr noundef nonnull @.str.15) #23
  %47 = load i32, ptr %43, align 8, !tbaa !72
  %48 = load ptr, ptr %38, align 8, !tbaa !70
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi ptr [ %39, %42 ], [ %48, %46 ]
  %51 = phi i32 [ %44, %42 ], [ %47, %46 ]
  %52 = load ptr, ptr %16, align 8, !tbaa !86
  %53 = sub i32 %11, %51
  %54 = load i32, ptr %24, align 4, !tbaa !204
  %55 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %50, i32 noundef %54) #24
  %56 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %55) #24
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %52, i32 noundef %53, ptr noundef %56) #24
  %57 = load ptr, ptr %19, align 8, !tbaa !88
  br label %58

58:                                               ; preds = %34, %49
  %59 = phi ptr [ %35, %34 ], [ %57, %49 ]
  %60 = add i32 %36, 1
  %61 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %59, i32 noundef %60, ptr noundef nonnull %4) #24, !range !82
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %30, label %34, !llvm.loop !306

63:                                               ; preds = %32, %88
  %64 = phi i32 [ 0, %32 ], [ %89, %88 ]
  %65 = load ptr, ptr %16, align 8, !tbaa !86
  %66 = call fastcc ptr @VEC_tree_base_index(ptr noundef %65, i32 noundef %64) #24
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load ptr, ptr %31, align 8, !tbaa !63
  %70 = sub i32 %64, %11
  %71 = call fastcc ptr @ref_at_iteration(ptr noundef %0, ptr noundef %69, i32 noundef %70) #24
  %72 = icmp eq ptr %71, null
  br i1 %72, label %91, label %73

73:                                               ; preds = %68
  %74 = load i8, ptr %33, align 8
  %75 = and i8 %74, 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %71) #23
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77, %73
  %81 = call ptr @force_gimple_operand(ptr noundef nonnull %71, ptr noundef nonnull %3, i8 noundef zeroext 0, ptr noundef null) #23
  %82 = load ptr, ptr %3, align 8, !tbaa !83
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %14, ptr noundef nonnull %82) #23
  br label %86

86:                                               ; preds = %84, %80
  %87 = load ptr, ptr %16, align 8, !tbaa !86
  call fastcc void @VEC_tree_base_replace(ptr noundef %87, i32 noundef %64, ptr noundef %81) #24
  br label %88

88:                                               ; preds = %63, %86
  %89 = add nuw i32 %64, 1
  %90 = icmp eq i32 %89, %11
  br i1 %90, label %91, label %63, !llvm.loop !307

91:                                               ; preds = %68, %77, %88, %30
  %92 = phi i8 [ 1, %30 ], [ 1, %88 ], [ 0, %77 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i8 %92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_chain_p_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !54 !PGOFuncName !308 {
  %3 = load i32, ptr %0, align 8, !tbaa !98
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !98
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  store ptr %9, ptr %5, align 8, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !309 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !54 !PGOFuncName !310 {
  %3 = load i32, ptr %0, align 8, !tbaa !91
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !91
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !54 !PGOFuncName !311 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !54 !PGOFuncName !312 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ref_at_iteration(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !313 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #24, !range !110
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = tail call fastcc ptr @ref_at_iteration(ptr noundef %0, ptr noundef %9, i32 noundef %2) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %1, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load i64, ptr %1, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -47
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #23
  br label %108

22:                                               ; preds = %12, %14
  %23 = phi i64 [ %13, %12 ], [ %15, %14 ]
  %24 = phi ptr [ %10, %12 ], [ null, %14 ]
  %25 = trunc i64 %23 to i16
  switch i16 %25, label %108 [
    i16 47, label %26
    i16 48, label %26
    i16 49, label %26
    i16 41, label %30
    i16 45, label %46
  ]

26:                                               ; preds = %22, %22, %22
  %27 = tail call ptr @copy_node_stat(ptr noundef nonnull %1) #23
  %28 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %29 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  br label %70

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %32) #23
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %108, label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  %42 = tail call ptr @unshare_expr(ptr noundef %41) #23
  %43 = load ptr, ptr %31, align 8, !tbaa !106
  %44 = tail call ptr @unshare_expr(ptr noundef %43) #23
  %45 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %39, ptr noundef %24, ptr noundef %42, ptr noundef %44) #23
  br label %108

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !106
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %48) #23
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %108, label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %55) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %108, label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !106
  %63 = load ptr, ptr %47, align 8, !tbaa !106
  %64 = tail call ptr @unshare_expr(ptr noundef %63) #23
  %65 = load ptr, ptr %54, align 8, !tbaa !106
  %66 = tail call ptr @unshare_expr(ptr noundef %65) #23
  %67 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %62, ptr noundef %24, ptr noundef null, ptr noundef %64, ptr noundef %66) #23
  %68 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %69 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 1
  br label %70

70:                                               ; preds = %60, %26
  %71 = phi ptr [ %29, %26 ], [ %69, %60 ]
  %72 = phi ptr [ %28, %26 ], [ %68, %60 ]
  %73 = phi ptr [ %27, %26 ], [ %67, %60 ]
  %74 = load ptr, ptr %72, align 8, !tbaa !106
  %75 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %0, ptr noundef %74, ptr noundef nonnull %4, i8 noundef zeroext 1) #23
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %4, align 8, !tbaa !314
  %79 = call ptr @expand_simple_operations(ptr noundef %78) #23
  store ptr %79, ptr %4, align 8, !tbaa !314
  %80 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !316
  %82 = call i32 @integer_zerop(ptr noundef %81) #23
  %83 = icmp eq i32 %82, 0
  %84 = load ptr, ptr %4, align 8, !tbaa !314
  br i1 %83, label %85, label %105

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !106
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i16
  switch i16 %89, label %98 [
    i16 10, label %90
    i16 12, label %90
  ]

90:                                               ; preds = %85, %85
  %91 = load ptr, ptr @sizetype_tab, align 16, !tbaa !83
  %92 = load ptr, ptr %80, align 8, !tbaa !316
  %93 = sext i32 %2 to i64
  %94 = call ptr @size_int_kind(i64 noundef %93, i32 noundef 0) #23
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %91, ptr noundef %92, ptr noundef %94) #23
  %96 = load ptr, ptr %4, align 8, !tbaa !314
  %97 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %87, ptr noundef %96, ptr noundef %95) #23
  br label %105

98:                                               ; preds = %85
  %99 = load ptr, ptr %80, align 8, !tbaa !316
  %100 = sext i32 %2 to i64
  %101 = call ptr @build_int_cst_type(ptr noundef nonnull %87, i64 noundef %100) #23
  %102 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %87, ptr noundef %99, ptr noundef %101) #23
  %103 = load ptr, ptr %4, align 8, !tbaa !314
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %87, ptr noundef %103, ptr noundef %102) #23
  br label %105

105:                                              ; preds = %90, %98, %77
  %106 = phi ptr [ %84, %77 ], [ %97, %90 ], [ %104, %98 ]
  %107 = call ptr @unshare_expr(ptr noundef %106) #23
  store ptr %107, ptr %71, align 8, !tbaa !83
  br label %108

108:                                              ; preds = %70, %22, %57, %50, %34, %7, %105, %37, %20
  %109 = phi ptr [ %73, %105 ], [ %45, %37 ], [ %21, %20 ], [ null, %7 ], [ null, %34 ], [ null, %50 ], [ null, %57 ], [ null, %22 ], [ null, %70 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret ptr %109
}

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !317 {
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

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_simple_operations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @chain_can_be_combined_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !318 {
  %2 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 8, !tbaa !74
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %7, 3
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %9, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %6 ], [ %11, %9 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_chain_p_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !54 !PGOFuncName !319 {
  %2 = load i32, ptr %0, align 8, !tbaa !98
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !98
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @combine_chains(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !320 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #25
  store i8 0, ptr %7, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  store ptr null, ptr %8, align 8, !tbaa !83
  %9 = icmp eq ptr %0, %1
  br i1 %9, label %139, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %139

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = tail call fastcc i32 @VEC_dref_base_length(ptr noundef %18) #24
  %20 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = tail call fastcc i32 @VEC_dref_base_length(ptr noundef %21) #24
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %139

24:                                               ; preds = %16
  %25 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %56, label %32

27:                                               ; preds = %45
  %28 = add i32 %33, 1
  %29 = load ptr, ptr %17, align 8, !tbaa !88
  %30 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %29, i32 noundef %28, ptr noundef nonnull %3) #24, !range !82
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32, !llvm.loop !321

32:                                               ; preds = %24, %27
  %33 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %34 = load ptr, ptr %20, align 8, !tbaa !88
  %35 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %34, i32 noundef %33, ptr noundef nonnull %4) #24, !range !82
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8, !tbaa !83
  %39 = getelementptr inbounds %struct.dref_d, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !72
  %41 = load ptr, ptr %4, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.dref_d, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !72
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %139

45:                                               ; preds = %37
  %46 = call fastcc zeroext i8 @combinable_refs_p(ptr noundef nonnull %38, ptr noundef nonnull %41, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #24, !range !110
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %139, label %27

48:                                               ; preds = %32, %27
  %49 = load i8, ptr %7, align 1, !tbaa !106
  %50 = load i32, ptr %6, align 4, !tbaa !141
  %51 = load ptr, ptr %8, align 8, !tbaa !83
  %52 = freeze i8 %49
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, ptr %1, ptr %0
  %55 = select i1 %53, ptr %0, ptr %1
  br label %56

56:                                               ; preds = %48, %24
  %57 = phi ptr [ %1, %24 ], [ %54, %48 ]
  %58 = phi ptr [ null, %24 ], [ %51, %48 ]
  %59 = phi i32 [ 0, %24 ], [ %50, %48 ]
  %60 = phi ptr [ %0, %24 ], [ %55, %48 ]
  %61 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #23
  store i32 3, ptr %61, align 8, !tbaa !74
  %62 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 1
  store i32 %59, ptr %62, align 4, !tbaa !78
  %63 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 3
  store ptr %60, ptr %63, align 8, !tbaa !77
  %64 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 4
  store ptr %57, ptr %64, align 8, !tbaa !79
  %65 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 2
  store ptr %58, ptr %65, align 8, !tbaa !80
  %66 = getelementptr inbounds %struct.chain, ptr %60, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 6
  store i32 %67, ptr %68, align 8, !tbaa !76
  %69 = getelementptr inbounds %struct.chain, ptr %57, i64 0, i32 5
  %70 = getelementptr inbounds %struct.chain, ptr %60, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !88
  %72 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %71, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 5
  %76 = load ptr, ptr %69, align 8, !tbaa !88
  %77 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %83

79:                                               ; preds = %83
  %80 = load ptr, ptr %69, align 8, !tbaa !88
  %81 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %80, i32 noundef %93, ptr noundef nonnull %4) #24, !range !82
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83, !llvm.loop !322

83:                                               ; preds = %74, %79
  %84 = phi i32 [ %93, %79 ], [ 0, %74 ]
  %85 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #23
  %86 = load ptr, ptr %3, align 8, !tbaa !83
  %87 = load ptr, ptr %4, align 8, !tbaa !83
  %88 = tail call fastcc ptr @stmt_combining_refs(ptr noundef %86, ptr noundef %87) #24
  %89 = getelementptr inbounds %struct.dref_d, ptr %85, i64 0, i32 1
  store ptr %88, ptr %89, align 8, !tbaa !70
  %90 = getelementptr inbounds %struct.dref_d, ptr %86, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !72
  %92 = getelementptr inbounds %struct.dref_d, ptr %85, i64 0, i32 3
  store i32 %91, ptr %92, align 8, !tbaa !72
  tail call fastcc void @VEC_dref_heap_safe_push(ptr noundef nonnull %75, ptr noundef %85) #24
  %93 = add i32 %84, 1
  %94 = load ptr, ptr %70, align 8, !tbaa !88
  %95 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %94, i32 noundef %93, ptr noundef nonnull %3) #24, !range !82
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %79, !llvm.loop !322

97:                                               ; preds = %83, %79, %74, %56
  %98 = phi ptr [ undef, %56 ], [ undef, %74 ], [ %85, %79 ], [ %85, %83 ]
  store ptr %98, ptr %5, align 8, !tbaa !83
  %99 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 9
  %100 = load i8, ptr %99, align 8
  %101 = and i8 %100, -2
  store i8 %101, ptr %99, align 8
  %102 = tail call fastcc ptr @get_chain_root(ptr noundef nonnull %61) #24
  %103 = getelementptr inbounds %struct.dref_d, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = getelementptr inbounds %struct.chain, ptr %61, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !88
  %107 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %106, i32 noundef 1, ptr noundef nonnull %5) #24, !range !82
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %97, %127
  %110 = phi ptr [ %128, %127 ], [ %106, %97 ]
  %111 = phi i32 [ %129, %127 ], [ 1, %97 ]
  %112 = load ptr, ptr %5, align 8, !tbaa !83
  %113 = getelementptr inbounds %struct.dref_d, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !72
  %115 = load i32, ptr %68, align 8, !tbaa !76
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.dref_d, ptr %112, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !70
  %120 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %119, ptr noundef %104) #23
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %105, align 8, !tbaa !88
  br label %127

124:                                              ; preds = %117
  %125 = load i8, ptr %99, align 8
  %126 = or i8 %125, 1
  store i8 %126, ptr %99, align 8
  br label %132

127:                                              ; preds = %122, %109
  %128 = phi ptr [ %123, %122 ], [ %110, %109 ]
  %129 = add i32 %111, 1
  %130 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %128, i32 noundef %129, ptr noundef nonnull %5) #24, !range !82
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %109, !llvm.loop !323

132:                                              ; preds = %127, %97, %124
  %133 = getelementptr inbounds %struct.chain, ptr %60, i64 0, i32 9
  %134 = load i8, ptr %133, align 8
  %135 = or i8 %134, 4
  store i8 %135, ptr %133, align 8
  %136 = getelementptr inbounds %struct.chain, ptr %57, i64 0, i32 9
  %137 = load i8, ptr %136, align 8
  %138 = or i8 %137, 4
  store i8 %138, ptr %136, align 8
  br label %139

139:                                              ; preds = %45, %37, %16, %10, %2, %132
  %140 = phi ptr [ %61, %132 ], [ null, %2 ], [ null, %10 ], [ null, %16 ], [ null, %37 ], [ null, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %140
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @combinable_refs_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !54 !PGOFuncName !324 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %8 = tail call fastcc ptr @name_for_ref(ptr noundef %0) #24
  store ptr %8, ptr %6, align 8, !tbaa !83
  %9 = tail call fastcc ptr @name_for_ref(ptr noundef %1) #24
  store ptr %9, ptr %7, align 8, !tbaa !83
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2109, ptr noundef nonnull @.str.15) #23
  br label %14

14:                                               ; preds = %5, %13
  %15 = call fastcc ptr @find_common_use_stmt(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %15) #24, !range !325
  %19 = tail call zeroext i8 @commutative_tree_code(i32 noundef %18) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %15) #24
  %23 = load ptr, ptr %6, align 8, !tbaa !83
  %24 = icmp ne ptr %22, %23
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i8 [ 0, %17 ], [ %25, %21 ]
  %28 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %15) #24
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = load i32, ptr %2, align 4, !tbaa !141
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 %18, ptr %2, align 4, !tbaa !141
  store i8 %27, ptr %3, align 1, !tbaa !106
  store ptr %30, ptr %4, align 8, !tbaa !83
  br label %43

34:                                               ; preds = %26
  %35 = icmp eq i32 %31, %18
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = load i8, ptr %3, align 1, !tbaa !106
  %38 = icmp eq i8 %37, %27
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 8, !tbaa !83
  %41 = icmp eq ptr %40, %30
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %34, %36, %39, %14, %33
  %44 = phi i8 [ 1, %33 ], [ 0, %14 ], [ 0, %36 ], [ 0, %34 ], [ %42, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @stmt_combining_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !54 !PGOFuncName !326 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = tail call fastcc ptr @name_for_ref(ptr noundef %0) #24
  store ptr %5, ptr %3, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %6 = tail call fastcc ptr @name_for_ref(ptr noundef %1) #24
  store ptr %6, ptr %4, align 8, !tbaa !83
  %7 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %3) #24
  %8 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %4) #24
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !83
  %12 = load ptr, ptr %4, align 8, !tbaa !83
  %13 = tail call fastcc ptr @reassociate_to_the_same_stmt(ptr noundef %11, ptr noundef %12) #24
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @stmt_dominates_stmt_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @name_for_ref(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !54 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.dref_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %3) #24, !range !110
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !69
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %6
  %14 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #24
  br label %20

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #24
  br label %20

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %3) #24
  %19 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %18) #24
  br label %20

20:                                               ; preds = %13, %15, %17
  %21 = phi ptr [ %14, %13 ], [ %16, %15 ], [ %19, %17 ]
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  %25 = select i1 %24, ptr %21, ptr null
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_common_use_stmt(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !328 {
  %3 = tail call fastcc ptr @find_use_stmt(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @find_use_stmt(ptr noundef %1) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %3, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc ptr @find_associative_operation_root(ptr noundef nonnull %3, ptr noundef null) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @find_associative_operation_root(ptr noundef nonnull %6, ptr noundef null) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %11, %14
  %18 = select i1 %17, ptr %11, ptr null
  br label %19

19:                                               ; preds = %13, %10, %8, %5, %2, %16
  %20 = phi ptr [ %18, %16 ], [ null, %2 ], [ null, %5 ], [ %3, %8 ], [ null, %10 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !329 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #24, !range !325
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #24, !range !71
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_use_stmt(ptr nocapture noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !330 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = tail call fastcc ptr @single_nonlooparound_use(ptr noundef %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %21
  %6 = phi ptr [ %22, %21 ], [ %3, %1 ]
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %6) #24, !range !71
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %6) #24
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %6) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %6) #24
  %19 = load ptr, ptr %0, align 8, !tbaa !83
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  store ptr %10, ptr %0, align 8, !tbaa !83
  %22 = tail call fastcc ptr @single_nonlooparound_use(ptr noundef nonnull %10) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %5

24:                                               ; preds = %14
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %6) #24, !range !325
  %26 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %25) #24, !range !71
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %27, ptr %6, ptr null
  br label %29

29:                                               ; preds = %21, %5, %9, %17, %1, %24
  %30 = phi ptr [ %28, %24 ], [ null, %1 ], [ null, %17 ], [ null, %9 ], [ null, %5 ], [ null, %21 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_associative_operation_root(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 !prof !54 !PGOFuncName !331 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !325
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call fastcc zeroext i8 @may_reassociate_p(ptr noundef %7, i32 noundef %4) #24, !range !110
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2, %24
  %11 = phi ptr [ %19, %24 ], [ %0, %2 ]
  %12 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %13 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #24
  store ptr %13, ptr %3, align 8, !tbaa !83
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2045, ptr noundef nonnull @.str.15) #23
  br label %18

18:                                               ; preds = %10, %17
  %19 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %3) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %19) #24, !range !325
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = add i32 %12, 1
  br label %10

26:                                               ; preds = %18, %21
  %27 = icmp eq ptr %1, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  store i32 %12, ptr %1, align 4, !tbaa !141
  br label %29

29:                                               ; preds = %26, %28, %2
  %30 = phi ptr [ null, %2 ], [ %11, %28 ], [ %11, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_nonlooparound_use(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !332 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %3 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %2, ptr noundef %0) #24
  %4 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %2) #24, !range !110
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1, %23
  %7 = phi ptr [ %24, %23 ], [ null, %1 ]
  %8 = phi ptr [ %25, %23 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #24, !range !71
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load ptr, ptr @looparound_phis, align 8, !tbaa !83
  %15 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %10) #24
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %15) #24
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !106
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %14, i32 noundef %18) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %23

21:                                               ; preds = %6
  %22 = icmp eq ptr %7, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %7, %13 ], [ %10, %21 ]
  %25 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %2) #24
  %26 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %2) #24, !range !110
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %6, label %28, !llvm.loop !333

28:                                               ; preds = %13, %21, %23, %1
  %29 = phi ptr [ null, %1 ], [ %24, %23 ], [ null, %21 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  ret ptr %29
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 !prof !54 !PGOFuncName !334 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !106
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !54 !PGOFuncName !335 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !338
  store ptr %6, ptr %0, align 8, !tbaa !339
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #24, !range !110
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !340 {
  %2 = load ptr, ptr %0, align 8, !tbaa !339
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !336
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #15 !prof !54 !PGOFuncName !341 {
  %2 = load ptr, ptr %0, align 8, !tbaa !339
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !338
  store ptr %4, ptr %0, align 8, !tbaa !339
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #24, !range !110
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @may_reassociate_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !342 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %17 [
    i16 9, label %14
    i16 13, label %5
    i16 14, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp ne i64 %9, 9
  %11 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %17, label %24

14:                                               ; preds = %2
  %15 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !141
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2, %14, %5
  %18 = tail call zeroext i8 @commutative_tree_code(i32 noundef %1) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @associative_tree_code(i32 noundef %1) #23
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %17, %20, %14, %5
  %25 = phi i8 [ 0, %5 ], [ 0, %14 ], [ 0, %17 ], [ %23, %20 ]
  ret i8 %25
}

; Function Attrs: optsize
declare zeroext i8 @associative_tree_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !54 !PGOFuncName !343 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #23
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reassociate_to_the_same_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !344 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  store ptr %0, ptr %3, align 8, !tbaa !83
  store ptr %1, ptr %4, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #25
  %12 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %3) #24
  %13 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %4) #24
  %14 = call fastcc ptr @find_associative_operation_root(ptr noundef %12, ptr noundef nonnull %7) #24
  %15 = call fastcc ptr @find_associative_operation_root(ptr noundef %13, ptr noundef nonnull %8) #24
  %16 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %12) #24, !range !325
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %15, null
  %19 = and i1 %17, %18
  %20 = icmp eq ptr %14, %15
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %13) #24, !range !325
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %2
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2180, ptr noundef nonnull @.str.15) #23
  br label %26

26:                                               ; preds = %22, %25
  %27 = load ptr, ptr %3, align 8, !tbaa !83
  store ptr %27, ptr %5, align 8, !tbaa !83
  %28 = load ptr, ptr %4, align 8, !tbaa !83
  store ptr %28, ptr %6, align 8, !tbaa !83
  %29 = load i32, ptr %7, align 4, !tbaa !141
  %30 = load i32, ptr %8, align 4, !tbaa !141
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %37, %26
  %33 = phi i32 [ %29, %26 ], [ %41, %37 ]
  %34 = phi i32 [ %30, %26 ], [ %42, %37 ]
  %35 = phi ptr [ %12, %26 ], [ %38, %37 ]
  %36 = icmp ugt i32 %34, %33
  br i1 %36, label %47, label %44

37:                                               ; preds = %26, %37
  %38 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %5) #24
  %39 = call fastcc ptr @gimple_assign_lhs(ptr noundef %38) #24
  store ptr %39, ptr %5, align 8, !tbaa !83
  %40 = load i32, ptr %7, align 4, !tbaa !141
  %41 = add i32 %40, -1
  store i32 %41, ptr %7, align 4, !tbaa !141
  %42 = load i32, ptr %8, align 4, !tbaa !141
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %37, label %32, !llvm.loop !345

44:                                               ; preds = %47, %32
  %45 = phi ptr [ %13, %32 ], [ %48, %47 ]
  %46 = icmp eq ptr %35, %45
  br i1 %46, label %60, label %54

47:                                               ; preds = %32, %47
  %48 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %6) #24
  %49 = call fastcc ptr @gimple_assign_lhs(ptr noundef %48) #24
  store ptr %49, ptr %6, align 8, !tbaa !83
  %50 = load i32, ptr %8, align 4, !tbaa !141
  %51 = add i32 %50, -1
  store i32 %51, ptr %8, align 4, !tbaa !141
  %52 = load i32, ptr %7, align 4, !tbaa !141
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %47, label %44, !llvm.loop !346

54:                                               ; preds = %44, %54
  %55 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %5) #24
  %56 = call fastcc ptr @gimple_assign_lhs(ptr noundef %55) #24
  store ptr %56, ptr %5, align 8, !tbaa !83
  %57 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %6) #24
  %58 = call fastcc ptr @gimple_assign_lhs(ptr noundef %57) #24
  store ptr %58, ptr %6, align 8, !tbaa !83
  %59 = icmp eq ptr %55, %57
  br i1 %59, label %60, label %54, !llvm.loop !347

60:                                               ; preds = %54, %44
  %61 = phi ptr [ %35, %44 ], [ %55, %54 ]
  call fastcc void @remove_name_from_operation(ptr noundef %12, ptr noundef %27) #24
  call fastcc void @remove_name_from_operation(ptr noundef %13, ptr noundef %28) #24
  %62 = call ptr @create_tmp_var(ptr noundef %11, ptr noundef nonnull @.str.35) #23
  %63 = load i64, ptr %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 65535
  %66 = add nsw i32 %65, -13
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %62, i64 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = or i64 %70, 134217728
  store i64 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %60, %68
  %73 = call zeroext i8 @add_referenced_var(ptr noundef %62) #23
  %74 = call fastcc ptr @make_ssa_name(ptr noundef %62) #24
  %75 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %16, ptr noundef %74, ptr noundef %27, ptr noundef %28) #23
  %76 = call ptr @create_tmp_var(ptr noundef nonnull %11, ptr noundef nonnull @.str.35) #23
  %77 = load i64, ptr %11, align 8
  %78 = trunc i64 %77 to i32
  %79 = and i32 %78, 65535
  %80 = add nsw i32 %79, -13
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %76, i64 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = or i64 %84, 134217728
  store i64 %85, ptr %83, align 8
  br label %86

86:                                               ; preds = %72, %82
  %87 = call zeroext i8 @add_referenced_var(ptr noundef %76) #23
  %88 = call fastcc ptr @make_ssa_name(ptr noundef %76) #24
  %89 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #24, !range !325
  %90 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #24
  %91 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %61) #24
  %92 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %89, ptr noundef %88, ptr noundef %90, ptr noundef %91) #23
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %61) #23
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %9, i32 noundef %16, ptr noundef %74, ptr noundef %88) #23
  %93 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #24
  call fastcc void @update_stmt(ptr noundef %93) #24
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef %75, i32 noundef 1) #23
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef %92, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_name_from_operation(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !54 !PGOFuncName !348 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !110
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2143, ptr noundef nonnull @.str.15) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #24
  br label %14

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #23
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %3, ptr noundef %15) #23
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2154, ptr noundef nonnull @.str.15) #23
  br label %19

19:                                               ; preds = %14, %18
  call fastcc void @update_stmt(ptr noundef %0) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !349 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !83
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #23
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !350 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #24
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !351 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !106
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @gcd(i32 noundef %0, i32 noundef %1) unnamed_addr #17 !prof !54 !PGOFuncName !352 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %10, %7 ], [ %6, %5 ]
  %9 = phi i32 [ %8, %7 ], [ %3, %5 ]
  %10 = urem i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %7, !llvm.loop !353

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %3, %2 ], [ %8, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_names_by_phis(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !354 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #24, !range !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %1, %38
  %7 = phi i32 [ %39, %38 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.chain, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %3) #24, !range !82
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %6, %32
  %14 = phi ptr [ %33, %32 ], [ %10, %6 ]
  %15 = phi ptr [ %34, %32 ], [ %10, %6 ]
  %16 = phi i32 [ %35, %32 ], [ 0, %6 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.dref_d, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.dref_d, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  store ptr %25, ptr %18, align 8, !tbaa !70
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %25) #24, !range !71
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1863, ptr noundef nonnull @.str.15) #23
  %29 = load ptr, ptr %9, align 8, !tbaa !88
  br label %30

30:                                               ; preds = %21, %28
  %31 = phi ptr [ %14, %21 ], [ %29, %28 ]
  store ptr null, ptr %22, align 8, !tbaa !198
  br label %32

32:                                               ; preds = %13, %30
  %33 = phi ptr [ %14, %13 ], [ %31, %30 ]
  %34 = phi ptr [ %15, %13 ], [ %31, %30 ]
  %35 = add i32 %16, 1
  %36 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %34, i32 noundef %35, ptr noundef nonnull %3) #24, !range !82
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %13, !llvm.loop !355

38:                                               ; preds = %32, %6
  %39 = add i32 %7, 1
  %40 = call fastcc i32 @VEC_chain_p_base_iterate(ptr noundef %0, i32 noundef %39, ptr noundef nonnull %2) #24, !range !82
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %6, !llvm.loop !356

42:                                               ; preds = %38, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !54 !PGOFuncName !357 {
  %2 = load ptr, ptr %0, align 8, !tbaa !358
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @base_names_in_chain_on(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !360 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !106
  %6 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef nonnull %1) #24
  %7 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #24, !range !110
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3, %21
  %10 = phi ptr [ %22, %21 ], [ %6, %3 ]
  %11 = call fastcc i32 @gimple_code(ptr noundef %10) #24, !range !71
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call fastcc ptr @gimple_bb(ptr noundef %10) #24
  %15 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %14) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %9, %13
  %18 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #24
  %19 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #24, !range !110
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %26
  %22 = phi ptr [ %18, %17 ], [ %30, %26 ]
  br label %9, !llvm.loop !361

23:                                               ; preds = %13
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %4) #24
  %24 = icmp eq ptr %10, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %26, %17, %3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  ret void

26:                                               ; preds = %23
  %27 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef nonnull %10) #24
  %28 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %27) #24
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !106
  %30 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef nonnull %28) #24
  %31 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #24, !range !110
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %21, label %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !239
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !363 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !338
  store ptr %6, ptr %0, align 8, !tbaa !339
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !110
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #24
  %11 = load ptr, ptr %0, align 8, !tbaa !339
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !364 {
  %2 = load ptr, ptr %0, align 8, !tbaa !339
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !336
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #19 !prof !54 !PGOFuncName !365 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !366 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !367
  store ptr %4, ptr %0, align 8, !tbaa !339
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !110
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !368
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #24
  %12 = load ptr, ptr %0, align 8, !tbaa !339
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !369 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #25
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #24, !range !71
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
  br i1 %27, label %16, label %53, !llvm.loop !370

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
  br i1 %44, label %33, label %53, !llvm.loop !371

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
  %56 = load ptr, ptr %55, align 8, !tbaa !368
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !372 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #24
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #24
  store i8 0, ptr %0, align 8, !tbaa !373
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 918, ptr noundef nonnull @.str.15) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #23
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !373
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !375
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #24
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !376
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !377
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #24
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !378 {
  %2 = load i8, ptr %0, align 8, !tbaa !373
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #19 !prof !54 !PGOFuncName !379 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !338
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
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !380 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !382
  store ptr %7, ptr %2, align 8, !tbaa !381
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !384
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !376
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !375
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !384
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #24
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !373
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !385 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 771, ptr noundef nonnull @.str.15) #23
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #24
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !377
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 !prof !54 !PGOFuncName !386 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !110
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !387
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #19 !prof !54 !PGOFuncName !388 {
  %2 = load ptr, ptr %0, align 8, !tbaa !389
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !338
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !338
  store ptr %2, ptr %6, align 8, !tbaa !389
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #19 !prof !54 !PGOFuncName !390 {
  store ptr %1, ptr %0, align 8, !tbaa !389
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !338
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !338
  store ptr %0, ptr %4, align 8, !tbaa !389
  store ptr %0, ptr %3, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !391 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #20 !prof !54 !PGOFuncName !392 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !373
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !393 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !394 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 747, ptr noundef nonnull @.str.15) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !395
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #24
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !395
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !396
  store ptr %22, ptr %16, align 8, !tbaa !395
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !381
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #24
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !381
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !382
  store ptr %36, ptr %29, align 8, !tbaa !381
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !373
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !398 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !110
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !399 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !110
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !400 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !110
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_load_motion(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !401 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %6 = load i32, ptr %1, align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1618, ptr noundef nonnull @.str.15) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1619, ptr noundef nonnull @.str.15) #23
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %5) #24, !range !82
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15, %20
  %21 = phi i32 [ %29, %20 ], [ 0, %15 ]
  %22 = phi i32 [ %30, %20 ], [ 0, %15 ]
  %23 = load ptr, ptr %5, align 8, !tbaa !83
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 8, !tbaa !69
  %27 = icmp eq i8 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add i32 %21, %28
  %30 = add i32 %22, 1
  %31 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %17, i32 noundef %30, ptr noundef nonnull %5) #24, !range !82
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %20, !llvm.loop !402

33:                                               ; preds = %20, %15
  %34 = phi i32 [ 0, %15 ], [ %29, %20 ]
  %35 = tail call fastcc i32 @VEC_dref_base_length(ptr noundef %17) #24
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %82, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc ptr @get_chain_root(ptr noundef nonnull %1) #24
  %39 = icmp ne i32 %34, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  call fastcc void @initialize_root_vars_lm(ptr noundef %0, ptr noundef %38, i8 noundef zeroext %40, ptr noundef nonnull %4, ptr noundef %42, ptr noundef %2) #24
  %43 = load ptr, ptr %16, align 8, !tbaa !88
  %44 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %5) #24, !range !82
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %81, label %46

46:                                               ; preds = %37
  %47 = load ptr, ptr %4, align 8
  br label %48

48:                                               ; preds = %46, %70
  %49 = phi i32 [ %34, %46 ], [ %72, %70 ]
  %50 = phi i32 [ 0, %46 ], [ %71, %70 ]
  %51 = phi i32 [ 0, %46 ], [ %77, %70 ]
  %52 = load ptr, ptr %5, align 8, !tbaa !83
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.data_reference, ptr %53, i64 0, i32 3
  %55 = load i8, ptr %54, align 8, !tbaa !69
  %56 = getelementptr inbounds %struct.dref_d, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %57) #24
  %58 = load ptr, ptr %52, align 8, !tbaa !55
  %59 = getelementptr inbounds %struct.data_reference, ptr %58, i64 0, i32 3
  %60 = load i8, ptr %59, align 8, !tbaa !69
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = add i32 %49, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %47, i32 noundef 0) #24
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !106
  %69 = tail call fastcc ptr @make_ssa_name(ptr noundef %68) #24
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %47, i32 noundef 0, ptr noundef %69) #24
  br label %70

70:                                               ; preds = %62, %65, %48
  %71 = phi i32 [ %50, %48 ], [ %50, %65 ], [ 1, %62 ]
  %72 = phi i32 [ %49, %48 ], [ %63, %65 ], [ 0, %62 ]
  %73 = load ptr, ptr %56, align 8, !tbaa !70
  %74 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %47, i32 noundef %71) #24
  %75 = icmp eq i8 %55, 0
  %76 = zext i1 %75 to i8
  tail call fastcc void @replace_ref_with(ptr noundef %73, ptr noundef %74, i8 noundef zeroext %76, i8 noundef zeroext %76) #24
  %77 = add i32 %51, 1
  %78 = load ptr, ptr %16, align 8, !tbaa !88
  %79 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %78, i32 noundef %77, ptr noundef nonnull %5) #24, !range !82
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %48, !llvm.loop !403

81:                                               ; preds = %70, %37
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #24
  br label %82

82:                                               ; preds = %33, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_pred_commoning_chain(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !404 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %4) #24, !range !82
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %9, %14
  %15 = phi i32 [ %19, %14 ], [ 1, %9 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.dref_d, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  tail call fastcc void @remove_stmt(ptr noundef %18) #24
  %19 = add i32 %15, 1
  %20 = load ptr, ptr %10, align 8, !tbaa !88
  %21 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %20, i32 noundef %19, ptr noundef nonnull %4) #24, !range !82
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %14, !llvm.loop !405

23:                                               ; preds = %3
  %24 = tail call fastcc ptr @get_chain_root(ptr noundef nonnull %1) #24
  %25 = getelementptr inbounds %struct.dref_d, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %26) #24
  tail call fastcc void @initialize_root(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #24
  %27 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %28, i32 noundef 1, ptr noundef nonnull %4) #24, !range !82
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 7
  %33 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ 1, %31 ], [ %46, %34 ]
  %36 = load ptr, ptr %4, align 8, !tbaa !83
  %37 = getelementptr inbounds %struct.dref_d, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %38) #24
  %39 = load ptr, ptr %32, align 8, !tbaa !81
  %40 = load i32, ptr %33, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.dref_d, ptr %36, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !72
  %43 = sub i32 %40, %42
  %44 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %39, i32 noundef %43) #24
  %45 = load ptr, ptr %37, align 8, !tbaa !70
  tail call fastcc void @replace_ref_with(ptr noundef %45, ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  %46 = add i32 %35, 1
  %47 = load ptr, ptr %27, align 8, !tbaa !88
  %48 = call fastcc i32 @VEC_dref_base_iterate(ptr noundef %47, i32 noundef %46, ptr noundef nonnull %4) #24, !range !82
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %34, !llvm.loop !406

50:                                               ; preds = %14, %34, %9, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_root_vars_lm(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 !prof !54 !PGOFuncName !407 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.data_reference, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %12 = tail call ptr @loop_preheader_edge(ptr noundef %0) #23
  %13 = tail call ptr @loop_latch_edge(ptr noundef %0) #23
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %4, i32 noundef 0) #24
  %15 = icmp eq i8 %2, 0
  %16 = select i1 %15, i32 1, i32 2
  %17 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %16) #24
  store ptr %17, ptr %3, align 8, !tbaa !83
  %18 = tail call fastcc ptr @predcom_tmp_var(ptr noundef %11, i32 noundef 0, ptr noundef %5) #24
  store ptr %18, ptr %7, align 8, !tbaa !83
  %19 = load ptr, ptr %3, align 8, !tbaa !83
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %19, ptr noundef %18) #24
  br i1 %15, label %23, label %20

20:                                               ; preds = %6
  %21 = load ptr, ptr %3, align 8, !tbaa !83
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %21, i32 noundef 0) #24
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %21, ptr noundef %22) #24
  br label %23

23:                                               ; preds = %20, %6
  %24 = load ptr, ptr %3, align 8, !tbaa !83
  %25 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %7) #24, !range !82
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %33, %27 ], [ %24, %23 ]
  %29 = phi i32 [ %32, %27 ], [ 0, %23 ]
  %30 = load ptr, ptr %7, align 8, !tbaa !83
  %31 = tail call fastcc ptr @make_ssa_name(ptr noundef %30) #24
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %28, i32 noundef %29, ptr noundef %31) #24
  %32 = add i32 %29, 1
  %33 = load ptr, ptr %3, align 8, !tbaa !83
  %34 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %33, i32 noundef %32, ptr noundef nonnull %7) #24, !range !82
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %27, !llvm.loop !408

36:                                               ; preds = %27, %23
  %37 = phi ptr [ %24, %23 ], [ %33, %27 ]
  %38 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %37, i32 noundef 0) #24
  %39 = call ptr @force_gimple_operand(ptr noundef %14, ptr noundef nonnull %8, i8 noundef zeroext %2, ptr noundef null) #23
  %40 = load ptr, ptr %8, align 8, !tbaa !83
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %12, ptr noundef nonnull %40) #23
  br label %44

44:                                               ; preds = %42, %36
  br i1 %15, label %52, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %3, align 8, !tbaa !83
  %47 = call fastcc ptr @VEC_tree_base_index(ptr noundef %46, i32 noundef 1) #24
  %48 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !203
  %50 = call ptr @create_phi_node(ptr noundef %38, ptr noundef %49) #23
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !106
  call void @add_phi_arg(ptr noundef %50, ptr noundef %39, ptr noundef %12, i32 noundef 0) #23
  call void @add_phi_arg(ptr noundef %50, ptr noundef %47, ptr noundef %13, i32 noundef 0) #23
  br label %55

52:                                               ; preds = %44
  %53 = call ptr @gimple_build_assign_stat(ptr noundef %38, ptr noundef %39) #23
  call void @mark_virtual_ops_for_renaming(ptr noundef %53) #24
  %54 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %12, ptr noundef %53) #23
  br label %55

55:                                               ; preds = %52, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_ref_with(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !54 !PGOFuncName !409 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = or i8 %3, %2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1260, ptr noundef nonnull @.str.15) #23
  br label %13

13:                                               ; preds = %9, %12
  %14 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #24
  %15 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %14) #24
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #24
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %16) #24
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #23
  call void @remove_phi_node(ptr noundef nonnull %6, i8 noundef zeroext 0) #23
  %17 = call ptr @gimple_build_assign_stat(ptr noundef %15, ptr noundef %1) #23
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %17, i32 noundef 0) #23
  br label %45

18:                                               ; preds = %4
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !110
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1275, ptr noundef nonnull @.str.15) #23
  br label %22

22:                                               ; preds = %18, %21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #23
  %23 = icmp eq i8 %2, 0
  %24 = icmp eq i8 %3, 0
  br i1 %23, label %25, label %29

25:                                               ; preds = %22
  br i1 %24, label %27, label %26

26:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1282, ptr noundef nonnull @.str.15) #23
  br label %27

27:                                               ; preds = %25, %26
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %5, ptr noundef %1) #23
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24
  call fastcc void @update_stmt(ptr noundef %28) #24
  br label %45

29:                                               ; preds = %22
  %30 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  br i1 %24, label %41, label %31

31:                                               ; preds = %29
  %32 = load i64, ptr %30, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1313, ptr noundef nonnull @.str.15) #23
  br label %39

39:                                               ; preds = %35, %38
  %40 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  br label %41

41:                                               ; preds = %29, %31, %39
  %42 = phi ptr [ %40, %39 ], [ %30, %31 ], [ %30, %29 ]
  %43 = call ptr @unshare_expr(ptr noundef %42) #23
  %44 = call ptr @gimple_build_assign_stat(ptr noundef %1, ptr noundef %43) #23
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %44, i32 noundef 0) #23
  br label %45

45:                                               ; preds = %41, %27, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @predcom_tmp_var(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !410 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call ptr @get_lsm_tmp_name(ptr noundef %0, i32 noundef %1) #23
  %7 = tail call ptr @create_tmp_var(ptr noundef %5, ptr noundef %6) #23
  %8 = load i64, ptr %5, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -13
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %15, 134217728
  store i64 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %3, %13
  %18 = tail call zeroext i8 @add_referenced_var(ptr noundef %7) #23
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %20) #23
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_lsm_tmp_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !54 !PGOFuncName !411 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24, !range !110
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #24, !range !71
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #24
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24, !range !110
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !412

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 !prof !54 !PGOFuncName !413 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !281
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !414
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !415
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !54 !PGOFuncName !416 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !417
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !418
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !54 !PGOFuncName !420 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !421
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_stmt(ptr noundef %0) unnamed_addr #0 !prof !54 !PGOFuncName !423 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !71
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #24
  %9 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %8) #24
  %10 = tail call fastcc ptr @single_nonlooparound_use(ptr noundef %9) #24
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #23
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %10) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %10) #24
  %17 = icmp eq ptr %16, %9
  br i1 %17, label %18, label %37

18:                                               ; preds = %15, %1
  %19 = phi ptr [ %10, %15 ], [ %0, %1 ]
  br label %20

20:                                               ; preds = %18, %34
  %21 = phi ptr [ %28, %34 ], [ %19, %18 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %21) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !424
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  %22 = call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #24
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1723, ptr noundef nonnull @.str.15) #23
  br label %27

27:                                               ; preds = %20, %26
  %28 = call fastcc ptr @single_nonlooparound_use(ptr noundef nonnull %22) #24
  call void @mark_virtual_ops_for_renaming(ptr noundef %21) #24
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #23
  call void @release_defs(ptr noundef %21) #23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %28) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %37

34:                                               ; preds = %30
  %35 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %28) #24
  %36 = icmp eq ptr %35, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br i1 %36, label %20, label %37

37:                                               ; preds = %34, %33, %7, %12, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_root(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !425 {
  %4 = tail call fastcc ptr @get_chain_root(ptr noundef %1) #24
  %5 = load i32, ptr %1, align 8, !tbaa !74
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 2
  %8 = zext i1 %7 to i8
  tail call fastcc void @initialize_root_vars(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #24
  %9 = getelementptr inbounds %struct.dref_d, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %14) #24
  tail call fastcc void @replace_ref_with(ptr noundef %10, ptr noundef %15, i8 noundef zeroext 1, i8 noundef zeroext %8) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_root_vars(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !54 !PGOFuncName !426 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !76
  %8 = tail call fastcc ptr @get_chain_root(ptr noundef %1) #24
  %9 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %12 = tail call ptr @loop_preheader_edge(ptr noundef %0) #23
  %13 = tail call ptr @loop_latch_edge(ptr noundef %0) #23
  %14 = icmp eq i32 %7, 0
  %15 = icmp eq i8 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1499, ptr noundef nonnull @.str.15) #23
  br label %18

18:                                               ; preds = %3, %17
  %19 = add i32 %7, 1
  %20 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %19) #24
  %21 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 7
  store ptr %20, ptr %21, align 8, !tbaa !81
  %22 = load i32, ptr %1, align 8, !tbaa !74
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dref_d, ptr %8, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %26) #24
  br label %32

28:                                               ; preds = %18
  %29 = load ptr, ptr %8, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.data_reference, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi ptr [ %27, %24 ], [ %31, %28 ]
  %34 = zext nneg i8 %11 to i32
  %35 = add i32 %7, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %37
  %38 = phi i32 [ %41, %37 ], [ 0, %32 ]
  %39 = tail call fastcc ptr @predcom_tmp_var(ptr noundef %33, i32 noundef %38, ptr noundef %2) #24
  %40 = load ptr, ptr %21, align 8, !tbaa !81
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %40, ptr noundef %39) #24
  %41 = add nuw i32 %38, 1
  %42 = icmp eq i32 %41, %35
  br i1 %42, label %43, label %37, !llvm.loop !427

43:                                               ; preds = %37, %32
  %44 = phi ptr [ undef, %32 ], [ %39, %37 ]
  store ptr %44, ptr %4, align 8, !tbaa !83
  %45 = load ptr, ptr %21, align 8, !tbaa !81
  br i1 %15, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef 0) #24
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %45, ptr noundef %47) #24
  %48 = load ptr, ptr %21, align 8, !tbaa !81
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %48, %46 ], [ %45, %43 ]
  %51 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %50, i32 noundef 0, ptr noundef nonnull %4) #24, !range !82
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %56, %49
  br i1 %14, label %82, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  br label %65

56:                                               ; preds = %49, %56
  %57 = phi ptr [ %62, %56 ], [ %50, %49 ]
  %58 = phi i32 [ %61, %56 ], [ 0, %49 ]
  %59 = load ptr, ptr %4, align 8, !tbaa !83
  %60 = tail call fastcc ptr @make_ssa_name(ptr noundef %59) #24
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %57, i32 noundef %58, ptr noundef %60) #24
  %61 = add i32 %58, 1
  %62 = load ptr, ptr %21, align 8, !tbaa !81
  %63 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %62, i32 noundef %61, ptr noundef nonnull %4) #24, !range !82
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %53, label %56, !llvm.loop !428

65:                                               ; preds = %54, %77
  %66 = phi i32 [ 0, %54 ], [ %69, %77 ]
  %67 = load ptr, ptr %21, align 8, !tbaa !81
  %68 = call fastcc ptr @VEC_tree_base_index(ptr noundef %67, i32 noundef %66) #24
  %69 = add nuw i32 %66, 1
  %70 = call fastcc ptr @VEC_tree_base_index(ptr noundef %67, i32 noundef %69) #24
  %71 = call fastcc ptr @get_init_expr(ptr noundef nonnull %1, i32 noundef %66) #24
  %72 = call ptr @force_gimple_operand(ptr noundef %71, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #23
  %73 = load ptr, ptr %5, align 8, !tbaa !83
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %12, ptr noundef nonnull %73) #23
  br label %77

77:                                               ; preds = %75, %65
  %78 = load ptr, ptr %55, align 8, !tbaa !203
  %79 = call ptr @create_phi_node(ptr noundef %68, ptr noundef %78) #23
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %68, i64 0, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !106
  call void @add_phi_arg(ptr noundef %79, ptr noundef %72, ptr noundef %12, i32 noundef 0) #23
  call void @add_phi_arg(ptr noundef %79, ptr noundef %70, ptr noundef %13, i32 noundef 0) #23
  %81 = icmp eq i32 %69, %7
  br i1 %81, label %82, label %65, !llvm.loop !429

82:                                               ; preds = %77, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_init_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !54 !PGOFuncName !430 {
  %3 = load i32, ptr %0, align 8, !tbaa !74
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %7, label %19

5:                                                ; preds = %7, %19
  %6 = phi ptr [ %22, %19 ], [ %18, %7 ]
  ret ptr %6

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = tail call fastcc ptr @get_init_expr(ptr noundef %9, i32 noundef %1) #24
  %11 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = tail call fastcc ptr @get_init_expr(ptr noundef %12, i32 noundef %1) #24
  %14 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !78
  %16 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %15, ptr noundef %17, ptr noundef %10, ptr noundef %13) #23
  br label %5

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %21, i32 noundef %1) #24
  br label %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_chain_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !54 !PGOFuncName !431 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !119 !PGOFuncName !432 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !128

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !158
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !128

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !141
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !141
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #7 !prof !54 !PGOFuncName !433 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #24
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !119 !PGOFuncName !434 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !128

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!53}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @tree_predictive_commoning, ptr @initialize_original_copy_tables, i64 38}
!36 = !{ptr @tree_predictive_commoning, ptr @fel_init, i64 38}
!37 = !{ptr @tree_predictive_commoning, ptr @optimize_loop_for_speed_p, i64 1}
!38 = !{ptr @tree_predictive_commoning, ptr @tree_predictive_commoning_loop, i64 1}
!39 = !{ptr @tree_predictive_commoning, ptr @fel_next, i64 1}
!40 = !{ptr @tree_predictive_commoning, ptr @scev_reset, i64 1}
!41 = !{ptr @tree_predictive_commoning, ptr @free_original_copy_tables, i64 38}
!42 = !{ptr @fel_init, ptr @number_of_loops, i64 37}
!43 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 37}
!44 = !{ptr @fel_init, ptr @VEC_loop_p_base_iterate, i64 74}
!45 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 1}
!46 = !{ptr @fel_init, ptr @fel_next, i64 37}
!47 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 39}
!48 = !{ptr @fel_next, ptr @get_loop, i64 1}
!49 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 38}
!50 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 38}
!51 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 37}
!52 = !{ptr @VEC_int_heap_free, ptr @free, i64 37}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !57, i64 0}
!56 = !{!"dref_d", !57, i64 0, !57, i64 8, !57, i64 16, !60, i64 24, !61, i64 32, !60, i64 48, !60, i64 52}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!"int", !58, i64 0}
!61 = !{!"", !62, i64 0, !62, i64 8}
!62 = !{!"long", !58, i64 0}
!63 = !{!64, !57, i64 8}
!64 = !{!"data_reference", !57, i64 0, !57, i64 8, !57, i64 16, !58, i64 24, !65, i64 32, !66, i64 72, !67, i64 88, !57, i64 104}
!65 = !{!"innermost_loop_behavior", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!66 = !{!"indices", !57, i64 0, !57, i64 8}
!67 = !{!"dr_alias", !57, i64 0, !57, i64 8}
!68 = !{!56, !60, i64 48}
!69 = !{!64, !58, i64 24}
!70 = !{!56, !57, i64 8}
!71 = !{i32 0, i32 256}
!72 = !{!56, !60, i64 24}
!73 = !{!"tree-predcom.c:gimple_code"}
!74 = !{!75, !60, i64 0}
!75 = !{!"chain", !60, i64 0, !60, i64 4, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !60, i64 40, !57, i64 48, !57, i64 56, !60, i64 64, !60, i64 64, !60, i64 64}
!76 = !{!75, !60, i64 40}
!77 = !{!75, !57, i64 16}
!78 = !{!75, !60, i64 4}
!79 = !{!75, !57, i64 24}
!80 = !{!75, !57, i64 8}
!81 = !{!75, !57, i64 48}
!82 = !{i32 0, i32 2}
!83 = !{!57, !57, i64 0}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!75, !57, i64 56}
!87 = distinct !{!87, !85}
!88 = !{!75, !57, i64 32}
!89 = distinct !{!89, !85}
!90 = !{!"tree-predcom.c:VEC_tree_base_iterate"}
!91 = !{!92, !60, i64 0}
!92 = !{!"VEC_tree_base", !60, i64 0, !60, i64 4, !58, i64 8}
!93 = !{!"tree-predcom.c:VEC_dref_base_iterate"}
!94 = !{!95, !60, i64 0}
!95 = !{!"VEC_dref_base", !60, i64 0, !60, i64 4, !58, i64 8}
!96 = distinct !{!96, !85}
!97 = !{!"tree-predcom.c:VEC_chain_p_base_iterate"}
!98 = !{!99, !60, i64 0}
!99 = !{!"VEC_chain_p_base", !60, i64 0, !60, i64 4, !58, i64 8}
!100 = !{!101, !60, i64 8}
!101 = !{!"component", !57, i64 0, !60, i64 8, !57, i64 16}
!102 = !{!101, !57, i64 0}
!103 = distinct !{!103, !85}
!104 = !{!101, !57, i64 16}
!105 = distinct !{!105, !85}
!106 = !{!58, !58, i64 0}
!107 = !{!"tree-predcom.c:get_def_from_ptr"}
!108 = !{!"tree-predcom.c:gimple_phi_result_ptr"}
!109 = !{!"tree-predcom.c:update_stmt"}
!110 = !{i8 0, i8 2}
!111 = !{!"tree-predcom.c:gimple_vuse"}
!112 = !{!"tree-predcom.c:gimple_vop"}
!113 = !{!114, !57, i64 24}
!114 = !{!"function", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !60, i64 104, !60, i64 108, !60, i64 112, !60, i64 116, !60, i64 120, !60, i64 124, !57, i64 128, !60, i64 136, !60, i64 137, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139}
!115 = !{!116, !57, i64 24}
!116 = !{!"gimple_df", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !117, i64 32, !117, i64 48, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !60, i64 96, !118, i64 104}
!117 = !{!"pt_solution", !60, i64 0, !60, i64 0, !60, i64 0, !60, i64 0, !60, i64 0, !60, i64 0, !57, i64 8}
!118 = !{!"ssa_operands", !57, i64 0, !60, i64 8, !60, i64 12, !58, i64 16, !57, i64 24, !57, i64 32}
!119 = !{!"function_entry_count", i64 38}
!120 = !{!"branch_weights", i32 38, i32 1}
!121 = !{!"branch_weights", i32 1, i32 0}
!122 = distinct !{!122, !85}
!123 = !{!"branch_weights", i32 53687088, i32 2093796560}
!124 = !{!"tree-predcom.c:fel_init"}
!125 = !{!126, !60, i64 8}
!126 = !{!"", !57, i64 0, !60, i64 8}
!127 = !{!114, !57, i64 32}
!128 = !{!"branch_weights", i32 1, i32 39}
!129 = !{!126, !57, i64 0}
!130 = !{!131, !57, i64 8}
!131 = !{!"loops", !60, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!132 = !{!"branch_weights", i32 1, i32 155}
!133 = !{!134, !57, i64 48}
!134 = !{!"loop", !60, i64 0, !60, i64 4, !57, i64 8, !57, i64 16, !135, i64 24, !60, i64 32, !60, i64 36, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !61, i64 80, !61, i64 96, !58, i64 112, !58, i64 113, !60, i64 116, !57, i64 120, !57, i64 128, !58, i64 136, !57, i64 144}
!135 = !{!"lpt_decision", !60, i64 0, !60, i64 4}
!136 = !{!"branch_weights", i32 39, i32 1}
!137 = !{!134, !60, i64 0}
!138 = !{!"branch_weights", i32 155, i32 1}
!139 = distinct !{!139, !85}
!140 = !{!"tree-predcom.c:tree_predictive_commoning_loop"}
!141 = !{!60, !60, i64 0}
!142 = !{!143, !57, i64 0}
!143 = !{!"epcc_data", !57, i64 0, !57, i64 8}
!144 = !{!143, !57, i64 8}
!145 = !{!"tree-predcom.c:fel_next"}
!146 = distinct !{!146, !85}
!147 = !{!"tree-predcom.c:gimple_has_ops"}
!148 = !{!"tree-predcom.c:gimple_has_mem_ops"}
!149 = !{!"tree-predcom.c:VEC_int_heap_alloc"}
!150 = !{!"tree-predcom.c:number_of_loops"}
!151 = !{!"function_entry_count", i64 76}
!152 = !{!"tree-predcom.c:VEC_loop_p_base_iterate"}
!153 = !{!"branch_weights", i32 1, i32 77}
!154 = !{!155, !60, i64 0}
!155 = !{!"VEC_loop_p_base", !60, i64 0, !60, i64 4, !58, i64 8}
!156 = !{!"branch_weights", i32 39, i32 39}
!157 = !{!"tree-predcom.c:VEC_int_base_quick_push"}
!158 = !{!159, !60, i64 0}
!159 = !{!"VEC_int_base", !60, i64 0, !60, i64 4, !58, i64 8}
!160 = !{!"tree-predcom.c:VEC_loop_p_base_length"}
!161 = !{!"tree-predcom.c:VEC_loop_p_base_index"}
!162 = !{!"tree-predcom.c:VEC_data_reference_p_heap_alloc"}
!163 = !{!"tree-predcom.c:VEC_ddr_p_heap_alloc"}
!164 = !{!"tree-predcom.c:split_data_refs_to_components"}
!165 = !{!64, !57, i64 16}
!166 = distinct !{!166, !85}
!167 = distinct !{!167, !85}
!168 = !{!169, !57, i64 16}
!169 = !{!"data_dependence_relation", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !60, i64 56, !58, i64 60, !58, i64 61, !58, i64 62}
!170 = !{!169, !57, i64 0}
!171 = !{!169, !57, i64 8}
!172 = distinct !{!172, !85}
!173 = !{!64, !57, i64 0}
!174 = !{i64 0, i64 8, !175, i64 8, i64 8, !175}
!175 = !{!62, !62, i64 0}
!176 = !{i64 0, i64 8, !175}
!177 = distinct !{!177, !85}
!178 = distinct !{!178, !85}
!179 = !{!"tree-predcom.c:filter_suitable_components"}
!180 = distinct !{!180, !85}
!181 = distinct !{!181, !85}
!182 = !{!"tree-predcom.c:determine_roots"}
!183 = distinct !{!183, !85}
!184 = !{!"tree-predcom.c:release_components"}
!185 = distinct !{!185, !85}
!186 = !{!"tree-predcom.c:prepare_initializers"}
!187 = distinct !{!187, !85}
!188 = !{!"tree-predcom.c:try_combine_chains"}
!189 = distinct !{!189, !85}
!190 = distinct !{!190, !85}
!191 = distinct !{!191, !85}
!192 = !{!"tree-predcom.c:determine_unroll_factor"}
!193 = !{!194, !60, i64 8}
!194 = !{!"param_info", !57, i64 0, !60, i64 8, !58, i64 12, !60, i64 16, !60, i64 20, !57, i64 24}
!195 = !{i32 0, i32 -2147483648}
!196 = distinct !{!196, !85}
!197 = !{!"tree-predcom.c:replace_phis_by_defined_names"}
!198 = !{!56, !57, i64 16}
!199 = distinct !{!199, !85}
!200 = distinct !{!200, !85}
!201 = !{!"tree-predcom.c:execute_pred_commoning_cbck"}
!202 = !{!"tree-predcom.c:eliminate_temp_copies"}
!203 = !{!134, !57, i64 8}
!204 = !{!205, !60, i64 44}
!205 = !{!"edge_def", !57, i64 0, !57, i64 8, !58, i64 16, !57, i64 24, !57, i64 32, !60, i64 40, !60, i64 44, !60, i64 48, !60, i64 52, !62, i64 56}
!206 = distinct !{!206, !85}
!207 = distinct !{!207, !85}
!208 = !{!"tree-predcom.c:execute_pred_commoning"}
!209 = distinct !{!209, !85}
!210 = !{!"tree-predcom.c:release_chains"}
!211 = distinct !{!211, !85}
!212 = !{!"tree-predcom.c:VEC_data_reference_p_base_length"}
!213 = !{!214, !60, i64 0}
!214 = !{!"VEC_data_reference_p_base", !60, i64 0, !60, i64 4, !58, i64 8}
!215 = !{!"tree-predcom.c:last_always_executed_block"}
!216 = !{!134, !57, i64 16}
!217 = !{!205, !57, i64 0}
!218 = distinct !{!218, !85}
!219 = !{!"tree-predcom.c:VEC_data_reference_p_base_iterate"}
!220 = !{!"tree-predcom.c:suitable_reference_p"}
!221 = !{!64, !57, i64 56}
!222 = !{!"tree-predcom.c:merge_comps"}
!223 = !{!"tree-predcom.c:VEC_ddr_p_base_iterate"}
!224 = !{!225, !60, i64 0}
!225 = !{!"VEC_ddr_p_base", !60, i64 0, !60, i64 4, !58, i64 8}
!226 = !{!"tree-predcom.c:component_of"}
!227 = distinct !{!227, !85}
!228 = distinct !{!228, !85}
!229 = !{!"tree-predcom.c:determine_offset"}
!230 = !{!64, !57, i64 32}
!231 = !{!64, !57, i64 40}
!232 = !{!64, !57, i64 48}
!233 = !{!"tree-predcom.c:VEC_dref_heap_alloc"}
!234 = !{!"tree-predcom.c:shwi_to_double_int"}
!235 = !{!"tree-predcom.c:gimple_bb"}
!236 = !{!"tree-predcom.c:VEC_dref_base_length"}
!237 = !{!"tree-predcom.c:VEC_dref_base_quick_push"}
!238 = !{!"tree-predcom.c:VEC_edge_base_iterate"}
!239 = !{!240, !60, i64 0}
!240 = !{!"VEC_edge_base", !60, i64 0, !60, i64 4, !58, i64 8}
!241 = !{!"tree-predcom.c:VEC_edge_heap_free"}
!242 = !{!"tree-predcom.c:aff_combination_dr_offset"}
!243 = !{!"tree-predcom.c:suitable_component_p"}
!244 = distinct !{!244, !85}
!245 = distinct !{!245, !85}
!246 = !{!"tree-predcom.c:release_component"}
!247 = !{!"tree-predcom.c:VEC_dref_base_index"}
!248 = !{!"tree-predcom.c:VEC_dref_heap_free"}
!249 = !{!"tree-predcom.c:determine_roots_comp"}
!250 = distinct !{!250, !85}
!251 = !{!"tree-predcom.c:make_invariant_chain"}
!252 = distinct !{!252, !85}
!253 = !{!"tree-predcom.c:VEC_chain_p_heap_safe_push"}
!254 = !{!"tree-predcom.c:VEC_dref_base_address"}
!255 = !{!"tree-predcom.c:order_drefs"}
!256 = !{!"tree-predcom.c:uhwi_to_double_int"}
!257 = !{!"tree-predcom.c:nontrivial_chain_p"}
!258 = !{!"tree-predcom.c:add_looparound_copies"}
!259 = distinct !{!259, !85}
!260 = !{!"tree-predcom.c:release_chain"}
!261 = distinct !{!261, !85}
!262 = !{!"tree-predcom.c:make_rooted_chain"}
!263 = !{!"tree-predcom.c:add_ref_to_chain"}
!264 = !{!"tree-predcom.c:VEC_dref_heap_safe_push"}
!265 = !{!"tree-predcom.c:VEC_dref_heap_reserve"}
!266 = !{!"tree-predcom.c:VEC_dref_base_space"}
!267 = !{!95, !60, i64 4}
!268 = !{!"tree-predcom.c:VEC_chain_p_heap_reserve"}
!269 = !{!"tree-predcom.c:VEC_chain_p_base_quick_push"}
!270 = !{!"tree-predcom.c:VEC_chain_p_base_space"}
!271 = !{!99, !60, i64 4}
!272 = !{!"tree-predcom.c:get_chain_root"}
!273 = !{!"tree-predcom.c:find_looparound_phi"}
!274 = distinct !{!274, !85}
!275 = !{!"tree-predcom.c:insert_looparound_copy"}
!276 = distinct !{!276, !85}
!277 = !{!"tree-predcom.c:is_gimple_assign"}
!278 = !{!"tree-predcom.c:gimple_assign_lhs"}
!279 = !{!"tree-predcom.c:gimple_assign_rhs1"}
!280 = !{!"tree-predcom.c:gsi_end_p"}
!281 = !{!282, !57, i64 0}
!282 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16}
!283 = !{!"tree-predcom.c:gsi_stmt"}
!284 = !{!285, !57, i64 0}
!285 = !{!"gimple_seq_node_d", !57, i64 0, !57, i64 8, !57, i64 16}
!286 = !{!"tree-predcom.c:get_use_from_ptr"}
!287 = !{!288, !57, i64 24}
!288 = !{!"ssa_use_operand_d", !57, i64 0, !57, i64 8, !58, i64 16, !57, i64 24}
!289 = !{!"tree-predcom.c:gimple_phi_arg_imm_use_ptr"}
!290 = !{!"tree-predcom.c:gsi_next"}
!291 = !{!285, !57, i64 16}
!292 = !{!"tree-predcom.c:valid_initializer_p"}
!293 = !{!"tree-predcom.c:gimple_op"}
!294 = !{!"tree-predcom.c:gimple_ops"}
!295 = !{!"tree-predcom.c:gimple_statement_structure"}
!296 = !{!"tree-predcom.c:gss_for_code"}
!297 = !{!"tree-predcom.c:gimple_phi_arg"}
!298 = !{!"tree-predcom.c:double_int_equal_p"}
!299 = !{!"tree-predcom.c:VEC_dref_heap_safe_insert"}
!300 = !{!"tree-predcom.c:VEC_dref_base_quick_insert"}
!301 = !{!"tree-predcom.c:VEC_tree_heap_free"}
!302 = !{!"tree-predcom.c:VEC_chain_p_base_length"}
!303 = !{!"tree-predcom.c:VEC_chain_p_base_index"}
!304 = !{!"tree-predcom.c:prepare_initializers_chain"}
!305 = distinct !{!305, !85}
!306 = distinct !{!306, !85}
!307 = distinct !{!307, !85}
!308 = !{!"tree-predcom.c:VEC_chain_p_base_unordered_remove"}
!309 = !{!"tree-predcom.c:VEC_tree_heap_alloc"}
!310 = !{!"tree-predcom.c:VEC_tree_base_quick_push"}
!311 = !{!"tree-predcom.c:VEC_tree_base_replace"}
!312 = !{!"tree-predcom.c:VEC_tree_base_index"}
!313 = !{!"tree-predcom.c:ref_at_iteration"}
!314 = !{!315, !57, i64 0}
!315 = !{!"", !57, i64 0, !57, i64 8, !58, i64 16}
!316 = !{!315, !57, i64 8}
!317 = !{!"tree-predcom.c:handled_component_p"}
!318 = !{!"tree-predcom.c:chain_can_be_combined_p"}
!319 = !{!"tree-predcom.c:VEC_chain_p_base_pop"}
!320 = !{!"tree-predcom.c:combine_chains"}
!321 = distinct !{!321, !85}
!322 = distinct !{!322, !85}
!323 = distinct !{!323, !85}
!324 = !{!"tree-predcom.c:combinable_refs_p"}
!325 = !{i32 0, i32 65536}
!326 = !{!"tree-predcom.c:stmt_combining_refs"}
!327 = !{!"tree-predcom.c:name_for_ref"}
!328 = !{!"tree-predcom.c:find_common_use_stmt"}
!329 = !{!"tree-predcom.c:gimple_assign_rhs_code"}
!330 = !{!"tree-predcom.c:find_use_stmt"}
!331 = !{!"tree-predcom.c:find_associative_operation_root"}
!332 = !{!"tree-predcom.c:single_nonlooparound_use"}
!333 = distinct !{!333, !85}
!334 = !{!"tree-predcom.c:get_gimple_rhs_class"}
!335 = !{!"tree-predcom.c:first_readonly_imm_use"}
!336 = !{!337, !57, i64 8}
!337 = !{!"immediate_use_iterator_d", !57, i64 0, !57, i64 8, !288, i64 16, !57, i64 48}
!338 = !{!288, !57, i64 8}
!339 = !{!337, !57, i64 0}
!340 = !{!"tree-predcom.c:end_readonly_imm_use_p"}
!341 = !{!"tree-predcom.c:next_readonly_imm_use"}
!342 = !{!"tree-predcom.c:may_reassociate_p"}
!343 = !{!"tree-predcom.c:gimple_expr_code"}
!344 = !{!"tree-predcom.c:reassociate_to_the_same_stmt"}
!345 = distinct !{!345, !85}
!346 = distinct !{!346, !85}
!347 = distinct !{!347, !85}
!348 = !{!"tree-predcom.c:remove_name_from_operation"}
!349 = !{!"tree-predcom.c:make_ssa_name"}
!350 = !{!"tree-predcom.c:gimple_assign_rhs2"}
!351 = !{!"tree-predcom.c:gimple_num_ops"}
!352 = !{!"tree-predcom.c:gcd"}
!353 = distinct !{!353, !85}
!354 = !{!"tree-predcom.c:replace_names_by_phis"}
!355 = distinct !{!355, !85}
!356 = distinct !{!356, !85}
!357 = !{!"tree-predcom.c:single_pred_p"}
!358 = !{!359, !57, i64 0}
!359 = !{!"basic_block_def", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !58, i64 32, !57, i64 48, !57, i64 56, !58, i64 64, !62, i64 72, !60, i64 80, !60, i64 84, !60, i64 88, !60, i64 92, !60, i64 96}
!360 = !{!"tree-predcom.c:base_names_in_chain_on"}
!361 = distinct !{!361, !85}
!362 = !{!"tree-predcom.c:VEC_edge_base_length"}
!363 = !{!"tree-predcom.c:first_imm_use_stmt"}
!364 = !{!"tree-predcom.c:end_imm_use_stmt_p"}
!365 = !{!"tree-predcom.c:end_imm_use_stmt_traverse"}
!366 = !{!"tree-predcom.c:next_imm_use_stmt"}
!367 = !{!337, !57, i64 24}
!368 = !{!337, !57, i64 16}
!369 = !{!"tree-predcom.c:link_use_stmts_after"}
!370 = distinct !{!370, !85}
!371 = distinct !{!371, !85}
!372 = !{!"tree-predcom.c:op_iter_init_phiuse"}
!373 = !{!374, !58, i64 0}
!374 = !{!"ssa_operand_iterator_d", !58, i64 0, !60, i64 4, !57, i64 8, !57, i64 16, !60, i64 24, !60, i64 28, !57, i64 32}
!375 = !{!374, !57, i64 32}
!376 = !{!374, !60, i64 28}
!377 = !{!374, !60, i64 4}
!378 = !{!"tree-predcom.c:op_iter_done"}
!379 = !{!"tree-predcom.c:move_use_after_head"}
!380 = !{!"tree-predcom.c:op_iter_next_use"}
!381 = !{!374, !57, i64 16}
!382 = !{!383, !57, i64 0}
!383 = !{!"use_optype_d", !57, i64 0, !288, i64 8}
!384 = !{!374, !60, i64 24}
!385 = !{!"tree-predcom.c:op_iter_init_use"}
!386 = !{!"tree-predcom.c:gimple_vuse_op"}
!387 = !{!383, !57, i64 32}
!388 = !{!"tree-predcom.c:delink_imm_use"}
!389 = !{!288, !57, i64 0}
!390 = !{!"tree-predcom.c:link_imm_use_to_list"}
!391 = !{!"tree-predcom.c:gimple_phi_result"}
!392 = !{!"tree-predcom.c:clear_and_done_ssa_iter"}
!393 = !{!"tree-predcom.c:gimple_phi_num_args"}
!394 = !{!"tree-predcom.c:op_iter_init"}
!395 = !{!374, !57, i64 8}
!396 = !{!397, !57, i64 0}
!397 = !{!"def_optype_d", !57, i64 0, !57, i64 8}
!398 = !{!"tree-predcom.c:gimple_def_ops"}
!399 = !{!"tree-predcom.c:gimple_vdef"}
!400 = !{!"tree-predcom.c:gimple_use_ops"}
!401 = !{!"tree-predcom.c:execute_load_motion"}
!402 = distinct !{!402, !85}
!403 = distinct !{!403, !85}
!404 = !{!"tree-predcom.c:execute_pred_commoning_chain"}
!405 = distinct !{!405, !85}
!406 = distinct !{!406, !85}
!407 = !{!"tree-predcom.c:initialize_root_vars_lm"}
!408 = distinct !{!408, !85}
!409 = !{!"tree-predcom.c:replace_ref_with"}
!410 = !{!"tree-predcom.c:predcom_tmp_var"}
!411 = !{!"tree-predcom.c:gsi_after_labels"}
!412 = distinct !{!412, !85}
!413 = !{!"tree-predcom.c:gsi_start_bb"}
!414 = !{!282, !57, i64 8}
!415 = !{!282, !57, i64 16}
!416 = !{!"tree-predcom.c:bb_seq"}
!417 = !{!359, !60, i64 96}
!418 = !{!419, !57, i64 0}
!419 = !{!"gimple_bb_info", !57, i64 0, !57, i64 8}
!420 = !{!"tree-predcom.c:gimple_seq_first"}
!421 = !{!422, !57, i64 0}
!422 = !{!"gimple_seq_d", !57, i64 0, !57, i64 8, !57, i64 16}
!423 = !{!"tree-predcom.c:remove_stmt"}
!424 = !{i64 0, i64 8, !83, i64 8, i64 8, !83, i64 16, i64 8, !83}
!425 = !{!"tree-predcom.c:initialize_root"}
!426 = !{!"tree-predcom.c:initialize_root_vars"}
!427 = distinct !{!427, !85}
!428 = distinct !{!428, !85}
!429 = distinct !{!429, !85}
!430 = !{!"tree-predcom.c:get_init_expr"}
!431 = !{!"tree-predcom.c:VEC_chain_p_heap_free"}
!432 = !{!"tree-predcom.c:VEC_int_base_iterate"}
!433 = !{!"tree-predcom.c:get_loop"}
!434 = !{!"tree-predcom.c:VEC_int_heap_free"}
