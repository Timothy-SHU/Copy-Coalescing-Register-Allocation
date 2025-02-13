; ModuleID = 'tree-ssa-reassoc.c'
source_filename = "tree-ssa-reassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.operand_entry = type { i32, ptr }
%struct.VEC_operand_entry_t_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.oecount_s = type { i32, i32, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_oecount_base = type { i32, i32, [1 x %struct.oecount_s] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Op %d -> rank: %d, tree: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"reassoc\00", align 1
@pass_reassoc = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_tree_ssa_reassoc, ptr @execute_reassoc, ptr null, ptr null, i32 0, i32 68, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@flag_tree_reassoc = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@reassociate_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"operand entry pool\00", align 1
@operand_entry_pool = internal unnamed_addr global ptr null, align 8
@bb_rank = internal unnamed_addr global ptr null, align 8
@operand_rank = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@broken_up_subtracts = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"tree-ssa-reassoc.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_associative_math = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Breaking up subtract \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Transforming \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" into \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"swapping operands of \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" is now \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Rank for \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" is %ld\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Linearized: \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Merging constants\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Found & 0, removing all other ops\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Found & -1, removing\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Found | -1, removing all other ops\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Found | 0, removing\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"Found * 0, removing all other ops\0A\00", align 1
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"Found * 1, removing\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Found [|^+] 0, removing\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Equivalence: \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" & ~\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" | ~\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c" -> 0\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" -> -1\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [13 x i8] c" [&|minmax] \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" -> nothing\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c" + -\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"searching for un-distribute opportunities \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@cvec = internal unnamed_addr global ptr null, align 8
@.str.34 = private unnamed_addr constant [13 x i8] c"Candidates:\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"  %u %s: \00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Building (\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c") %s \00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Linearized\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Constants eliminated\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Ops eliminated\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Statements rewritten\00", align 1
@switch.table.constant_type = private unnamed_addr constant [4 x i32] [i32 8, i32 8, i32 8, i32 4], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_ops_vector(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #20, !range !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %13, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !6
  %9 = load i32, ptr %8, align 8, !tbaa !10
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.operand_entry, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %12, i32 noundef 0) #21
  %13 = add i32 %7, 1
  %14 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %1, i32 noundef %13, ptr noundef nonnull %3) #20, !range !5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %6, !llvm.loop !14

16:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_operand_entry_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !16
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ops_vector(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_ops_vector(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_reassoc() #5 {
  %1 = load i32, ptr @flag_tree_reassoc, align 4, !tbaa !18
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_reassoc() #0 {
  tail call fastcc void @init_reassoc() #20
  tail call fastcc void @do_reassoc() #20
  tail call fastcc void @repropagate_negates() #20
  tail call fastcc void @fini_reassoc() #20
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_reassoc() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #21
  tail call void @loop_optimizer_init(i32 noundef 16) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @reassociate_stats, i8 0, i64 16, i1 false)
  %10 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.2, i64 noundef 16, i64 noundef 30) #21
  store ptr %10, ptr @operand_entry_pool, align 8, !tbaa !6
  %11 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %9, i8 noundef zeroext 0) #21
  %12 = load ptr, ptr @cfun, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !21
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 8) #21
  store ptr %19, ptr @bb_rank, align 8, !tbaa !6
  %20 = tail call ptr @pointer_map_create() #21
  store ptr %20, ptr @operand_rank, align 8, !tbaa !6
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.tree_decl_non_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %0, %35
  %26 = phi ptr [ %38, %35 ], [ %23, %0 ]
  %27 = phi i64 [ %36, %35 ], [ 2, %0 ]
  %28 = load ptr, ptr @cfun, align 8, !tbaa !6
  %29 = tail call ptr @gimple_default_def(ptr noundef %28, ptr noundef nonnull %26) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr @cfun, align 8, !tbaa !6
  %33 = tail call ptr @gimple_default_def(ptr noundef %32, ptr noundef nonnull %26) #21
  %34 = add nsw i64 %27, 1
  tail call fastcc void @insert_operand_rank(ptr noundef %33, i64 noundef %34) #20
  br label %35

35:                                               ; preds = %25, %31
  %36 = phi i64 [ %34, %31 ], [ %27, %25 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !23
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25, !llvm.loop !24

40:                                               ; preds = %35, %0
  %41 = phi i64 [ 2, %0 ], [ %36, %35 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = tail call ptr @gimple_default_def(ptr noundef nonnull %42, ptr noundef nonnull %44) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = add nsw i64 %41, 1
  tail call fastcc void @insert_operand_rank(ptr noundef nonnull %47, i64 noundef %50) #20
  br label %51

51:                                               ; preds = %46, %49, %40
  %52 = phi i64 [ %41, %40 ], [ %50, %49 ], [ %41, %46 ]
  %53 = load ptr, ptr @cfun, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !26
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %74

59:                                               ; preds = %51
  %60 = add nsw i32 %57, -2
  %61 = load ptr, ptr @bb_rank, align 8, !tbaa !6
  %62 = zext nneg i32 %60 to i64
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 0, %59 ], [ %72, %63 ]
  %65 = phi i64 [ %52, %59 ], [ %66, %63 ]
  %66 = add nsw i64 %65, 1
  %67 = shl i64 %66, 16
  %68 = getelementptr inbounds i32, ptr %9, i64 %64
  %69 = load i32, ptr %68, align 4, !tbaa !18
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %61, i64 %70
  store i64 %67, ptr %71, align 8, !tbaa !27
  %72 = add nuw nsw i64 %64, 1
  %73 = icmp eq i64 %72, %62
  br i1 %73, label %74, label %63, !llvm.loop !29

74:                                               ; preds = %63, %51
  tail call void @free(ptr noundef %9) #20
  tail call void @calculate_dominance_info(i32 noundef 2) #21
  store ptr null, ptr @broken_up_subtracts, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_reassoc() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  tail call fastcc void @break_up_subtract_bb(ptr noundef %4) #20
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  tail call fastcc void @reassociate_bb(ptr noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repropagate_negates() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %3 = load ptr, ptr @broken_up_subtracts, align 8
  %4 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %1) #20, !range !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %0, %29
  %7 = phi i32 [ %30, %29 ], [ 0, %0 ]
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  %9 = call fastcc ptr @get_single_immediate_use(ptr noundef %8) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %9) #20, !range !32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %9) #20, !range !33
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %9) #20
  %19 = icmp eq ptr %18, %8
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef nonnull %9) #20
  %22 = call fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef nonnull %9) #20
  call void @swap_tree_operands(ptr noundef nonnull %9, ptr noundef %21, ptr noundef %22) #21
  br label %23

23:                                               ; preds = %20, %17
  %24 = call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %9) #20
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %9) #20
  %28 = call fastcc ptr @get_unary_op(ptr noundef %8, i32 noundef 79) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %9) #21
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %2, i32 noundef 64, ptr noundef %27, ptr noundef %28) #21
  call fastcc void @update_stmt(ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %29

29:                                               ; preds = %23, %26, %14, %11, %6
  %30 = add i32 %7, 1
  %31 = load ptr, ptr @broken_up_subtracts, align 8
  %32 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %31, i32 noundef %30, ptr noundef nonnull %1) #20, !range !5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %6, !llvm.loop !34

34:                                               ; preds = %29, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_reassoc() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = load i32, ptr @reassociate_stats, align 4, !tbaa !35
  tail call void @statistics_counter_event(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %2) #21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 1), align 4, !tbaa !37
  tail call void @statistics_counter_event(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %4) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  tail call void @statistics_counter_event(ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %6) #21
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 3), align 4, !tbaa !39
  tail call void @statistics_counter_event(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %8) #21
  %9 = load ptr, ptr @operand_rank, align 8, !tbaa !6
  tail call void @pointer_map_destroy(ptr noundef %9) #21
  %10 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %10) #21
  %11 = load ptr, ptr @bb_rank, align 8, !tbaa !6
  tail call void @free(ptr noundef %11) #20
  tail call fastcc void @VEC_tree_heap_free() #20
  tail call void @free_dominance_info(i32 noundef 2) #21
  tail call void @loop_optimizer_finalize() #21
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_operand_rank(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 205, ptr noundef nonnull @.str.4) #21
  br label %5

5:                                                ; preds = %2, %4
  %6 = load ptr, ptr @operand_rank, align 8, !tbaa !6
  %7 = tail call ptr @pointer_map_insert(ptr noundef %6, ptr noundef %0) #21
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 207, ptr noundef nonnull @.str.4) #21
  br label %11

11:                                               ; preds = %5, %10
  %12 = inttoptr i64 %1 to ptr
  store ptr %12, ptr %7, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @break_up_subtract_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %79

5:                                                ; preds = %1, %76
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  call fastcc void @gimple_set_visited(ptr noundef %6, i8 noundef zeroext 0) #20
  %7 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %6) #20, !range !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %6) #20, !range !33
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %12, label %76

12:                                               ; preds = %9
  %13 = call fastcc ptr @gimple_assign_lhs(ptr noundef %6) #20
  %14 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %6) #20
  %15 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %6) #20
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -6
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %23, label %39

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -6
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -6
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %72, label %39

39:                                               ; preds = %31, %23, %12
  %40 = and i64 %18, 65535
  %41 = icmp eq i64 %40, 9
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 9
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 9
  %54 = load i32, ptr @flag_associative_math, align 4
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %72, label %76

57:                                               ; preds = %39
  %58 = and i64 %18, 2147549183
  %59 = icmp eq i64 %58, 11
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !23
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 2147549183
  %65 = icmp eq i64 %64, 11
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !23
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 2147549183
  %71 = icmp eq i64 %70, 11
  br i1 %71, label %72, label %76

72:                                               ; preds = %31, %66, %48
  %73 = call fastcc zeroext i8 @should_break_up_subtract(ptr noundef %6) #20, !range !32
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call fastcc void @break_up_subtract(ptr noundef %6, ptr noundef nonnull %2) #20
  br label %76

76:                                               ; preds = %42, %48, %66, %60, %57, %5, %9, %72, %75
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %77 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !32
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %5, label %79, !llvm.loop !40

79:                                               ; preds = %76, %1
  %80 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79, %82
  %83 = phi ptr [ %84, %82 ], [ %80, %79 ]
  call fastcc void @break_up_subtract_bb(ptr noundef nonnull %83) #20
  %84 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %83) #21
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %82, !llvm.loop !41

86:                                               ; preds = %82, %79
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reassociate_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %146

7:                                                ; preds = %1, %143
  %8 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %9 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %8) #20, !range !32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %143, label %11

11:                                               ; preds = %7
  %12 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %8) #20, !range !33
  %13 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %12) #20, !range !42
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %143

15:                                               ; preds = %11
  %16 = call fastcc zeroext i8 @gimple_visited_p(ptr noundef %8) #20, !range !32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = call ptr @gimple_get_lhs(ptr noundef %8) #21
  %20 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %19) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %143, label %22

22:                                               ; preds = %18
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef %8) #21
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %143, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !32
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %143, label %146

28:                                               ; preds = %15
  %29 = call fastcc ptr @gimple_assign_lhs(ptr noundef %8) #20
  %30 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #20
  %31 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %8) #20
  %32 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -6
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, -6
  %46 = icmp ult i32 %45, 3
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -6
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %88, label %55

55:                                               ; preds = %47, %39, %28
  %56 = and i64 %34, 65535
  %57 = icmp eq i64 %56, 9
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !23
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 9
  br i1 %63, label %64, label %143

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !23
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 9
  %70 = load i32, ptr @flag_associative_math, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %88, label %143

73:                                               ; preds = %55
  %74 = and i64 %34, 2147549183
  %75 = icmp eq i64 %74, 11
  br i1 %75, label %76, label %143

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !23
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 2147549183
  %81 = icmp eq i64 %80, 11
  br i1 %81, label %82, label %143

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !23
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 2147549183
  %87 = icmp eq i64 %86, 11
  br i1 %87, label %88, label %143

88:                                               ; preds = %47, %82, %64
  %89 = call zeroext i8 @associative_tree_code(i32 noundef %12) #21
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %143, label %91

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !6
  %92 = load i64, ptr %29, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 141
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %29) #20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %95, %91
  call fastcc void @gimple_set_visited(ptr noundef %8, i8 noundef zeroext 1) #20
  call fastcc void @linearize_expr_tree(ptr noundef nonnull %4, ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #20
  %99 = load ptr, ptr %4, align 8
  %100 = call fastcc ptr @VEC_operand_entry_t_base_address(ptr noundef %99) #20
  %101 = call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %99) #20
  %102 = zext i32 %101 to i64
  call void @spec_qsort(ptr noundef %100, i64 noundef %102, i64 noundef 8, ptr noundef nonnull @sort_by_operand_rank) #21
  call fastcc void @optimize_ops_list(i32 noundef %12, ptr noundef nonnull %4) #20
  %103 = call fastcc ptr @loop_containing_stmt(ptr noundef %8) #20
  %104 = call fastcc zeroext i8 @undistribute_ops_list(i32 noundef %12, ptr noundef nonnull %4, ptr noundef %103) #20, !range !32
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %98
  %107 = load ptr, ptr %4, align 8
  %108 = call fastcc ptr @VEC_operand_entry_t_base_address(ptr noundef %107) #20
  %109 = call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %107) #20
  %110 = zext i32 %109 to i64
  call void @spec_qsort(ptr noundef %108, i64 noundef %110, i64 noundef 8, ptr noundef nonnull @sort_by_operand_rank) #21
  call fastcc void @optimize_ops_list(i32 noundef %12, ptr noundef nonnull %4) #20
  br label %111

111:                                              ; preds = %106, %98
  %112 = load ptr, ptr %4, align 8
  %113 = call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %112) #20
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr nonnull %116)
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %124, ptr noundef %8, i32 noundef 0, i32 noundef 0) #21
  br label %125

125:                                              ; preds = %122, %118, %115
  %126 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #20
  %127 = load ptr, ptr %4, align 8
  %128 = call fastcc ptr @VEC_operand_entry_t_base_last(ptr noundef %127) #20
  %129 = getelementptr inbounds %struct.operand_entry, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %2, ptr noundef %130) #21
  call fastcc void @update_stmt(ptr noundef %8) #20
  call fastcc void @remove_visited_stmt_chain(ptr noundef %126) #20
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %132 = icmp eq ptr %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %135 = and i32 %134, 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr nonnull %131)
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %139, ptr noundef %8, i32 noundef 0, i32 noundef 0) #21
  br label %141

140:                                              ; preds = %111
  call fastcc void @rewrite_expr_tree(ptr noundef %8, i32 noundef 0, ptr noundef %112, i8 noundef zeroext 0) #20
  br label %141

141:                                              ; preds = %140, %137, %133, %125
  call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %143

142:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %143

143:                                              ; preds = %58, %64, %18, %25, %22, %142, %11, %82, %76, %73, %7, %88, %141
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #20
  %144 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !32
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %7, label %146, !llvm.loop !44

146:                                              ; preds = %143, %25, %1
  %147 = call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #21
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146, %149
  %150 = phi ptr [ %151, %149 ], [ %147, %146 ]
  call fastcc void @reassociate_bb(ptr noundef nonnull %150) #20
  %151 = call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %150) #21
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %149, !llvm.loop !45

153:                                              ; preds = %149, %146
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 9
  %7 = and i32 %3, -513
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !33
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !42
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @should_break_up_subtract(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %4 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %5 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %0) #20
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %11, i32 noundef 63, ptr noundef %5) #20, !range !32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9, %1
  %15 = load i64, ptr %4, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %20, i32 noundef 63, ptr noundef %5) #20, !range !32
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18, %14
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @get_single_immediate_use(ptr noundef nonnull %2) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %28) #20, !range !32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %28) #20, !range !33
  %35 = icmp eq i32 %34, 63
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %28) #20, !range !33
  %38 = icmp eq i32 %37, 65
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %30, %27, %23
  br label %40

40:                                               ; preds = %33, %36, %18, %9, %39
  %41 = phi i8 [ 0, %39 ], [ 1, %9 ], [ 1, %18 ], [ 1, %36 ], [ 1, %33 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @break_up_subtract(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %4 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = tail call fastcc ptr @negate_value(ptr noundef %4, ptr noundef %1) #20
  tail call void @gimple_assign_set_rhs_with_ops(ptr noundef %1, i32 noundef 63, ptr noundef %3, ptr noundef %15) #21
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  store ptr %4, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !53
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !23
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !18
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_reassociable_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %2, ptr noundef nonnull %4) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !33
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %17 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %16) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %9
  br label %20

20:                                               ; preds = %15, %6, %3, %19
  %21 = phi i8 [ 0, %19 ], [ 0, %3 ], [ 0, %6 ], [ 1, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_single_immediate_use(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %11) #20, !range !32
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, ptr null, ptr %11
  br label %15

15:                                               ; preds = %10, %1, %7
  %16 = phi ptr [ null, %7 ], [ null, %1 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #20, !range !32
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #21
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !6
  store ptr null, ptr %2, align 8, !tbaa !6
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #20, !range !32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !6
  %19 = load ptr, ptr %5, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  store ptr %21, ptr %2, align 8, !tbaa !6
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #21
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @negate_value(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %10) #20, !range !32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %10) #20
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %10) #20
  %20 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %19) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #20, !range !33
  %24 = icmp eq i32 %23, 63
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %26 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #20
  %27 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %10) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %10) #21
  %28 = call fastcc ptr @negate_value(ptr noundef %26, ptr noundef nonnull %3) #20
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %10, ptr noundef %28) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %10) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %29 = call fastcc ptr @negate_value(ptr noundef %27, ptr noundef nonnull %3) #20
  call fastcc void @gimple_assign_set_rhs2(ptr noundef %10, ptr noundef %29) #20
  call fastcc void @update_stmt(ptr noundef %10) #20
  %30 = call fastcc ptr @gimple_assign_lhs(ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %36

31:                                               ; preds = %2, %22, %18, %13, %8
  %32 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %33, ptr noundef nonnull %0) #21
  %35 = tail call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %34, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %35) #20
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi ptr [ %30, %25 ], [ %35, %31 ]
  ret ptr %37
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !32
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #21
  tail call void @update_stmt_operands(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve() #20
  %2 = load ptr, ptr @broken_up_subtracts, align 8, !tbaa !6
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @broken_up_subtracts, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @broken_up_subtracts, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8, !tbaa !62
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !62
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = load i32, ptr %0, align 8, !tbaa !62
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #21
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @associative_tree_code(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearize_expr_tree(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %6 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !33
  %8 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #20
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call fastcc void @gimple_set_visited(ptr noundef %1, i8 noundef zeroext 1) #20
  br label %11

11:                                               ; preds = %10, %4
  %12 = load i64, ptr %5, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %17, i32 noundef %7, ptr noundef %8) #20, !range !32
  %19 = icmp eq i8 %18, 0
  %20 = load i64, ptr %6, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %32, label %37

23:                                               ; preds = %11
  %24 = load i64, ptr %6, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  %30 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %29, i32 noundef %7, ptr noundef %8) #20, !range !32
  %31 = icmp eq i8 %30, 0
  br label %38

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %34, i32 noundef %7, ptr noundef %8) #20, !range !32
  %36 = icmp eq i8 %35, 0
  br i1 %19, label %38, label %65

37:                                               ; preds = %15
  br i1 %19, label %38, label %69

38:                                               ; preds = %27, %23, %37, %32
  %39 = phi i1 [ true, %37 ], [ %36, %32 ], [ true, %23 ], [ %31, %27 ]
  %40 = icmp eq i8 %2, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %38
  br i1 %39, label %42, label %43

42:                                               ; preds = %41
  tail call fastcc void @add_to_ops_vec(ptr noundef %0, ptr noundef nonnull %6) #20
  br label %81

43:                                               ; preds = %41
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr nonnull %44)
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %52, ptr noundef %1, i32 noundef 0, i32 noundef 0) #21
  br label %53

53:                                               ; preds = %50, %46, %43
  %54 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %1) #20
  %55 = tail call fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %1) #20
  tail call void @swap_tree_operands(ptr noundef %1, ptr noundef %54, ptr noundef %55) #21
  tail call fastcc void @update_stmt(ptr noundef %1) #20
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 8, i64 1, ptr nonnull %56)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %64, ptr noundef %1, i32 noundef 0, i32 noundef 0) #21
  br label %69

65:                                               ; preds = %32
  br i1 %36, label %69, label %66

66:                                               ; preds = %65
  tail call fastcc void @linearize_expr(ptr noundef %1) #20
  %67 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %68 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  br label %69

69:                                               ; preds = %53, %58, %62, %37, %65, %66
  %70 = phi ptr [ %68, %66 ], [ %6, %65 ], [ %6, %37 ], [ %5, %62 ], [ %5, %58 ], [ %5, %53 ]
  %71 = phi ptr [ %67, %66 ], [ %5, %65 ], [ %5, %37 ], [ %6, %62 ], [ %6, %58 ], [ %6, %53 ]
  %72 = load i64, ptr %70, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 141
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !23
  %78 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %77, i32 noundef %7, ptr noundef %8) #20, !range !32
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1693, ptr noundef nonnull @.str.4) #21
  br label %83

81:                                               ; preds = %38, %42, %83
  %82 = phi ptr [ %5, %42 ], [ %70, %83 ], [ %6, %38 ]
  tail call fastcc void @add_to_ops_vec(ptr noundef %0, ptr noundef nonnull %82) #20
  ret void

83:                                               ; preds = %69, %75, %80
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !23
  tail call fastcc void @linearize_expr_tree(ptr noundef %0, ptr noundef %85, i8 noundef zeroext %2, i8 noundef zeroext %3) #20
  br label %81
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_operand_entry_t_base_address(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !16
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @sort_by_operand_rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = load i32, ptr %4, align 8, !tbaa !10
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %3, align 8, !tbaa !10
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call fastcc i32 @constant_type(ptr noundef %12) #20, !range !65
  %14 = getelementptr inbounds %struct.operand_entry, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = tail call fastcc i32 @constant_type(ptr noundef %15) #20, !range !65
  %17 = sub nsw i32 %13, %16
  br label %40

18:                                               ; preds = %2
  %19 = icmp eq i32 %5, %7
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.operand_entry, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !23
  %37 = sub i32 %34, %36
  br label %40

38:                                               ; preds = %26, %20, %18
  %39 = sub i32 %5, %7
  br label %40

40:                                               ; preds = %38, %32, %10
  %41 = phi i32 [ %17, %10 ], [ %37, %32 ], [ %39, %38 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_ops_list(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %95, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_operand_entry_t_base_last(ptr noundef %5) #20
  %10 = load i32, ptr %9, align 8, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.operand_entry, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %14) #21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !6
  %19 = add i32 %6, -2
  %20 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %18, i32 noundef %19) #20
  %21 = load i32, ptr %20, align 8, !tbaa !10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.operand_entry, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %25) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = load ptr, ptr %13, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %31, ptr noundef %34) #21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %24, align 8, !tbaa !13
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !23
  %41 = load ptr, ptr %13, align 8, !tbaa !13
  %42 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %0, ptr noundef %40, ptr noundef %38, ptr noundef %41) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %37
  %45 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %42) #21
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 18, i64 1, ptr nonnull %48)
  br label %56

56:                                               ; preds = %54, %50, %47
  %57 = load ptr, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_base_pop(ptr noundef %57) #20
  %58 = load ptr, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_base_pop(ptr noundef %58) #20
  tail call fastcc void @add_to_ops_vec(ptr noundef nonnull %1, ptr noundef nonnull %42) #20
  %59 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 1), align 4, !tbaa !37
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 1), align 4, !tbaa !37
  tail call fastcc void @optimize_ops_list(i32 noundef %0, ptr noundef nonnull %1) #20
  br label %95

61:                                               ; preds = %44, %37, %28, %23, %17, %12, %8
  tail call fastcc void @eliminate_using_constants(i32 noundef %0, ptr noundef nonnull %1) #20
  %62 = load ptr, ptr %1, align 8, !tbaa !6
  %63 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %62, i32 noundef 0, ptr noundef nonnull %3) #20, !range !5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %61, %85
  %66 = phi i32 [ %88, %85 ], [ 0, %61 ]
  %67 = phi i8 [ %87, %85 ], [ 0, %61 ]
  %68 = phi ptr [ %86, %85 ], [ null, %61 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !tbaa !23
  %69 = load ptr, ptr %3, align 8, !tbaa !6
  %70 = tail call fastcc zeroext i8 @eliminate_not_pairs(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %66, ptr noundef %69) #20, !range !32
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = call fastcc zeroext i8 @eliminate_duplicate_pair(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef %66, ptr noundef %69, ptr noundef %68) #20, !range !32
  %74 = icmp eq i8 %73, 0
  %75 = load i8, ptr %4, align 1, !tbaa !23
  %76 = icmp eq i8 %75, 0
  br i1 %74, label %77, label %81

77:                                               ; preds = %72
  br i1 %76, label %78, label %82

78:                                               ; preds = %77
  %79 = tail call fastcc zeroext i8 @eliminate_plus_minus_pair(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %66, ptr noundef %69) #20, !range !32
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %85, !llvm.loop !66

81:                                               ; preds = %72
  br i1 %76, label %85, label %84, !llvm.loop !66

82:                                               ; preds = %78, %77
  %83 = add i32 %66, 1
  br label %85

84:                                               ; preds = %65, %81
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %95

85:                                               ; preds = %78, %81, %82
  %86 = phi ptr [ %69, %82 ], [ null, %81 ], [ null, %78 ]
  %87 = phi i8 [ %67, %82 ], [ 1, %81 ], [ 1, %78 ]
  %88 = phi i32 [ %83, %82 ], [ %66, %81 ], [ %66, %78 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %89 = load ptr, ptr %1, align 8, !tbaa !6
  %90 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %89, i32 noundef %88, ptr noundef nonnull %3) #20, !range !5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %65

92:                                               ; preds = %85
  %93 = icmp eq i8 %87, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %92
  tail call fastcc void @optimize_ops_list(i32 noundef %0, ptr noundef nonnull %1) #20
  br label %95

95:                                               ; preds = %61, %84, %92, %94, %56, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @undistribute_ops_list(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbitmap_iterator, align 8
  %7 = alloca %struct.oecount_s, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  %10 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %11 = icmp ult i32 %10, 2
  %12 = icmp ne i32 %0, 63
  %13 = or i1 %12, %11
  br i1 %13, label %330, label %14

14:                                               ; preds = %3
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %10) #21
  tail call void @sbitmap_zero(ptr noundef %15) #21
  %16 = load ptr, ptr %1, align 8, !tbaa !6
  %17 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %4) #20, !range !5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %14, %41
  %20 = phi i32 [ %42, %41 ], [ 0, %14 ]
  %21 = phi i32 [ %43, %41 ], [ 0, %14 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.operand_entry, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %30) #20, !range !32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %30) #20, !range !33
  %35 = trunc i32 %34 to i16
  switch i16 %35, label %41 [
    i16 75, label %36
    i16 65, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %30, i32 noundef %34, ptr noundef %2) #20, !range !32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  tail call fastcc void @SET_BIT(ptr noundef %15, i32 noundef %21) #20
  %40 = add i32 %20, 1
  br label %41

41:                                               ; preds = %36, %33, %28, %19, %39
  %42 = phi i32 [ %40, %39 ], [ %20, %19 ], [ %20, %28 ], [ %20, %33 ], [ %20, %36 ]
  %43 = add i32 %21, 1
  %44 = load ptr, ptr %1, align 8, !tbaa !6
  %45 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %44, i32 noundef %43, ptr noundef nonnull %4) #20, !range !5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %19, !llvm.loop !67

47:                                               ; preds = %41
  store i32 %43, ptr %5, align 4, !tbaa !18
  %48 = icmp ult i32 %42, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %14, %47
  %50 = load ptr, ptr %15, align 8, !tbaa !68
  tail call void @free(ptr noundef %50) #20
  tail call void @free(ptr noundef %15) #20
  br label %330

51:                                               ; preds = %47
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 42, i64 1, ptr nonnull %52)
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %61 = load ptr, ptr %1, align 8, !tbaa !6
  %62 = tail call i32 @sbitmap_first_set_bit(ptr noundef %15) #21
  %63 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %61, i32 noundef %62) #20
  %64 = getelementptr inbounds %struct.operand_entry, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %60, ptr noundef %65, i32 noundef 0) #21
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.33, i32 noundef %42) #20
  br label %68

68:                                               ; preds = %58, %54, %51
  store ptr null, ptr @cvec, align 8, !tbaa !6
  %69 = tail call ptr @htab_create(i64 noundef 15, ptr noundef nonnull @oecount_hash, ptr noundef nonnull @oecount_eq, ptr noundef null) #21
  %70 = load ptr, ptr %1, align 8, !tbaa !6
  %71 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %70) #20
  %72 = zext i32 %71 to i64
  %73 = tail call ptr @xcalloc(i64 noundef %72, i64 noundef 8) #21
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %6, ptr noundef %15, i32 noundef 0) #20
  %74 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !32
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %125, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.oecount_s, ptr %7, i64 0, i32 1
  %78 = getelementptr inbounds %struct.oecount_s, ptr %7, i64 0, i32 2
  br label %79

79:                                               ; preds = %76, %122
  %80 = load ptr, ptr %1, align 8, !tbaa !6
  %81 = load i32, ptr %5, align 4, !tbaa !18
  %82 = call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %80, i32 noundef %81) #20
  %83 = getelementptr inbounds %struct.operand_entry, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = getelementptr inbounds %struct.tree_ssa_name, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !23
  %87 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %86) #20, !range !33
  %88 = zext i32 %81 to i64
  %89 = getelementptr inbounds ptr, ptr %73, i64 %88
  %90 = call zeroext i8 @associative_tree_code(i32 noundef %87) #21
  call fastcc void @linearize_expr_tree(ptr noundef %89, ptr noundef %86, i8 noundef zeroext %90, i8 noundef zeroext 0) #20
  %91 = load ptr, ptr %89, align 8, !tbaa !6
  %92 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %91, i32 noundef 0, ptr noundef nonnull %4) #20, !range !5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %79, %117
  %95 = phi i32 [ %118, %117 ], [ 0, %79 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  store i32 %87, ptr %77, align 4, !tbaa !70
  store i32 1, ptr %7, align 8, !tbaa !72
  %96 = load ptr, ptr %4, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct.operand_entry, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !13
  store ptr %98, ptr %78, align 8, !tbaa !73
  call fastcc void @VEC_oecount_heap_safe_push(ptr noundef nonnull %7) #20
  %99 = load ptr, ptr @cvec, align 8
  %100 = call fastcc i32 @VEC_oecount_base_length(ptr noundef %99) #20
  %101 = add i32 %100, 41
  %102 = zext i32 %101 to i64
  %103 = inttoptr i64 %102 to ptr
  %104 = call ptr @htab_find_slot(ptr noundef %69, ptr noundef %103, i32 noundef 1) #21
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  store ptr %103, ptr %104, align 8, !tbaa !6
  br label %117

108:                                              ; preds = %94
  %109 = load ptr, ptr @cvec, align 8
  call fastcc void @VEC_oecount_base_pop(ptr noundef %109) #20
  %110 = load ptr, ptr %104, align 8, !tbaa !6
  %111 = ptrtoint ptr %110 to i64
  %112 = trunc i64 %111 to i32
  %113 = add i32 %112, -42
  %114 = call fastcc ptr @VEC_oecount_base_index(ptr noundef %109, i32 noundef %113) #20
  %115 = load i32, ptr %114, align 8, !tbaa !72
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !72
  br label %117

117:                                              ; preds = %108, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  %118 = add i32 %95, 1
  %119 = load ptr, ptr %89, align 8, !tbaa !6
  %120 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %119, i32 noundef %118, ptr noundef nonnull %4) #20, !range !5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %94, !llvm.loop !74

122:                                              ; preds = %117, %79
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %6) #20
  %123 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !32
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %79, !llvm.loop !75

125:                                              ; preds = %122, %68
  call void @htab_delete(ptr noundef %69) #21
  %126 = load ptr, ptr @cvec, align 8
  %127 = call fastcc ptr @VEC_oecount_base_address(ptr noundef %126) #20
  %128 = call fastcc i32 @VEC_oecount_base_length(ptr noundef %126) #20
  %129 = zext i32 %128 to i64
  call void @spec_qsort(ptr noundef %127, i64 noundef %129, i64 noundef 16, ptr noundef nonnull @oecount_cmp) #21
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %131 = icmp eq ptr %130, null
  br i1 %131, label %163, label %132

132:                                              ; preds = %125
  %133 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %134 = and i32 %133, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %163, label %136

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %137 = call i64 @fwrite(ptr nonnull @.str.34, i64 12, i64 1, ptr nonnull %130)
  %138 = load ptr, ptr @cvec, align 8
  %139 = call fastcc i32 @VEC_oecount_base_iterate(ptr noundef %138, i32 noundef 0, ptr noundef nonnull %8) #20, !range !5
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %162, label %141

141:                                              ; preds = %136, %141
  %142 = phi i32 [ %158, %141 ], [ 0, %136 ]
  %143 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %144 = load ptr, ptr %8, align 8, !tbaa !6
  %145 = load i32, ptr %144, align 8, !tbaa !72
  %146 = getelementptr inbounds %struct.oecount_s, ptr %144, i64 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !70
  %148 = icmp eq i32 %147, 65
  %149 = icmp eq i32 %147, 75
  %150 = select i1 %149, ptr @.str.37, ptr @.str.4
  %151 = select i1 %148, ptr @.str.36, ptr %150
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.35, i32 noundef %145, ptr noundef nonnull %151) #20
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %154 = getelementptr inbounds %struct.oecount_s, ptr %144, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !73
  call void @print_generic_expr(ptr noundef %153, ptr noundef %155, i32 noundef 0) #21
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %157 = call i32 @fputc(i32 10, ptr %156)
  %158 = add i32 %142, 1
  %159 = load ptr, ptr @cvec, align 8
  %160 = call fastcc i32 @VEC_oecount_base_iterate(ptr noundef %159, i32 noundef %158, ptr noundef nonnull %8) #20, !range !5
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %141, !llvm.loop !76

162:                                              ; preds = %141, %136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %163

163:                                              ; preds = %162, %132, %125
  %164 = call ptr @sbitmap_alloc(i32 noundef %10) #21
  %165 = load ptr, ptr @cvec, align 8
  %166 = call fastcc i32 @VEC_oecount_base_length(ptr noundef %165) #20
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %314, label %168

168:                                              ; preds = %163, %309
  %169 = phi ptr [ %311, %309 ], [ %165, %163 ]
  %170 = phi i8 [ %310, %309 ], [ 0, %163 ]
  %171 = call fastcc ptr @VEC_oecount_base_last(ptr noundef %169) #20
  %172 = load i32, ptr %171, align 8, !tbaa !72
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %314, label %174

174:                                              ; preds = %168
  call void @sbitmap_zero(ptr noundef %164) #21
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %6, ptr noundef %15, i32 noundef 0) #20
  %175 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !32
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %309, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.oecount_s, ptr %171, i64 0, i32 1
  %179 = getelementptr inbounds %struct.oecount_s, ptr %171, i64 0, i32 2
  br label %180

180:                                              ; preds = %177, %216
  %181 = phi i32 [ 0, %177 ], [ %217, %216 ]
  %182 = load ptr, ptr %1, align 8, !tbaa !6
  %183 = load i32, ptr %5, align 4, !tbaa !18
  %184 = call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %182, i32 noundef %183) #20
  %185 = getelementptr inbounds %struct.operand_entry, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !13
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 141
  br i1 %189, label %190, label %216

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.tree_ssa_name, ptr %186, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !23
  %193 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %192) #20, !range !33
  %194 = load i32, ptr %178, align 4, !tbaa !70
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %216

196:                                              ; preds = %190
  %197 = zext i32 %183 to i64
  %198 = getelementptr inbounds ptr, ptr %73, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %199, i32 noundef 0, ptr noundef nonnull %4) #20, !range !5
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %216, label %202

202:                                              ; preds = %196
  %203 = load ptr, ptr %179, align 8, !tbaa !73
  br label %208

204:                                              ; preds = %208
  %205 = add i32 %209, 1
  %206 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %199, i32 noundef %205, ptr noundef nonnull %4) #20, !range !5
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %216, label %208, !llvm.loop !77

208:                                              ; preds = %202, %204
  %209 = phi i32 [ 0, %202 ], [ %205, %204 ]
  %210 = load ptr, ptr %4, align 8, !tbaa !6
  %211 = getelementptr inbounds %struct.operand_entry, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !13
  %213 = icmp eq ptr %212, %203
  br i1 %213, label %214, label %204

214:                                              ; preds = %208
  call fastcc void @SET_BIT(ptr noundef %164, i32 noundef %183) #20
  %215 = add i32 %181, 1
  br label %216

216:                                              ; preds = %204, %196, %214, %190, %180
  %217 = phi i32 [ %181, %180 ], [ %181, %190 ], [ %215, %214 ], [ %181, %196 ], [ %181, %204 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %6) #20
  %218 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !32
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %180, !llvm.loop !78

220:                                              ; preds = %216
  %221 = icmp ugt i32 %217, 1
  br i1 %221, label %222, label %309

222:                                              ; preds = %220
  %223 = call i32 @sbitmap_first_set_bit(ptr noundef %164) #21
  %224 = load ptr, ptr %1, align 8, !tbaa !6
  %225 = call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %224, i32 noundef %223) #20
  %226 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %227 = icmp eq ptr %226, null
  br i1 %227, label %237, label %228

228:                                              ; preds = %222
  %229 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %230 = and i32 %229, 8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = call i64 @fwrite(ptr nonnull @.str.39, i64 10, i64 1, ptr nonnull %226)
  %234 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %235 = getelementptr inbounds %struct.operand_entry, ptr %225, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !13
  call void @print_generic_expr(ptr noundef %234, ptr noundef %236, i32 noundef 0) #21
  br label %237

237:                                              ; preds = %232, %228, %222
  %238 = getelementptr inbounds %struct.operand_entry, ptr %225, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !13
  %240 = getelementptr inbounds %struct.tree_common, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !23
  %242 = call ptr @create_tmp_var(ptr noundef %241, ptr noundef null) #21
  %243 = call zeroext i8 @add_referenced_var(ptr noundef %242) #21
  %244 = getelementptr inbounds %struct.oecount_s, ptr %171, i64 0, i32 1
  %245 = load i32, ptr %244, align 4, !tbaa !70
  %246 = getelementptr inbounds %struct.oecount_s, ptr %171, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !73
  call fastcc void @zero_one_operation(ptr noundef nonnull %238, i32 noundef %245, ptr noundef %247) #20
  %248 = add nsw i32 %223, 1
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %6, ptr noundef %164, i32 noundef %248) #20
  %249 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !32
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %237
  %252 = load ptr, ptr %238, align 8, !tbaa !13
  br label %283

253:                                              ; preds = %237, %268
  %254 = load ptr, ptr %1, align 8, !tbaa !6
  %255 = load i32, ptr %5, align 4, !tbaa !18
  %256 = call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %254, i32 noundef %255) #20
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %258 = icmp eq ptr %257, null
  br i1 %258, label %268, label %259

259:                                              ; preds = %253
  %260 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %261 = and i32 %260, 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %259
  %264 = call i64 @fwrite(ptr nonnull @.str.40, i64 3, i64 1, ptr nonnull %257)
  %265 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %266 = getelementptr inbounds %struct.operand_entry, ptr %256, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !13
  call void @print_generic_expr(ptr noundef %265, ptr noundef %267, i32 noundef 0) #21
  br label %268

268:                                              ; preds = %263, %259, %253
  %269 = getelementptr inbounds %struct.operand_entry, ptr %256, i64 0, i32 1
  %270 = load i32, ptr %244, align 4, !tbaa !70
  %271 = load ptr, ptr %246, align 8, !tbaa !73
  call fastcc void @zero_one_operation(ptr noundef nonnull %269, i32 noundef %270, ptr noundef %271) #20
  %272 = load ptr, ptr %238, align 8, !tbaa !13
  %273 = load ptr, ptr %269, align 8, !tbaa !13
  %274 = call fastcc ptr @build_and_add_sum(ptr noundef %242, ptr noundef %272, ptr noundef %273, i32 noundef 63) #20
  %275 = load ptr, ptr %269, align 8, !tbaa !13
  %276 = getelementptr inbounds %struct.tree_common, ptr %275, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !23
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %279 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %277, ptr noundef %278) #21
  store ptr %279, ptr %269, align 8, !tbaa !13
  store i32 0, ptr %256, align 8, !tbaa !10
  %280 = call ptr @gimple_get_lhs(ptr noundef %274) #21
  store ptr %280, ptr %238, align 8, !tbaa !13
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %6) #20
  %281 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !32
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %253, !llvm.loop !79

283:                                              ; preds = %268, %251
  %284 = phi ptr [ %252, %251 ], [ %280, %268 ]
  %285 = load ptr, ptr %246, align 8, !tbaa !73
  %286 = load i32, ptr %244, align 4, !tbaa !70
  %287 = call fastcc ptr @build_and_add_sum(ptr noundef %242, ptr noundef %284, ptr noundef %285, i32 noundef %286) #20
  %288 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %289 = icmp eq ptr %288, null
  br i1 %289, label %303, label %290

290:                                              ; preds = %283
  %291 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %292 = and i32 %291, 8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %290
  %295 = load i32, ptr %244, align 4, !tbaa !70
  %296 = icmp eq i32 %295, 65
  %297 = select i1 %296, ptr @.str.36, ptr @.str.37
  %298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %288, ptr noundef nonnull @.str.41, ptr noundef nonnull %297) #20
  %299 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %300 = load ptr, ptr %246, align 8, !tbaa !73
  call void @print_generic_expr(ptr noundef %299, ptr noundef %300, i32 noundef 0) #21
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %302 = call i32 @fputc(i32 10, ptr %301)
  br label %303

303:                                              ; preds = %294, %290, %283
  %304 = call fastcc ptr @gimple_assign_lhs(ptr noundef %287) #20
  store ptr %304, ptr %238, align 8, !tbaa !13
  %305 = call fastcc i64 @get_rank(ptr noundef %304) #20
  %306 = trunc i64 %305 to i32
  store i32 %306, ptr %225, align 8, !tbaa !10
  %307 = sext i32 %223 to i64
  %308 = getelementptr inbounds ptr, ptr %73, i64 %307
  call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef %308) #20
  br label %309

309:                                              ; preds = %174, %220, %303
  %310 = phi i8 [ 1, %303 ], [ %170, %220 ], [ %170, %174 ]
  %311 = load ptr, ptr @cvec, align 8
  call fastcc void @VEC_oecount_base_pop(ptr noundef %311) #20
  %312 = call fastcc i32 @VEC_oecount_base_length(ptr noundef %311) #20
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %168

314:                                              ; preds = %309, %168, %163
  %315 = phi i8 [ 0, %163 ], [ %170, %168 ], [ %310, %309 ]
  %316 = load ptr, ptr %1, align 8, !tbaa !6
  %317 = call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %316) #20
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %327, label %319

319:                                              ; preds = %314, %319
  %320 = phi i64 [ %322, %319 ], [ 0, %314 ]
  %321 = getelementptr inbounds ptr, ptr %73, i64 %320
  call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef %321) #20
  %322 = add nuw nsw i64 %320, 1
  %323 = load ptr, ptr %1, align 8, !tbaa !6
  %324 = call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %323) #20
  %325 = zext i32 %324 to i64
  %326 = icmp ult i64 %322, %325
  br i1 %326, label %319, label %327, !llvm.loop !80

327:                                              ; preds = %319, %314
  call void @free(ptr noundef %73) #20
  call fastcc void @VEC_oecount_heap_free() #20
  %328 = load ptr, ptr %15, align 8, !tbaa !68
  call void @free(ptr noundef %328) #20
  call void @free(ptr noundef %15) #20
  %329 = load ptr, ptr %164, align 8, !tbaa !68
  call void @free(ptr noundef %329) #20
  call void @free(ptr noundef %164) #20
  br label %330

330:                                              ; preds = %3, %327, %49
  %331 = phi i8 [ 0, %49 ], [ %315, %327 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i8 %331
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_operand_entry_t_base_last(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !16
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_visited_stmt_chain(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %24

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %0, %1 ]
  %9 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %8) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %13) #20, !range !32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = call fastcc zeroext i8 @gimple_visited_p(ptr noundef %13) #20, !range !32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %13) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %13) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef %13) #21
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %7, label %24

24:                                               ; preds = %7, %19, %16, %11, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_expr_tree(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %10 = add i32 %1, 3
  %11 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %2) #20
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = add i32 %1, 2
  br label %83

15:                                               ; preds = %4
  %16 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %2, i32 noundef %1) #20
  %17 = add i32 %1, 1
  %18 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %2, i32 noundef %17) #20
  %19 = add i32 %1, 2
  %20 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %2, i32 noundef %19) #20
  %21 = load i32, ptr %16, align 8, !tbaa !10
  %22 = load i32, ptr %18, align 8, !tbaa !10
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, ptr %20, align 8
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %24, %15
  %28 = getelementptr inbounds %struct.operand_entry, ptr %20, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr noundef %29) #20, !range !32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.operand_entry, ptr %16, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr noundef %34) #20, !range !32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.operand_entry, ptr %18, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr noundef %39) #20, !range !32
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, ptr %20, align 8, !tbaa.struct !81
  %44 = load i32, ptr %16, align 8, !tbaa !10
  br label %45

45:                                               ; preds = %42, %24
  %46 = phi i32 [ %44, %42 ], [ %21, %24 ]
  %47 = phi i32 [ %43, %42 ], [ %25, %24 ]
  %48 = getelementptr inbounds i8, ptr %20, i64 8
  %49 = load ptr, ptr %48, align 8, !tbaa.struct !82
  %50 = getelementptr inbounds %struct.operand_entry, ptr %16, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !13
  store ptr %51, ptr %48, align 8, !tbaa !13
  store i32 %46, ptr %20, align 8, !tbaa !10
  store ptr %49, ptr %50, align 8, !tbaa !13
  store i32 %47, ptr %16, align 8, !tbaa !10
  br label %83

52:                                               ; preds = %37, %32, %27
  %53 = load i32, ptr %16, align 8, !tbaa !10
  %54 = load i32, ptr %20, align 8, !tbaa !10
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, ptr %18, align 8
  %58 = icmp eq i32 %57, %53
  br i1 %58, label %59, label %76

59:                                               ; preds = %56, %52
  %60 = getelementptr inbounds %struct.operand_entry, ptr %18, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr noundef %61) #20, !range !32
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.operand_entry, ptr %16, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr noundef %66) #20, !range !32
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load ptr, ptr %28, align 8, !tbaa !13
  %71 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr noundef %70) #20, !range !32
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, ptr %18, align 8, !tbaa.struct !81
  %75 = load i32, ptr %16, align 8, !tbaa !10
  br label %76

76:                                               ; preds = %73, %56
  %77 = phi i32 [ %75, %73 ], [ %53, %56 ]
  %78 = phi i32 [ %74, %73 ], [ %57, %56 ]
  %79 = getelementptr inbounds i8, ptr %18, i64 8
  %80 = load ptr, ptr %79, align 8, !tbaa.struct !82
  %81 = getelementptr inbounds %struct.operand_entry, ptr %16, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !13
  store ptr %82, ptr %79, align 8, !tbaa !13
  store i32 %77, ptr %18, align 8, !tbaa !10
  store ptr %80, ptr %81, align 8, !tbaa !13
  store i32 %78, ptr %16, align 8, !tbaa !10
  br label %83

83:                                               ; preds = %13, %45, %76, %69, %64, %59
  %84 = phi i32 [ %14, %13 ], [ %19, %45 ], [ %19, %76 ], [ %19, %69 ], [ %19, %64 ], [ %19, %59 ]
  %85 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %2) #20
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %129

87:                                               ; preds = %83
  %88 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %2, i32 noundef %1) #20
  %89 = add i32 %1, 1
  %90 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %2, i32 noundef %89) #20
  %91 = getelementptr inbounds %struct.operand_entry, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !13
  %93 = icmp eq ptr %8, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.operand_entry, ptr %90, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !13
  %97 = icmp eq ptr %9, %96
  br i1 %97, label %179, label %98

98:                                               ; preds = %94, %87
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr nonnull %99)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %107, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %108 = load ptr, ptr %91, align 8, !tbaa !13
  br label %109

109:                                              ; preds = %105, %101, %98
  %110 = phi ptr [ %108, %105 ], [ %92, %101 ], [ %92, %98 ]
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %110) #20
  %111 = getelementptr inbounds %struct.operand_entry, ptr %90, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !13
  tail call fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %112) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %113 = load ptr, ptr %91, align 8, !tbaa !13
  %114 = icmp eq ptr %8, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %111, align 8, !tbaa !13
  %117 = icmp eq ptr %8, %116
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call fastcc void @remove_visited_stmt_chain(ptr noundef %8) #20
  br label %119

119:                                              ; preds = %118, %115, %109
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %121 = icmp eq ptr %120, null
  br i1 %121, label %179, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %179, label %126

126:                                              ; preds = %122
  %127 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr nonnull %120)
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %128, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  br label %179

129:                                              ; preds = %83
  %130 = icmp ult i32 %84, %85
  br i1 %130, label %132, label %131

131:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1395, ptr noundef nonnull @.str.4) #21
  br label %132

132:                                              ; preds = %129, %131
  %133 = tail call fastcc ptr @VEC_operand_entry_t_base_index(ptr noundef %2, i32 noundef %1) #20
  %134 = getelementptr inbounds %struct.operand_entry, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !13
  %136 = icmp eq ptr %135, %9
  br i1 %136, label %174, label %137

137:                                              ; preds = %132
  %138 = icmp eq i8 %3, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #21
  %140 = call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %2) #20
  %141 = sub i32 %140, %1
  %142 = add i32 %141, -2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %139, %144
  %145 = phi i32 [ %147, %144 ], [ %142, %139 ]
  %146 = phi ptr [ %150, %144 ], [ %0, %139 ]
  %147 = add i32 %145, -1
  %148 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %146) #20
  %149 = getelementptr inbounds %struct.tree_ssa_name, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %150) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_move_before(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  call fastcc void @gsi_prev(ptr noundef nonnull %5) #20
  %151 = icmp eq i32 %147, 0
  br i1 %151, label %152, label %144, !llvm.loop !83

152:                                              ; preds = %144, %139
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %153

153:                                              ; preds = %152, %137
  %154 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %158 = and i32 %157, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr nonnull %154)
  %162 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %162, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  br label %163

163:                                              ; preds = %160, %156, %153
  %164 = load ptr, ptr %134, align 8, !tbaa !13
  call fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %164) #20
  call fastcc void @update_stmt(ptr noundef %0) #20
  %165 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %169 = and i32 %168, 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr nonnull %165)
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %173, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  br label %174

174:                                              ; preds = %163, %167, %171, %132
  %175 = phi i8 [ 1, %171 ], [ 1, %167 ], [ 1, %163 ], [ %3, %132 ]
  %176 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !23
  %178 = add i32 %1, 1
  call fastcc void @rewrite_expr_tree(ptr noundef %177, i32 noundef %178, ptr noundef %2, i8 noundef zeroext %175) #20
  br label %179

179:                                              ; preds = %94, %126, %122, %119, %174
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_operand_entry_t_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %4, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_ops_vec(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !6
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !13
  %6 = tail call fastcc i64 @get_rank(ptr noundef %1) #20
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %4, align 8, !tbaa !10
  tail call fastcc void @VEC_operand_entry_t_heap_safe_push(ptr noundef %0, ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @swap_tree_operands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 2) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearize_expr(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !33
  %11 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %0) #20
  %12 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %6, i32 noundef %10, ptr noundef %11) #20, !range !32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %9, i32 noundef %10, ptr noundef %11) #20, !range !32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1456, ptr noundef nonnull @.str.4) #21
  br label %18

18:                                               ; preds = %14, %17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %9) #21
  call void @gsi_move_before(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %19 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %9) #20
  call fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %19) #20
  %20 = call fastcc ptr @gimple_assign_lhs(ptr noundef %6) #20
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %9, ptr noundef %20) #20
  %21 = call fastcc ptr @gimple_assign_lhs(ptr noundef %9) #20
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %21) #20
  %22 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi ptr [ %29, %26 ], [ null, %18 ]
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr nonnull %32)
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %40, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  br label %41

41:                                               ; preds = %38, %34, %30
  %42 = load i32, ptr @reassociate_stats, align 4, !tbaa !35
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @reassociate_stats, align 4, !tbaa !35
  call fastcc void @update_stmt(ptr noundef %9) #20
  call fastcc void @update_stmt(ptr noundef %6) #20
  call fastcc void @update_stmt(ptr noundef %0) #20
  call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext 1) #20
  call fastcc void @gimple_set_visited(ptr noundef %6, i8 noundef zeroext 1) #20
  call fastcc void @gimple_set_visited(ptr noundef %9, i8 noundef zeroext 1) #20
  %44 = icmp eq ptr %31, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = call fastcc zeroext i8 @is_reassociable_op(ptr noundef nonnull %31, i32 noundef %10, ptr noundef %11) #20, !range !32
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call fastcc void @linearize_expr(ptr noundef %0) #20
  br label %49

49:                                               ; preds = %48, %45, %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @get_rank(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %121

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %121

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp ne i64 %12, 34
  %14 = and i64 %5, 4294967296
  %15 = icmp eq i64 %14, 0
  %16 = or i1 %15, %13
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = tail call fastcc i64 @find_operand_rank(ptr noundef nonnull %0) #20
  br label %121

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = tail call fastcc ptr @gimple_bb(ptr noundef %21) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %121, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %21) #20, !range !32
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @gimple_vdef(ptr noundef %21) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27, %24
  %31 = load ptr, ptr @bb_rank, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !86
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %31, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !27
  br label %121

37:                                               ; preds = %27
  %38 = tail call fastcc i64 @find_operand_rank(ptr noundef nonnull %0) #20
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %121

40:                                               ; preds = %37
  %41 = load ptr, ptr @bb_rank, align 8, !tbaa !6
  %42 = tail call fastcc ptr @gimple_bb(ptr noundef %21) #20
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !86
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %41, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !27
  %48 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %21) #21
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %40
  %51 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %52 = tail call fastcc i32 @tree_operand_length(ptr noundef %51) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %54
  %57 = zext nneg i32 %52 to i64
  br label %63

58:                                               ; preds = %50
  %59 = tail call fastcc i64 @get_rank(ptr noundef %51) #20
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %105, label %61

61:                                               ; preds = %58
  %62 = tail call fastcc i64 @get_rank(ptr noundef %51) #20
  br label %105

63:                                               ; preds = %56, %77
  %64 = phi i64 [ 0, %56 ], [ %79, %77 ]
  %65 = phi i64 [ 0, %56 ], [ %78, %77 ]
  %66 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !23
  %68 = icmp eq ptr %67, null
  %69 = icmp eq i64 %65, %47
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %105, label %71

71:                                               ; preds = %63
  %72 = tail call fastcc i64 @get_rank(ptr noundef nonnull %67) #20
  %73 = icmp sgt i64 %65, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %66, align 8, !tbaa !23
  %76 = tail call fastcc i64 @get_rank(ptr noundef %75) #20
  br label %77

77:                                               ; preds = %71, %74
  %78 = phi i64 [ %76, %74 ], [ %65, %71 ]
  %79 = add nuw nsw i64 %64, 1
  %80 = icmp eq i64 %79, %57
  br i1 %80, label %105, label %63, !llvm.loop !87

81:                                               ; preds = %40
  %82 = tail call fastcc i32 @gimple_num_ops(ptr noundef %21) #20
  %83 = icmp sgt i32 %82, 1
  %84 = icmp ne i64 %47, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %105

86:                                               ; preds = %81, %99
  %87 = phi i32 [ %101, %99 ], [ 1, %81 ]
  %88 = phi i64 [ %100, %99 ], [ 0, %81 ]
  %89 = tail call fastcc ptr @gimple_op(ptr noundef %21, i32 noundef %87) #20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.4) #21
  br label %92

92:                                               ; preds = %86, %91
  %93 = tail call fastcc ptr @gimple_op(ptr noundef %21, i32 noundef %87) #20
  %94 = tail call fastcc i64 @get_rank(ptr noundef %93) #20
  %95 = icmp sgt i64 %88, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = tail call fastcc ptr @gimple_op(ptr noundef %21, i32 noundef %87) #20
  %98 = tail call fastcc i64 @get_rank(ptr noundef %97) #20
  br label %99

99:                                               ; preds = %92, %96
  %100 = phi i64 [ %98, %96 ], [ %88, %92 ]
  %101 = add nuw nsw i32 %87, 1
  %102 = icmp slt i32 %101, %82
  %103 = icmp ne i64 %100, %47
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %86, label %105, !llvm.loop !88

105:                                              ; preds = %77, %63, %99, %54, %81, %58, %61
  %106 = phi i64 [ %62, %61 ], [ 0, %58 ], [ 0, %81 ], [ 0, %54 ], [ %100, %99 ], [ %78, %77 ], [ %65, %63 ]
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr nonnull %107)
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %115, ptr noundef nonnull %0, i32 noundef 0) #21
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %117 = add nsw i64 %106, 1
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.12, i64 noundef %117) #20
  br label %119

119:                                              ; preds = %113, %109, %105
  %120 = add nsw i64 %106, 1
  tail call fastcc void @insert_operand_rank(ptr noundef nonnull %0, i64 noundef %120) #20
  br label %121

121:                                              ; preds = %4, %17, %30, %119, %19, %37, %1
  %122 = phi i64 [ 0, %1 ], [ %18, %17 ], [ %36, %30 ], [ %120, %119 ], [ 0, %19 ], [ %38, %37 ], [ 0, %4 ]
  ret i64 %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_operand_entry_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_operand_entry_t_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @find_operand_rank(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @operand_rank, align 8, !tbaa !6
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !6
  %7 = ptrtoint ptr %6 to i64
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %7, %5 ], [ -1, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !32
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !18
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !23
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !23
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_operand_entry_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_operand_entry_t_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_operand_entry_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8, !tbaa !16
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !16
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_operand_entry_t_base_space(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = load i32, ptr %0, align 8, !tbaa !16
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @constant_type(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  %6 = add i16 %5, -6
  %7 = icmp ult i16 %6, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = zext nneg i16 %6 to i64
  %10 = getelementptr inbounds [4 x i32], ptr @switch.table.constant_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi i32 [ %11, %8 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_operand_entry_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_operand_entry_t_base_pop(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !16
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_using_constants(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = tail call fastcc ptr @VEC_operand_entry_t_base_last(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = load i32, ptr %4, align 8, !tbaa !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %1067

11:                                               ; preds = %2
  %12 = load i64, ptr %8, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %1067 [
    i16 6, label %20
    i16 7, label %20
    i16 8, label %20
    i16 9, label %20
    i16 13, label %14
    i16 14, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 9
  br i1 %19, label %20, label %1067

20:                                               ; preds = %11, %11, %11, %11, %14
  switch i32 %0, label %1067 [
    i32 89, label %21
    i32 87, label %66
    i32 65, label %111
    i32 88, label %1025
    i32 63, label %1025
    i32 64, label %1025
  ]

21:                                               ; preds = %20
  %22 = tail call i32 @integer_zerop(ptr noundef nonnull %6) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !6
  %26 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %25) #20
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %1067, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 34, i64 1, ptr nonnull %29)
  %37 = load ptr, ptr %1, align 8, !tbaa !6
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = phi ptr [ %37, %35 ], [ %25, %31 ], [ %25, %28 ]
  %40 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %39) #20
  %41 = add i32 %40, -1
  %42 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %43 = add i32 %41, %42
  store i32 %43, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  tail call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %4) #20
  br label %1067

44:                                               ; preds = %21
  %45 = load ptr, ptr %5, align 8, !tbaa !13
  %46 = tail call i32 @integer_all_onesp(ptr noundef %45) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %1067, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 8, !tbaa !6
  %50 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %49) #20
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %1067, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr nonnull %53)
  %61 = load ptr, ptr %1, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %59, %55, %52
  %63 = phi ptr [ %61, %59 ], [ %49, %55 ], [ %49, %52 ]
  tail call fastcc void @VEC_operand_entry_t_base_pop(ptr noundef %63) #20
  %64 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  br label %1067

66:                                               ; preds = %20
  %67 = tail call i32 @integer_all_onesp(ptr noundef nonnull %6) #21
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %1, align 8, !tbaa !6
  %71 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %70) #20
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %1067, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 35, i64 1, ptr nonnull %74)
  %82 = load ptr, ptr %1, align 8, !tbaa !6
  br label %83

83:                                               ; preds = %80, %76, %73
  %84 = phi ptr [ %82, %80 ], [ %70, %76 ], [ %70, %73 ]
  %85 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %84) #20
  %86 = add i32 %85, -1
  %87 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %88 = add i32 %86, %87
  store i32 %88, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  tail call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %4) #20
  br label %1067

89:                                               ; preds = %66
  %90 = load ptr, ptr %5, align 8, !tbaa !13
  %91 = tail call i32 @integer_zerop(ptr noundef %90) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %1067, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %1, align 8, !tbaa !6
  %95 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %94) #20
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %1067, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 20, i64 1, ptr nonnull %98)
  %106 = load ptr, ptr %1, align 8, !tbaa !6
  br label %107

107:                                              ; preds = %104, %100, %97
  %108 = phi ptr [ %106, %104 ], [ %94, %100 ], [ %94, %97 ]
  tail call fastcc void @VEC_operand_entry_t_base_pop(ptr noundef %108) #20
  %109 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  br label %1067

111:                                              ; preds = %20
  %112 = tail call i32 @integer_zerop(ptr noundef nonnull %6) #21
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %688

114:                                              ; preds = %111
  %115 = load i64, ptr %8, align 8
  %116 = trunc i64 %115 to i16
  switch i16 %116, label %708 [
    i16 9, label %123
    i16 13, label %117
    i16 14, label %117
  ]

117:                                              ; preds = %114, %114
  %118 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !23
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 9
  br i1 %122, label %123, label %708

123:                                              ; preds = %114, %117
  %124 = and i64 %115, 65535
  %125 = icmp eq i64 %124, 14
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %128 = load i64, ptr %8, align 8
  br label %134

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br label %134

134:                                              ; preds = %129, %126
  %135 = phi i64 [ %128, %126 ], [ %115, %129 ]
  %136 = phi i32 [ %127, %126 ], [ %133, %129 ]
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !23
  %140 = icmp eq i8 %139, 8
  br i1 %140, label %195, label %141

141:                                              ; preds = %134
  %142 = and i64 %135, 65535
  %143 = icmp eq i64 %142, 14
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %146 = load i64, ptr %8, align 8
  br label %152

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %152

152:                                              ; preds = %147, %144
  %153 = phi i64 [ %146, %144 ], [ %135, %147 ]
  %154 = phi i32 [ %145, %144 ], [ %151, %147 ]
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !23
  %158 = icmp eq i8 %157, 9
  br i1 %158, label %195, label %159

159:                                              ; preds = %152
  %160 = and i64 %153, 65535
  %161 = icmp eq i64 %160, 14
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %164 = load i64, ptr %8, align 8
  br label %170

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  br label %170

170:                                              ; preds = %165, %162
  %171 = phi i64 [ %164, %162 ], [ %153, %165 ]
  %172 = phi i32 [ %163, %162 ], [ %169, %165 ]
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !23
  %176 = icmp eq i8 %175, 11
  br i1 %176, label %195, label %177

177:                                              ; preds = %170
  %178 = and i64 %171, 65535
  %179 = icmp eq i64 %178, 14
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %182 = load i64, ptr %8, align 8
  br label %188

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  br label %188

188:                                              ; preds = %183, %180
  %189 = phi i64 [ %182, %180 ], [ %171, %183 ]
  %190 = phi i32 [ %181, %180 ], [ %187, %183 ]
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !23
  %194 = icmp eq i8 %193, 17
  br i1 %194, label %195, label %404

195:                                              ; preds = %188, %170, %152, %134
  %196 = phi i64 [ %171, %170 ], [ %153, %152 ], [ %135, %134 ], [ %189, %188 ]
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %201 = load i64, ptr %8, align 8
  br label %207

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %202, %199
  %208 = phi i64 [ %201, %199 ], [ %196, %202 ]
  %209 = phi i32 [ %200, %199 ], [ %206, %202 ]
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !23
  %213 = icmp eq i8 %212, 8
  br i1 %213, label %232, label %214

214:                                              ; preds = %207
  %215 = and i64 %208, 65535
  %216 = icmp eq i64 %215, 14
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %219 = load i64, ptr %8, align 8
  br label %225

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = lshr i32 %222, 16
  %224 = and i32 %223, 255
  br label %225

225:                                              ; preds = %220, %217
  %226 = phi i64 [ %219, %217 ], [ %208, %220 ]
  %227 = phi i32 [ %218, %217 ], [ %224, %220 ]
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !23
  %231 = icmp eq i8 %230, 9
  br i1 %231, label %232, label %243

232:                                              ; preds = %225, %207
  %233 = phi i64 [ %226, %225 ], [ %208, %207 ]
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 14
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %259

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = lshr i32 %240, 16
  %242 = and i32 %241, 255
  br label %259

243:                                              ; preds = %225
  %244 = and i64 %226, 65535
  %245 = icmp eq i64 %244, 14
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %253

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %250 = load i32, ptr %249, align 4
  %251 = lshr i32 %250, 16
  %252 = and i32 %251, 255
  br label %253

253:                                              ; preds = %248, %246
  %254 = phi i32 [ %247, %246 ], [ %252, %248 ]
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !23
  %258 = zext i8 %257 to i32
  br label %259

259:                                              ; preds = %236, %238, %253
  %260 = phi i32 [ %258, %253 ], [ %237, %236 ], [ %242, %238 ]
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !23
  %264 = icmp eq i8 %263, 9
  %265 = load i64, ptr %8, align 8
  %266 = and i64 %265, 65535
  %267 = icmp eq i64 %266, 14
  br i1 %264, label %268, label %329

268:                                              ; preds = %259
  br i1 %267, label %269, label %272

269:                                              ; preds = %268
  %270 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %271 = load i64, ptr %8, align 8
  br label %277

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %274 = load i32, ptr %273, align 4
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  br label %277

277:                                              ; preds = %272, %269
  %278 = phi i64 [ %271, %269 ], [ %265, %272 ]
  %279 = phi i32 [ %270, %269 ], [ %276, %272 ]
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !23
  %283 = icmp eq i8 %282, 8
  br i1 %283, label %302, label %284

284:                                              ; preds = %277
  %285 = and i64 %278, 65535
  %286 = icmp eq i64 %285, 14
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %289 = load i64, ptr %8, align 8
  br label %295

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %292 = load i32, ptr %291, align 4
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 255
  br label %295

295:                                              ; preds = %290, %287
  %296 = phi i64 [ %289, %287 ], [ %278, %290 ]
  %297 = phi i32 [ %288, %287 ], [ %294, %290 ]
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !23
  %301 = icmp eq i8 %300, 9
  br i1 %301, label %302, label %313

302:                                              ; preds = %295, %277
  %303 = phi i64 [ %296, %295 ], [ %278, %277 ]
  %304 = and i64 %303, 65535
  %305 = icmp eq i64 %304, 14
  br i1 %305, label %306, label %308

306:                                              ; preds = %302
  %307 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %390

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %310 = load i32, ptr %309, align 4
  %311 = lshr i32 %310, 16
  %312 = and i32 %311, 255
  br label %390

313:                                              ; preds = %295
  %314 = and i64 %296, 65535
  %315 = icmp eq i64 %314, 14
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %323

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %320 = load i32, ptr %319, align 4
  %321 = lshr i32 %320, 16
  %322 = and i32 %321, 255
  br label %323

323:                                              ; preds = %318, %316
  %324 = phi i32 [ %317, %316 ], [ %322, %318 ]
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !23
  %328 = zext i8 %327 to i32
  br label %390

329:                                              ; preds = %259
  br i1 %267, label %330, label %333

330:                                              ; preds = %329
  %331 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %332 = load i64, ptr %8, align 8
  br label %338

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %335 = load i32, ptr %334, align 4
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  br label %338

338:                                              ; preds = %333, %330
  %339 = phi i64 [ %332, %330 ], [ %265, %333 ]
  %340 = phi i32 [ %331, %330 ], [ %337, %333 ]
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !23
  %344 = icmp eq i8 %343, 8
  br i1 %344, label %363, label %345

345:                                              ; preds = %338
  %346 = and i64 %339, 65535
  %347 = icmp eq i64 %346, 14
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %350 = load i64, ptr %8, align 8
  br label %356

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %353 = load i32, ptr %352, align 4
  %354 = lshr i32 %353, 16
  %355 = and i32 %354, 255
  br label %356

356:                                              ; preds = %351, %348
  %357 = phi i64 [ %350, %348 ], [ %339, %351 ]
  %358 = phi i32 [ %349, %348 ], [ %355, %351 ]
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !23
  %362 = icmp eq i8 %361, 9
  br i1 %362, label %363, label %374

363:                                              ; preds = %356, %338
  %364 = phi i64 [ %357, %356 ], [ %339, %338 ]
  %365 = and i64 %364, 65535
  %366 = icmp eq i64 %365, 14
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %390

369:                                              ; preds = %363
  %370 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %371 = load i32, ptr %370, align 4
  %372 = lshr i32 %371, 16
  %373 = and i32 %372, 255
  br label %390

374:                                              ; preds = %356
  %375 = and i64 %357, 65535
  %376 = icmp eq i64 %375, 14
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  %378 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %384

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %381 = load i32, ptr %380, align 4
  %382 = lshr i32 %381, 16
  %383 = and i32 %382, 255
  br label %384

384:                                              ; preds = %379, %377
  %385 = phi i32 [ %378, %377 ], [ %383, %379 ]
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !23
  %389 = zext i8 %388 to i32
  br label %390

390:                                              ; preds = %384, %369, %367, %323, %308, %306
  %391 = phi i32 [ %328, %323 ], [ %307, %306 ], [ %312, %308 ], [ %389, %384 ], [ %368, %367 ], [ %373, %369 ]
  %392 = add i32 %391, -38
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !6
  %396 = getelementptr inbounds %struct.real_format, ptr %395, i64 0, i32 11
  %397 = load i8, ptr %396, align 2, !tbaa !90
  %398 = icmp eq i8 %397, 0
  %399 = load i32, ptr @flag_finite_math_only, align 4
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %398, i1 true, i1 %400
  br i1 %401, label %402, label %708

402:                                              ; preds = %390
  %403 = load i64, ptr %8, align 8
  br label %404

404:                                              ; preds = %402, %188
  %405 = phi i64 [ %403, %402 ], [ %189, %188 ]
  %406 = and i64 %405, 65535
  %407 = icmp eq i64 %406, 14
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %410 = load i64, ptr %8, align 8
  br label %416

411:                                              ; preds = %404
  %412 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %413 = load i32, ptr %412, align 4
  %414 = lshr i32 %413, 16
  %415 = and i32 %414, 255
  br label %416

416:                                              ; preds = %411, %408
  %417 = phi i64 [ %410, %408 ], [ %405, %411 ]
  %418 = phi i32 [ %409, %408 ], [ %415, %411 ]
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !23
  %422 = icmp eq i8 %421, 8
  br i1 %422, label %477, label %423

423:                                              ; preds = %416
  %424 = and i64 %417, 65535
  %425 = icmp eq i64 %424, 14
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %428 = load i64, ptr %8, align 8
  br label %434

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %431 = load i32, ptr %430, align 4
  %432 = lshr i32 %431, 16
  %433 = and i32 %432, 255
  br label %434

434:                                              ; preds = %429, %426
  %435 = phi i64 [ %428, %426 ], [ %417, %429 ]
  %436 = phi i32 [ %427, %426 ], [ %433, %429 ]
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !23
  %440 = icmp eq i8 %439, 9
  br i1 %440, label %477, label %441

441:                                              ; preds = %434
  %442 = and i64 %435, 65535
  %443 = icmp eq i64 %442, 14
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %446 = load i64, ptr %8, align 8
  br label %452

447:                                              ; preds = %441
  %448 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %449 = load i32, ptr %448, align 4
  %450 = lshr i32 %449, 16
  %451 = and i32 %450, 255
  br label %452

452:                                              ; preds = %447, %444
  %453 = phi i64 [ %446, %444 ], [ %435, %447 ]
  %454 = phi i32 [ %445, %444 ], [ %451, %447 ]
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !23
  %458 = icmp eq i8 %457, 11
  br i1 %458, label %477, label %459

459:                                              ; preds = %452
  %460 = and i64 %453, 65535
  %461 = icmp eq i64 %460, 14
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  %463 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %469

464:                                              ; preds = %459
  %465 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %466 = load i32, ptr %465, align 4
  %467 = lshr i32 %466, 16
  %468 = and i32 %467, 255
  br label %469

469:                                              ; preds = %464, %462
  %470 = phi i32 [ %463, %462 ], [ %468, %464 ]
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !23
  %474 = icmp eq i8 %473, 17
  br i1 %474, label %475, label %684

475:                                              ; preds = %469
  %476 = load i64, ptr %8, align 8
  br label %477

477:                                              ; preds = %475, %452, %434, %416
  %478 = phi i64 [ %476, %475 ], [ %453, %452 ], [ %435, %434 ], [ %417, %416 ]
  %479 = and i64 %478, 65535
  %480 = icmp eq i64 %479, 14
  br i1 %480, label %481, label %484

481:                                              ; preds = %477
  %482 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %483 = load i64, ptr %8, align 8
  br label %489

484:                                              ; preds = %477
  %485 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %486 = load i32, ptr %485, align 4
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  br label %489

489:                                              ; preds = %484, %481
  %490 = phi i64 [ %483, %481 ], [ %478, %484 ]
  %491 = phi i32 [ %482, %481 ], [ %488, %484 ]
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %492
  %494 = load i8, ptr %493, align 1, !tbaa !23
  %495 = icmp eq i8 %494, 8
  br i1 %495, label %514, label %496

496:                                              ; preds = %489
  %497 = and i64 %490, 65535
  %498 = icmp eq i64 %497, 14
  br i1 %498, label %499, label %502

499:                                              ; preds = %496
  %500 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %501 = load i64, ptr %8, align 8
  br label %507

502:                                              ; preds = %496
  %503 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %504 = load i32, ptr %503, align 4
  %505 = lshr i32 %504, 16
  %506 = and i32 %505, 255
  br label %507

507:                                              ; preds = %502, %499
  %508 = phi i64 [ %501, %499 ], [ %490, %502 ]
  %509 = phi i32 [ %500, %499 ], [ %506, %502 ]
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !23
  %513 = icmp eq i8 %512, 9
  br i1 %513, label %514, label %525

514:                                              ; preds = %507, %489
  %515 = phi i64 [ %508, %507 ], [ %490, %489 ]
  %516 = and i64 %515, 65535
  %517 = icmp eq i64 %516, 14
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %541

520:                                              ; preds = %514
  %521 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %522 = load i32, ptr %521, align 4
  %523 = lshr i32 %522, 16
  %524 = and i32 %523, 255
  br label %541

525:                                              ; preds = %507
  %526 = and i64 %508, 65535
  %527 = icmp eq i64 %526, 14
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  %529 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %535

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %532 = load i32, ptr %531, align 4
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  br label %535

535:                                              ; preds = %530, %528
  %536 = phi i32 [ %529, %528 ], [ %534, %530 ]
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %537
  %539 = load i8, ptr %538, align 1, !tbaa !23
  %540 = zext i8 %539 to i32
  br label %541

541:                                              ; preds = %518, %520, %535
  %542 = phi i32 [ %540, %535 ], [ %519, %518 ], [ %524, %520 ]
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !23
  %546 = icmp eq i8 %545, 9
  %547 = load i64, ptr %8, align 8
  %548 = and i64 %547, 65535
  %549 = icmp eq i64 %548, 14
  br i1 %546, label %550, label %611

550:                                              ; preds = %541
  br i1 %549, label %551, label %554

551:                                              ; preds = %550
  %552 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %553 = load i64, ptr %8, align 8
  br label %559

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %556 = load i32, ptr %555, align 4
  %557 = lshr i32 %556, 16
  %558 = and i32 %557, 255
  br label %559

559:                                              ; preds = %554, %551
  %560 = phi i64 [ %553, %551 ], [ %547, %554 ]
  %561 = phi i32 [ %552, %551 ], [ %558, %554 ]
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %562
  %564 = load i8, ptr %563, align 1, !tbaa !23
  %565 = icmp eq i8 %564, 8
  br i1 %565, label %584, label %566

566:                                              ; preds = %559
  %567 = and i64 %560, 65535
  %568 = icmp eq i64 %567, 14
  br i1 %568, label %569, label %572

569:                                              ; preds = %566
  %570 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %571 = load i64, ptr %8, align 8
  br label %577

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %574 = load i32, ptr %573, align 4
  %575 = lshr i32 %574, 16
  %576 = and i32 %575, 255
  br label %577

577:                                              ; preds = %572, %569
  %578 = phi i64 [ %571, %569 ], [ %560, %572 ]
  %579 = phi i32 [ %570, %569 ], [ %576, %572 ]
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %580
  %582 = load i8, ptr %581, align 1, !tbaa !23
  %583 = icmp eq i8 %582, 9
  br i1 %583, label %584, label %595

584:                                              ; preds = %577, %559
  %585 = phi i64 [ %578, %577 ], [ %560, %559 ]
  %586 = and i64 %585, 65535
  %587 = icmp eq i64 %586, 14
  br i1 %587, label %588, label %590

588:                                              ; preds = %584
  %589 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %672

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %592 = load i32, ptr %591, align 4
  %593 = lshr i32 %592, 16
  %594 = and i32 %593, 255
  br label %672

595:                                              ; preds = %577
  %596 = and i64 %578, 65535
  %597 = icmp eq i64 %596, 14
  br i1 %597, label %598, label %600

598:                                              ; preds = %595
  %599 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %605

600:                                              ; preds = %595
  %601 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %602 = load i32, ptr %601, align 4
  %603 = lshr i32 %602, 16
  %604 = and i32 %603, 255
  br label %605

605:                                              ; preds = %600, %598
  %606 = phi i32 [ %599, %598 ], [ %604, %600 ]
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !23
  %610 = zext i8 %609 to i32
  br label %672

611:                                              ; preds = %541
  br i1 %549, label %612, label %615

612:                                              ; preds = %611
  %613 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %614 = load i64, ptr %8, align 8
  br label %620

615:                                              ; preds = %611
  %616 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %617 = load i32, ptr %616, align 4
  %618 = lshr i32 %617, 16
  %619 = and i32 %618, 255
  br label %620

620:                                              ; preds = %615, %612
  %621 = phi i64 [ %614, %612 ], [ %547, %615 ]
  %622 = phi i32 [ %613, %612 ], [ %619, %615 ]
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !23
  %626 = icmp eq i8 %625, 8
  br i1 %626, label %645, label %627

627:                                              ; preds = %620
  %628 = and i64 %621, 65535
  %629 = icmp eq i64 %628, 14
  br i1 %629, label %630, label %633

630:                                              ; preds = %627
  %631 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %632 = load i64, ptr %8, align 8
  br label %638

633:                                              ; preds = %627
  %634 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %635 = load i32, ptr %634, align 4
  %636 = lshr i32 %635, 16
  %637 = and i32 %636, 255
  br label %638

638:                                              ; preds = %633, %630
  %639 = phi i64 [ %632, %630 ], [ %621, %633 ]
  %640 = phi i32 [ %631, %630 ], [ %637, %633 ]
  %641 = zext i32 %640 to i64
  %642 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !23
  %644 = icmp eq i8 %643, 9
  br i1 %644, label %645, label %656

645:                                              ; preds = %638, %620
  %646 = phi i64 [ %639, %638 ], [ %621, %620 ]
  %647 = and i64 %646, 65535
  %648 = icmp eq i64 %647, 14
  br i1 %648, label %649, label %651

649:                                              ; preds = %645
  %650 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %672

651:                                              ; preds = %645
  %652 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %653 = load i32, ptr %652, align 4
  %654 = lshr i32 %653, 16
  %655 = and i32 %654, 255
  br label %672

656:                                              ; preds = %638
  %657 = and i64 %639, 65535
  %658 = icmp eq i64 %657, 14
  br i1 %658, label %659, label %661

659:                                              ; preds = %656
  %660 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %666

661:                                              ; preds = %656
  %662 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %663 = load i32, ptr %662, align 4
  %664 = lshr i32 %663, 16
  %665 = and i32 %664, 255
  br label %666

666:                                              ; preds = %661, %659
  %667 = phi i32 [ %660, %659 ], [ %665, %661 ]
  %668 = zext i32 %667 to i64
  %669 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !23
  %671 = zext i8 %670 to i32
  br label %672

672:                                              ; preds = %666, %651, %649, %605, %590, %588
  %673 = phi i32 [ %610, %605 ], [ %589, %588 ], [ %594, %590 ], [ %671, %666 ], [ %650, %649 ], [ %655, %651 ]
  %674 = add i32 %673, -38
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %675
  %677 = load ptr, ptr %676, align 8, !tbaa !6
  %678 = getelementptr inbounds %struct.real_format, ptr %677, i64 0, i32 14
  %679 = load i8, ptr %678, align 1, !tbaa !92
  %680 = icmp ne i8 %679, 0
  %681 = load i32, ptr @flag_signed_zeros, align 4
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %680, i1 %682, i1 false
  br i1 %683, label %708, label %684

684:                                              ; preds = %672, %469
  %685 = load ptr, ptr %5, align 8, !tbaa !13
  %686 = tail call i32 @real_zerop(ptr noundef %685) #21
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %708, label %688

688:                                              ; preds = %684, %111
  %689 = load ptr, ptr %1, align 8, !tbaa !6
  %690 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %689) #20
  %691 = icmp eq i32 %690, 1
  br i1 %691, label %1067, label %692

692:                                              ; preds = %688
  %693 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %694 = icmp eq ptr %693, null
  br i1 %694, label %702, label %695

695:                                              ; preds = %692
  %696 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %697 = and i32 %696, 8
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %702, label %699

699:                                              ; preds = %695
  %700 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr nonnull %693)
  %701 = load ptr, ptr %1, align 8, !tbaa !6
  br label %702

702:                                              ; preds = %699, %695, %692
  %703 = phi ptr [ %701, %699 ], [ %689, %695 ], [ %689, %692 ]
  %704 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %703) #20
  %705 = add i32 %704, -1
  %706 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %707 = add i32 %705, %706
  store i32 %707, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  tail call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %4) #20
  br label %1067

708:                                              ; preds = %114, %672, %390, %684, %117
  %709 = load ptr, ptr %5, align 8, !tbaa !13
  %710 = tail call i32 @integer_onep(ptr noundef %709) #21
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %1007

712:                                              ; preds = %708
  %713 = load i64, ptr %8, align 8
  %714 = trunc i64 %713 to i16
  switch i16 %714, label %1067 [
    i16 9, label %721
    i16 13, label %715
    i16 14, label %715
  ]

715:                                              ; preds = %712, %712
  %716 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %717 = load ptr, ptr %716, align 8, !tbaa !23
  %718 = load i64, ptr %717, align 8
  %719 = and i64 %718, 65535
  %720 = icmp eq i64 %719, 9
  br i1 %720, label %721, label %1067

721:                                              ; preds = %712, %715
  %722 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !18
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %1003, label %724

724:                                              ; preds = %721
  %725 = and i64 %713, 65535
  %726 = icmp eq i64 %725, 14
  br i1 %726, label %727, label %730

727:                                              ; preds = %724
  %728 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %729 = load i64, ptr %8, align 8
  br label %735

730:                                              ; preds = %724
  %731 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %732 = load i32, ptr %731, align 4
  %733 = lshr i32 %732, 16
  %734 = and i32 %733, 255
  br label %735

735:                                              ; preds = %730, %727
  %736 = phi i64 [ %729, %727 ], [ %713, %730 ]
  %737 = phi i32 [ %728, %727 ], [ %734, %730 ]
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %738
  %740 = load i8, ptr %739, align 1, !tbaa !23
  %741 = icmp eq i8 %740, 8
  br i1 %741, label %796, label %742

742:                                              ; preds = %735
  %743 = and i64 %736, 65535
  %744 = icmp eq i64 %743, 14
  br i1 %744, label %745, label %748

745:                                              ; preds = %742
  %746 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %747 = load i64, ptr %8, align 8
  br label %753

748:                                              ; preds = %742
  %749 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %750 = load i32, ptr %749, align 4
  %751 = lshr i32 %750, 16
  %752 = and i32 %751, 255
  br label %753

753:                                              ; preds = %748, %745
  %754 = phi i64 [ %747, %745 ], [ %736, %748 ]
  %755 = phi i32 [ %746, %745 ], [ %752, %748 ]
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !23
  %759 = icmp eq i8 %758, 9
  br i1 %759, label %796, label %760

760:                                              ; preds = %753
  %761 = and i64 %754, 65535
  %762 = icmp eq i64 %761, 14
  br i1 %762, label %763, label %766

763:                                              ; preds = %760
  %764 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %765 = load i64, ptr %8, align 8
  br label %771

766:                                              ; preds = %760
  %767 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %768 = load i32, ptr %767, align 4
  %769 = lshr i32 %768, 16
  %770 = and i32 %769, 255
  br label %771

771:                                              ; preds = %766, %763
  %772 = phi i64 [ %765, %763 ], [ %754, %766 ]
  %773 = phi i32 [ %764, %763 ], [ %770, %766 ]
  %774 = zext i32 %773 to i64
  %775 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %774
  %776 = load i8, ptr %775, align 1, !tbaa !23
  %777 = icmp eq i8 %776, 11
  br i1 %777, label %796, label %778

778:                                              ; preds = %771
  %779 = and i64 %772, 65535
  %780 = icmp eq i64 %779, 14
  br i1 %780, label %781, label %783

781:                                              ; preds = %778
  %782 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %788

783:                                              ; preds = %778
  %784 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %785 = load i32, ptr %784, align 4
  %786 = lshr i32 %785, 16
  %787 = and i32 %786, 255
  br label %788

788:                                              ; preds = %783, %781
  %789 = phi i32 [ %782, %781 ], [ %787, %783 ]
  %790 = zext i32 %789 to i64
  %791 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !23
  %793 = icmp eq i8 %792, 17
  br i1 %793, label %794, label %1003

794:                                              ; preds = %788
  %795 = load i64, ptr %8, align 8
  br label %796

796:                                              ; preds = %794, %771, %753, %735
  %797 = phi i64 [ %795, %794 ], [ %772, %771 ], [ %754, %753 ], [ %736, %735 ]
  %798 = and i64 %797, 65535
  %799 = icmp eq i64 %798, 14
  br i1 %799, label %800, label %803

800:                                              ; preds = %796
  %801 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %802 = load i64, ptr %8, align 8
  br label %808

803:                                              ; preds = %796
  %804 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %805 = load i32, ptr %804, align 4
  %806 = lshr i32 %805, 16
  %807 = and i32 %806, 255
  br label %808

808:                                              ; preds = %803, %800
  %809 = phi i64 [ %802, %800 ], [ %797, %803 ]
  %810 = phi i32 [ %801, %800 ], [ %807, %803 ]
  %811 = zext i32 %810 to i64
  %812 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %811
  %813 = load i8, ptr %812, align 1, !tbaa !23
  %814 = icmp eq i8 %813, 8
  br i1 %814, label %833, label %815

815:                                              ; preds = %808
  %816 = and i64 %809, 65535
  %817 = icmp eq i64 %816, 14
  br i1 %817, label %818, label %821

818:                                              ; preds = %815
  %819 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %820 = load i64, ptr %8, align 8
  br label %826

821:                                              ; preds = %815
  %822 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %823 = load i32, ptr %822, align 4
  %824 = lshr i32 %823, 16
  %825 = and i32 %824, 255
  br label %826

826:                                              ; preds = %821, %818
  %827 = phi i64 [ %820, %818 ], [ %809, %821 ]
  %828 = phi i32 [ %819, %818 ], [ %825, %821 ]
  %829 = zext i32 %828 to i64
  %830 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %829
  %831 = load i8, ptr %830, align 1, !tbaa !23
  %832 = icmp eq i8 %831, 9
  br i1 %832, label %833, label %844

833:                                              ; preds = %826, %808
  %834 = phi i64 [ %827, %826 ], [ %809, %808 ]
  %835 = and i64 %834, 65535
  %836 = icmp eq i64 %835, 14
  br i1 %836, label %837, label %839

837:                                              ; preds = %833
  %838 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %860

839:                                              ; preds = %833
  %840 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %841 = load i32, ptr %840, align 4
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  br label %860

844:                                              ; preds = %826
  %845 = and i64 %827, 65535
  %846 = icmp eq i64 %845, 14
  br i1 %846, label %847, label %849

847:                                              ; preds = %844
  %848 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %854

849:                                              ; preds = %844
  %850 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %851 = load i32, ptr %850, align 4
  %852 = lshr i32 %851, 16
  %853 = and i32 %852, 255
  br label %854

854:                                              ; preds = %849, %847
  %855 = phi i32 [ %848, %847 ], [ %853, %849 ]
  %856 = zext i32 %855 to i64
  %857 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %856
  %858 = load i8, ptr %857, align 1, !tbaa !23
  %859 = zext i8 %858 to i32
  br label %860

860:                                              ; preds = %837, %839, %854
  %861 = phi i32 [ %859, %854 ], [ %838, %837 ], [ %843, %839 ]
  %862 = zext i32 %861 to i64
  %863 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %862
  %864 = load i8, ptr %863, align 1, !tbaa !23
  %865 = icmp eq i8 %864, 9
  %866 = load i64, ptr %8, align 8
  %867 = and i64 %866, 65535
  %868 = icmp eq i64 %867, 14
  br i1 %865, label %869, label %930

869:                                              ; preds = %860
  br i1 %868, label %870, label %873

870:                                              ; preds = %869
  %871 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %872 = load i64, ptr %8, align 8
  br label %878

873:                                              ; preds = %869
  %874 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %875 = load i32, ptr %874, align 4
  %876 = lshr i32 %875, 16
  %877 = and i32 %876, 255
  br label %878

878:                                              ; preds = %873, %870
  %879 = phi i64 [ %872, %870 ], [ %866, %873 ]
  %880 = phi i32 [ %871, %870 ], [ %877, %873 ]
  %881 = zext i32 %880 to i64
  %882 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %881
  %883 = load i8, ptr %882, align 1, !tbaa !23
  %884 = icmp eq i8 %883, 8
  br i1 %884, label %903, label %885

885:                                              ; preds = %878
  %886 = and i64 %879, 65535
  %887 = icmp eq i64 %886, 14
  br i1 %887, label %888, label %891

888:                                              ; preds = %885
  %889 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %890 = load i64, ptr %8, align 8
  br label %896

891:                                              ; preds = %885
  %892 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %893 = load i32, ptr %892, align 4
  %894 = lshr i32 %893, 16
  %895 = and i32 %894, 255
  br label %896

896:                                              ; preds = %891, %888
  %897 = phi i64 [ %890, %888 ], [ %879, %891 ]
  %898 = phi i32 [ %889, %888 ], [ %895, %891 ]
  %899 = zext i32 %898 to i64
  %900 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %899
  %901 = load i8, ptr %900, align 1, !tbaa !23
  %902 = icmp eq i8 %901, 9
  br i1 %902, label %903, label %914

903:                                              ; preds = %896, %878
  %904 = phi i64 [ %897, %896 ], [ %879, %878 ]
  %905 = and i64 %904, 65535
  %906 = icmp eq i64 %905, 14
  br i1 %906, label %907, label %909

907:                                              ; preds = %903
  %908 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %991

909:                                              ; preds = %903
  %910 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %911 = load i32, ptr %910, align 4
  %912 = lshr i32 %911, 16
  %913 = and i32 %912, 255
  br label %991

914:                                              ; preds = %896
  %915 = and i64 %897, 65535
  %916 = icmp eq i64 %915, 14
  br i1 %916, label %917, label %919

917:                                              ; preds = %914
  %918 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %924

919:                                              ; preds = %914
  %920 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %921 = load i32, ptr %920, align 4
  %922 = lshr i32 %921, 16
  %923 = and i32 %922, 255
  br label %924

924:                                              ; preds = %919, %917
  %925 = phi i32 [ %918, %917 ], [ %923, %919 ]
  %926 = zext i32 %925 to i64
  %927 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %926
  %928 = load i8, ptr %927, align 1, !tbaa !23
  %929 = zext i8 %928 to i32
  br label %991

930:                                              ; preds = %860
  br i1 %868, label %931, label %934

931:                                              ; preds = %930
  %932 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %933 = load i64, ptr %8, align 8
  br label %939

934:                                              ; preds = %930
  %935 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %936 = load i32, ptr %935, align 4
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  br label %939

939:                                              ; preds = %934, %931
  %940 = phi i64 [ %933, %931 ], [ %866, %934 ]
  %941 = phi i32 [ %932, %931 ], [ %938, %934 ]
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %942
  %944 = load i8, ptr %943, align 1, !tbaa !23
  %945 = icmp eq i8 %944, 8
  br i1 %945, label %964, label %946

946:                                              ; preds = %939
  %947 = and i64 %940, 65535
  %948 = icmp eq i64 %947, 14
  br i1 %948, label %949, label %952

949:                                              ; preds = %946
  %950 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  %951 = load i64, ptr %8, align 8
  br label %957

952:                                              ; preds = %946
  %953 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %954 = load i32, ptr %953, align 4
  %955 = lshr i32 %954, 16
  %956 = and i32 %955, 255
  br label %957

957:                                              ; preds = %952, %949
  %958 = phi i64 [ %951, %949 ], [ %940, %952 ]
  %959 = phi i32 [ %950, %949 ], [ %956, %952 ]
  %960 = zext i32 %959 to i64
  %961 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !23
  %963 = icmp eq i8 %962, 9
  br i1 %963, label %964, label %975

964:                                              ; preds = %957, %939
  %965 = phi i64 [ %958, %957 ], [ %940, %939 ]
  %966 = and i64 %965, 65535
  %967 = icmp eq i64 %966, 14
  br i1 %967, label %968, label %970

968:                                              ; preds = %964
  %969 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %991

970:                                              ; preds = %964
  %971 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %972 = load i32, ptr %971, align 4
  %973 = lshr i32 %972, 16
  %974 = and i32 %973, 255
  br label %991

975:                                              ; preds = %957
  %976 = and i64 %958, 65535
  %977 = icmp eq i64 %976, 14
  br i1 %977, label %978, label %980

978:                                              ; preds = %975
  %979 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #21
  br label %985

980:                                              ; preds = %975
  %981 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %982 = load i32, ptr %981, align 4
  %983 = lshr i32 %982, 16
  %984 = and i32 %983, 255
  br label %985

985:                                              ; preds = %980, %978
  %986 = phi i32 [ %979, %978 ], [ %984, %980 ]
  %987 = zext i32 %986 to i64
  %988 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %987
  %989 = load i8, ptr %988, align 1, !tbaa !23
  %990 = zext i8 %989 to i32
  br label %991

991:                                              ; preds = %985, %970, %968, %924, %909, %907
  %992 = phi i32 [ %929, %924 ], [ %908, %907 ], [ %913, %909 ], [ %990, %985 ], [ %969, %968 ], [ %974, %970 ]
  %993 = add i32 %992, -38
  %994 = zext i32 %993 to i64
  %995 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %994
  %996 = load ptr, ptr %995, align 8, !tbaa !6
  %997 = getelementptr inbounds %struct.real_format, ptr %996, i64 0, i32 11
  %998 = load i8, ptr %997, align 2, !tbaa !90
  %999 = icmp eq i8 %998, 0
  %1000 = load i32, ptr @flag_finite_math_only, align 4
  %1001 = icmp ne i32 %1000, 0
  %1002 = select i1 %999, i1 true, i1 %1001
  br i1 %1002, label %1003, label %1067

1003:                                             ; preds = %991, %788, %721
  %1004 = load ptr, ptr %5, align 8, !tbaa !13
  %1005 = tail call i32 @real_onep(ptr noundef %1004) #21
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1067, label %1007

1007:                                             ; preds = %1003, %708
  %1008 = load ptr, ptr %1, align 8, !tbaa !6
  %1009 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %1008) #20
  %1010 = icmp eq i32 %1009, 1
  br i1 %1010, label %1067, label %1011

1011:                                             ; preds = %1007
  %1012 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %1013 = icmp eq ptr %1012, null
  br i1 %1013, label %1021, label %1014

1014:                                             ; preds = %1011
  %1015 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %1016 = and i32 %1015, 8
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1021, label %1018

1018:                                             ; preds = %1014
  %1019 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr nonnull %1012)
  %1020 = load ptr, ptr %1, align 8, !tbaa !6
  br label %1021

1021:                                             ; preds = %1018, %1014, %1011
  %1022 = phi ptr [ %1020, %1018 ], [ %1008, %1014 ], [ %1008, %1011 ]
  tail call fastcc void @VEC_operand_entry_t_base_pop(ptr noundef %1022) #20
  %1023 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %1024 = add nsw i32 %1023, 1
  store i32 %1024, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  br label %1067

1025:                                             ; preds = %20, %20, %20
  %1026 = tail call i32 @integer_zerop(ptr noundef nonnull %6) #21
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1049

1028:                                             ; preds = %1025
  %1029 = load i64, ptr %8, align 8
  %1030 = trunc i64 %1029 to i16
  switch i16 %1030, label %1067 [
    i16 9, label %1040
    i16 13, label %1031
    i16 14, label %1031
  ]

1031:                                             ; preds = %1028, %1028
  %1032 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !23
  %1034 = load i64, ptr %1033, align 8
  %1035 = and i64 %1034, 65535
  %1036 = icmp eq i64 %1035, 9
  %1037 = add nsw i32 %0, -63
  %1038 = icmp ult i32 %1037, 2
  %1039 = and i1 %1038, %1036
  br i1 %1039, label %1043, label %1067

1040:                                             ; preds = %1028
  %1041 = add nsw i32 %0, -63
  %1042 = icmp ult i32 %1041, 2
  br i1 %1042, label %1043, label %1067

1043:                                             ; preds = %1031, %1040
  %1044 = icmp eq i32 %0, 64
  %1045 = load ptr, ptr %5, align 8, !tbaa !13
  %1046 = zext i1 %1044 to i32
  %1047 = tail call zeroext i8 @fold_real_zero_addition_p(ptr noundef nonnull %8, ptr noundef %1045, i32 noundef %1046) #21
  %1048 = icmp eq i8 %1047, 0
  br i1 %1048, label %1067, label %1049

1049:                                             ; preds = %1043, %1025
  %1050 = load ptr, ptr %1, align 8, !tbaa !6
  %1051 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %1050) #20
  %1052 = icmp eq i32 %1051, 1
  br i1 %1052, label %1067, label %1053

1053:                                             ; preds = %1049
  %1054 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1063, label %1056

1056:                                             ; preds = %1053
  %1057 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %1058 = and i32 %1057, 8
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1063, label %1060

1060:                                             ; preds = %1056
  %1061 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 24, i64 1, ptr nonnull %1054)
  %1062 = load ptr, ptr %1, align 8, !tbaa !6
  br label %1063

1063:                                             ; preds = %1060, %1056, %1053
  %1064 = phi ptr [ %1062, %1060 ], [ %1050, %1056 ], [ %1050, %1053 ]
  tail call fastcc void @VEC_operand_entry_t_base_pop(ptr noundef %1064) #20
  %1065 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %1066 = add nsw i32 %1065, 1
  store i32 %1066, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  br label %1067

1067:                                             ; preds = %2, %14, %20, %1031, %1043, %1040, %1049, %688, %1007, %991, %1003, %715, %69, %93, %107, %89, %24, %48, %62, %44, %11, %712, %1028, %1063, %1021, %702, %83, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eliminate_not_pairs(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  switch i32 %0, label %81 [
    i32 89, label %6
    i32 87, label %6
  ]

6:                                                ; preds = %4, %4
  %7 = getelementptr inbounds %struct.operand_entry, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %81

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @get_unary_op(ptr noundef nonnull %8, i32 noundef 90) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %1, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %15, %28
  %18 = phi i32 [ %19, %28 ], [ %2, %15 ]
  %19 = add i32 %18, 1
  %20 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %16, i32 noundef %19, ptr noundef nonnull %5) #20, !range !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !6
  %24 = load i32, ptr %23, align 8, !tbaa !10
  %25 = load i32, ptr %3, align 8, !tbaa !10
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %81, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.operand_entry, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = icmp eq ptr %30, %13
  br i1 %31, label %32, label %17, !llvm.loop !93

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.operand_entry, ptr %23, i64 0, i32 1
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %34)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %42, ptr noundef nonnull %13, i32 noundef 0) #21
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !6
  switch i32 %0, label %58 [
    i32 89, label %51
    i32 87, label %44
  ]

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 4, i64 1, ptr %43)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %47 = load ptr, ptr %33, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef %47, i32 noundef 0) #21
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %49 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 7, i64 1, ptr %48)
  %50 = load ptr, ptr %33, align 8, !tbaa !13
  br label %67

51:                                               ; preds = %40
  %52 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr %43)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %54 = load ptr, ptr %33, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef %54, i32 noundef 0) #21
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %56 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 6, i64 1, ptr %55)
  %57 = load ptr, ptr %33, align 8, !tbaa !13
  br label %61

58:                                               ; preds = %40
  %59 = load ptr, ptr %33, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %43, ptr noundef %59, i32 noundef 0) #21
  br label %75

60:                                               ; preds = %36, %32
  switch i32 %0, label %75 [
    i32 89, label %61
    i32 87, label %67
  ]

61:                                               ; preds = %51, %60
  %62 = phi ptr [ %57, %51 ], [ %13, %60 ]
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %66 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %64, ptr noundef %65) #21
  store ptr %66, ptr %33, align 8, !tbaa !13
  br label %75

67:                                               ; preds = %44, %60
  %68 = phi ptr [ %50, %44 ], [ %13, %60 ]
  %69 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !23
  %71 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1023
  %74 = tail call ptr @build_low_bits_mask(ptr noundef %70, i32 noundef %73) #21
  store ptr %74, ptr %33, align 8, !tbaa !13
  br label %75

75:                                               ; preds = %58, %60, %67, %61
  %76 = load ptr, ptr %1, align 8, !tbaa !6
  %77 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %76) #20
  %78 = add i32 %77, -1
  %79 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %80 = add i32 %78, %79
  store i32 %80, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  tail call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %23) #20
  br label %81

81:                                               ; preds = %22, %17, %12, %6, %4, %75
  %82 = phi i8 [ 1, %75 ], [ 0, %4 ], [ 0, %6 ], [ 0, %12 ], [ 0, %17 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i8 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eliminate_duplicate_pair(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5) unnamed_addr #0 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %70, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.operand_entry, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %8
  switch i32 %0, label %70 [
    i32 81, label %15
    i32 80, label %15
    i32 87, label %15
    i32 89, label %15
    i32 88, label %38
  ]

15:                                               ; preds = %14, %14, %14, %14
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %16)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %25 = load ptr, ptr %11, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %24, ptr noundef %25, i32 noundef 0) #21
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %27 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %26)
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %29 = load ptr, ptr %9, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %28, ptr noundef %29, i32 noundef 0) #21
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %31 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 4, i64 1, ptr %30)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %33 = load ptr, ptr %9, align 8, !tbaa !13
  tail call void @print_generic_stmt(ptr noundef %32, ptr noundef %33, i32 noundef 0) #21
  br label %34

34:                                               ; preds = %22, %18, %15
  %35 = load ptr, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_base_ordered_remove(ptr noundef %35, i32 noundef %3) #20
  %36 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  br label %70

38:                                               ; preds = %14
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %39)
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %48 = load ptr, ptr %11, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %47, ptr noundef %48, i32 noundef 0) #21
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %50 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 3, i64 1, ptr %49)
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %52 = load ptr, ptr %9, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %51, ptr noundef %52, i32 noundef 0) #21
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %54 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr %53)
  br label %55

55:                                               ; preds = %45, %41, %38
  %56 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %57 = add nsw i32 %56, 2
  store i32 %57, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %58 = load ptr, ptr %1, align 8, !tbaa !6
  %59 = tail call fastcc i32 @VEC_operand_entry_t_base_length(ptr noundef %58) #20
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  tail call fastcc void @VEC_operand_entry_t_heap_free(ptr noundef nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !6
  %62 = load ptr, ptr %9, align 8, !tbaa !13
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %66 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %64, ptr noundef %65) #21
  tail call fastcc void @add_to_ops_vec(ptr noundef nonnull %1, ptr noundef %66) #20
  store i8 1, ptr %2, align 1, !tbaa !23
  br label %70

67:                                               ; preds = %55
  %68 = add i32 %3, -1
  tail call fastcc void @VEC_operand_entry_t_base_ordered_remove(ptr noundef %58, i32 noundef %68) #20
  %69 = load ptr, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_base_ordered_remove(ptr noundef %69, i32 noundef %68) #20
  br label %70

70:                                               ; preds = %6, %8, %14, %61, %67, %34
  %71 = phi i8 [ 1, %34 ], [ 1, %67 ], [ 1, %61 ], [ 0, %14 ], [ 0, %8 ], [ 0, %6 ]
  ret i8 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eliminate_plus_minus_pair(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = icmp eq i32 %0, 63
  br i1 %6, label %7, label %61

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.operand_entry, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @get_unary_op(ptr noundef nonnull %9, i32 noundef 79) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %61, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %16, %29
  %19 = phi i32 [ %20, %29 ], [ %2, %16 ]
  %20 = add i32 %19, 1
  %21 = call fastcc i32 @VEC_operand_entry_t_base_iterate(ptr noundef %17, i32 noundef %20, ptr noundef nonnull %5) #20, !range !5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8, !tbaa !6
  %25 = load i32, ptr %24, align 8, !tbaa !10
  %26 = load i32, ptr %3, align 8, !tbaa !10
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %61, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.operand_entry, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = icmp eq ptr %31, %14
  br i1 %32, label %33, label %18, !llvm.loop !94

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.operand_entry, ptr %24, i64 0, i32 1
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr @dump_flags, align 4, !tbaa !18
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %35)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %43, ptr noundef nonnull %14, i32 noundef 0) #21
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %45 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 4, i64 1, ptr %44)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %47 = load ptr, ptr %34, align 8, !tbaa !13
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef %47, i32 noundef 0) #21
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %49 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 6, i64 1, ptr %48)
  %50 = load ptr, ptr %1, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %41, %37, %33
  %52 = phi ptr [ %50, %41 ], [ %17, %37 ], [ %17, %33 ]
  tail call fastcc void @VEC_operand_entry_t_base_ordered_remove(ptr noundef %52, i32 noundef %20) #20
  %53 = load ptr, ptr %34, align 8, !tbaa !13
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !23
  %56 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %57 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %55, ptr noundef %56) #21
  tail call fastcc void @add_to_ops_vec(ptr noundef nonnull %1, ptr noundef %57) #20
  %58 = load ptr, ptr %1, align 8, !tbaa !6
  tail call fastcc void @VEC_operand_entry_t_base_ordered_remove(ptr noundef %58, i32 noundef %2) #20
  %59 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !38
  br label %61

61:                                               ; preds = %23, %18, %13, %4, %7, %51
  %62 = phi i8 [ 1, %51 ], [ 0, %7 ], [ 0, %4 ], [ 0, %13 ], [ 0, %18 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i8 %62
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @real_onep(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @fold_real_zero_addition_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_unary_op(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %4) #20, !range !32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %4) #20, !range !33
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %4) #20
  br label %12

12:                                               ; preds = %7, %2, %10
  %13 = phi ptr [ %11, %10 ], [ null, %2 ], [ null, %7 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_low_bits_mask(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_operand_entry_t_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8, !tbaa !16
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !16
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !23
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !23
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !27
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @oecount_hash(ptr noundef %0) #0 {
  %2 = load ptr, ptr @cvec, align 8
  %3 = ptrtoint ptr %0 to i64
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, -42
  %6 = tail call fastcc ptr @VEC_oecount_base_index(ptr noundef %2, i32 noundef %5) #20
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.oecount_s, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = tail call i32 %7(ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.oecount_s, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = xor i32 %12, %10
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @oecount_eq(ptr noundef %0, ptr noundef %1) #11 {
  %3 = load ptr, ptr @cvec, align 8
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, -42
  %7 = tail call fastcc ptr @VEC_oecount_base_index(ptr noundef %3, i32 noundef %6) #20
  %8 = ptrtoint ptr %1 to i64
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, -42
  %11 = tail call fastcc ptr @VEC_oecount_base_index(ptr noundef %3, i32 noundef %10) #20
  %12 = getelementptr inbounds %struct.oecount_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !70
  %14 = getelementptr inbounds %struct.oecount_s, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !70
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.oecount_s, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.oecount_s, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %19, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i32 [ 0, %2 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = lshr i32 %2, 6
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !95
  %6 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 %2, ptr %6, align 8, !tbaa !97
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %10, ptr %0, align 8, !tbaa !100
  %11 = icmp ult i32 %4, %8
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds i64, ptr %10, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = and i32 %2, 63
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 %15, %17
  br label %19

19:                                               ; preds = %3, %12
  %20 = phi i64 [ %18, %12 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %20, ptr %21, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !101
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !95
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !95
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !97
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !97
  %25 = load ptr, ptr %0, align 8, !tbaa !100
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !27
  store i64 %28, ptr %3, align 8, !tbaa !101
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !102

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !103

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !97
  store i64 %34, ptr %3, align 8, !tbaa !101
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !18
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !95
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_oecount_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_oecount_heap_reserve() #20
  %2 = load ptr, ptr @cvec, align 8, !tbaa !6
  tail call fastcc void @VEC_oecount_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_oecount_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !104
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_oecount_base_pop(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8, !tbaa !104
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_oecount_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_oecount_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !101
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !97
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_oecount_base_address(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_oecount_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @oecount_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !72
  %4 = load i32, ptr %1, align 8, !tbaa !72
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_oecount_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !104
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_oecount_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !6
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_oecount_base_last(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !104
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_oecount_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @zero_one_operation(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %50, %3
  %9 = phi ptr [ %7, %3 ], [ %12, %50 ]
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #20
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %11) #20, !range !33
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %43

15:                                               ; preds = %8
  %16 = icmp eq ptr %12, %2
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %11) #20
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  br label %23

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %22 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %11) #20
  br label %23

23:                                               ; preds = %20, %21
  %24 = phi ptr [ %22, %21 ], [ %12, %20 ]
  %25 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #20
  %26 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %25) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 802, ptr noundef nonnull @.str.4) #21
  br label %29

29:                                               ; preds = %23, %28
  %30 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #20
  %31 = call fastcc zeroext i8 @single_imm_use(ptr noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %32 = call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #20
  %33 = load ptr, ptr %0, align 8, !tbaa !6
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store ptr %24, ptr %0, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %35, %29
  %37 = load ptr, ptr %5, align 8, !tbaa !6
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %37, ptr noundef %24) #20
  %38 = load i64, ptr %24, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8, !tbaa !6
  call fastcc void @update_stmt(ptr noundef %42) #20
  br label %51

43:                                               ; preds = %17, %8
  %44 = icmp eq ptr %12, %2
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = load i64, ptr %12, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 817, ptr noundef nonnull @.str.4) #21
  br label %50

50:                                               ; preds = %49, %45
  br label %8

51:                                               ; preds = %36, %41
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %11) #21
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef %11) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @build_and_add_sum(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %10 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %11 = tail call fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %10) #20
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %10, ptr noundef %11) #20
  %12 = load i64, ptr %1, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ %17, %15 ], [ null, %4 ]
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ null, %18 ]
  %28 = icmp eq ptr %19, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %19) #20, !range !32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29, %26
  %33 = icmp eq ptr %27, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %27) #20, !range !32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %32
  %38 = load ptr, ptr @cfun, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = tail call fastcc ptr @single_succ(ptr noundef %41) #20
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %42) #20
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 0) #21
  br label %115

43:                                               ; preds = %34
  br i1 %28, label %55, label %44

44:                                               ; preds = %29, %43
  %45 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %19) #20, !range !32
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = icmp eq ptr %27, null
  br i1 %48, label %85, label %49

49:                                               ; preds = %47
  %50 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef nonnull %27) #20, !range !32
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef nonnull %19, ptr noundef nonnull %27) #21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %52, %44, %43
  %56 = tail call fastcc i32 @gimple_code(ptr noundef %27) #20, !range !42
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @gimple_bb(ptr noundef %27) #20
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %59) #20
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 0) #21
  br label %115

60:                                               ; preds = %55
  %61 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %27) #21
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %27) #21
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 0) #21
  br label %115

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %65 = tail call fastcc ptr @gimple_bb(ptr noundef %27) #20
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 1
  %67 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %66) #20
  store i32 0, ptr %7, align 8, !tbaa.struct !81
  %68 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %67, ptr %68, align 8, !tbaa.struct !82
  %69 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %67, ptr noundef nonnull %6) #20, !range !32
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %64, %79
  %72 = load ptr, ptr %6, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !106
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef nonnull %72, ptr noundef %10) #21
  br label %79

79:                                               ; preds = %71, %77
  call fastcc void @ei_next(ptr noundef nonnull %7) #20
  %80 = load i32, ptr %7, align 8
  %81 = load ptr, ptr %68, align 8
  %82 = call fastcc zeroext i8 @ei_cond(i32 %80, ptr %81, ptr noundef nonnull %6) #20, !range !32
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %71, !llvm.loop !108

84:                                               ; preds = %79, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %115

85:                                               ; preds = %52, %49, %47
  %86 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %19) #20, !range !42
  %87 = icmp eq i32 %86, 16
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %19) #20
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %89) #20
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 0) #21
  br label %115

90:                                               ; preds = %85
  %91 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %19) #21
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %19) #21
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 0) #21
  br label %115

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  %95 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %19) #20
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 1
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %96) #20
  store i32 0, ptr %9, align 8, !tbaa.struct !81
  %98 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %97, ptr %98, align 8, !tbaa.struct !82
  %99 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %8) #20, !range !32
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %94, %109
  %102 = load ptr, ptr %8, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !106
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef nonnull %102, ptr noundef %10) #21
  br label %109

109:                                              ; preds = %101, %107
  call fastcc void @ei_next(ptr noundef nonnull %9) #20
  %110 = load i32, ptr %9, align 8
  %111 = load ptr, ptr %98, align 8
  %112 = call fastcc zeroext i8 @ei_cond(i32 %110, ptr %111, ptr noundef nonnull %8) #20, !range !32
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %101, !llvm.loop !109

114:                                              ; preds = %109, %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %115

115:                                              ; preds = %63, %84, %58, %93, %114, %88, %37
  call fastcc void @update_stmt(ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_oecount_heap_free() unnamed_addr #13 {
  %1 = load ptr, ptr @cvec, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @cvec, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_oecount_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @cvec, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_oecount_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %5, ptr @cvec, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_oecount_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8, !tbaa !104
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !104
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_oecount_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !110
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_oecount_base_space(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_oecount_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = load i32, ptr %0, align 8, !tbaa !104
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %1, ptr %4, align 8, !tbaa !6
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !113
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !60
  store ptr %2, ptr %6, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !113
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  store ptr %1, ptr %0, align 8, !tbaa !113
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !60
  store ptr %0, ptr %4, align 8, !tbaa !113
  store ptr %0, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !23
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !42
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #20
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #20, !range !42
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !114

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  ret ptr %4
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @stmt_dominates_stmt_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !116
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !32
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 645, ptr noundef nonnull @.str.4) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !119
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 687, ptr noundef nonnull @.str.4) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_phi_for_stmt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !42
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %10) #20
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %21
  %18 = phi ptr [ %22, %21 ], [ %14, %13 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %18) #20
  %20 = icmp eq ptr %8, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %23 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %17, label %25, !llvm.loop !121

25:                                               ; preds = %17, %21, %13, %7, %2
  %26 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 0, %13 ], [ 1, %17 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !122
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !122
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !124
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !125
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !126
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i8, ptr %0, align 8, !tbaa !122
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !128
  store ptr %7, ptr %2, align 8, !tbaa !127
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !130
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !125
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !130
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !122
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !122
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !23
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.4) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !62
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #13 {
  %1 = load ptr, ptr @broken_up_subtracts, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @broken_up_subtracts, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"operand_entry", !12, i64 0, !7, i64 8}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !12, i64 0}
!17 = !{!"VEC_operand_entry_t_base", !12, i64 0, !12, i64 4, !8, i64 8}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !7, i64 8}
!20 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!21 = !{!22, !12, i64 32}
!22 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!23 = !{!8, !8, i64 0}
!24 = distinct !{!24, !15}
!25 = !{!20, !7, i64 56}
!26 = !{!22, !12, i64 24}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = distinct !{!29, !15}
!30 = !{!22, !7, i64 0}
!31 = !{!22, !7, i64 8}
!32 = !{i8 0, i8 2}
!33 = !{i32 0, i32 65536}
!34 = distinct !{!34, !15}
!35 = !{!36, !12, i64 0}
!36 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!37 = !{!36, !12, i64 4}
!38 = !{!36, !12, i64 8}
!39 = !{!36, !12, i64 12}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = !{i32 0, i32 256}
!43 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = !{!47, !7, i64 0}
!47 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!48 = !{!47, !7, i64 8}
!49 = !{!47, !7, i64 16}
!50 = !{!51, !7, i64 0}
!51 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!52 = !{!51, !7, i64 16}
!53 = !{!54, !12, i64 96}
!54 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !28, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!55 = !{!56, !7, i64 0}
!56 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!57 = !{!58, !7, i64 0}
!58 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!59 = !{!54, !7, i64 24}
!60 = !{!61, !7, i64 8}
!61 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!62 = !{!63, !12, i64 0}
!63 = !{!"VEC_tree_base", !12, i64 0, !12, i64 4, !8, i64 8}
!64 = !{!63, !12, i64 4}
!65 = !{i32 2, i32 9}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = !{!69, !7, i64 0}
!69 = !{!"simple_bitmap_def", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16}
!70 = !{!71, !12, i64 4}
!71 = !{!"oecount_s", !12, i64 0, !12, i64 4, !7, i64 8}
!72 = !{!71, !12, i64 0}
!73 = !{!71, !7, i64 8}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = !{i64 0, i64 4, !18, i64 8, i64 8, !6}
!82 = !{i64 0, i64 8, !6}
!83 = distinct !{!83, !15}
!84 = !{!51, !7, i64 8}
!85 = !{!58, !7, i64 8}
!86 = !{!54, !12, i64 80}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = !{!17, !12, i64 4}
!90 = !{!91, !8, i64 46}
!91 = !{!"real_format", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !8, i64 47, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51}
!92 = !{!91, !8, i64 49}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = !{!96, !12, i64 12}
!96 = !{!"", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !28, i64 24}
!97 = !{!96, !12, i64 16}
!98 = !{!69, !12, i64 12}
!99 = !{!96, !12, i64 8}
!100 = !{!96, !7, i64 0}
!101 = !{!96, !28, i64 24}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = !{!105, !12, i64 0}
!105 = !{!"VEC_oecount_base", !12, i64 0, !12, i64 4, !8, i64 8}
!106 = !{!107, !12, i64 48}
!107 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !28, i64 56}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 8, !6}
!111 = !{!105, !12, i64 4}
!112 = !{!61, !7, i64 24}
!113 = !{!61, !7, i64 0}
!114 = distinct !{!114, !15}
!115 = !{!107, !7, i64 8}
!116 = !{!117, !12, i64 0}
!117 = !{!"", !12, i64 0, !7, i64 8}
!118 = !{!54, !7, i64 8}
!119 = !{!120, !12, i64 0}
!120 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!121 = distinct !{!121, !15}
!122 = !{!123, !8, i64 0}
!123 = !{!"ssa_operand_iterator_d", !8, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !7, i64 32}
!124 = !{!123, !7, i64 32}
!125 = !{!123, !12, i64 28}
!126 = !{!123, !12, i64 4}
!127 = !{!123, !7, i64 16}
!128 = !{!129, !7, i64 0}
!129 = !{!"use_optype_d", !7, i64 0, !61, i64 8}
!130 = !{!123, !12, i64 24}
