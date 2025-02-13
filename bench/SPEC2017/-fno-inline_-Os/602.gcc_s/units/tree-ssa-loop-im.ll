; ModuleID = 'tree-ssa-loop-im.c'
source_filename = "tree-ssa-loop-im.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.mem_ref = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_bitmap_base = type { i32, i32, [1 x ptr] }
%struct.vop_to_refs_elt = type { i32, ptr, ptr }
%struct.VEC_htab_t_base = type { i32, i32, [1 x ptr] }
%struct.loop_iterator = type { ptr, i32 }
%struct.VEC_mem_ref_locs_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_mem_ref_loc_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.mem_ref_loc = type { ptr, ptr }
%struct.VEC_mem_ref_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.lim_aux_data = type { ptr, ptr, ptr, i32, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.depend = type { ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.fmt_data = type { ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"tree-ssa-loop-im.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_unswitch_loops = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@lsm_tmp_name_length = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_lsm\00", align 1
@lsm_tmp_name = internal global [41 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"_RE\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"_IM\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"_I\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@lim_aux_data_map = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@memory_accesses = internal global %struct.anon zeroinitializer, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Memory reference %u: \00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.15 = private unnamed_addr constant [40 x i8] c"Basic block %d (loop %d -- depth %d):\0A\0A\00", align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"  invariant up to level %d, cost %d.\0A\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"reciptmp\00", align 1
@dconst1 = external global %struct.real_value, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"shifttmp\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Querying dependencies of ref %u in loop %d: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"independent\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"dependent\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Querying dependency of refs %u and %u: \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"dependent.\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"independent.\0A\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.26 = private unnamed_addr constant [27 x i8] c"Executing store motion of \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c" from loop %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Moving statement\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"(cost %u) out of loop %d.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @for_each_index(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !514 {
  br label %4

4:                                                ; preds = %30, %3
  %5 = phi ptr [ %0, %3 ], [ %32, %30 ]
  %6 = phi ptr [ undef, %3 ], [ %32, %30 ]
  br label %7

7:                                                ; preds = %4, %55
  %8 = phi ptr [ %6, %55 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !515
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %55 [
    i16 141, label %12
    i16 49, label %14
    i16 48, label %14
    i16 47, label %14
    i16 42, label %30
    i16 118, label %30
    i16 43, label %30
    i16 44, label %30
    i16 41, label %17
    i16 45, label %26
    i16 46, label %26
    i16 32, label %56
    i16 34, label %56
    i16 28, label %56
    i16 36, label %56
    i16 27, label %56
    i16 26, label %56
    i16 23, label %56
    i16 24, label %56
    i16 25, label %56
    i16 51, label %56
    i16 121, label %33
    i16 152, label %37
  ], !prof !519

12:                                               ; preds = %7
  %13 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2) #20
  br label %56

14:                                               ; preds = %7, %7, %7
  %15 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %16 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %15, ptr noundef %2) #20
  br label %56

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !515
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21, !prof !520

21:                                               ; preds = %17
  %22 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef %2) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8, !tbaa !515
  br label %30

26:                                               ; preds = %7, %7
  %27 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %28 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %27, ptr noundef %2) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %56, label %30, !prof !521

30:                                               ; preds = %17, %24, %7, %7, %7, %7, %26
  %31 = phi ptr [ %9, %26 ], [ %9, %7 ], [ %9, %7 ], [ %9, %7 ], [ %9, %7 ], [ %25, %24 ], [ %9, %17 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  br label %4

33:                                               ; preds = %7
  %34 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %9) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #20
  br label %56

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !515
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41, !prof !522

41:                                               ; preds = %37
  %42 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %38, ptr noundef %2) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %56, label %44, !prof !523

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8, !tbaa !515
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi ptr [ %45, %44 ], [ %9, %37 ]
  %48 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !515
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !524

51:                                               ; preds = %46
  %52 = tail call zeroext i8 %1(ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef %2) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54, !prof !525

54:                                               ; preds = %51, %46
  br label %56

55:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #20
  br label %7

56:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %26, %21, %51, %41, %36, %33, %54, %14, %12
  %57 = phi i8 [ 1, %54 ], [ %16, %14 ], [ %13, %12 ], [ 1, %33 ], [ 1, %36 ], [ 0, %41 ], [ 0, %51 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %26 ], [ 0, %21 ]
  ret i8 %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @movement_possibility(ptr noundef %0) local_unnamed_addr #0 !prof !526 {
  %2 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !527
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4, !prof !529

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %48, label %7, !prof !531

7:                                                ; preds = %4, %1
  %8 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10, !prof !532

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %48, !prof !533

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %48, !prof !534

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #21, !range !535
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %48, !prof !536

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %48, !prof !537

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %48, !prof !538

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #21, !range !535
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28, !prof !539

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #21
  br label %35

30:                                               ; preds = %25
  %31 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #21, !range !535
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %48, label %33, !prof !540

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #21
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %29, %28 ], [ %34, %33 ]
  %37 = phi i32 [ 1, %28 ], [ 2, %33 ]
  %38 = load i64, ptr %36, align 8
  %39 = and i64 %38, 4259839
  %40 = icmp eq i64 %39, 4194445
  br i1 %40, label %48, label %41, !prof !541

41:                                               ; preds = %35
  %42 = and i64 %38, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %48, !prof !538

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @gimple_could_trap_p(ptr noundef %0) #20
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 %37, i32 1, !prof !542
  br label %48

48:                                               ; preds = %44, %41, %35, %30, %13, %16, %19, %22, %10, %7, %4
  %49 = phi i32 [ 2, %4 ], [ 0, %7 ], [ 0, %10 ], [ 0, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %30 ], [ 0, %35 ], [ 1, %41 ], [ %47, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !543 !PGOFuncName !544 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !545 !PGOFuncName !546 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !535
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !547

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !549 !PGOFuncName !550 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !535
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !551

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
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !552 !PGOFuncName !553 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !554 !PGOFuncName !555 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !556 !PGOFuncName !557 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !558 !PGOFuncName !559 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @gimple_could_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !560 !PGOFuncName !561 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !562 !PGOFuncName !563 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !535
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !564

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !515
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !565 !PGOFuncName !566 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !567 !PGOFuncName !568 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !569
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !571

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !567 !PGOFuncName !572 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 !prof !567 !PGOFuncName !573 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !527
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @get_lsm_tmp_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !574 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #22
  store i32 0, ptr @lsm_tmp_name_length, align 4, !tbaa !527
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %0) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.3) #21
  %4 = icmp ult i32 %1, 10
  br i1 %4, label %5, label %9, !prof !575

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i8
  %7 = or disjoint i8 %6, 48
  store i8 %7, ptr %3, align 1, !tbaa !548
  %8 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %8, align 1, !tbaa !548
  call fastcc void @lsm_tmp_name_add(ptr noundef nonnull %3) #21
  br label %9

9:                                                ; preds = %5, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #22
  ret ptr @lsm_tmp_name
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_lsm_tmp_name(ptr noundef %0) unnamed_addr #0 !prof !576 !PGOFuncName !577 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %42 [
    i16 49, label %7
    i16 48, label %7
    i16 47, label %7
    i16 42, label %10
    i16 118, label %10
    i16 46, label %10
    i16 43, label %13
    i16 44, label %16
    i16 41, label %19
    i16 45, label %29
    i16 141, label %32
    i16 32, label %35
    i16 34, label %35
    i16 28, label %40
    i16 36, label %41
    i16 23, label %6
  ], !prof !578

6:                                                ; preds = %42, %41, %40, %35, %27, %2, %29, %16, %13, %7
  ret void

7:                                                ; preds = %2, %2, %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !548
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %9) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.4) #21
  br label %6

10:                                               ; preds = %2, %2, %2
  %11 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !548
  br label %2

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !548
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %15) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.5) #21
  br label %6

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !548
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %18) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.6) #21
  br label %6

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !548
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %21) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.4) #21
  %22 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !548
  %24 = tail call ptr @get_name(ptr noundef %23) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !579

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi ptr [ %24, %19 ], [ @.str.7, %26 ]
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull %28) #21
  br label %6

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !548
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %31) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.8) #21
  br label %6

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !548
  br label %35

35:                                               ; preds = %2, %2, %32
  %36 = phi ptr [ %34, %32 ], [ %3, %2 ], [ %3, %2 ]
  %37 = tail call ptr @get_name(ptr noundef %36) #20
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str.9, ptr %37, !prof !580
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull %39) #21
  br label %6

40:                                               ; preds = %2
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.10) #21
  br label %6

41:                                               ; preds = %2
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.11) #21
  br label %6

42:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #20
  br label %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lsm_tmp_name_add(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !581 !PGOFuncName !582 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %3 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !527
  %4 = trunc i64 %2 to i32
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, 40
  br i1 %6, label %11, label %7, !prof !583

7:                                                ; preds = %1
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %8
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #21
  store i32 %5, ptr @lsm_tmp_name_length, align 4, !tbaa !527
  br label %11

11:                                               ; preds = %1, %7
  ret void
}

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_ssa_lim() local_unnamed_addr #0 !prof !584 {
  tail call fastcc void @tree_ssa_lim_initialize() #21
  tail call fastcc void @analyze_memory_references() #21
  tail call fastcc void @determine_invariantness() #21
  tail call fastcc void @store_motion() #21
  tail call fastcc void @move_computations() #21
  tail call fastcc void @tree_ssa_lim_finalize() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_lim_initialize() unnamed_addr #0 !prof !584 !PGOFuncName !585 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !515
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !586
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !588
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  tail call void @sbitmap_zero(ptr noundef %7) #20
  %8 = load ptr, ptr @cfun, align 8, !tbaa !515
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !586
  %11 = load ptr, ptr %10, align 8, !tbaa !590
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !591
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !593
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %40, label %17, !prof !594

17:                                               ; preds = %0, %31
  %18 = phi ptr [ %33, %31 ], [ %13, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %18) #21
  %19 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !535
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31, !prof !595

21:                                               ; preds = %17, %25
  %22 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  %23 = tail call fastcc zeroext i8 @nonpure_call_p(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28, !prof !596

25:                                               ; preds = %21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #21
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !535
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %21, label %31, !prof !597, !llvm.loop !598

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !600
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %30) #21
  br label %31

31:                                               ; preds = %25, %17, %28
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !591
  %34 = load ptr, ptr @cfun, align 8, !tbaa !515
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !586
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !593
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %17, !prof !601, !llvm.loop !602

40:                                               ; preds = %31, %0
  %41 = phi ptr [ %8, %0 ], [ %34, %31 ]
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !603
  %44 = getelementptr inbounds %struct.loops, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !604
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !515
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49, !prof !594

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %52, %49 ], [ %47, %40 ]
  tail call fastcc void @fill_always_executed_in(ptr noundef nonnull %50, ptr noundef %7) #21
  %51 = getelementptr inbounds %struct.loop, ptr %50, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !515
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !prof !606, !llvm.loop !607

54:                                               ; preds = %49, %40
  %55 = load ptr, ptr %7, align 8, !tbaa !608
  tail call void @free(ptr noundef %55) #21
  tail call void @free(ptr noundef %7) #21
  %56 = tail call ptr @pointer_map_create() #20
  store ptr %56, ptr @lim_aux_data_map, align 8, !tbaa !515
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_memory_references() unnamed_addr #0 !prof !584 !PGOFuncName !610 {
  %1 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @memref_hash, ptr noundef nonnull @memref_eq, ptr noundef nonnull @memref_free) #20
  store ptr %1, ptr @memory_accesses, align 8, !tbaa !611
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !613
  %2 = tail call fastcc i32 @number_of_loops() #21
  %3 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %2) #21
  store ptr %3, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8, !tbaa !614
  %4 = tail call fastcc i32 @number_of_loops() #21
  %5 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %4) #21
  store ptr %5, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8, !tbaa !615
  %6 = tail call fastcc i32 @number_of_loops() #21
  %7 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %6) #21
  store ptr %7, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8, !tbaa !616
  %8 = tail call fastcc i32 @number_of_loops() #21
  %9 = tail call fastcc ptr @VEC_htab_t_heap_alloc(i32 noundef %8) #21
  store ptr %9, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !617
  %10 = tail call fastcc i32 @number_of_loops() #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12, !prof !594

12:                                               ; preds = %0, %12
  %13 = phi i32 [ %22, %12 ], [ 0, %0 ]
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %15 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  tail call fastcc void @VEC_bitmap_base_quick_push(ptr noundef %15, ptr noundef %14) #21
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %17 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  tail call fastcc void @VEC_bitmap_base_quick_push(ptr noundef %17, ptr noundef %16) #21
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %19 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  tail call fastcc void @VEC_bitmap_base_quick_push(ptr noundef %19, ptr noundef %18) #21
  %20 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @vtoe_hash, ptr noundef nonnull @vtoe_eq, ptr noundef nonnull @vtoe_free) #20
  %21 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  tail call fastcc void @VEC_htab_t_base_quick_push(ptr noundef %21, ptr noundef %20) #21
  %22 = add nuw i32 %13, 1
  %23 = tail call fastcc i32 @number_of_loops() #21
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %12, label %25, !prof !618, !llvm.loop !619

25:                                               ; preds = %12, %0
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6), align 8, !tbaa !620
  tail call fastcc void @gather_mem_refs_in_loops() #21
  tail call fastcc void @create_vop_ref_mapping() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_invariantness() unnamed_addr #0 !prof !584 !PGOFuncName !621 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i8 1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @determine_invariantness_stmt, ptr %2, align 8, !tbaa !622
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !515
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !586
  %6 = load ptr, ptr %5, align 8, !tbaa !590
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %6) #20
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_motion() unnamed_addr #0 !prof !584 !PGOFuncName !624 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %2 = load ptr, ptr @cfun, align 8, !tbaa !515
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !603
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !604
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !594

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %0 ]
  tail call fastcc void @store_motion_loop(ptr noundef nonnull %11, ptr noundef %1) #21
  %12 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !515
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !prof !606, !llvm.loop !625

15:                                               ; preds = %10, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #20
  tail call void @gsi_commit_edge_inserts() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_computations() unnamed_addr #0 !prof !584 !PGOFuncName !626 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i8 1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @move_computations_stmt, ptr %2, align 8, !tbaa !622
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !515
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !586
  %6 = load ptr, ptr %5, align 8, !tbaa !590
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %6) #20
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #20
  call void @gsi_commit_edge_inserts() #20
  %7 = load ptr, ptr @cfun, align 8, !tbaa !515
  %8 = call zeroext i8 @need_ssa_update_p(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !627

10:                                               ; preds = %0
  call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #20
  br label %11

11:                                               ; preds = %10, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_lim_finalize() unnamed_addr #0 !prof !584 !PGOFuncName !628 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @cfun, align 8, !tbaa !515
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !586
  %6 = load ptr, ptr %5, align 8, !tbaa !590
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !593
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !591
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %18, label %12, !prof !594

12:                                               ; preds = %0, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !629
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !591
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %18, label %12, !prof !630, !llvm.loop !631

18:                                               ; preds = %12, %0
  %19 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !515
  tail call void @pointer_map_destroy(ptr noundef %19) #20
  tail call fastcc void @VEC_mem_ref_p_heap_free() #21
  %20 = load ptr, ptr @memory_accesses, align 8, !tbaa !611
  tail call void @htab_delete(ptr noundef %20) #20
  %21 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %22 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %1) #21, !range !632
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24, !prof !594

24:                                               ; preds = %18, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %18 ]
  %26 = load ptr, ptr %1, align 8, !tbaa !515
  tail call void @bitmap_obstack_free(ptr noundef %26) #20
  store ptr null, ptr %1, align 8, !tbaa !515
  %27 = add i32 %25, 1
  %28 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %29 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %1) #21, !range !632
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %24, !prof !633, !llvm.loop !634

31:                                               ; preds = %24, %18
  tail call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2)) #21
  %32 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %33 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %1) #21, !range !632
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35, !prof !594

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %38, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr %1, align 8, !tbaa !515
  tail call void @bitmap_obstack_free(ptr noundef %37) #20
  store ptr null, ptr %1, align 8, !tbaa !515
  %38 = add i32 %36, 1
  %39 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %40 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %39, i32 noundef %38, ptr noundef nonnull %1) #21, !range !632
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %35, !prof !633, !llvm.loop !635

42:                                               ; preds = %35, %31
  tail call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3)) #21
  %43 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %44 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %1) #21, !range !632
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46, !prof !594

46:                                               ; preds = %42, %46
  %47 = phi i32 [ %49, %46 ], [ 0, %42 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !515
  tail call void @bitmap_obstack_free(ptr noundef %48) #20
  store ptr null, ptr %1, align 8, !tbaa !515
  %49 = add i32 %47, 1
  %50 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %51 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %50, i32 noundef %49, ptr noundef nonnull %1) #21, !range !632
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %46, !prof !633, !llvm.loop !636

53:                                               ; preds = %46, %42
  tail call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4)) #21
  %54 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %55 = call fastcc i32 @VEC_htab_t_base_iterate(ptr noundef %54, i32 noundef 0, ptr noundef nonnull %2) #21, !range !632
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57, !prof !594

57:                                               ; preds = %53, %57
  %58 = phi i32 [ %60, %57 ], [ 0, %53 ]
  %59 = load ptr, ptr %2, align 8, !tbaa !515
  tail call void @htab_delete(ptr noundef %59) #20
  %60 = add i32 %58, 1
  %61 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %62 = call fastcc i32 @VEC_htab_t_base_iterate(ptr noundef %61, i32 noundef %60, ptr noundef nonnull %2) #21, !range !632
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %57, !prof !633, !llvm.loop !637

64:                                               ; preds = %57, %53
  tail call fastcc void @VEC_htab_t_heap_free() #21
  %65 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6), align 8, !tbaa !620
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !638

67:                                               ; preds = %64
  tail call void @pointer_map_destroy(ptr noundef nonnull %65) #20
  br label %68

68:                                               ; preds = %67, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !639 !PGOFuncName !640 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !641
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !643
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !644
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !645 !PGOFuncName !646 {
  %2 = load ptr, ptr %0, align 8, !tbaa !641
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @nonpure_call_p(ptr noundef %0) unnamed_addr #0 !prof !647 !PGOFuncName !648 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %4, label %6, !prof !649

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !650 !PGOFuncName !651 {
  %2 = load ptr, ptr %0, align 8, !tbaa !641
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !654 !PGOFuncName !655 {
  %2 = load ptr, ptr %0, align 8, !tbaa !641
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !656
  store ptr %4, ptr %0, align 8, !tbaa !641
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !657 !PGOFuncName !658 {
  %3 = load ptr, ptr %0, align 8, !tbaa !608
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !659

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
  %15 = load i64, ptr %14, align 8, !tbaa !569
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !548
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !548
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !569
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !569
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_always_executed_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !660 !PGOFuncName !661 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !662
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !629
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %97, !prof !666

10:                                               ; preds = %2
  %11 = tail call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %0) #20
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !667
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %85, label %15, !prof !668

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds i8, ptr %4, i64 8
  br label %18

18:                                               ; preds = %15, %80
  %19 = phi ptr [ null, %15 ], [ %28, %80 ]
  %20 = phi ptr [ %0, %15 ], [ %81, %80 ]
  %21 = phi i32 [ 0, %15 ], [ %82, %80 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %11, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !515
  %25 = load ptr, ptr %16, align 8, !tbaa !669
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %24) #20
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr %19, ptr %24, !prof !670
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !600
  %31 = lshr i32 %30, 6
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !569
  %35 = and i32 %30, 63
  %36 = zext nneg i32 %35 to i64
  %37 = shl nuw i64 1, %36
  %38 = and i64 %37, %34
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %79, !prof !671

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !672
  store ptr %42, ptr %17, align 8, !tbaa.struct !673
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %3) #21, !range !535
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45, !prof !674

45:                                               ; preds = %40, %51
  %46 = load ptr, ptr %3, align 8, !tbaa !515
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !675
  %49 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %48) #20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %79, label %51, !prof !677

51:                                               ; preds = %45
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %52 = load i32, ptr %4, align 8
  %53 = load ptr, ptr %17, align 8
  %54 = call fastcc zeroext i8 @ei_cond(i32 %52, ptr %53, ptr noundef nonnull %3) #21, !range !535
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %45, !prof !678, !llvm.loop !679

56:                                               ; preds = %51, %40
  %57 = load ptr, ptr %3, align 8, !tbaa !515
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %79, !prof !680

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !681
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79, !prof !682

64:                                               ; preds = %59
  %65 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %20, ptr noundef nonnull %24) #20
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67, !prof !683

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !684
  %70 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !662
  %72 = icmp eq ptr %71, %24
  br i1 %72, label %73, label %80, !prof !685

73:                                               ; preds = %67
  %74 = load ptr, ptr %16, align 8, !tbaa !669
  %75 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %74, ptr noundef nonnull %24) #20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77, !prof !686

77:                                               ; preds = %73
  %78 = load ptr, ptr %68, align 8, !tbaa !684
  br label %80

79:                                               ; preds = %18, %56, %59, %64, %73, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %85

80:                                               ; preds = %77, %67
  %81 = phi ptr [ %78, %77 ], [ %20, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %82 = add nuw i32 %21, 1
  %83 = load i32, ptr %12, align 4, !tbaa !667
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %18, label %85, !prof !687, !llvm.loop !688

85:                                               ; preds = %80, %10, %79
  %86 = phi ptr [ %28, %79 ], [ null, %10 ], [ %28, %80 ]
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 2
  store ptr %0, ptr %87, align 8, !tbaa !629
  %88 = load ptr, ptr %5, align 8, !tbaa !662
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %96, label %90, !prof !689

90:                                               ; preds = %85, %90
  %91 = phi ptr [ %92, %90 ], [ %86, %85 ]
  %92 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %91) #20
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  store ptr %0, ptr %93, align 8, !tbaa !629
  %94 = load ptr, ptr %5, align 8, !tbaa !662
  %95 = icmp eq ptr %92, %94
  br i1 %95, label %96, label %90, !prof !690

96:                                               ; preds = %90, %85
  tail call void @free(ptr noundef %11) #21
  br label %97

97:                                               ; preds = %96, %2
  %98 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !515
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101, !prof !691

101:                                              ; preds = %97, %101
  %102 = phi ptr [ %104, %101 ], [ %99, %97 ]
  tail call fastcc void @fill_always_executed_in(ptr noundef nonnull %102, ptr noundef %1) #21
  %103 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !515
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %101, !prof !692, !llvm.loop !693

106:                                              ; preds = %101, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !639 !PGOFuncName !694 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !681
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !695

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !548
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !696

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !697
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !639 !PGOFuncName !699 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !696

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !700
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !702 !PGOFuncName !703 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !704 !PGOFuncName !705 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !535
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !706

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !515
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !707 !PGOFuncName !708 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !709

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !710

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !711
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !711
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !704 !PGOFuncName !713 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !714

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !715 !PGOFuncName !716 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !717

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !718 !PGOFuncName !719 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !720

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !721
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !723 !PGOFuncName !724 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !725

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !715 !PGOFuncName !726 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @memref_hash(ptr nocapture noundef readonly %0) #3 !prof !727 !PGOFuncName !728 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !729
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @memref_eq(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !731 !PGOFuncName !732 {
  %3 = load ptr, ptr %0, align 8, !tbaa !733
  %4 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %1, i32 noundef 0) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @memref_free(ptr nocapture noundef %0) #0 !prof !734 !PGOFuncName !735 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !736
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  store ptr null, ptr %3, align 8, !tbaa !736
  %5 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !737
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  store ptr null, ptr %5, align 8, !tbaa !737
  %7 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !738
  tail call void @bitmap_obstack_free(ptr noundef %8) #20
  store ptr null, ptr %7, align 8, !tbaa !738
  %9 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !739
  tail call void @bitmap_obstack_free(ptr noundef %10) #20
  store ptr null, ptr %9, align 8, !tbaa !739
  %11 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !740
  tail call void @bitmap_obstack_free(ptr noundef %12) #20
  store ptr null, ptr %11, align 8, !tbaa !740
  %13 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !741
  %15 = call fastcc i32 @VEC_mem_ref_locs_p_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #21, !range !632
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17, !prof !742

17:                                               ; preds = %1, %17
  %18 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !515
  tail call fastcc void @free_mem_ref_locs(ptr noundef %19) #21
  %20 = add i32 %18, 1
  %21 = load ptr, ptr %13, align 8, !tbaa !741
  %22 = call fastcc i32 @VEC_mem_ref_locs_p_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %2) #21, !range !632
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17, !prof !743, !llvm.loop !744

24:                                               ; preds = %17, %1
  tail call fastcc void @VEC_mem_ref_locs_p_heap_free(ptr noundef nonnull %13) #21
  %25 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !745
  tail call void @bitmap_obstack_free(ptr noundef %26) #20
  tail call void @free(ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !746 !PGOFuncName !747 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #10 !prof !748 !PGOFuncName !749 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !515
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !603
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !750

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !751
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #21
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_htab_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !584 !PGOFuncName !752 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !753 !PGOFuncName !754 {
  %3 = load i32, ptr %0, align 8, !tbaa !755
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !755
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vtoe_hash(ptr nocapture noundef readonly %0) #3 !prof !757 !PGOFuncName !758 {
  %2 = load i32, ptr %0, align 8, !tbaa !759
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vtoe_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !761 !PGOFuncName !762 {
  %3 = load i32, ptr %0, align 8, !tbaa !759
  %4 = load i32, ptr %1, align 4, !tbaa !527
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vtoe_free(ptr nocapture noundef %0) #0 !prof !763 !PGOFuncName !764 {
  %2 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !765
  tail call void @bitmap_obstack_free(ptr noundef %3) #20
  store ptr null, ptr %2, align 8, !tbaa !765
  %4 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !766
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_htab_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !767 !PGOFuncName !768 {
  %3 = load i32, ptr %0, align 8, !tbaa !769
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !769
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !515
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_mem_refs_in_loops() unnamed_addr #0 !prof !584 !PGOFuncName !771 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !515
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !586
  %7 = load ptr, ptr %6, align 8, !tbaa !590
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !591
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !593
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %39, label %13, !prof !594

13:                                               ; preds = %0, %30
  %14 = phi ptr [ %33, %30 ], [ %4, %0 ]
  %15 = phi ptr [ %32, %30 ], [ %9, %0 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !684
  %18 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !603
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !604
  %22 = icmp eq ptr %17, %21
  br i1 %22, label %30, label %23, !prof !772

23:                                               ; preds = %13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef nonnull %15) #21
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !535
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30, !prof !773

26:                                               ; preds = %23, %26
  %27 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  tail call fastcc void @gather_mem_refs_stmt(ptr noundef %17, ptr noundef %27) #21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #21
  %28 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !535
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %26, label %30, !prof !774, !llvm.loop !775

30:                                               ; preds = %26, %23, %13
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !591
  %33 = load ptr, ptr @cfun, align 8, !tbaa !515
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !586
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !593
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %39, label %13, !prof !601, !llvm.loop !776

39:                                               ; preds = %30, %0
  %40 = phi ptr [ undef, %0 ], [ %17, %30 ]
  store ptr %40, ptr %2, align 8, !tbaa !515
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #21
  %41 = load ptr, ptr %2, align 8, !tbaa !515
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43, !prof !594

43:                                               ; preds = %39, %70
  %44 = phi ptr [ %71, %70 ], [ %41, %39 ]
  %45 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %46 = load i32, ptr %44, align 8, !tbaa !777
  %47 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %45, i32 noundef %46) #21
  %48 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %49 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %48, i32 noundef %46) #21
  %50 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %49, ptr noundef %47) #20
  %51 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %44) #21
  %52 = load ptr, ptr @cfun, align 8, !tbaa !515
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !603
  %55 = getelementptr inbounds %struct.loops, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !604
  %57 = icmp eq ptr %51, %56
  br i1 %57, label %70, label %58, !prof !778

58:                                               ; preds = %43
  %59 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %60 = load i32, ptr %44, align 8, !tbaa !777
  %61 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %59, i32 noundef %60) #21
  %62 = load i32, ptr %51, align 8, !tbaa !777
  %63 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %59, i32 noundef %62) #21
  %64 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %63, ptr noundef %61) #20
  %65 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %66 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %44) #21
  %67 = load i32, ptr %66, align 8, !tbaa !777
  %68 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %65, i32 noundef %67) #21
  %69 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %68, ptr noundef %49) #20
  br label %70

70:                                               ; preds = %43, %58
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %71 = load ptr, ptr %2, align 8, !tbaa !515
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %43, !prof !779, !llvm.loop !780

73:                                               ; preds = %70, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_vop_ref_mapping() unnamed_addr #0 !prof !584 !PGOFuncName !781 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #21
  %3 = load ptr, ptr %2, align 8, !tbaa !515
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !594

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call fastcc void @create_vop_ref_mapping_loop(ptr noundef nonnull %6) #21
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  %7 = load ptr, ptr %2, align 8, !tbaa !515
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !779, !llvm.loop !782

9:                                                ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_mem_ref_locs_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !783 !PGOFuncName !784 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !785

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !786
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !788

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !515
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !515
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_mem_ref_locs(ptr noundef %0) unnamed_addr #0 !prof !789 !PGOFuncName !790 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4, !prof !791

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !792
  %6 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #21, !range !632
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8, !prof !794

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !515
  tail call void @free(ptr noundef %10) #21
  %11 = add i32 %9, 1
  %12 = load ptr, ptr %0, align 8, !tbaa !792
  %13 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %12, i32 noundef %11, ptr noundef nonnull %2) #21, !range !632
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %8, !prof !795, !llvm.loop !796

15:                                               ; preds = %8, %4
  tail call fastcc void @VEC_mem_ref_loc_p_heap_free(ptr noundef nonnull %0) #21
  tail call void @free(ptr noundef nonnull %0) #21
  br label %16

16:                                               ; preds = %1, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !734 !PGOFuncName !797 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !798

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !799 !PGOFuncName !800 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !801

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !802
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !804

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !515
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !515
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_mem_ref_loc_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !805 !PGOFuncName !806 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !807

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !515
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !808 !PGOFuncName !809 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !810

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !811
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_mem_refs_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !813 !PGOFuncName !814 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6, !prof !815

6:                                                ; preds = %2
  %7 = call fastcc ptr @simple_mem_ref_in_stmt(ptr noundef %1, ptr noundef nonnull %3) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9, !prof !816

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !515
  %11 = tail call i32 @iterative_hash_expr(ptr noundef %10, i32 noundef 0) #20
  %12 = load ptr, ptr @memory_accesses, align 8, !tbaa !611
  %13 = load ptr, ptr %7, align 8, !tbaa !515
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef %13, i32 noundef %11, i32 noundef 1) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !515
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %34, !prof !817

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %19 = tail call fastcc i32 @VEC_mem_ref_p_base_length(ptr noundef %18) #21
  %20 = load ptr, ptr %7, align 8, !tbaa !515
  %21 = tail call fastcc ptr @mem_ref_alloc(ptr noundef %20, i32 noundef %11, i32 noundef %19) #21
  tail call fastcc void @VEC_mem_ref_p_heap_safe_push(ptr noundef %21) #21
  store ptr %21, ptr %14, align 8, !tbaa !515
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24, !prof !818

24:                                               ; preds = %17
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.13, i32 noundef %19) #21
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %31 = load ptr, ptr %21, align 8, !tbaa !733
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef %31, i32 noundef 2) #20
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %33 = tail call i32 @fputc(i32 10, ptr %32)
  br label %34

34:                                               ; preds = %9, %17, %24, %28
  %35 = phi ptr [ %21, %28 ], [ %21, %24 ], [ %21, %17 ], [ %15, %9 ]
  %36 = load i8, ptr %3, align 1, !tbaa !548
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !819

38:                                               ; preds = %34
  tail call fastcc void @mark_ref_stored(ptr noundef %35, ptr noundef %0) #21
  br label %39

39:                                               ; preds = %38, %34
  %40 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42, !prof !820

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.mem_ref, ptr %35, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !745
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !548
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !548
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %48) #20
  br label %50

50:                                               ; preds = %42, %39
  tail call fastcc void @record_mem_ref_loc(ptr noundef %35, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  br label %63

51:                                               ; preds = %6
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54, !prof !821

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %56 = load i32, ptr %0, align 8, !tbaa !777
  %57 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %55, i32 noundef %56) #21
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !548
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !548
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %57, i32 noundef %61) #20
  br label %63

63:                                               ; preds = %51, %54, %2, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !822 !PGOFuncName !823 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !824
  %5 = load ptr, ptr @cfun, align 8, !tbaa !515
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !603
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !826

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !827
  store ptr null, ptr %1, align 8, !tbaa !515
  br label %68

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #21
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #21
  store ptr %12, ptr %0, align 8, !tbaa !827
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @cfun, align 8, !tbaa !515
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !603
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !604
  br i1 %16, label %47, label %22, !prof !828

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %10 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !829
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !prof !830, !llvm.loop !831

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !777
  %30 = icmp slt i32 %29, %14
  br i1 %30, label %33, label %31, !prof !832

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !827
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %32, i32 noundef %29) #21
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !833
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37, !prof !834

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !829
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %37, !prof !835, !llvm.loop !836

42:                                               ; preds = %33
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %28) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45, !prof !837

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %27

47:                                               ; preds = %10, %57
  %48 = phi ptr [ %58, %57 ], [ %21, %10 ]
  %49 = load i32, ptr %48, align 8, !tbaa !777
  %50 = icmp slt i32 %49, %14
  br i1 %50, label %53, label %51, !prof !832

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !827
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %52, i32 noundef %49) #21
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !829
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !838

57:                                               ; preds = %59, %53
  %58 = phi ptr [ %55, %53 ], [ %62, %59 ]
  br label %47

59:                                               ; preds = %53, %64
  %60 = phi ptr [ %65, %64 ], [ %48, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !833
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57, !prof !839

64:                                               ; preds = %59
  %65 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %60) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !prof !840, !llvm.loop !841

67:                                               ; preds = %42, %64
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_bitmap_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !842 !PGOFuncName !843 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !844 !PGOFuncName !845 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !846
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !847

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #21
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !848 !PGOFuncName !849 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !824
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !827
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #21, !range !632
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !850

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !824
  %13 = load i32, ptr %3, align 4, !tbaa !527
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #21
  store ptr %14, ptr %1, align 8, !tbaa !515
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !851, !llvm.loop !852

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #21
  store ptr null, ptr %1, align 8, !tbaa !515
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !853 !PGOFuncName !854 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !535
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !855

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simple_mem_ref_in_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !856 !PGOFuncName !857 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %31, !prof !858

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #21, !range !859
  %7 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) #21
  %8 = load ptr, ptr %7, align 8, !tbaa !515
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %21, !prof !860

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #21, !range !530
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %31, !prof !861

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %17 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %16) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19, !prof !862

19:                                               ; preds = %15
  store i8 0, ptr %1, align 1, !tbaa !548
  %20 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) #21
  br label %31

21:                                               ; preds = %5
  %22 = icmp eq i32 %6, 141
  br i1 %22, label %30, label %23, !prof !863

23:                                               ; preds = %21
  %24 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #21, !range !530
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %31, !prof !864

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %28 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %27) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !865

30:                                               ; preds = %26, %21
  store i8 1, ptr %1, align 1, !tbaa !548
  br label %31

31:                                               ; preds = %23, %26, %12, %15, %2, %30, %19
  %32 = phi ptr [ %20, %19 ], [ %7, %30 ], [ null, %2 ], [ null, %15 ], [ null, %12 ], [ null, %26 ], [ null, %23 ]
  ret ptr %32
}

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !734 !PGOFuncName !866 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !867

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !868
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mem_ref_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !734 !PGOFuncName !870 {
  %4 = tail call ptr @xmalloc(i64 noundef 72) #20
  store ptr %0, ptr %4, align 8, !tbaa !733
  %5 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !871
  %6 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 2
  store i32 %1, ptr %6, align 4, !tbaa !729
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %8 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !736
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %10 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !737
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %12 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 7
  store ptr %11, ptr %12, align 8, !tbaa !738
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %14 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 8
  store ptr %13, ptr %14, align 8, !tbaa !739
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %16 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 9
  store ptr %15, ptr %16, align 8, !tbaa !740
  %17 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 4
  store ptr null, ptr %17, align 8, !tbaa !741
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %19 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !745
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !734 !PGOFuncName !872 {
  tail call fastcc void @VEC_mem_ref_p_heap_reserve() #21
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !515
  tail call fastcc void @VEC_mem_ref_p_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_stored(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !873 !PGOFuncName !874 {
  %3 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr @cfun, align 8, !tbaa !515
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !603
  %7 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !604
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %27, label %10, !prof !875

10:                                               ; preds = %2, %16
  %11 = phi ptr [ %20, %16 ], [ %1, %2 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !736
  %13 = load i32, ptr %11, align 8, !tbaa !777
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %12, i32 noundef %13) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27, !prof !876

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa !736
  %18 = load i32, ptr %11, align 8, !tbaa !777
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %18) #20
  %20 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %11) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !515
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !603
  %24 = getelementptr inbounds %struct.loops, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !604
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %27, label %10, !prof !877, !llvm.loop !878

27:                                               ; preds = %10, %16, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_mem_ref_loc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !879 !PGOFuncName !880 {
  %5 = tail call ptr @xmalloc(i64 noundef 16) #20
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %7 = load i32, ptr %1, align 8, !tbaa !777
  %8 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %6, i32 noundef %7) #21
  %9 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !741
  %11 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef %10) #21
  %12 = icmp ugt i32 %11, %7
  br i1 %12, label %17, label %13, !prof !881

13:                                               ; preds = %4
  %14 = add nsw i32 %7, 1
  tail call fastcc void @VEC_mem_ref_locs_p_heap_safe_grow_cleared(ptr noundef nonnull %9, i32 noundef %14) #21
  %15 = load ptr, ptr %9, align 8, !tbaa !741
  %16 = load i32, ptr %1, align 8, !tbaa !777
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ %7, %4 ]
  %19 = phi ptr [ %15, %13 ], [ %10, %4 ]
  %20 = tail call fastcc ptr @VEC_mem_ref_locs_p_base_index(ptr noundef %19, i32 noundef %18) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26, !prof !882

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @mem_ref_locs_alloc() #21
  %24 = load ptr, ptr %9, align 8, !tbaa !741
  %25 = load i32, ptr %1, align 8, !tbaa !777
  tail call fastcc void @VEC_mem_ref_locs_p_base_replace(ptr noundef %24, i32 noundef %25, ptr noundef %23) #21
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi ptr [ %20, %17 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.mem_ref_loc, ptr %5, i64 0, i32 1
  store ptr %2, ptr %28, align 8, !tbaa !883
  store ptr %3, ptr %5, align 8, !tbaa !885
  tail call fastcc void @VEC_mem_ref_loc_p_heap_safe_push(ptr noundef %27, ptr noundef nonnull %5) #21
  %29 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !871
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %30) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !886 !PGOFuncName !887 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !859
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #21, !range !530
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !888

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !889 !PGOFuncName !890 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 !prof !891 !PGOFuncName !892 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !548
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_addressable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !893 !PGOFuncName !894 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 !prof !895 !PGOFuncName !896 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !886 !PGOFuncName !897 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !898

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !899 !PGOFuncName !900 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !535
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !901

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_p_heap_reserve() unnamed_addr #0 !prof !734 !PGOFuncName !902 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !515
  %2 = tail call fastcc i32 @VEC_mem_ref_p_base_space(ptr noundef %1) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !903

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #20
  store ptr %5, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !515
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_mem_ref_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !734 !PGOFuncName !904 {
  %3 = load i32, ptr %0, align 8, !tbaa !868
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !868
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !734 !PGOFuncName !905 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !867

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !906
  %6 = load i32, ptr %0, align 8, !tbaa !868
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
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !907 !PGOFuncName !908 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !909

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !786
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !910 !PGOFuncName !911 {
  %3 = load ptr, ptr %0, align 8, !tbaa !515
  %4 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef %3) #21
  tail call fastcc void @VEC_mem_ref_locs_p_heap_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !515
  %6 = tail call fastcc ptr @VEC_mem_ref_locs_p_base_address(ptr noundef %5) #21
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_mem_ref_locs_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !912 !PGOFuncName !913 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mem_ref_locs_alloc() unnamed_addr #0 !prof !914 !PGOFuncName !915 {
  %1 = tail call ptr @xmalloc(i64 noundef 8) #20
  store ptr null, ptr %1, align 8, !tbaa !792
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_mem_ref_locs_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #13 !prof !914 !PGOFuncName !916 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !515
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_loc_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !917 !PGOFuncName !918 {
  tail call fastcc void @VEC_mem_ref_loc_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !515
  tail call fastcc void @VEC_mem_ref_loc_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !910 !PGOFuncName !919 {
  %3 = load ptr, ptr %0, align 8, !tbaa !515
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !920

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !786
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_mem_ref_locs_p_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #21
  %10 = load ptr, ptr %0, align 8, !tbaa !515, !nonnull !921, !noundef !921
  store i32 %1, ptr %10, align 8, !tbaa !786
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_mem_ref_locs_p_base_address(ptr noundef readnone %0) unnamed_addr #4 !prof !910 !PGOFuncName !922 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !923
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !910 !PGOFuncName !924 {
  %3 = load ptr, ptr %0, align 8, !tbaa !515
  %4 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_space(ptr noundef %3, i32 noundef %1) #21, !range !632
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !925

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !515
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_locs_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !910 !PGOFuncName !926 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !920

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !927
  %7 = load i32, ptr %0, align 8, !tbaa !786
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
define internal fastcc void @VEC_mem_ref_loc_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !917 !PGOFuncName !928 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  %3 = tail call fastcc i32 @VEC_mem_ref_loc_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !929

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_mem_ref_loc_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !917 !PGOFuncName !930 {
  %3 = load i32, ptr %0, align 8, !tbaa !802
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !802
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_loc_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !917 !PGOFuncName !931 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !932

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !933
  %6 = load i32, ptr %0, align 8, !tbaa !802
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !822 !PGOFuncName !934 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 !prof !935 !PGOFuncName !936 {
  %3 = load i32, ptr %0, align 4, !tbaa !937
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !937
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !527
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !939 !PGOFuncName !940 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !848 !PGOFuncName !941 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !942

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !937
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !943

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !527
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !527
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #10 !prof !935 !PGOFuncName !944 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !515
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !603
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !751
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #21
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !822 !PGOFuncName !945 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !826

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !515
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_vop_ref_mapping_loop(ptr noundef readonly %0) unnamed_addr #0 !prof !660 !PGOFuncName !946 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %5 = load i32, ptr %0, align 8, !tbaa !777
  %6 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %4, i32 noundef %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !535
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9, !prof !947

9:                                                ; preds = %1
  %10 = load ptr, ptr @cfun, align 8, !tbaa !515
  br label %11

11:                                               ; preds = %9, %30
  %12 = phi ptr [ %10, %9 ], [ %31, %30 ]
  %13 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %14 = load i32, ptr %3, align 4, !tbaa !527
  %15 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %13, i32 noundef %14) #21
  %16 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !603
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !604
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %30, label %21, !prof !794

21:                                               ; preds = %11, %21
  %22 = phi ptr [ %23, %21 ], [ %0, %11 ]
  tail call fastcc void @add_vop_ref_mapping(ptr noundef %22, ptr noundef %15) #21
  %23 = tail call fastcc ptr @loop_outer(ptr noundef %22) #21
  %24 = load ptr, ptr @cfun, align 8, !tbaa !515
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !603
  %27 = getelementptr inbounds %struct.loops, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !604
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %21, !prof !948, !llvm.loop !949

30:                                               ; preds = %21, %11
  %31 = phi ptr [ %12, %11 ], [ %24, %21 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !535
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %11, !prof !950, !llvm.loop !951

34:                                               ; preds = %30, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !952 !PGOFuncName !953 {
  %4 = load ptr, ptr %1, align 8, !tbaa !954
  store ptr %4, ptr %0, align 8, !tbaa !956
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !958
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !959

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !956
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !960
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !962
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !569
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !963
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !527
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #17 !prof !964 !PGOFuncName !965 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !963
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !966

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !967

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !527
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !968, !llvm.loop !969

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !527
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !527
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !962
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !956
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !962
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !970

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !569
  store i64 %35, ptr %3, align 8, !tbaa !963
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !971

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !527
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !527
  %40 = load i32, ptr %23, align 8, !tbaa !962
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !962
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !972, !llvm.loop !973

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !974
  store ptr %44, ptr %0, align 8, !tbaa !956
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !975

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !960
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !527
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !963
  store i32 %16, ptr %1, align 4, !tbaa !527
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_mem_ref_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !976 !PGOFuncName !977 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_vop_ref_mapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !978 !PGOFuncName !979 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %6 = load i32, ptr %0, align 8, !tbaa !777
  %7 = tail call fastcc ptr @VEC_htab_t_base_index(ptr noundef %5, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !736
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %6) #20
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %13 = load i32, ptr %0, align 8, !tbaa !777
  %14 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %12, i32 noundef %13) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %15 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !745
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %3, ptr noundef %16, ptr noundef %14, ptr noundef nonnull %4) #21
  %17 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !535
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19, !prof !980

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %21
  %22 = load i32, ptr %4, align 4, !tbaa !527
  %23 = load i32, ptr %20, align 8, !tbaa !871
  tail call fastcc void @record_vop_access(ptr noundef %7, i32 noundef %22, i32 noundef %23, i8 noundef zeroext %11) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %24 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !535
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %21, !prof !981, !llvm.loop !982

26:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !983 !PGOFuncName !984 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !963
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !963
  %6 = load i32, ptr %1, align 4, !tbaa !527
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !527
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_htab_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !985 !PGOFuncName !986 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_compl_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 !prof !987 !PGOFuncName !988 {
  %5 = load ptr, ptr %1, align 8, !tbaa !954
  store ptr %5, ptr %0, align 8, !tbaa !956
  %6 = load ptr, ptr %2, align 8, !tbaa !954
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !958
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %10, !prof !989

9:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !956
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %9 ]
  %12 = icmp eq ptr %6, null
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !960
  br i1 %12, label %23, label %15, !prof !990

15:                                               ; preds = %10, %20
  %16 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !960
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %28, !prof !991

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !974
  store ptr %21, ptr %7, align 8, !tbaa !958
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !prof !992, !llvm.loop !993

23:                                               ; preds = %20, %10
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !962
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !569
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %26, ptr %27, align 8, !tbaa !963
  br label %41

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %29, align 8, !tbaa !962
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !569
  %32 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %31, ptr %32, align 8, !tbaa !963
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !960
  %35 = icmp eq i32 %14, %34
  br i1 %35, label %36, label %41, !prof !994

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 0
  %38 = load i64, ptr %37, align 8, !tbaa !569
  %39 = xor i64 %38, -1
  %40 = and i64 %31, %39
  store i64 %40, ptr %32, align 8, !tbaa !963
  br label %41

41:                                               ; preds = %23, %36, %28
  %42 = phi i64 [ %40, %36 ], [ %31, %28 ], [ %26, %23 ]
  %43 = shl i32 %14, 7
  %44 = icmp eq i64 %42, 0
  %45 = zext i1 %44 to i32
  %46 = or disjoint i32 %43, %45
  store i32 %46, ptr %3, align 4, !tbaa !527
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and_compl(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #17 !prof !995 !PGOFuncName !996 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !963
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !997

6:                                                ; preds = %51, %2
  %7 = phi i64 [ %4, %2 ], [ %52, %51 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %79, !prof !998

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !527
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %78, !prof !999, !llvm.loop !1000

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !527
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !527
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !962
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !956
  br label %28

28:                                               ; preds = %19, %76
  %29 = phi ptr [ %27, %19 ], [ %61, %76 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %76 ]
  store i32 %30, ptr %23, align 8, !tbaa !962
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %60, label %32, !prof !1001

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !958
  %34 = icmp eq ptr %33, null
  br label %35

35:                                               ; preds = %32, %54
  %36 = phi i32 [ %30, %32 ], [ %58, %54 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !569
  store i64 %39, ptr %3, align 8, !tbaa !963
  br i1 %34, label %51, label %40, !prof !1002

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %42 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  %43 = load i32, ptr %41, align 8, !tbaa !960
  %44 = load i32, ptr %42, align 8, !tbaa !960
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51, !prof !994

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %37
  %48 = load i64, ptr %47, align 8, !tbaa !569
  %49 = xor i64 %48, -1
  %50 = and i64 %39, %49
  store i64 %50, ptr %3, align 8, !tbaa !963
  br label %51

51:                                               ; preds = %40, %46, %35
  %52 = phi i64 [ %50, %46 ], [ %39, %35 ], [ %39, %40 ]
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %6, !prof !1003

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4, !tbaa !527
  %56 = add i32 %55, 64
  store i32 %56, ptr %1, align 4, !tbaa !527
  %57 = load i32, ptr %23, align 8, !tbaa !962
  %58 = add i32 %57, 1
  store i32 %58, ptr %23, align 8, !tbaa !962
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %35, !prof !1004, !llvm.loop !1005

60:                                               ; preds = %54, %28
  %61 = load ptr, ptr %29, align 8, !tbaa !974
  store ptr %61, ptr %0, align 8, !tbaa !956
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63, !prof !1006

63:                                               ; preds = %60
  %64 = load ptr, ptr %26, align 8, !tbaa !958
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %61, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !960
  br i1 %65, label %76, label %68, !prof !1007

68:                                               ; preds = %63, %73
  %69 = phi ptr [ %74, %73 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !960
  %72 = icmp ult i32 %71, %67
  br i1 %72, label %73, label %76, !prof !1008

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 8, !tbaa !974
  store ptr %74, ptr %26, align 8, !tbaa !958
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68, !prof !1009, !llvm.loop !1010

76:                                               ; preds = %68, %73, %63
  %77 = shl i32 %67, 7
  store i32 %77, ptr %1, align 4, !tbaa !527
  br label %28

78:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !963
  store i32 %16, ptr %1, align 4, !tbaa !527
  br label %79

79:                                               ; preds = %60, %6, %78
  %80 = phi i8 [ 1, %78 ], [ 1, %6 ], [ 0, %60 ]
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_vop_access(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1011 !PGOFuncName !1012 {
  %5 = alloca i32, align 4
  store i32 %1, ptr %5, align 4, !tbaa !527
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, i32 noundef 1) #20
  %7 = load ptr, ptr %6, align 8, !tbaa !515
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16, !prof !1013

9:                                                ; preds = %4
  %10 = call ptr @xmalloc(i64 noundef 24) #20
  %11 = load i32, ptr %5, align 4, !tbaa !527
  store i32 %11, ptr %10, align 8, !tbaa !759
  %12 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %13 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %10, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !765
  %14 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %15 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %10, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !766
  store ptr %10, ptr %6, align 8, !tbaa !515
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %18 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !765
  %20 = call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %2) #20
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %26, label %22, !prof !1014

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !766
  %25 = call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %2) #20
  br label %26

26:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @determine_invariantness_stmt(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !1015 !PGOFuncName !1016 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !629
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !684
  %10 = tail call fastcc ptr @loop_outer(ptr noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %127, label %12, !prof !1017

12:                                               ; preds = %2
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15, !prof !1018

15:                                               ; preds = %12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !600
  %22 = load i32, ptr %9, align 8, !tbaa !777
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %9) #21
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %22, i32 noundef %23) #21
  br label %25

25:                                               ; preds = %19, %15, %12
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #21
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !535
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %127, !prof !773

28:                                               ; preds = %25, %122
  %29 = phi i8 [ %124, %122 ], [ %7, %25 ]
  %30 = phi ptr [ %123, %122 ], [ %5, %25 ]
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %32 = call i32 @movement_possibility(ptr noundef %31) #21, !range !1019
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43, !prof !1020

34:                                               ; preds = %28
  %35 = call fastcc zeroext i8 @nonpure_call_p(ptr noundef %31) #21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %122, !prof !1021

37:                                               ; preds = %34
  %38 = call zeroext i8 @stmt_makes_single_store(ptr noundef %31) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %122, label %40, !prof !1022

40:                                               ; preds = %37
  %41 = call fastcc ptr @init_lim_data(ptr noundef %31) #21
  %42 = getelementptr inbounds %struct.lim_aux_data, ptr %41, i64 0, i32 2
  store ptr %30, ptr %42, align 8, !tbaa !1023
  br label %122

43:                                               ; preds = %28
  %44 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %31) #21, !range !535
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %88, label %46, !prof !1025

46:                                               ; preds = %43
  %47 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %31) #21, !range !859
  %48 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %47) #21, !range !530
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %88, !prof !1026

50:                                               ; preds = %46
  %51 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %31) #21
  %52 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %31) #21
  %53 = call fastcc ptr @loop_containing_stmt(ptr noundef %31) #21
  %54 = call fastcc ptr @outermost_invariant_loop(ptr noundef %52, ptr noundef %53) #21
  %55 = icmp eq i32 %32, 2
  br i1 %55, label %56, label %88, !prof !1027

56:                                               ; preds = %50
  %57 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %31) #21, !range !859
  %58 = icmp eq i32 %57, 75
  br i1 %58, label %59, label %72, !prof !1028

59:                                               ; preds = %56
  %60 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !527
  %61 = icmp ne i32 %60, 0
  %62 = load i32, ptr @flag_trapping_math, align 4
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  %65 = icmp ne ptr %54, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = call fastcc ptr @outermost_invariant_loop(ptr noundef %51, ptr noundef nonnull %54) #21
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call fastcc ptr @rewrite_reciprocal(ptr noundef nonnull %3) #21
  br label %72

72:                                               ; preds = %70, %67, %59, %56
  %73 = phi ptr [ %31, %56 ], [ %31, %59 ], [ %31, %67 ], [ %71, %70 ]
  %74 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %73) #21, !range !859
  %75 = icmp eq i32 %74, 89
  br i1 %75, label %76, label %88, !prof !1029

76:                                               ; preds = %72
  %77 = call i32 @integer_onep(ptr noundef %52) #20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79, !prof !1030

79:                                               ; preds = %76
  %80 = load i64, ptr %51, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 141
  br i1 %82, label %83, label %88, !prof !1031

83:                                               ; preds = %79
  %84 = call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %51) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86, !prof !1032

86:                                               ; preds = %83
  %87 = call fastcc ptr @rewrite_bittest(ptr noundef nonnull %3) #21
  br label %88

88:                                               ; preds = %50, %72, %76, %79, %83, %86, %46, %43
  %89 = phi ptr [ %31, %46 ], [ %31, %43 ], [ %87, %86 ], [ %73, %83 ], [ %73, %79 ], [ %73, %76 ], [ %73, %72 ], [ %31, %50 ]
  %90 = call fastcc ptr @init_lim_data(ptr noundef %89) #21
  %91 = getelementptr inbounds %struct.lim_aux_data, ptr %90, i64 0, i32 2
  store ptr %30, ptr %91, align 8, !tbaa !1023
  %92 = icmp ne i8 %29, 0
  %93 = icmp eq i32 %32, 1
  %94 = and i1 %92, %93
  br i1 %94, label %122, label %95, !prof !1033

95:                                               ; preds = %88
  %96 = zext i1 %93 to i8
  %97 = call fastcc zeroext i8 @determine_max_movement(ptr noundef %89, i8 noundef zeroext %96) #21, !range !535
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100, !prof !1034

99:                                               ; preds = %95
  store ptr null, ptr %90, align 8, !tbaa !1035
  br label %122

100:                                              ; preds = %95
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103, !prof !1036

103:                                              ; preds = %100
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  call void @print_gimple_stmt(ptr noundef nonnull %101, ptr noundef %89, i32 noundef 2, i32 noundef 0) #20
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %109 = load ptr, ptr %90, align 8, !tbaa !1035
  %110 = call fastcc i32 @loop_depth(ptr noundef %109) #21
  %111 = getelementptr inbounds %struct.lim_aux_data, ptr %90, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !1037
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.16, i32 noundef %110, i32 noundef %112) #21
  br label %114

114:                                              ; preds = %107, %103, %100
  %115 = getelementptr inbounds %struct.lim_aux_data, ptr %90, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !1037
  %117 = load ptr, ptr @compiler_params, align 8, !tbaa !515
  %118 = getelementptr inbounds %struct.param_info, ptr %117, i64 59, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !1038
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %122, label %121, !prof !1040

121:                                              ; preds = %114
  call fastcc void @set_profitable_level(ptr noundef %89) #21
  br label %122

122:                                              ; preds = %34, %114, %121, %88, %40, %37, %99
  %123 = phi ptr [ %30, %40 ], [ %30, %37 ], [ %30, %88 ], [ %30, %121 ], [ %30, %114 ], [ %30, %99 ], [ null, %34 ]
  %124 = phi i8 [ %29, %40 ], [ %29, %37 ], [ %29, %88 ], [ %29, %121 ], [ %29, %114 ], [ %29, %99 ], [ 1, %34 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %125 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !535
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %28, label %127, !prof !1041, !llvm.loop !1042

127:                                              ; preds = %122, %25, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1043 !PGOFuncName !1044 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !846
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_makes_single_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_lim_data(ptr noundef %0) unnamed_addr #0 !prof !1045 !PGOFuncName !1046 {
  %2 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !515
  %3 = tail call ptr @pointer_map_insert(ptr noundef %2, ptr noundef %0) #20
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20
  store ptr %4, ptr %3, align 8, !tbaa !515
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1047 !PGOFuncName !1048 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1049

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @outermost_invariant_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1050 !PGOFuncName !1051 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4, !prof !1052

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %12, label %8, !prof !1053

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %35, !prof !1054

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 431, ptr noundef nonnull @.str.1) #20
  br label %35

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !548
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17, !prof !1055

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !684
  %20 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %19) #20
  %21 = tail call fastcc ptr @get_lim_data(ptr noundef %14) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !1056

23:                                               ; preds = %17
  %24 = load ptr, ptr %21, align 8, !tbaa !1035
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !1057

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %24) #21
  %28 = tail call ptr @find_common_loop(ptr noundef %20, ptr noundef %27) #20
  br label %29

29:                                               ; preds = %26, %23, %17
  %30 = phi ptr [ %28, %26 ], [ %20, %23 ], [ %20, %17 ]
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %38, label %32, !prof !1058

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @loop_depth(ptr noundef %30) #21
  %34 = add i32 %33, 1
  br label %35

35:                                               ; preds = %12, %11, %8, %2, %32
  %36 = phi i32 [ %34, %32 ], [ 1, %2 ], [ 1, %8 ], [ 1, %11 ], [ 1, %12 ]
  %37 = tail call ptr @superloop_at_depth(ptr noundef %1, i32 noundef %36) #20
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ null, %29 ], [ %37, %35 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1059 !PGOFuncName !1060 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !1061

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !684
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rewrite_reciprocal(ptr noundef %0) unnamed_addr #0 !prof !757 !PGOFuncName !1062 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  %7 = tail call ptr @create_tmp_var(ptr noundef %6, ptr noundef nonnull @.str.17) #20
  %8 = tail call zeroext i8 @add_referenced_var(ptr noundef %7) #20
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %10, 134217728
  store i64 %11, ptr %9, align 8
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !548
  %18 = tail call ptr @build_real(ptr noundef %17, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #20
  %19 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1023
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = trunc i64 %23 to i32
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15, %26
  %27 = phi ptr [ %29, %26 ], [ null, %15 ]
  %28 = phi i32 [ %30, %26 ], [ 0, %15 ]
  %29 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %18, ptr noundef %27) #20
  %30 = add nuw nsw i32 %28, 1
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %32, label %26, !llvm.loop !1063

32:                                               ; preds = %26, %15
  %33 = phi ptr [ null, %15 ], [ %29, %26 ]
  %34 = tail call ptr @build_vector(ptr noundef nonnull %6, ptr noundef %33) #20
  br label %37

35:                                               ; preds = %1
  %36 = tail call ptr @build_real(ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #20
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %34, %32 ], [ %36, %35 ]
  %39 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %3) #21
  %40 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 75, ptr noundef %7, ptr noundef %38, ptr noundef %39) #20
  %41 = tail call fastcc ptr @make_ssa_name(ptr noundef %7, ptr noundef %40) #21
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %40, ptr noundef %41) #21
  %42 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #21
  %43 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 65, ptr noundef %4, ptr noundef %41, ptr noundef %42) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1064
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %40, i32 noundef 0) #20
  call void @gsi_replace(ptr noundef nonnull %2, ptr noundef %43, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %40
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 !prof !1065 !PGOFuncName !1066 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1067
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !1069

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1067
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !1070

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !548
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #21, !range !535
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !527
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !1071

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #20
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rewrite_bittest(ptr noundef %0) unnamed_addr #0 !prof !1072 !PGOFuncName !1073 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %91, !prof !1074

10:                                               ; preds = %1
  %11 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %91, label %13, !prof !1075

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !515
  %15 = call fastcc i32 @gimple_code(ptr noundef %14) #21, !range !530
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %91, !prof !1076

17:                                               ; preds = %13
  %18 = call fastcc ptr @gimple_cond_lhs(ptr noundef %14) #21
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %20, label %91, !prof !1077

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8, !tbaa !515
  %22 = call fastcc i32 @gimple_cond_code(ptr noundef %21) #21, !range !859
  %23 = add nsw i32 %22, -101
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %91, !prof !1078

25:                                               ; preds = %20
  %26 = call fastcc ptr @gimple_cond_rhs(ptr noundef %21) #21
  %27 = call i32 @integer_zerop(ptr noundef %26) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %91, label %29, !prof !1079

29:                                               ; preds = %25
  %30 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #21
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !548
  %33 = call fastcc i32 @gimple_code(ptr noundef %32) #21, !range !530
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %91, !prof !1080

35:                                               ; preds = %29
  %36 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %32) #21, !range !859
  %37 = icmp eq i32 %36, 116
  br i1 %37, label %41, label %38, !prof !1081

38:                                               ; preds = %35
  %39 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %32) #21, !range !859
  %40 = icmp eq i32 %39, 113
  br i1 %40, label %41, label %54, !prof !1082

41:                                               ; preds = %38, %35
  %42 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %32) #21
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %91, !prof !1083

46:                                               ; preds = %41
  %47 = call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %42) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %91, label %49, !prof !1084

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !548
  %52 = call fastcc i32 @gimple_code(ptr noundef %51) #21, !range !530
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %91, !prof !1085

54:                                               ; preds = %49, %38
  %55 = phi ptr [ %51, %49 ], [ %32, %38 ]
  %56 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %55) #21, !range !859
  %57 = icmp eq i32 %56, 84
  br i1 %57, label %58, label %91, !prof !1086

58:                                               ; preds = %54
  %59 = call fastcc ptr @loop_containing_stmt(ptr noundef %55) #21
  %60 = call fastcc ptr @loop_containing_stmt(ptr noundef %5) #21
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %91, !prof !1087

62:                                               ; preds = %58
  %63 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %55) #21
  %64 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %55) #21
  %65 = call fastcc ptr @loop_containing_stmt(ptr noundef %55) #21
  %66 = call fastcc ptr @outermost_invariant_loop(ptr noundef %64, ptr noundef %65) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %91, label %68, !prof !1088

68:                                               ; preds = %62
  %69 = call fastcc ptr @loop_containing_stmt(ptr noundef %55) #21
  %70 = call fastcc ptr @outermost_invariant_loop(ptr noundef %63, ptr noundef %69) #21
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %91, !prof !1089

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %73 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !548
  %75 = call ptr @create_tmp_var(ptr noundef %74, ptr noundef nonnull @.str.18) #20
  %76 = call zeroext i8 @add_referenced_var(ptr noundef %75) #20
  %77 = load ptr, ptr %73, align 8, !tbaa !548
  %78 = call ptr @build_int_cst(ptr noundef %77, i64 noundef 1) #20
  %79 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %77, ptr noundef %78, ptr noundef %64) #20
  %80 = call ptr @gimple_build_assign_stat(ptr noundef %75, ptr noundef %79) #20
  %81 = call fastcc ptr @make_ssa_name(ptr noundef %75, ptr noundef %80) #21
  call fastcc void @gimple_assign_set_lhs(ptr noundef %80, ptr noundef %81) #21
  %82 = load ptr, ptr %73, align 8, !tbaa !548
  %83 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %82, ptr noundef %63, ptr noundef %81) #20
  %84 = call ptr @gimple_build_assign_stat(ptr noundef %75, ptr noundef %83) #20
  %85 = call fastcc ptr @make_ssa_name(ptr noundef %75, ptr noundef %84) #21
  call fastcc void @gimple_assign_set_lhs(ptr noundef %84, ptr noundef %85) #21
  %86 = load ptr, ptr %3, align 8, !tbaa !515
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %86, ptr noundef %85) #21
  %87 = load ptr, ptr %2, align 8, !tbaa !515
  %88 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !548
  %90 = call ptr @build_int_cst_type(ptr noundef %89, i64 noundef 0) #20
  call fastcc void @gimple_cond_set_rhs(ptr noundef %87, ptr noundef %90) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1064
  call void @gsi_insert_before(ptr noundef %0, ptr noundef %80, i32 noundef 0) #20
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %84, i32 noundef 1) #20
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  br label %91

91:                                               ; preds = %20, %62, %68, %54, %58, %49, %41, %46, %29, %17, %25, %1, %10, %13, %72
  %92 = phi ptr [ %80, %72 ], [ %5, %13 ], [ %5, %10 ], [ %5, %1 ], [ %5, %25 ], [ %5, %17 ], [ %5, %29 ], [ %5, %46 ], [ %5, %41 ], [ %5, %49 ], [ %5, %58 ], [ %5, %54 ], [ %5, %68 ], [ %5, %62 ], [ %5, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @determine_max_movement(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1090 !PGOFuncName !1091 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !684
  %7 = tail call fastcc ptr @get_lim_data(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %12, label %9, !prof !1092

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !629
  br label %14

12:                                               ; preds = %2
  %13 = tail call ptr @superloop_at_depth(ptr noundef %6, i32 noundef 1) #20
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %11, %9 ], [ %13, %12 ]
  store ptr %15, ptr %7, align 8, !tbaa !1035
  %16 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %0) #21
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27, !prof !1093

19:                                               ; preds = %14, %23
  %20 = phi ptr [ %24, %23 ], [ %16, %14 ]
  %21 = tail call fastcc zeroext i8 @add_dependency(ptr noundef %20, ptr noundef nonnull %7, ptr noundef %6, i8 noundef zeroext 1) #21, !range !535
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %48, label %23, !prof !1094

23:                                               ; preds = %19
  %24 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #21
  %25 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %19, label %27, !prof !1095, !llvm.loop !1096

27:                                               ; preds = %23, %14
  %28 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30, !prof !1097

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @mem_ref_in_stmt(ptr noundef %0) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !1098

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 8, !tbaa !1035
  %35 = tail call fastcc ptr @outermost_indep_loop(ptr noundef %34, ptr noundef %6, ptr noundef nonnull %31) #21
  store ptr %35, ptr %7, align 8, !tbaa !1035
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %43, !prof !1099

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i8 @add_dependency(ptr noundef nonnull %38, ptr noundef nonnull %7, ptr noundef %6, i8 noundef zeroext 0) #21, !range !535
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33, %40, %37, %27
  %44 = tail call fastcc i32 @stmt_cost(ptr noundef %0) #21
  %45 = getelementptr inbounds %struct.lim_aux_data, ptr %7, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !1037
  %47 = add i32 %46, %44
  store i32 %47, ptr %45, align 8, !tbaa !1037
  br label %48

48:                                               ; preds = %19, %33, %40, %43
  %49 = phi i8 [ 1, %43 ], [ 0, %40 ], [ 0, %33 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret i8 %49
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_profitable_level(ptr noundef %0) unnamed_addr #0 !prof !1100 !PGOFuncName !1101 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !684
  %5 = tail call fastcc ptr @get_lim_data(ptr noundef %0) #21
  %6 = load ptr, ptr %5, align 8, !tbaa !1035
  tail call fastcc void @set_level(ptr noundef %0, ptr noundef %4, ptr noundef %6) #21
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1102 !PGOFuncName !1103 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !548
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1104 !PGOFuncName !1105 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !548
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_lim_data(ptr noundef %0) unnamed_addr #0 !prof !1106 !PGOFuncName !1107 {
  %2 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !515
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1108

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1109 !PGOFuncName !1110 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !515
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1109 !PGOFuncName !1111 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #21
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !1112

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !1113

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !548
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1114 !PGOFuncName !1115 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !535
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1116

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1117

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1118 !PGOFuncName !1119 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1072 !PGOFuncName !1120 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1067
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9, !prof !1121

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !515
  store ptr null, ptr %2, align 8, !tbaa !515
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1067
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22, !prof !1122

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !548
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #21, !range !535
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !1123

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !515
  %19 = load ptr, ptr %5, align 8, !tbaa !1067
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !548
  store ptr %21, ptr %2, align 8, !tbaa !515
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !527
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25, !prof !1124

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #20
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !1125 !PGOFuncName !1126 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1127 !PGOFuncName !1128 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !1125 !PGOFuncName !1129 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !1130 !PGOFuncName !1131 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1132
  store ptr %1, ptr %4, align 8, !tbaa !515
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1130 !PGOFuncName !1133 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #18 !prof !1130 !PGOFuncName !1134 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1135
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1136

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1067
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1067
  store ptr %2, ptr %6, align 8, !tbaa !1135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !1130 !PGOFuncName !1137 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !1136

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !1138

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !1135
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !1130 !PGOFuncName !1139 {
  store ptr %1, ptr %0, align 8, !tbaa !1135
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1067
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1067
  store ptr %0, ptr %4, align 8, !tbaa !1135
  store ptr %0, ptr %3, align 8, !tbaa !1067
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !1090 !PGOFuncName !1140 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !1141
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1143 !PGOFuncName !1144 {
  %2 = load i8, ptr %0, align 8, !tbaa !1145
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_dependency(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1146 !PGOFuncName !1147 {
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9, !prof !1148

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef nonnull %0, ptr noundef %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12, !prof !1149

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !1035
  %14 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %13, ptr noundef nonnull %10) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !1150

16:                                               ; preds = %12
  store ptr %10, ptr %1, align 8, !tbaa !1035
  br label %17

17:                                               ; preds = %16, %12
  %18 = tail call fastcc ptr @get_lim_data(ptr noundef %6) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20, !prof !1151

20:                                               ; preds = %17
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %32, label %22, !prof !1152

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !684
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %32, !prof !1153

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.lim_aux_data, ptr %18, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !1037
  %29 = getelementptr inbounds %struct.lim_aux_data, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !1037
  %31 = add i32 %30, %28
  store i32 %31, ptr %29, align 8, !tbaa !1037
  br label %32

32:                                               ; preds = %26, %22, %20
  %33 = tail call ptr @xmalloc(i64 noundef 16) #20
  store ptr %6, ptr %33, align 8, !tbaa !1154
  %34 = getelementptr inbounds %struct.lim_aux_data, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !1156
  %36 = getelementptr inbounds %struct.depend, ptr %33, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !1157
  store ptr %33, ptr %34, align 8, !tbaa !1156
  br label %37

37:                                               ; preds = %17, %9, %4, %32
  %38 = phi i8 [ 1, %32 ], [ 1, %4 ], [ 0, %9 ], [ 1, %17 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 !prof !1143 !PGOFuncName !1158 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1159
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1160

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !1161
  store ptr %8, ptr %2, align 8, !tbaa !1159
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1163
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1164

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1165
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #21
  %17 = load ptr, ptr %11, align 8, !tbaa !1167
  store ptr %17, ptr %10, align 8, !tbaa !1163
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1145
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mem_ref_in_stmt(ptr noundef %0) unnamed_addr #0 !prof !1168 !PGOFuncName !1169 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %3 = call fastcc ptr @simple_mem_ref_in_stmt(ptr noundef %0, ptr noundef nonnull %2) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5, !prof !1098

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1, !tbaa !548
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !1170

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %5, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !515
  %11 = tail call i32 @iterative_hash_expr(ptr noundef %10, i32 noundef 0) #20
  %12 = load ptr, ptr @memory_accesses, align 8, !tbaa !611
  %13 = load ptr, ptr %3, align 8, !tbaa !515
  %14 = tail call ptr @htab_find_with_hash(ptr noundef %12, ptr noundef %13, i32 noundef %11) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !1098

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.1) #20
  br label %17

17:                                               ; preds = %16, %9, %1
  %18 = phi ptr [ null, %1 ], [ %14, %9 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @outermost_indep_loop(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1168 !PGOFuncName !1171 {
  %4 = getelementptr inbounds %struct.mem_ref, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !736
  %6 = load i32, ptr %1, align 8, !tbaa !777
  %7 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29, !prof !1172

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %25, label %11, !prof !1173

11:                                               ; preds = %9, %20
  %12 = phi ptr [ %23, %20 ], [ %0, %9 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !736
  %14 = load i32, ptr %12, align 8, !tbaa !777
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20, !prof !1174

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %12, ptr noundef nonnull %2) #21, !range !535
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29, !prof !1175

20:                                               ; preds = %11, %17
  %21 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %12) #21
  %22 = add i32 %21, 1
  %23 = tail call ptr @superloop_at_depth(ptr noundef nonnull %1, i32 noundef %22) #20
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %11, !prof !1176, !llvm.loop !1177

25:                                               ; preds = %20, %9
  %26 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %1, ptr noundef nonnull %2) #21, !range !535
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr null, ptr %1, !prof !1178
  br label %29

29:                                               ; preds = %17, %25, %3
  %30 = phi ptr [ null, %3 ], [ %28, %25 ], [ %12, %17 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @stmt_cost(ptr noundef %0) unnamed_addr #0 !prof !1179 !PGOFuncName !1180 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %8, !prof !1181

4:                                                ; preds = %1
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !515
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 59, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !1038
  br label %33

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #21, !range !535
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 21, !prof !1182
  %12 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #21, !range !535
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14, !prof !1183

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %15, i64 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 8191
  %21 = icmp eq i32 %20, 6572
  br i1 %21, label %33, label %22

22:                                               ; preds = %17, %14
  %23 = add nuw nsw i32 %11, 20
  br label %33

24:                                               ; preds = %8
  %25 = icmp eq i32 %2, 6
  br i1 %25, label %26, label %33, !prof !1183

26:                                               ; preds = %24
  %27 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #21, !range !859
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %33 [
    i16 65, label %29
    i16 67, label %29
    i16 68, label %29
    i16 69, label %29
    i16 70, label %29
    i16 76, label %29
    i16 72, label %29
    i16 73, label %29
    i16 74, label %29
    i16 71, label %29
    i16 75, label %29
    i16 83, label %31
    i16 84, label %31
  ], !prof !1184

29:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %30 = add nuw nsw i32 %11, 20
  br label %33

31:                                               ; preds = %26, %26
  %32 = add nuw nsw i32 %11, 20
  br label %33

33:                                               ; preds = %29, %31, %26, %24, %17, %22, %4
  %34 = phi i32 [ %7, %4 ], [ %23, %22 ], [ 0, %17 ], [ %11, %24 ], [ %11, %26 ], [ %32, %31 ], [ %30, %29 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !1090 !PGOFuncName !1185 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !1163
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1159
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7, !prof !1186

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1187

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !1161
  store ptr %11, ptr %5, align 8, !tbaa !1159
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !1145
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1090 !PGOFuncName !1188 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !535
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1189

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1146 !PGOFuncName !1190 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1132
  %4 = load ptr, ptr %3, align 8, !tbaa !515
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !757 !PGOFuncName !1191 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_indep_loop_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1192 !PGOFuncName !1193 {
  %3 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !737
  %5 = load i32, ptr %0, align 8, !tbaa !777
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30, !prof !1194

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !738
  %11 = load i32, ptr %0, align 8, !tbaa !777
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %11) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30, !prof !1195

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i8 @ref_indep_loop_p_1(ptr noundef nonnull %0, ptr noundef nonnull %1) #21, !range !535
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18, !prof !1196

18:                                               ; preds = %14
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !871
  %25 = load i32, ptr %0, align 8, !tbaa !777
  %26 = icmp eq i8 %15, 0
  %27 = select i1 %26, ptr @.str.22, ptr @.str.21
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.20, i32 noundef %24, i32 noundef %25, ptr noundef nonnull %27) #21
  br label %29

29:                                               ; preds = %22, %18, %14
  tail call fastcc void @record_indep_loop(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext %15) #21
  br label %30

30:                                               ; preds = %8, %2, %29
  %31 = phi i8 [ %15, %29 ], [ 1, %2 ], [ 0, %8 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_indep_loop_p_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1197 !PGOFuncName !1198 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !736
  %7 = load i32, ptr %0, align 8, !tbaa !777
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %7) #20
  %9 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %10 = load i32, ptr %0, align 8, !tbaa !777
  %11 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %9, i32 noundef %10) #21
  %12 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !745
  %14 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %13, ptr noundef %11) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !1199

16:                                               ; preds = %2
  %17 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %18 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %19 = load i32, ptr %0, align 8, !tbaa !777
  %20 = tail call fastcc ptr @VEC_htab_t_base_index(ptr noundef %18, i32 noundef %19) #21
  %21 = load ptr, ptr %12, align 8, !tbaa !745
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %4, ptr noundef %21, ptr noundef %11, ptr noundef nonnull %3) #21
  %22 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !535
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %38, label %24, !prof !1200

24:                                               ; preds = %16
  %25 = and i32 %8, 255
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %24, %33
  %28 = load i32, ptr %3, align 4, !tbaa !527
  br i1 %26, label %31, label %29, !prof !1201

29:                                               ; preds = %27
  %30 = tail call fastcc ptr @get_vop_accesses(ptr noundef %20, i32 noundef %28) #21
  br label %33

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @get_vop_stores(ptr noundef %20, i32 noundef %28) #21
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %17, ptr noundef %34) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %36 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !535
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %27, !prof !1202, !llvm.loop !1203

38:                                               ; preds = %33, %16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %17, ptr noundef nonnull %3) #21
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !535
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %51, label %41, !prof !1204

41:                                               ; preds = %38, %48
  %42 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %43 = load i32, ptr %3, align 4, !tbaa !527
  %44 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %42, i32 noundef %43) #21
  %45 = tail call fastcc zeroext i8 @refs_independent_p(ptr noundef %1, ptr noundef %44) #21, !range !535
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !1205

47:                                               ; preds = %41
  tail call fastcc void @record_indep_loop(ptr noundef nonnull %0, ptr noundef %44, i8 noundef zeroext 0) #21
  br label %51

48:                                               ; preds = %41
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !535
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %41, !prof !1206, !llvm.loop !1207

51:                                               ; preds = %48, %38, %47
  %52 = phi i8 [ 0, %47 ], [ 1, %38 ], [ 1, %48 ]
  tail call void @bitmap_obstack_free(ptr noundef %17) #20
  br label %53

53:                                               ; preds = %2, %51
  %54 = phi i8 [ %52, %51 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_indep_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1208 !PGOFuncName !1209 {
  %4 = icmp eq i8 %2, 0
  %5 = load i32, ptr %0, align 8, !tbaa !777
  %6 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 7
  %7 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 6
  %8 = select i1 %4, ptr %6, ptr %7, !prof !1210
  %9 = load ptr, ptr %8, align 8, !tbaa !515
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %5) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vop_accesses(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1211 !PGOFuncName !1212 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !527
  %4 = call ptr @htab_find_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) #20
  %5 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !765
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vop_stores(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1213 !PGOFuncName !1214 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !527
  %4 = call ptr @htab_find_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) #20
  %5 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !766
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @refs_independent_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1215 !PGOFuncName !1216 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %66, label %4, !prof !1217

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !739
  %7 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !871
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %8) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66, !prof !1218

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !740
  %14 = load i32, ptr %7, align 8, !tbaa !871
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66, !prof !1219

17:                                               ; preds = %11
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !1220

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !871
  %27 = load i32, ptr %7, align 8, !tbaa !871
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.23, i32 noundef %26, i32 noundef %27) #21
  br label %29

29:                                               ; preds = %24, %20, %17
  %30 = load ptr, ptr %0, align 8, !tbaa !733
  %31 = load ptr, ptr %1, align 8, !tbaa !733
  %32 = tail call fastcc zeroext i8 @mem_refs_may_alias_p(ptr noundef %30, ptr noundef %31) #21
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr %7, align 8, !tbaa !871
  %35 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  br i1 %33, label %51, label %36, !prof !1221

36:                                               ; preds = %29
  %37 = load ptr, ptr %12, align 8, !tbaa !740
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %37, i32 noundef %34) #20
  %39 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !740
  %41 = load i32, ptr %35, align 8, !tbaa !871
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %40, i32 noundef %41) #20
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45, !prof !1222

45:                                               ; preds = %36
  %46 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 11, i64 1, ptr nonnull %43)
  br label %66

51:                                               ; preds = %29
  %52 = load ptr, ptr %5, align 8, !tbaa !739
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %52, i32 noundef %34) #20
  %54 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !739
  %56 = load i32, ptr %35, align 8, !tbaa !871
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %55, i32 noundef %56) #20
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60, !prof !1223

60:                                               ; preds = %51
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 13, i64 1, ptr nonnull %58)
  br label %66

66:                                               ; preds = %51, %60, %64, %36, %45, %49, %11, %2, %4
  %67 = phi i8 [ 1, %4 ], [ 1, %2 ], [ 0, %11 ], [ 0, %49 ], [ 0, %45 ], [ 0, %36 ], [ 1, %64 ], [ 1, %60 ], [ 1, %51 ]
  ret i8 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mem_refs_may_alias_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1224 !PGOFuncName !1225 {
  %3 = alloca %struct.double_int, align 8
  %4 = alloca %struct.double_int, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #22
  %7 = tail call zeroext i8 @refs_may_alias_p(ptr noundef %0, ptr noundef %1) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9, !prof !1226

9:                                                ; preds = %2
  %10 = load i32, ptr @optimize, align 4, !tbaa !527
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %22, label %12, !prof !1227

12:                                               ; preds = %9
  call void @get_inner_reference_aff(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  call void @get_inner_reference_aff(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %4) #20
  call void @aff_combination_expand(ptr noundef nonnull %5, ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6)) #20
  call void @aff_combination_expand(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6)) #20
  call void @aff_combination_scale(ptr noundef nonnull %5, i64 -1, i64 -1) #20
  call void @aff_combination_add(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %4, align 8
  %17 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = call fastcc zeroext i8 @cannot_overlap_p(ptr noundef nonnull %6, i64 %13, i64 %15, i64 %16, i64 %18) #21
  %20 = icmp eq i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %12, %9, %2
  %23 = phi i8 [ 0, %2 ], [ 1, %9 ], [ %21, %12 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @get_inner_reference_aff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_expand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_scale(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @aff_combination_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cannot_overlap_p(ptr nocapture noundef readonly %0, i64 %1, i64 %2, i64 %3, i64 %4) unnamed_addr #0 !prof !1228 !PGOFuncName !1229 {
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !1230
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28, !prof !1232

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa.struct !1233
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa.struct !1234
  %14 = tail call zeroext i8 @double_int_negative_p(i64 %11, i64 %13) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16, !prof !1235

16:                                               ; preds = %9
  %17 = tail call { i64, i64 } @double_int_add(i64 %3, i64 %4, i64 -1, i64 -1) #20
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  %20 = tail call { i64, i64 } @double_int_add(i64 %11, i64 %13, i64 %18, i64 %19) #20
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  %23 = tail call zeroext i8 @double_int_negative_p(i64 %21, i64 %22) #20
  br label %28

24:                                               ; preds = %9
  %25 = tail call i32 @double_int_scmp(i64 %1, i64 %2, i64 %11, i64 %13) #20
  %26 = icmp slt i32 %25, 1
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %5, %24, %16
  %29 = phi i8 [ %23, %16 ], [ %27, %24 ], [ 0, %5 ]
  ret i8 %29
}

; Function Attrs: optsize
declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @double_int_scmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1236 !PGOFuncName !1237 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !535
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !1238

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !757 !PGOFuncName !1239 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !548
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !757 !PGOFuncName !1240 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_level(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1241 !PGOFuncName !1242 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !684
  %7 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %6) #20
  %8 = tail call fastcc ptr @get_lim_data(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !1243

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.lim_aux_data, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1244
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !1245

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %12) #21
  %16 = tail call ptr @find_common_loop(ptr noundef %7, ptr noundef %15) #20
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = phi ptr [ %16, %14 ], [ %7, %10 ], [ %7, %3 ]
  %19 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %18, ptr noundef %2) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %39, !prof !1246

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8, !tbaa !1035
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %28, label %24, !prof !1247

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %22, ptr noundef %2) #20
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28, !prof !1248

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 731, ptr noundef nonnull @.str.1) #20
  br label %28

28:                                               ; preds = %21, %24, %27
  %29 = getelementptr inbounds %struct.lim_aux_data, ptr %8, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !1244
  %30 = getelementptr inbounds %struct.lim_aux_data, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !515
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !1249

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !1154
  tail call fastcc void @set_level(ptr noundef %35, ptr noundef %1, ptr noundef %2) #21
  %36 = getelementptr inbounds %struct.depend, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !515
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33, !prof !1250, !llvm.loop !1251

39:                                               ; preds = %33, %28, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_motion_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !660 !PGOFuncName !1252 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #20
  store ptr %4, ptr %3, align 8, !tbaa !515
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %6 = tail call fastcc zeroext i8 @loop_suitable_for_sm(ptr noundef %4) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !1253

8:                                                ; preds = %2
  tail call fastcc void @find_refs_for_sm(ptr noundef %0, ptr noundef %1, ptr noundef %5) #21
  tail call fastcc void @hoist_memory_references(ptr noundef %0, ptr noundef %5, ptr noundef %4) #21
  br label %9

9:                                                ; preds = %8, %2
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #21
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %5) #20
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !515
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !691

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  tail call fastcc void @store_motion_loop(ptr noundef nonnull %15, ptr noundef %1) #21
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !515
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !prof !692, !llvm.loop !1254

19:                                               ; preds = %14, %9
  %20 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %5) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @loop_suitable_for_sm(ptr noundef %0) unnamed_addr #17 !prof !660 !PGOFuncName !1255 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #21, !range !632
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %9, !prof !947

5:                                                ; preds = %9
  %6 = add i32 %10, 1
  %7 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #21, !range !632
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !1256, !llvm.loop !1257

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !515
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !1258
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %5, label %16, !prof !1259

16:                                               ; preds = %9, %5, %1
  %17 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_refs_for_sm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !660 !PGOFuncName !1260 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %7 = load i32, ptr %0, align 8, !tbaa !777
  %8 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %6, i32 noundef %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %5, ptr noundef %8, ptr noundef %1, ptr noundef nonnull %4) #21
  %9 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !535
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11, !prof !947

11:                                               ; preds = %3, %19
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %13 = load i32, ptr %4, align 4, !tbaa !527
  %14 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %12, i32 noundef %13) #21
  %15 = tail call fastcc zeroext i8 @can_sm_ref_p(ptr noundef nonnull %0, ptr noundef %14) #21, !range !535
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !1261

17:                                               ; preds = %11
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %13) #20
  br label %19

19:                                               ; preds = %11, %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %20 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !535
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11, !prof !1262, !llvm.loop !1263

22:                                               ; preds = %19, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hoist_memory_references(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !660 !PGOFuncName !1264 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #21
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !535
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8, !prof !1265

8:                                                ; preds = %3, %8
  %9 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %10 = load i32, ptr %4, align 4, !tbaa !527
  %11 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %9, i32 noundef %10) #21
  tail call fastcc void @execute_sm(ptr noundef %0, ptr noundef %2, ptr noundef %11) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !535
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %8, !prof !1266, !llvm.loop !1267

14:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !660 !PGOFuncName !1268 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1253

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !515
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !1269 !PGOFuncName !1270 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1271

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !721
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1272

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !515
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !515
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_sm_ref_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1273 !PGOFuncName !1274 {
  %3 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !736
  %5 = load i32, ptr %0, align 8, !tbaa !777
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8, !prof !1275

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !733
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !548
  %12 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %42, label %14, !prof !1276

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !733
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 524288
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %42, !prof !1277

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @for_each_index(ptr noundef nonnull %1, ptr noundef nonnull @may_move_till, ptr noundef nonnull %0) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %42, label %22, !prof !1278

22:                                               ; preds = %19
  %23 = load ptr, ptr %1, align 8, !tbaa !733
  %24 = tail call ptr @get_base_address(ptr noundef %23) #20
  %25 = load ptr, ptr %1, align 8, !tbaa !733
  %26 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %25) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %37, !prof !1279

28:                                               ; preds = %22
  %29 = load i64, ptr %24, align 8
  %30 = and i64 %29, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !527
  %33 = icmp ne i32 %32, 3
  %34 = and i64 %29, 1048576
  %35 = icmp eq i64 %34, 0
  %36 = or i1 %33, %35
  br i1 %36, label %40, label %37, !prof !1280

37:                                               ; preds = %28, %22
  %38 = tail call fastcc zeroext i8 @ref_always_accessed_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40, !prof !1281

40:                                               ; preds = %37, %28
  %41 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #21, !range !535
  br label %42

42:                                               ; preds = %40, %37, %8, %14, %19, %2
  %43 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 0, %14 ], [ 0, %8 ], [ 0, %37 ], [ %41, %40 ]
  ret i8 %43
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @may_move_till(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !1282 !PGOFuncName !1283 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 45
  br i1 %6, label %7, label %17, !prof !1284

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !548
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !548
  %12 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %9, ptr noundef %2) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14, !prof !1285

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %11, ptr noundef %2) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %3
  %18 = load ptr, ptr %1, align 8, !tbaa !515
  %19 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %18, ptr noundef %2) #21
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %7, %17, %14
  %23 = phi i8 [ 0, %14 ], [ %21, %17 ], [ 0, %7 ]
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_always_accessed_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1286 !PGOFuncName !1287 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !515
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %1, align 8, !tbaa !733
  %6 = tail call ptr @get_base_address(ptr noundef %5) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -47
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %15, !prof !1288

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !548
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ %6, %2 ]
  call fastcc void @get_all_locs_in_loop(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #21
  %17 = load ptr, ptr %3, align 8
  %18 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %4) #21, !range !632
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %63, label %20, !prof !1289

20:                                               ; preds = %15, %59
  %21 = phi i32 [ %60, %59 ], [ 0, %15 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !515
  %23 = getelementptr inbounds %struct.mem_ref_loc, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !883
  %25 = tail call fastcc ptr @get_lim_data(ptr noundef %24) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %59, label %27, !prof !1290

27:                                               ; preds = %20
  %28 = load ptr, ptr %23, align 8, !tbaa !883
  %29 = tail call ptr @gimple_get_lhs(ptr noundef %28) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31, !prof !1290

31:                                               ; preds = %27
  %32 = load ptr, ptr %23, align 8, !tbaa !883
  %33 = tail call ptr @gimple_get_lhs(ptr noundef %32) #20
  %34 = tail call ptr @get_base_address(ptr noundef %33) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36, !prof !1290

36:                                               ; preds = %31
  %37 = load i64, ptr %34, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -47
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %45, !prof !1291

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !548
  br label %45

45:                                               ; preds = %36, %42
  %46 = phi ptr [ %44, %42 ], [ %34, %36 ]
  %47 = icmp eq ptr %46, %16
  br i1 %47, label %48, label %59, !prof !1292

48:                                               ; preds = %45
  %49 = load ptr, ptr %23, align 8, !tbaa !883
  %50 = tail call fastcc ptr @get_lim_data(ptr noundef %49) #21
  %51 = getelementptr inbounds %struct.lim_aux_data, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !1023
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54, !prof !1293

54:                                               ; preds = %48
  %55 = icmp eq ptr %52, %0
  br i1 %55, label %63, label %56, !prof !1294

56:                                               ; preds = %54
  %57 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef nonnull %52, ptr noundef %0) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63, !prof !1295

59:                                               ; preds = %45, %31, %27, %56, %48, %20
  %60 = add i32 %21, 1
  %61 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %17, i32 noundef %60, ptr noundef nonnull %4) #21, !range !632
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %20, !prof !1296, !llvm.loop !1297

63:                                               ; preds = %59, %56, %54, %15
  %64 = phi i8 [ 0, %15 ], [ 1, %54 ], [ 1, %56 ], [ 0, %59 ]
  call fastcc void @VEC_mem_ref_loc_p_heap_free(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_all_locs_in_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1298 !PGOFuncName !1299 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %6 = load i32, ptr %0, align 8, !tbaa !777
  %7 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %5, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !871
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %41, label %12, !prof !1300

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !741
  %15 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef %14) #21
  %16 = load i32, ptr %0, align 8, !tbaa !777
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %32, !prof !1301

18:                                               ; preds = %12
  %19 = tail call fastcc ptr @VEC_mem_ref_locs_p_base_index(ptr noundef %14, i32 noundef %16) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21, !prof !1302

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !792
  %23 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %4) #21, !range !632
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25, !prof !1303

25:                                               ; preds = %21, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %21 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !515
  tail call fastcc void @VEC_mem_ref_loc_p_heap_safe_push(ptr noundef %2, ptr noundef %27) #21
  %28 = add i32 %26, 1
  %29 = load ptr, ptr %19, align 8, !tbaa !792
  %30 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %29, i32 noundef %28, ptr noundef nonnull %4) #21, !range !632
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %25, !prof !1304, !llvm.loop !1305

32:                                               ; preds = %25, %21, %18, %12
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !515
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !1306

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call fastcc void @get_all_locs_in_loop(ptr noundef nonnull %37, ptr noundef %1, ptr noundef %2) #21
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !515
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !prof !1307, !llvm.loop !1308

41:                                               ; preds = %36, %32, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_sm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1309 !PGOFuncName !1310 {
  %4 = alloca %struct.fmt_data, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !1311

8:                                                ; preds = %3
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 26, i64 1, ptr nonnull %6)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %15 = load ptr, ptr %2, align 8, !tbaa !733
  tail call void @print_generic_expr(ptr noundef %14, ptr noundef %15, i32 noundef 0) #20
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %17 = load i32, ptr %0, align 8, !tbaa !777
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.27, i32 noundef %17) #21
  br label %19

19:                                               ; preds = %12, %8, %3
  %20 = load ptr, ptr %2, align 8, !tbaa !733
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !548
  %23 = tail call ptr @get_lsm_tmp_name(ptr noundef %20, i32 noundef -1) #21
  %24 = tail call ptr @make_rename_temp(ptr noundef %22, ptr noundef nonnull @lsm_tmp_name) #20
  store ptr %0, ptr %4, align 8, !tbaa !1312
  %25 = getelementptr inbounds %struct.fmt_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %25, align 8, !tbaa !1314
  %26 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @force_move_till, ptr noundef nonnull %4) #21
  call fastcc void @rewrite_mem_refs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %24) #21
  %27 = load ptr, ptr %2, align 8, !tbaa !733
  %28 = call ptr @unshare_expr(ptr noundef %27) #20
  %29 = call ptr @gimple_build_assign_stat(ptr noundef %24, ptr noundef %28) #20
  %30 = call fastcc ptr @init_lim_data(ptr noundef %29) #21
  store ptr %0, ptr %30, align 8, !tbaa !1035
  %31 = getelementptr inbounds %struct.lim_aux_data, ptr %30, i64 0, i32 1
  store ptr %0, ptr %31, align 8, !tbaa !1244
  %32 = call ptr @loop_latch_edge(ptr noundef %0) #20
  call void @gsi_insert_on_edge(ptr noundef %32, ptr noundef %29) #20
  %33 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5) #21, !range !632
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35, !prof !1315

35:                                               ; preds = %19, %35
  %36 = phi i32 [ %41, %35 ], [ 0, %19 ]
  %37 = load ptr, ptr %2, align 8, !tbaa !733
  %38 = call ptr @unshare_expr(ptr noundef %37) #20
  %39 = call ptr @gimple_build_assign_stat(ptr noundef %38, ptr noundef %24) #20
  %40 = load ptr, ptr %5, align 8, !tbaa !515
  call void @gsi_insert_on_edge(ptr noundef %40, ptr noundef %39) #20
  %41 = add i32 %36, 1
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %41, ptr noundef nonnull %5) #21, !range !632
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %35, !prof !1316, !llvm.loop !1317

44:                                               ; preds = %35, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @force_move_till(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !prof !1318 !PGOFuncName !1319 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 45
  br i1 %6, label %7, label %17, !prof !1320

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !548
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !548
  %12 = getelementptr inbounds %struct.fmt_data, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1314
  %14 = load ptr, ptr %2, align 8, !tbaa !1312
  tail call fastcc void @force_move_till_op(ptr noundef %9, ptr noundef %13, ptr noundef %14) #21
  %15 = load ptr, ptr %12, align 8, !tbaa !1314
  %16 = load ptr, ptr %2, align 8, !tbaa !1312
  tail call fastcc void @force_move_till_op(ptr noundef %11, ptr noundef %15, ptr noundef %16) #21
  br label %17

17:                                               ; preds = %7, %3
  %18 = load ptr, ptr %1, align 8, !tbaa !515
  %19 = getelementptr inbounds %struct.fmt_data, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1314
  %21 = load ptr, ptr %2, align 8, !tbaa !1312
  tail call fastcc void @force_move_till_op(ptr noundef %18, ptr noundef %20, ptr noundef %21) #21
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_mem_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !1309 !PGOFuncName !1321 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !515
  call fastcc void @get_all_locs_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #21
  %6 = load ptr, ptr %5, align 8
  %7 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #21, !range !632
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !1315

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %3 ]
  %11 = load ptr, ptr %4, align 8, !tbaa !515
  tail call fastcc void @rewrite_mem_ref_loc(ptr noundef %11, ptr noundef %2) #21
  %12 = add i32 %10, 1
  %13 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %6, i32 noundef %12, ptr noundef nonnull %4) #21, !range !632
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9, !prof !1322, !llvm.loop !1323

15:                                               ; preds = %9, %3
  call fastcc void @VEC_mem_ref_loc_p_heap_free(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @force_move_till_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1324 !PGOFuncName !1325 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5, !prof !1326

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %19, !prof !1327

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12, !prof !1328

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1140, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !548
  %16 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %15) #21, !range !535
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !1329

18:                                               ; preds = %13
  tail call fastcc void @set_level(ptr noundef %15, ptr noundef %1, ptr noundef %2) #21
  br label %19

19:                                               ; preds = %13, %3, %5, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1330 !PGOFuncName !1331 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !530
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_mem_ref_loc(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1332 !PGOFuncName !1333 {
  %3 = getelementptr inbounds %struct.mem_ref_loc, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !883
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !885
  store ptr %1, ptr %5, align 8, !tbaa !515
  %6 = load ptr, ptr %3, align 8, !tbaa !883
  tail call fastcc void @update_stmt(ptr noundef %6) #21
  ret void
}

; Function Attrs: optsize
declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1332 !PGOFuncName !1334 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !535
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1335

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_computations_stmt(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !1336 !PGOFuncName !1337 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !684
  %6 = tail call fastcc ptr @loop_outer(ptr noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8, !prof !1338

8:                                                ; preds = %2
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #21
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !535
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %44, !prof !1339

11:                                               ; preds = %8, %16
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %13 = call fastcc ptr @get_lim_data(ptr noundef %12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !1340

15:                                               ; preds = %11
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  br label %16

16:                                               ; preds = %15, %25, %42, %26
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !535
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %11, label %44, !prof !1341, !llvm.loop !1342

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.lim_aux_data, ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !1037
  %22 = getelementptr inbounds %struct.lim_aux_data, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1244
  call fastcc void @clear_lim_data(ptr noundef %12) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !1343

25:                                               ; preds = %19
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  br label %16

26:                                               ; preds = %19
  %27 = call fastcc i32 @gimple_code(ptr noundef %12) #21, !range !530
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %16, label %29, !prof !1344

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32, !prof !1345

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !527
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr nonnull %30)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !515
  call void @print_gimple_stmt(ptr noundef %38, ptr noundef %12, i32 noundef 0, i32 noundef 0) #20
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !515
  %40 = load i32, ptr %23, align 8, !tbaa !777
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.29, i32 noundef %21, i32 noundef %40) #21
  br label %42

42:                                               ; preds = %36, %32, %29
  call void @mark_virtual_ops_for_renaming(ptr noundef %12) #20
  %43 = call ptr @loop_preheader_edge(ptr noundef nonnull %23) #20
  call void @gsi_insert_on_edge(ptr noundef %43, ptr noundef %12) #20
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #20
  br label %16

44:                                               ; preds = %16, %8, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_lim_data(ptr noundef %0) unnamed_addr #0 !prof !1045 !PGOFuncName !1346 {
  %2 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !515
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1347

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !515
  tail call fastcc void @free_lim_aux_data(ptr noundef %6) #21
  store ptr null, ptr %3, align 8, !tbaa !515
  br label %7

7:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lim_aux_data(ptr nocapture noundef %0) unnamed_addr #0 !prof !1045 !PGOFuncName !1348 {
  %2 = getelementptr inbounds %struct.lim_aux_data, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !1349

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.depend, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1157
  tail call void @free(ptr noundef nonnull %6) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !prof !1350, !llvm.loop !1351

10:                                               ; preds = %5, %1
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_mem_ref_p_heap_free() unnamed_addr #14 !prof !584 !PGOFuncName !1352 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !515
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1353

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !515
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_bitmap_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !1354 !PGOFuncName !1355 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1356

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !755
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1357

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !515
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !515
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !746 !PGOFuncName !1358 {
  %2 = load ptr, ptr %0, align 8, !tbaa !515
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1359

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_htab_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !1360 !PGOFuncName !1361 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1362

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !769
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1363

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !515
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !515
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_htab_t_heap_free() unnamed_addr #14 !prof !584 !PGOFuncName !1364 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !515
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1365

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !515
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!513}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!36 = !{ptr @for_each_index, ptr @is_gimple_min_invariant, i64 1}
!37 = !{ptr @for_each_index, ptr @fancy_abort, i64 1}
!38 = !{ptr @movement_possibility, ptr @gimple_code, i64 284558}
!39 = !{ptr @movement_possibility, ptr @gimple_get_lhs, i64 221116}
!40 = !{ptr @movement_possibility, ptr @gimple_vdef, i64 201632}
!41 = !{ptr @movement_possibility, ptr @stmt_ends_bb_p, i64 167621}
!42 = !{ptr @movement_possibility, ptr @gimple_has_volatile_ops, i64 167620}
!43 = !{ptr @movement_possibility, ptr @gimple_has_side_effects, i64 167615}
!44 = !{ptr @movement_possibility, ptr @stmt_could_throw_p, i64 166408}
!45 = !{ptr @movement_possibility, ptr @is_gimple_call, i64 166407}
!46 = !{ptr @movement_possibility, ptr @gimple_call_lhs, i64 993}
!47 = !{ptr @movement_possibility, ptr @is_gimple_assign, i64 165414}
!48 = !{ptr @movement_possibility, ptr @gimple_assign_lhs, i64 165413}
!49 = !{ptr @movement_possibility, ptr @gimple_could_trap_p, i64 166404}
!50 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 201633}
!51 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 167623}
!52 = !{ptr @is_gimple_call, ptr @gimple_code, i64 168944}
!53 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 992}
!54 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 395277}
!55 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 166420}
!56 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 981583}
!57 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 619817}
!58 = !{ptr @gimple_op, ptr @gimple_ops, i64 619816}
!59 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 1027341}
!60 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 867714}
!61 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!62 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 867714}
!63 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 867714}
!64 = !{ptr @get_lsm_tmp_name, ptr @gen_lsm_tmp_name, i64 259}
!65 = !{ptr @get_lsm_tmp_name, ptr @lsm_tmp_name_add, i64 277}
!66 = !{ptr @gen_lsm_tmp_name, ptr @gen_lsm_tmp_name, i64 222}
!67 = !{ptr @gen_lsm_tmp_name, ptr @lsm_tmp_name_add, i64 591}
!68 = !{ptr @gen_lsm_tmp_name, ptr @get_name, i64 367}
!69 = !{ptr @gen_lsm_tmp_name, ptr @fancy_abort, i64 1}
!70 = !{ptr @lsm_tmp_name_add, ptr @strlen, i64 870}
!71 = !{ptr @lsm_tmp_name_add, ptr @strcpy, i64 869}
!72 = !{ptr @tree_ssa_lim, ptr @tree_ssa_lim_initialize, i64 2627}
!73 = !{ptr @tree_ssa_lim, ptr @analyze_memory_references, i64 2627}
!74 = !{ptr @tree_ssa_lim, ptr @determine_invariantness, i64 2627}
!75 = !{ptr @tree_ssa_lim, ptr @store_motion, i64 2627}
!76 = !{ptr @tree_ssa_lim, ptr @move_computations, i64 2627}
!77 = !{ptr @tree_ssa_lim, ptr @tree_ssa_lim_finalize, i64 2627}
!78 = !{ptr @tree_ssa_lim_initialize, ptr @sbitmap_alloc, i64 2627}
!79 = !{ptr @tree_ssa_lim_initialize, ptr @sbitmap_zero, i64 2627}
!80 = !{ptr @tree_ssa_lim_initialize, ptr @gsi_start_bb, i64 179001}
!81 = !{ptr @tree_ssa_lim_initialize, ptr @gsi_end_p, i64 544287}
!82 = !{ptr @tree_ssa_lim_initialize, ptr @gsi_stmt, i64 406156}
!83 = !{ptr @tree_ssa_lim_initialize, ptr @nonpure_call_p, i64 406156}
!84 = !{ptr @tree_ssa_lim_initialize, ptr @gsi_next, i64 365286}
!85 = !{ptr @tree_ssa_lim_initialize, ptr @SET_BIT, i64 40869}
!86 = !{ptr @tree_ssa_lim_initialize, ptr @fill_always_executed_in, i64 5941}
!87 = !{ptr @tree_ssa_lim_initialize, ptr @free, i64 5254}
!88 = !{ptr @tree_ssa_lim_initialize, ptr @pointer_map_create, i64 2627}
!89 = !{ptr @analyze_memory_references, ptr @htab_create, i64 19269}
!90 = !{ptr @analyze_memory_references, ptr @number_of_loops, i64 29777}
!91 = !{ptr @analyze_memory_references, ptr @VEC_bitmap_heap_alloc, i64 7881}
!92 = !{ptr @analyze_memory_references, ptr @VEC_htab_t_heap_alloc, i64 2627}
!93 = !{ptr @analyze_memory_references, ptr @bitmap_obstack_alloc_stat, i64 49926}
!94 = !{ptr @analyze_memory_references, ptr @VEC_bitmap_base_quick_push, i64 49926}
!95 = !{ptr @analyze_memory_references, ptr @VEC_htab_t_base_quick_push, i64 16642}
!96 = !{ptr @analyze_memory_references, ptr @gather_mem_refs_in_loops, i64 2627}
!97 = !{ptr @analyze_memory_references, ptr @create_vop_ref_mapping, i64 2627}
!98 = !{ptr @determine_invariantness, ptr @init_walk_dominator_tree, i64 2627}
!99 = !{ptr @determine_invariantness, ptr @walk_dominator_tree, i64 2627}
!100 = !{ptr @determine_invariantness, ptr @fini_walk_dominator_tree, i64 2627}
!101 = !{ptr @store_motion, ptr @bitmap_obstack_alloc_stat, i64 2627}
!102 = !{ptr @store_motion, ptr @store_motion_loop, i64 5941}
!103 = !{ptr @store_motion, ptr @bitmap_obstack_free, i64 2627}
!104 = !{ptr @store_motion, ptr @gsi_commit_edge_inserts, i64 2627}
!105 = !{ptr @move_computations, ptr @init_walk_dominator_tree, i64 2627}
!106 = !{ptr @move_computations, ptr @walk_dominator_tree, i64 2627}
!107 = !{ptr @move_computations, ptr @fini_walk_dominator_tree, i64 2627}
!108 = !{ptr @move_computations, ptr @gsi_commit_edge_inserts, i64 2627}
!109 = !{ptr @move_computations, ptr @need_ssa_update_p, i64 2627}
!110 = !{ptr @move_computations, ptr @rewrite_into_loop_closed_ssa, i64 321}
!111 = !{ptr @tree_ssa_lim_finalize, ptr @pointer_map_destroy, i64 2675}
!112 = !{ptr @tree_ssa_lim_finalize, ptr @VEC_mem_ref_p_heap_free, i64 2627}
!113 = !{ptr @tree_ssa_lim_finalize, ptr @htab_delete, i64 19269}
!114 = !{ptr @tree_ssa_lim_finalize, ptr @VEC_bitmap_base_iterate, i64 57807}
!115 = !{ptr @tree_ssa_lim_finalize, ptr @bitmap_obstack_free, i64 49926}
!116 = !{ptr @tree_ssa_lim_finalize, ptr @VEC_bitmap_heap_free, i64 7881}
!117 = !{ptr @tree_ssa_lim_finalize, ptr @VEC_htab_t_base_iterate, i64 19269}
!118 = !{ptr @tree_ssa_lim_finalize, ptr @VEC_htab_t_heap_free, i64 2627}
!119 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 519856}
!120 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 519856}
!121 = !{ptr @nonpure_call_p, ptr @gimple_code, i64 428723}
!122 = !{ptr @nonpure_call_p, ptr @gimple_has_side_effects, i64 63327}
!123 = !{ptr @fill_always_executed_in, ptr @get_loop_body_in_dom_order, i64 13737}
!124 = !{ptr @fill_always_executed_in, ptr @dominated_by_p, i64 33771}
!125 = !{ptr @fill_always_executed_in, ptr @ei_start_1, i64 23407}
!126 = !{ptr @fill_always_executed_in, ptr @ei_cond, i64 62812}
!127 = !{ptr @fill_always_executed_in, ptr @flow_bb_inside_loop_p, i64 62811}
!128 = !{ptr @fill_always_executed_in, ptr @ei_next, i64 39405}
!129 = !{ptr @fill_always_executed_in, ptr @get_immediate_dominator, i64 1301}
!130 = !{ptr @fill_always_executed_in, ptr @free, i64 13737}
!131 = !{ptr @fill_always_executed_in, ptr @fill_always_executed_in, i64 8072}
!132 = !{ptr @ei_cond, ptr @ei_end_p, i64 62797}
!133 = !{ptr @ei_cond, ptr @ei_edge, i64 45425}
!134 = !{ptr @ei_next, ptr @ei_container, i64 74987}
!135 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 37494}
!136 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!137 = !{ptr @ei_end_p, ptr @ei_container, i64 125593}
!138 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 62797}
!139 = !{ptr @ei_edge, ptr @ei_container, i64 90849}
!140 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 45425}
!141 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!142 = !{ptr @memref_eq, ptr @operand_equal_p, i64 133041}
!143 = !{ptr @memref_free, ptr @bitmap_obstack_free, i64 511068}
!144 = !{ptr @memref_free, ptr @VEC_mem_ref_locs_p_base_iterate, i64 1471989}
!145 = !{ptr @memref_free, ptr @free_mem_ref_locs, i64 1386811}
!146 = !{ptr @memref_free, ptr @VEC_mem_ref_locs_p_heap_free, i64 85178}
!147 = !{ptr @memref_free, ptr @free, i64 85178}
!148 = !{ptr @VEC_bitmap_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 7881}
!149 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 35035}
!150 = !{ptr @VEC_htab_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 2627}
!151 = !{ptr @vtoe_free, ptr @bitmap_obstack_free, i64 11124}
!152 = !{ptr @vtoe_free, ptr @free, i64 5562}
!153 = !{ptr @gather_mem_refs_in_loops, ptr @gsi_start_bb, i64 113521}
!154 = !{ptr @gather_mem_refs_in_loops, ptr @gsi_end_p, i64 397893}
!155 = !{ptr @gather_mem_refs_in_loops, ptr @gsi_stmt, i64 284372}
!156 = !{ptr @gather_mem_refs_in_loops, ptr @gather_mem_refs_stmt, i64 284372}
!157 = !{ptr @gather_mem_refs_in_loops, ptr @gsi_next, i64 284372}
!158 = !{ptr @gather_mem_refs_in_loops, ptr @fel_init, i64 2627}
!159 = !{ptr @gather_mem_refs_in_loops, ptr @VEC_bitmap_base_index, i64 52227}
!160 = !{ptr @gather_mem_refs_in_loops, ptr @bitmap_ior_into, i64 30148}
!161 = !{ptr @gather_mem_refs_in_loops, ptr @loop_outer, i64 22079}
!162 = !{ptr @gather_mem_refs_in_loops, ptr @fel_next, i64 14010}
!163 = !{ptr @create_vop_ref_mapping, ptr @fel_init, i64 2627}
!164 = !{ptr @create_vop_ref_mapping, ptr @create_vop_ref_mapping_loop, i64 14010}
!165 = !{ptr @create_vop_ref_mapping, ptr @fel_next, i64 14010}
!166 = !{ptr @free_mem_ref_locs, ptr @VEC_mem_ref_loc_p_base_iterate, i64 212384}
!167 = !{ptr @free_mem_ref_locs, ptr @free, i64 212384}
!168 = !{ptr @free_mem_ref_locs, ptr @VEC_mem_ref_loc_p_heap_free, i64 91144}
!169 = !{ptr @VEC_mem_ref_locs_p_heap_free, ptr @free, i64 85177}
!170 = !{ptr @VEC_mem_ref_loc_p_heap_free, ptr @free, i64 93014}
!171 = !{ptr @gather_mem_refs_stmt, ptr @gimple_vuse, i64 430815}
!172 = !{ptr @gather_mem_refs_stmt, ptr @simple_mem_ref_in_stmt, i64 146334}
!173 = !{ptr @gather_mem_refs_stmt, ptr @iterative_hash_expr, i64 121238}
!174 = !{ptr @gather_mem_refs_stmt, ptr @htab_find_slot_with_hash, i64 121238}
!175 = !{ptr @gather_mem_refs_stmt, ptr @VEC_mem_ref_p_base_length, i64 85177}
!176 = !{ptr @gather_mem_refs_stmt, ptr @mem_ref_alloc, i64 85177}
!177 = !{ptr @gather_mem_refs_stmt, ptr @VEC_mem_ref_p_heap_safe_push, i64 85177}
!178 = !{ptr @gather_mem_refs_stmt, ptr @mark_ref_stored, i64 24301}
!179 = !{ptr @gather_mem_refs_stmt, ptr @bitmap_set_bit, i64 146332}
!180 = !{ptr @gather_mem_refs_stmt, ptr @record_mem_ref_loc, i64 121238}
!181 = !{ptr @gather_mem_refs_stmt, ptr @VEC_bitmap_base_index, i64 25095}
!182 = !{ptr @fel_init, ptr @number_of_loops, i64 5253}
!183 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 5253}
!184 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 41176}
!185 = !{ptr @fel_init, ptr @loop_outer, i64 26688}
!186 = !{ptr @fel_init, ptr @fel_next, i64 5253}
!187 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 678362}
!188 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 536736}
!189 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 33283}
!190 = !{ptr @fel_next, ptr @get_loop, i64 28028}
!191 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 5255}
!192 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 609796}
!193 = !{ptr @simple_mem_ref_in_stmt, ptr @gimple_code, i64 160999}
!194 = !{ptr @simple_mem_ref_in_stmt, ptr @gimple_assign_rhs_code, i64 136059}
!195 = !{ptr @simple_mem_ref_in_stmt, ptr @gimple_assign_lhs_ptr, i64 136059}
!196 = !{ptr @simple_mem_ref_in_stmt, ptr @get_gimple_rhs_class, i64 119349}
!197 = !{ptr @simple_mem_ref_in_stmt, ptr @gimple_assign_rhs1, i64 119347}
!198 = !{ptr @simple_mem_ref_in_stmt, ptr @is_gimple_addressable, i64 111601}
!199 = !{ptr @simple_mem_ref_in_stmt, ptr @gimple_assign_rhs1_ptr, i64 111600}
!200 = !{ptr @simple_mem_ref_in_stmt, ptr @is_gimple_min_invariant, i64 7746}
!201 = !{ptr @mem_ref_alloc, ptr @xmalloc, i64 85178}
!202 = !{ptr @mem_ref_alloc, ptr @bitmap_obstack_alloc_stat, i64 511068}
!203 = !{ptr @VEC_mem_ref_p_heap_safe_push, ptr @VEC_mem_ref_p_heap_reserve, i64 85178}
!204 = !{ptr @VEC_mem_ref_p_heap_safe_push, ptr @VEC_mem_ref_p_base_quick_push, i64 85178}
!205 = !{ptr @mark_ref_stored, ptr @bitmap_bit_p, i64 39035}
!206 = !{ptr @mark_ref_stored, ptr @bitmap_set_bit, i64 24652}
!207 = !{ptr @mark_ref_stored, ptr @loop_outer, i64 24652}
!208 = !{ptr @record_mem_ref_loc, ptr @xmalloc, i64 121239}
!209 = !{ptr @record_mem_ref_loc, ptr @VEC_bitmap_base_index, i64 121239}
!210 = !{ptr @record_mem_ref_loc, ptr @VEC_mem_ref_locs_p_base_length, i64 121239}
!211 = !{ptr @record_mem_ref_loc, ptr @VEC_mem_ref_locs_p_heap_safe_grow_cleared, i64 89258}
!212 = !{ptr @record_mem_ref_loc, ptr @VEC_mem_ref_locs_p_base_index, i64 121239}
!213 = !{ptr @record_mem_ref_loc, ptr @mem_ref_locs_alloc, i64 91142}
!214 = !{ptr @record_mem_ref_loc, ptr @VEC_mem_ref_locs_p_base_replace, i64 91142}
!215 = !{ptr @record_mem_ref_loc, ptr @VEC_mem_ref_loc_p_heap_safe_push, i64 121239}
!216 = !{ptr @record_mem_ref_loc, ptr @bitmap_set_bit, i64 121239}
!217 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 397319}
!218 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 397319}
!219 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 237323}
!220 = !{ptr @gimple_assign_lhs_ptr, ptr @gimple_op_ptr, i64 136060}
!221 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 404266}
!222 = !{ptr @gimple_assign_rhs1_ptr, ptr @gimple_op_ptr, i64 111603}
!223 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 397319}
!224 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 247663}
!225 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 247662}
!226 = !{ptr @VEC_mem_ref_p_heap_reserve, ptr @VEC_mem_ref_p_base_space, i64 85178}
!227 = !{ptr @VEC_mem_ref_p_heap_reserve, ptr @vec_heap_p_reserve, i64 8498}
!228 = !{ptr @VEC_mem_ref_locs_p_heap_safe_grow_cleared, ptr @VEC_mem_ref_locs_p_base_length, i64 89258}
!229 = !{ptr @VEC_mem_ref_locs_p_heap_safe_grow_cleared, ptr @VEC_mem_ref_locs_p_heap_safe_grow, i64 89258}
!230 = !{ptr @VEC_mem_ref_locs_p_heap_safe_grow_cleared, ptr @VEC_mem_ref_locs_p_base_address, i64 89258}
!231 = !{ptr @mem_ref_locs_alloc, ptr @xmalloc, i64 91143}
!232 = !{ptr @VEC_mem_ref_loc_p_heap_safe_push, ptr @VEC_mem_ref_loc_p_heap_reserve, i64 127752}
!233 = !{ptr @VEC_mem_ref_loc_p_heap_safe_push, ptr @VEC_mem_ref_loc_p_base_quick_push, i64 127752}
!234 = !{ptr @VEC_mem_ref_locs_p_heap_safe_grow, ptr @VEC_mem_ref_locs_p_heap_reserve_exact, i64 89258}
!235 = !{ptr @VEC_mem_ref_locs_p_heap_reserve_exact, ptr @VEC_mem_ref_locs_p_base_space, i64 89258}
!236 = !{ptr @VEC_mem_ref_locs_p_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 89257}
!237 = !{ptr @VEC_mem_ref_loc_p_heap_reserve, ptr @VEC_mem_ref_loc_p_base_space, i64 127752}
!238 = !{ptr @VEC_mem_ref_loc_p_heap_reserve, ptr @vec_heap_p_reserve, i64 95463}
!239 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 5254}
!240 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 28028}
!241 = !{ptr @VEC_int_heap_free, ptr @free, i64 5253}
!242 = !{ptr @create_vop_ref_mapping_loop, ptr @VEC_bitmap_base_index, i64 14014}
!243 = !{ptr @create_vop_ref_mapping_loop, ptr @bmp_iter_set_init, i64 14014}
!244 = !{ptr @create_vop_ref_mapping_loop, ptr @bmp_iter_set, i64 105151}
!245 = !{ptr @create_vop_ref_mapping_loop, ptr @VEC_mem_ref_p_base_index, i64 91137}
!246 = !{ptr @create_vop_ref_mapping_loop, ptr @add_vop_ref_mapping, i64 213115}
!247 = !{ptr @create_vop_ref_mapping_loop, ptr @loop_outer, i64 213115}
!248 = !{ptr @create_vop_ref_mapping_loop, ptr @bmp_iter_next, i64 91137}
!249 = !{ptr @add_vop_ref_mapping, ptr @VEC_htab_t_base_index, i64 213129}
!250 = !{ptr @add_vop_ref_mapping, ptr @bitmap_bit_p, i64 213129}
!251 = !{ptr @add_vop_ref_mapping, ptr @VEC_bitmap_base_index, i64 213129}
!252 = !{ptr @add_vop_ref_mapping, ptr @bmp_iter_and_compl_init, i64 213129}
!253 = !{ptr @add_vop_ref_mapping, ptr @bmp_iter_and_compl, i64 233412}
!254 = !{ptr @add_vop_ref_mapping, ptr @record_vop_access, i64 20283}
!255 = !{ptr @add_vop_ref_mapping, ptr @bmp_iter_next, i64 20283}
!256 = !{ptr @record_vop_access, ptr @htab_find_slot_with_hash, i64 20282}
!257 = !{ptr @record_vop_access, ptr @xmalloc, i64 5562}
!258 = !{ptr @record_vop_access, ptr @bitmap_obstack_alloc_stat, i64 11124}
!259 = !{ptr @record_vop_access, ptr @bitmap_set_bit, i64 24600}
!260 = !{ptr @determine_invariantness_stmt, ptr @loop_outer, i64 181695}
!261 = !{ptr @determine_invariantness_stmt, ptr @loop_depth, i64 1}
!262 = !{ptr @determine_invariantness_stmt, ptr @fprintf, i64 1}
!263 = !{ptr @determine_invariantness_stmt, ptr @gsi_start_bb, i64 113564}
!264 = !{ptr @determine_invariantness_stmt, ptr @gsi_end_p, i64 398121}
!265 = !{ptr @determine_invariantness_stmt, ptr @gsi_stmt, i64 284557}
!266 = !{ptr @determine_invariantness_stmt, ptr @movement_possibility, i64 284557}
!267 = !{ptr @determine_invariantness_stmt, ptr @nonpure_call_p, i64 54703}
!268 = !{ptr @determine_invariantness_stmt, ptr @stmt_makes_single_store, i64 30674}
!269 = !{ptr @determine_invariantness_stmt, ptr @init_lim_data, i64 254316}
!270 = !{ptr @determine_invariantness_stmt, ptr @is_gimple_assign, i64 229854}
!271 = !{ptr @determine_invariantness_stmt, ptr @gimple_assign_rhs_code, i64 256403}
!272 = !{ptr @determine_invariantness_stmt, ptr @get_gimple_rhs_class, i64 165419}
!273 = !{ptr @determine_invariantness_stmt, ptr @gimple_assign_rhs1, i64 45771}
!274 = !{ptr @determine_invariantness_stmt, ptr @gimple_assign_rhs2, i64 45771}
!275 = !{ptr @determine_invariantness_stmt, ptr @loop_containing_stmt, i64 45771}
!276 = !{ptr @determine_invariantness_stmt, ptr @outermost_invariant_loop, i64 45771}
!277 = !{ptr @determine_invariantness_stmt, ptr @integer_onep, i64 6617}
!278 = !{ptr @determine_invariantness_stmt, ptr @has_single_use, i64 1081}
!279 = !{ptr @determine_invariantness_stmt, ptr @rewrite_bittest, i64 998}
!280 = !{ptr @determine_invariantness_stmt, ptr @determine_max_movement, i64 159175}
!281 = !{ptr @determine_invariantness_stmt, ptr @set_profitable_level, i64 2495}
!282 = !{ptr @determine_invariantness_stmt, ptr @gsi_next, i64 284557}
!283 = !{ptr @loop_depth, ptr @VEC_loop_p_base_length, i64 20190}
!284 = !{ptr @init_lim_data, ptr @pointer_map_insert, i64 254561}
!285 = !{ptr @init_lim_data, ptr @xcalloc, i64 254561}
!286 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 46311}
!287 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 46310}
!288 = !{ptr @outermost_invariant_loop, ptr @is_gimple_min_invariant, i64 33697}
!289 = !{ptr @outermost_invariant_loop, ptr @fancy_abort, i64 1}
!290 = !{ptr @outermost_invariant_loop, ptr @gimple_bb, i64 204114}
!291 = !{ptr @outermost_invariant_loop, ptr @find_common_loop, i64 205189}
!292 = !{ptr @outermost_invariant_loop, ptr @get_lim_data, i64 203305}
!293 = !{ptr @outermost_invariant_loop, ptr @loop_outer, i64 1884}
!294 = !{ptr @outermost_invariant_loop, ptr @loop_depth, i64 11426}
!295 = !{ptr @outermost_invariant_loop, ptr @superloop_at_depth, i64 61254}
!296 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 47471}
!297 = !{ptr @has_single_use, ptr @is_gimple_debug, i64 1345}
!298 = !{ptr @has_single_use, ptr @single_imm_use_1, i64 1}
!299 = !{ptr @rewrite_bittest, ptr @gsi_stmt, i64 999}
!300 = !{ptr @rewrite_bittest, ptr @gimple_assign_lhs, i64 999}
!301 = !{ptr @rewrite_bittest, ptr @single_imm_use, i64 998}
!302 = !{ptr @rewrite_bittest, ptr @gimple_code, i64 2239}
!303 = !{ptr @rewrite_bittest, ptr @gimple_cond_lhs, i64 911}
!304 = !{ptr @rewrite_bittest, ptr @gimple_cond_code, i64 910}
!305 = !{ptr @rewrite_bittest, ptr @gimple_cond_rhs, i64 909}
!306 = !{ptr @rewrite_bittest, ptr @integer_zerop, i64 909}
!307 = !{ptr @rewrite_bittest, ptr @gimple_assign_rhs1, i64 1808}
!308 = !{ptr @rewrite_bittest, ptr @gimple_assign_rhs_code, i64 2301}
!309 = !{ptr @rewrite_bittest, ptr @has_single_use, i64 367}
!310 = !{ptr @rewrite_bittest, ptr @loop_containing_stmt, i64 1681}
!311 = !{ptr @rewrite_bittest, ptr @gimple_assign_rhs2, i64 533}
!312 = !{ptr @rewrite_bittest, ptr @outermost_invariant_loop, i64 613}
!313 = !{ptr @rewrite_bittest, ptr @create_tmp_var, i64 77}
!314 = !{ptr @rewrite_bittest, ptr @add_referenced_var, i64 77}
!315 = !{ptr @rewrite_bittest, ptr @build_int_cst, i64 77}
!316 = !{ptr @rewrite_bittest, ptr @fold_build2_stat_loc, i64 154}
!317 = !{ptr @rewrite_bittest, ptr @gimple_build_assign_stat, i64 154}
!318 = !{ptr @rewrite_bittest, ptr @make_ssa_name, i64 154}
!319 = !{ptr @rewrite_bittest, ptr @gimple_assign_set_lhs, i64 154}
!320 = !{ptr @rewrite_bittest, ptr @set_ssa_use_from_ptr, i64 77}
!321 = !{ptr @rewrite_bittest, ptr @build_int_cst_type, i64 77}
!322 = !{ptr @rewrite_bittest, ptr @gimple_cond_set_rhs, i64 77}
!323 = !{ptr @rewrite_bittest, ptr @gsi_insert_before, i64 154}
!324 = !{ptr @rewrite_bittest, ptr @gsi_remove, i64 77}
!325 = !{ptr @determine_max_movement, ptr @gimple_bb, i64 159177}
!326 = !{ptr @determine_max_movement, ptr @get_lim_data, i64 159177}
!327 = !{ptr @determine_max_movement, ptr @superloop_at_depth, i64 145253}
!328 = !{ptr @determine_max_movement, ptr @op_iter_init_tree, i64 159177}
!329 = !{ptr @determine_max_movement, ptr @op_iter_done, i64 171628}
!330 = !{ptr @determine_max_movement, ptr @add_dependency, i64 170200}
!331 = !{ptr @determine_max_movement, ptr @op_iter_next_tree, i64 12451}
!332 = !{ptr @determine_max_movement, ptr @gimple_vuse, i64 1428}
!333 = !{ptr @determine_max_movement, ptr @mem_ref_in_stmt, i64 1202}
!334 = !{ptr @determine_max_movement, ptr @outermost_indep_loop, i64 1201}
!335 = !{ptr @determine_max_movement, ptr @stmt_cost, i64 302}
!336 = !{ptr @set_profitable_level, ptr @gimple_bb, i64 2495}
!337 = !{ptr @set_profitable_level, ptr @get_lim_data, i64 2495}
!338 = !{ptr @set_profitable_level, ptr @set_level, i64 2495}
!339 = !{ptr @get_lim_data, ptr @pointer_map_contains, i64 673131}
!340 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 156}
!341 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 156}
!342 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 234}
!343 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 233}
!344 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!345 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 234}
!346 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 2336}
!347 = !{ptr @single_imm_use, ptr @is_gimple_debug, i64 987}
!348 = !{ptr @single_imm_use, ptr @single_imm_use_1, i64 1}
!349 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 914}
!350 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 914}
!351 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 78}
!352 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 78}
!353 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 78}
!354 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 76}
!355 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 159177}
!356 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 159177}
!357 = !{ptr @add_dependency, ptr @gimple_bb, i64 152934}
!358 = !{ptr @add_dependency, ptr @outermost_invariant_loop, i64 151066}
!359 = !{ptr @add_dependency, ptr @flow_loop_nested_p, i64 9321}
!360 = !{ptr @add_dependency, ptr @get_lim_data, i64 9321}
!361 = !{ptr @add_dependency, ptr @xmalloc, i64 4107}
!362 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 152933}
!363 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!364 = !{ptr @mem_ref_in_stmt, ptr @simple_mem_ref_in_stmt, i64 14665}
!365 = !{ptr @mem_ref_in_stmt, ptr @fancy_abort, i64 2}
!366 = !{ptr @mem_ref_in_stmt, ptr @iterative_hash_expr, i64 14664}
!367 = !{ptr @mem_ref_in_stmt, ptr @htab_find_with_hash, i64 14664}
!368 = !{ptr @outermost_indep_loop, ptr @bitmap_bit_p, i64 23695}
!369 = !{ptr @outermost_indep_loop, ptr @ref_indep_loop_p, i64 19650}
!370 = !{ptr @outermost_indep_loop, ptr @loop_depth, i64 8881}
!371 = !{ptr @outermost_indep_loop, ptr @superloop_at_depth, i64 8881}
!372 = !{ptr @stmt_cost, ptr @gimple_code, i64 3686}
!373 = !{ptr @stmt_cost, ptr @gimple_references_memory_p, i64 2531}
!374 = !{ptr @stmt_cost, ptr @is_gimple_call, i64 2531}
!375 = !{ptr @stmt_cost, ptr @gimple_call_fndecl, i64 1}
!376 = !{ptr @stmt_cost, ptr @gimple_assign_rhs_code, i64 2529}
!377 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 159177}
!378 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 159019}
!379 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 159177}
!380 = !{ptr @ref_indep_loop_p, ptr @bitmap_bit_p, i64 49846}
!381 = !{ptr @ref_indep_loop_p, ptr @ref_indep_loop_p_1, i64 14731}
!382 = !{ptr @ref_indep_loop_p, ptr @record_indep_loop, i64 14731}
!383 = !{ptr @ref_indep_loop_p_1, ptr @bitmap_bit_p, i64 14732}
!384 = !{ptr @ref_indep_loop_p_1, ptr @VEC_bitmap_base_index, i64 14732}
!385 = !{ptr @ref_indep_loop_p_1, ptr @bitmap_intersect_p, i64 14732}
!386 = !{ptr @ref_indep_loop_p_1, ptr @bitmap_obstack_alloc_stat, i64 1259}
!387 = !{ptr @ref_indep_loop_p_1, ptr @VEC_htab_t_base_index, i64 1259}
!388 = !{ptr @ref_indep_loop_p_1, ptr @bmp_iter_and_compl_init, i64 1259}
!389 = !{ptr @ref_indep_loop_p_1, ptr @bmp_iter_and_compl, i64 2518}
!390 = !{ptr @ref_indep_loop_p_1, ptr @get_vop_accesses, i64 316}
!391 = !{ptr @ref_indep_loop_p_1, ptr @get_vop_stores, i64 943}
!392 = !{ptr @ref_indep_loop_p_1, ptr @bitmap_ior_into, i64 1259}
!393 = !{ptr @ref_indep_loop_p_1, ptr @bmp_iter_next, i64 5188}
!394 = !{ptr @ref_indep_loop_p_1, ptr @bmp_iter_set_init, i64 1259}
!395 = !{ptr @ref_indep_loop_p_1, ptr @bmp_iter_set, i64 5188}
!396 = !{ptr @ref_indep_loop_p_1, ptr @VEC_mem_ref_p_base_index, i64 4126}
!397 = !{ptr @ref_indep_loop_p_1, ptr @refs_independent_p, i64 4126}
!398 = !{ptr @ref_indep_loop_p_1, ptr @record_indep_loop, i64 197}
!399 = !{ptr @ref_indep_loop_p_1, ptr @bitmap_obstack_free, i64 1259}
!400 = !{ptr @record_indep_loop, ptr @bitmap_set_bit, i64 14920}
!401 = !{ptr @get_vop_accesses, ptr @htab_find_with_hash, i64 315}
!402 = !{ptr @get_vop_stores, ptr @htab_find_with_hash, i64 943}
!403 = !{ptr @refs_independent_p, ptr @bitmap_bit_p, i64 6972}
!404 = !{ptr @refs_independent_p, ptr @mem_refs_may_alias_p, i64 3292}
!405 = !{ptr @refs_independent_p, ptr @bitmap_set_bit, i64 6586}
!406 = !{ptr @mem_refs_may_alias_p, ptr @refs_may_alias_p, i64 3295}
!407 = !{ptr @mem_refs_may_alias_p, ptr @get_inner_reference_aff, i64 342}
!408 = !{ptr @mem_refs_may_alias_p, ptr @aff_combination_expand, i64 342}
!409 = !{ptr @mem_refs_may_alias_p, ptr @aff_combination_scale, i64 171}
!410 = !{ptr @mem_refs_may_alias_p, ptr @aff_combination_add, i64 171}
!411 = !{ptr @mem_refs_may_alias_p, ptr @cannot_overlap_p, i64 171}
!412 = !{ptr @cannot_overlap_p, ptr @double_int_negative_p, i64 15}
!413 = !{ptr @cannot_overlap_p, ptr @double_int_add, i64 4}
!414 = !{ptr @cannot_overlap_p, ptr @double_int_scmp, i64 11}
!415 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 2531}
!416 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 2530}
!417 = !{ptr @set_level, ptr @gimple_bb, i64 3444}
!418 = !{ptr @set_level, ptr @find_common_loop, i64 3842}
!419 = !{ptr @set_level, ptr @get_lim_data, i64 3444}
!420 = !{ptr @set_level, ptr @loop_outer, i64 398}
!421 = !{ptr @set_level, ptr @flow_loop_nested_p, i64 3454}
!422 = !{ptr @set_level, ptr @fancy_abort, i64 1}
!423 = !{ptr @set_level, ptr @set_level, i64 879}
!424 = !{ptr @store_motion_loop, ptr @get_loop_exit_edges, i64 14014}
!425 = !{ptr @store_motion_loop, ptr @bitmap_obstack_alloc_stat, i64 14014}
!426 = !{ptr @store_motion_loop, ptr @loop_suitable_for_sm, i64 14014}
!427 = !{ptr @store_motion_loop, ptr @find_refs_for_sm, i64 14013}
!428 = !{ptr @store_motion_loop, ptr @hoist_memory_references, i64 14013}
!429 = !{ptr @store_motion_loop, ptr @VEC_edge_heap_free, i64 14014}
!430 = !{ptr @store_motion_loop, ptr @bitmap_ior_into, i64 14014}
!431 = !{ptr @store_motion_loop, ptr @store_motion_loop, i64 8072}
!432 = !{ptr @store_motion_loop, ptr @bitmap_and_compl_into, i64 14014}
!433 = !{ptr @store_motion_loop, ptr @bitmap_obstack_free, i64 14014}
!434 = !{ptr @loop_suitable_for_sm, ptr @VEC_edge_base_iterate, i64 43380}
!435 = !{ptr @find_refs_for_sm, ptr @VEC_bitmap_base_index, i64 14014}
!436 = !{ptr @find_refs_for_sm, ptr @bmp_iter_and_compl_init, i64 14014}
!437 = !{ptr @find_refs_for_sm, ptr @bmp_iter_and_compl, i64 217799}
!438 = !{ptr @find_refs_for_sm, ptr @VEC_mem_ref_p_base_index, i64 203785}
!439 = !{ptr @find_refs_for_sm, ptr @can_sm_ref_p, i64 203785}
!440 = !{ptr @find_refs_for_sm, ptr @bitmap_set_bit, i64 243}
!441 = !{ptr @find_refs_for_sm, ptr @bmp_iter_next, i64 203785}
!442 = !{ptr @hoist_memory_references, ptr @bmp_iter_set_init, i64 14014}
!443 = !{ptr @hoist_memory_references, ptr @bmp_iter_set, i64 14257}
!444 = !{ptr @hoist_memory_references, ptr @VEC_mem_ref_p_base_index, i64 243}
!445 = !{ptr @hoist_memory_references, ptr @execute_sm, i64 243}
!446 = !{ptr @hoist_memory_references, ptr @bmp_iter_next, i64 243}
!447 = !{ptr @VEC_edge_heap_free, ptr @free, i64 14013}
!448 = !{ptr @can_sm_ref_p, ptr @bitmap_bit_p, i64 203799}
!449 = !{ptr @can_sm_ref_p, ptr @is_gimple_reg_type, i64 41625}
!450 = !{ptr @can_sm_ref_p, ptr @for_each_index, i64 41620}
!451 = !{ptr @can_sm_ref_p, ptr @get_base_address, i64 6927}
!452 = !{ptr @can_sm_ref_p, ptr @tree_could_trap_p, i64 6927}
!453 = !{ptr @can_sm_ref_p, ptr @ref_always_accessed_p, i64 1632}
!454 = !{ptr @can_sm_ref_p, ptr @ref_indep_loop_p, i64 5429}
!455 = !{ptr @may_move_till, ptr @outermost_invariant_loop, i64 52802}
!456 = !{ptr @ref_always_accessed_p, ptr @get_base_address, i64 7725}
!457 = !{ptr @ref_always_accessed_p, ptr @get_all_locs_in_loop, i64 1630}
!458 = !{ptr @ref_always_accessed_p, ptr @VEC_mem_ref_loc_p_base_iterate, i64 7591}
!459 = !{ptr @ref_always_accessed_p, ptr @get_lim_data, i64 9468}
!460 = !{ptr @ref_always_accessed_p, ptr @gimple_get_lhs, i64 12191}
!461 = !{ptr @ref_always_accessed_p, ptr @flow_loop_nested_p, i64 44}
!462 = !{ptr @ref_always_accessed_p, ptr @VEC_mem_ref_loc_p_heap_free, i64 1630}
!463 = !{ptr @get_all_locs_in_loop, ptr @VEC_bitmap_base_index, i64 6196}
!464 = !{ptr @get_all_locs_in_loop, ptr @bitmap_bit_p, i64 6196}
!465 = !{ptr @get_all_locs_in_loop, ptr @VEC_mem_ref_locs_p_base_length, i64 3121}
!466 = !{ptr @get_all_locs_in_loop, ptr @VEC_mem_ref_locs_p_base_index, i64 3120}
!467 = !{ptr @get_all_locs_in_loop, ptr @VEC_mem_ref_loc_p_base_iterate, i64 9059}
!468 = !{ptr @get_all_locs_in_loop, ptr @VEC_mem_ref_loc_p_heap_safe_push, i64 6508}
!469 = !{ptr @get_all_locs_in_loop, ptr @get_all_locs_in_loop, i64 4324}
!470 = !{ptr @execute_sm, ptr @get_lsm_tmp_name, i64 242}
!471 = !{ptr @execute_sm, ptr @make_rename_temp, i64 242}
!472 = !{ptr @execute_sm, ptr @for_each_index, i64 242}
!473 = !{ptr @execute_sm, ptr @rewrite_mem_refs, i64 242}
!474 = !{ptr @execute_sm, ptr @unshare_expr, i64 584}
!475 = !{ptr @execute_sm, ptr @gimple_build_assign_stat, i64 584}
!476 = !{ptr @execute_sm, ptr @init_lim_data, i64 242}
!477 = !{ptr @execute_sm, ptr @loop_latch_edge, i64 242}
!478 = !{ptr @execute_sm, ptr @gsi_insert_on_edge, i64 584}
!479 = !{ptr @execute_sm, ptr @VEC_edge_base_iterate, i64 584}
!480 = !{ptr @force_move_till, ptr @force_move_till_op, i64 128}
!481 = !{ptr @rewrite_mem_refs, ptr @get_all_locs_in_loop, i64 242}
!482 = !{ptr @rewrite_mem_refs, ptr @VEC_mem_ref_loc_p_base_iterate, i64 691}
!483 = !{ptr @rewrite_mem_refs, ptr @rewrite_mem_ref_loc, i64 449}
!484 = !{ptr @rewrite_mem_refs, ptr @VEC_mem_ref_loc_p_heap_free, i64 242}
!485 = !{ptr @force_move_till_op, ptr @is_gimple_min_invariant, i64 90}
!486 = !{ptr @force_move_till_op, ptr @fancy_abort, i64 1}
!487 = !{ptr @force_move_till_op, ptr @gimple_nop_p, i64 73}
!488 = !{ptr @force_move_till_op, ptr @set_level, i64 68}
!489 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 74}
!490 = !{ptr @rewrite_mem_ref_loc, ptr @mark_virtual_ops_for_renaming, i64 450}
!491 = !{ptr @rewrite_mem_ref_loc, ptr @update_stmt, i64 450}
!492 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 450}
!493 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 449}
!494 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 449}
!495 = !{ptr @move_computations_stmt, ptr @loop_outer, i64 181900}
!496 = !{ptr @move_computations_stmt, ptr @gsi_start_bb, i64 113660}
!497 = !{ptr @move_computations_stmt, ptr @gsi_end_p, i64 399759}
!498 = !{ptr @move_computations_stmt, ptr @gsi_stmt, i64 286099}
!499 = !{ptr @move_computations_stmt, ptr @get_lim_data, i64 286099}
!500 = !{ptr @move_computations_stmt, ptr @gsi_next, i64 283073}
!501 = !{ptr @move_computations_stmt, ptr @clear_lim_data, i64 254558}
!502 = !{ptr @move_computations_stmt, ptr @gimple_code, i64 3026}
!503 = !{ptr @move_computations_stmt, ptr @mark_virtual_ops_for_renaming, i64 1870}
!504 = !{ptr @move_computations_stmt, ptr @loop_preheader_edge, i64 1870}
!505 = !{ptr @move_computations_stmt, ptr @gsi_insert_on_edge, i64 1870}
!506 = !{ptr @move_computations_stmt, ptr @gsi_remove, i64 1870}
!507 = !{ptr @clear_lim_data, ptr @pointer_map_contains, i64 254561}
!508 = !{ptr @clear_lim_data, ptr @free_lim_aux_data, i64 254560}
!509 = !{ptr @free_lim_aux_data, ptr @free, i64 258669}
!510 = !{ptr @VEC_mem_ref_p_heap_free, ptr @free, i64 2563}
!511 = !{ptr @VEC_bitmap_heap_free, ptr @free, i64 7880}
!512 = !{ptr @VEC_htab_t_heap_free, ptr @free, i64 2626}
!513 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!514 = !{!"function_entry_count", i64 630809}
!515 = !{!516, !516, i64 0}
!516 = !{!"any pointer", !517, i64 0}
!517 = !{!"omnipotent char", !518, i64 0}
!518 = !{!"Simple C/C++ TBAA"}
!519 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 513487, i32 7762, i32 1, i32 1, i32 1, i32 721900, i32 181527, i32 1, i32 74595, i32 21, i32 69, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 28280}
!520 = !{!"branch_weights", i32 721900, i32 1}
!521 = !{!"branch_weights", i32 14363, i32 167165}
!522 = !{!"branch_weights", i32 1106, i32 27175}
!523 = !{!"branch_weights", i32 1, i32 27175}
!524 = !{!"branch_weights", i32 15156, i32 13125}
!525 = !{!"branch_weights", i32 1, i32 13125}
!526 = !{!"function_entry_count", i64 284559}
!527 = !{!528, !528, i64 0}
!528 = !{!"int", !517, i64 0}
!529 = !{!"branch_weights", i32 1, i32 284560}
!530 = !{i32 0, i32 256}
!531 = !{!"branch_weights", i32 63444, i32 221117}
!532 = !{!"branch_weights", i32 19484, i32 201634}
!533 = !{!"branch_weights", i32 167624, i32 34011}
!534 = !{!"branch_weights", i32 167624, i32 1}
!535 = !{i8 0, i8 2}
!536 = !{!"branch_weights", i32 167620, i32 5}
!537 = !{!"branch_weights", i32 166414, i32 1207}
!538 = !{!"branch_weights", i32 166414, i32 1}
!539 = !{!"branch_weights", i32 165422, i32 993}
!540 = !{!"branch_weights", i32 1, i32 165422}
!541 = !{!"branch_weights", i32 20801, i32 -833244070}
!542 = !{!"branch_weights", i32 82804, i32 83611}
!543 = !{!"function_entry_count", i64 6601039}
!544 = !{!"tree-ssa-loop-im.c:gimple_code"}
!545 = !{!"function_entry_count", i64 201633}
!546 = !{!"tree-ssa-loop-im.c:gimple_vdef"}
!547 = !{!"branch_weights", i32 1, i32 201634}
!548 = !{!517, !517, i64 0}
!549 = !{!"function_entry_count", i64 167623}
!550 = !{!"tree-ssa-loop-im.c:gimple_has_volatile_ops"}
!551 = !{!"branch_weights", i32 1, i32 167624}
!552 = !{!"function_entry_count", i64 168944}
!553 = !{!"tree-ssa-loop-im.c:is_gimple_call"}
!554 = !{!"function_entry_count", i64 992}
!555 = !{!"tree-ssa-loop-im.c:gimple_call_lhs"}
!556 = !{!"function_entry_count", i64 395277}
!557 = !{!"tree-ssa-loop-im.c:is_gimple_assign"}
!558 = !{!"function_entry_count", i64 166420}
!559 = !{!"tree-ssa-loop-im.c:gimple_assign_lhs"}
!560 = !{!"function_entry_count", i64 981583}
!561 = !{!"tree-ssa-loop-im.c:gimple_has_mem_ops"}
!562 = !{!"function_entry_count", i64 619817}
!563 = !{!"tree-ssa-loop-im.c:gimple_op"}
!564 = !{!"branch_weights", i32 1, i32 619818}
!565 = !{!"function_entry_count", i64 1027341}
!566 = !{!"tree-ssa-loop-im.c:gimple_has_ops"}
!567 = !{!"function_entry_count", i64 867714}
!568 = !{!"tree-ssa-loop-im.c:gimple_ops"}
!569 = !{!570, !570, i64 0}
!570 = !{!"long", !517, i64 0}
!571 = !{!"branch_weights", i32 1, i32 867715}
!572 = !{!"tree-ssa-loop-im.c:gimple_statement_structure"}
!573 = !{!"tree-ssa-loop-im.c:gss_for_code"}
!574 = !{!"function_entry_count", i64 259}
!575 = !{!"branch_weights", i32 18, i32 243}
!576 = !{!"function_entry_count", i64 480}
!577 = !{!"tree-ssa-loop-im.c:gen_lsm_tmp_name"}
!578 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 86, i32 1, i32 1, i32 1, i32 1, i32 1, i32 115, i32 23, i32 86, i32 175, i32 1, i32 1, i32 1, i32 1}
!579 = !{!"branch_weights", i32 1, i32 115}
!580 = !{!"branch_weights", i32 15, i32 246}
!581 = !{!"function_entry_count", i64 870}
!582 = !{!"tree-ssa-loop-im.c:lsm_tmp_name_add"}
!583 = !{!"branch_weights", i32 1, i32 871}
!584 = !{!"function_entry_count", i64 2627}
!585 = !{!"tree-ssa-loop-im.c:tree_ssa_lim_initialize"}
!586 = !{!587, !516, i64 8}
!587 = !{!"function", !516, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !516, i64 48, !516, i64 56, !516, i64 64, !516, i64 72, !516, i64 80, !516, i64 88, !516, i64 96, !528, i64 104, !528, i64 108, !528, i64 112, !528, i64 116, !528, i64 120, !528, i64 124, !516, i64 128, !528, i64 136, !528, i64 137, !528, i64 138, !528, i64 138, !528, i64 138, !528, i64 138, !528, i64 138, !528, i64 138, !528, i64 138, !528, i64 139, !528, i64 139, !528, i64 139, !528, i64 139, !528, i64 139, !528, i64 139, !528, i64 139}
!588 = !{!589, !528, i64 32}
!589 = !{!"control_flow_graph", !516, i64 0, !516, i64 8, !516, i64 16, !528, i64 24, !528, i64 28, !528, i64 32, !516, i64 40, !528, i64 48, !517, i64 52, !517, i64 60, !528, i64 68, !528, i64 72}
!590 = !{!589, !516, i64 0}
!591 = !{!592, !516, i64 56}
!592 = !{!"basic_block_def", !516, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !517, i64 32, !516, i64 48, !516, i64 56, !517, i64 64, !570, i64 72, !528, i64 80, !528, i64 84, !528, i64 88, !528, i64 92, !528, i64 96}
!593 = !{!589, !516, i64 8}
!594 = !{!"branch_weights", i32 1, i32 2627}
!595 = !{!"branch_weights", i32 141433, i32 1}
!596 = !{!"branch_weights", i32 336386, i32 37636}
!597 = !{!"branch_weights", i32 232588, i32 141433}
!598 = distinct !{!598, !599}
!599 = !{!"llvm.loop.mustprogress"}
!600 = !{!592, !528, i64 80}
!601 = !{!"branch_weights", i32 2627, i32 176442}
!602 = distinct !{!602, !599}
!603 = !{!587, !516, i64 32}
!604 = !{!605, !516, i64 24}
!605 = !{!"loops", !528, i64 0, !516, i64 8, !516, i64 16, !516, i64 24}
!606 = !{!"branch_weights", i32 2627, i32 3316}
!607 = distinct !{!607, !599}
!608 = !{!609, !516, i64 0}
!609 = !{!"simple_bitmap_def", !516, i64 0, !528, i64 8, !528, i64 12, !517, i64 16}
!610 = !{!"tree-ssa-loop-im.c:analyze_memory_references"}
!611 = !{!612, !516, i64 0}
!612 = !{!"", !516, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !516, i64 48}
!613 = !{!612, !516, i64 8}
!614 = !{!612, !516, i64 16}
!615 = !{!612, !516, i64 24}
!616 = !{!612, !516, i64 32}
!617 = !{!612, !516, i64 40}
!618 = !{!"branch_weights", i32 14021, i32 2627}
!619 = distinct !{!619, !599}
!620 = !{!612, !516, i64 48}
!621 = !{!"tree-ssa-loop-im.c:determine_invariantness"}
!622 = !{!623, !516, i64 16}
!623 = !{!"dom_walk_data", !528, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !570, i64 48, !516, i64 56}
!624 = !{!"tree-ssa-loop-im.c:store_motion"}
!625 = distinct !{!625, !599}
!626 = !{!"tree-ssa-loop-im.c:move_computations"}
!627 = !{!"branch_weights", i32 2308, i32 321}
!628 = !{!"tree-ssa-loop-im.c:tree_ssa_lim_finalize"}
!629 = !{!592, !516, i64 16}
!630 = !{!"branch_weights", i32 2627, i32 176647}
!631 = distinct !{!631, !599}
!632 = !{i32 0, i32 2}
!633 = !{!"branch_weights", i32 2627, i32 14021}
!634 = distinct !{!634, !599}
!635 = distinct !{!635, !599}
!636 = distinct !{!636, !599}
!637 = distinct !{!637, !599}
!638 = !{!"branch_weights", i32 2581, i32 48}
!639 = !{!"function_entry_count", i64 519856}
!640 = !{!"tree-ssa-loop-im.c:gsi_start_bb"}
!641 = !{!642, !516, i64 0}
!642 = !{!"", !516, i64 0, !516, i64 8, !516, i64 16}
!643 = !{!642, !516, i64 8}
!644 = !{!642, !516, i64 16}
!645 = !{!"function_entry_count", i64 1890450}
!646 = !{!"tree-ssa-loop-im.c:gsi_end_p"}
!647 = !{!"function_entry_count", i64 428723}
!648 = !{!"tree-ssa-loop-im.c:nonpure_call_p"}
!649 = !{!"branch_weights", i32 63327, i32 365398}
!650 = !{!"function_entry_count", i64 1230160}
!651 = !{!"tree-ssa-loop-im.c:gsi_stmt"}
!652 = !{!653, !516, i64 0}
!653 = !{!"gimple_seq_node_d", !516, i64 0, !516, i64 8, !516, i64 16}
!654 = !{!"function_entry_count", i64 1188501}
!655 = !{!"tree-ssa-loop-im.c:gsi_next"}
!656 = !{!653, !516, i64 16}
!657 = !{!"function_entry_count", i64 37635}
!658 = !{!"tree-ssa-loop-im.c:SET_BIT"}
!659 = !{!"branch_weights", i32 37636, i32 1}
!660 = !{!"function_entry_count", i64 14014}
!661 = !{!"tree-ssa-loop-im.c:fill_always_executed_in"}
!662 = !{!663, !516, i64 8}
!663 = !{!"loop", !528, i64 0, !528, i64 4, !516, i64 8, !516, i64 16, !664, i64 24, !528, i64 32, !528, i64 36, !516, i64 40, !516, i64 48, !516, i64 56, !516, i64 64, !516, i64 72, !665, i64 80, !665, i64 96, !517, i64 112, !517, i64 113, !528, i64 116, !516, i64 120, !516, i64 128, !517, i64 136, !516, i64 144}
!664 = !{!"lpt_decision", !528, i64 0, !528, i64 4}
!665 = !{!"", !570, i64 0, !570, i64 8}
!666 = !{!"branch_weights", i32 13739, i32 277}
!667 = !{!663, !528, i64 36}
!668 = !{!"branch_weights", i32 1, i32 127}
!669 = !{!663, !516, i64 16}
!670 = !{!"branch_weights", i32 14656, i32 15039}
!671 = !{!"branch_weights", i32 25304, i32 4391}
!672 = !{i64 0, i64 4, !527, i64 8, i64 8, !515}
!673 = !{i64 0, i64 8, !515}
!674 = !{!"branch_weights", i32 1, i32 17372}
!675 = !{!676, !516, i64 8}
!676 = !{!"edge_def", !516, i64 0, !516, i64 8, !517, i64 16, !516, i64 24, !516, i64 32, !528, i64 40, !528, i64 44, !528, i64 48, !528, i64 52, !570, i64 56}
!677 = !{!"branch_weights", i32 7932, i32 37495}
!678 = !{!"branch_weights", i32 17372, i32 28054}
!679 = distinct !{!679, !599}
!680 = !{!"branch_weights", i32 2147468830, i32 14818}
!681 = !{!592, !528, i64 96}
!682 = !{!"branch_weights", i32 17373, i32 1}
!683 = !{!"branch_weights", i32 43, i32 17331}
!684 = !{!592, !516, i64 24}
!685 = !{!"branch_weights", i32 7267, i32 10065}
!686 = !{!"branch_weights", i32 1376, i32 5892}
!687 = !{!"branch_weights", i32 3800705, i32 127}
!688 = distinct !{!688, !599}
!689 = !{!"branch_weights", i32 12438, i32 1301}
!690 = !{!"branch_weights", i32 1301, i32 0}
!691 = !{!"branch_weights", i32 5942, i32 8073}
!692 = !{!"branch_weights", i32 8073, i32 0}
!693 = distinct !{!693, !599}
!694 = !{!"tree-ssa-loop-im.c:bb_seq"}
!695 = !{!"branch_weights", i32 519857, i32 1}
!696 = !{!"branch_weights", i32 1, i32 519857}
!697 = !{!698, !516, i64 0}
!698 = !{!"gimple_bb_info", !516, i64 0, !516, i64 8}
!699 = !{!"tree-ssa-loop-im.c:gimple_seq_first"}
!700 = !{!701, !516, i64 0}
!701 = !{!"gimple_seq_d", !516, i64 0, !516, i64 8, !516, i64 16}
!702 = !{!"function_entry_count", i64 25303}
!703 = !{!"tree-ssa-loop-im.c:ei_start_1"}
!704 = !{!"function_entry_count", i64 62797}
!705 = !{!"tree-ssa-loop-im.c:ei_cond"}
!706 = !{!"branch_weights", i32 45426, i32 17373}
!707 = !{!"function_entry_count", i64 37494}
!708 = !{!"tree-ssa-loop-im.c:ei_next"}
!709 = !{!"branch_weights", i32 1, i32 37495}
!710 = !{!"branch_weights", i32 37495, i32 1}
!711 = !{!712, !528, i64 0}
!712 = !{!"", !528, i64 0, !516, i64 8}
!713 = !{!"tree-ssa-loop-im.c:ei_end_p"}
!714 = !{!"branch_weights", i32 1, i32 62798}
!715 = !{!"function_entry_count", i64 45425}
!716 = !{!"tree-ssa-loop-im.c:ei_edge"}
!717 = !{!"branch_weights", i32 1, i32 45426}
!718 = !{!"function_entry_count", i64 100291}
!719 = !{!"tree-ssa-loop-im.c:VEC_edge_base_length"}
!720 = !{!"branch_weights", i32 1, i32 100292}
!721 = !{!722, !528, i64 0}
!722 = !{!"VEC_edge_base", !528, i64 0, !528, i64 4, !517, i64 8}
!723 = !{!"function_entry_count", i64 291432}
!724 = !{!"tree-ssa-loop-im.c:ei_container"}
!725 = !{!"branch_weights", i32 1, i32 291433}
!726 = !{!"tree-ssa-loop-im.c:VEC_edge_base_index"}
!727 = !{!"function_entry_count", i64 50277}
!728 = !{!"tree-ssa-loop-im.c:memref_hash"}
!729 = !{!730, !528, i64 12}
!730 = !{!"mem_ref", !516, i64 0, !528, i64 8, !528, i64 12, !516, i64 16, !516, i64 24, !516, i64 32, !516, i64 40, !516, i64 48, !516, i64 56, !516, i64 64}
!731 = !{!"function_entry_count", i64 133041}
!732 = !{!"tree-ssa-loop-im.c:memref_eq"}
!733 = !{!730, !516, i64 0}
!734 = !{!"function_entry_count", i64 85178}
!735 = !{!"tree-ssa-loop-im.c:memref_free"}
!736 = !{!730, !516, i64 16}
!737 = !{!730, !516, i64 40}
!738 = !{!730, !516, i64 48}
!739 = !{!730, !516, i64 56}
!740 = !{!730, !516, i64 64}
!741 = !{!730, !516, i64 24}
!742 = !{!"branch_weights", i32 1, i32 85178}
!743 = !{!"branch_weights", i32 85178, i32 1301649}
!744 = distinct !{!744, !599}
!745 = !{!730, !516, i64 32}
!746 = !{!"function_entry_count", i64 7881}
!747 = !{!"tree-ssa-loop-im.c:VEC_bitmap_heap_alloc"}
!748 = !{!"function_entry_count", i64 35036}
!749 = !{!"tree-ssa-loop-im.c:number_of_loops"}
!750 = !{!"branch_weights", i32 1, i32 35037}
!751 = !{!605, !516, i64 8}
!752 = !{!"tree-ssa-loop-im.c:VEC_htab_t_heap_alloc"}
!753 = !{!"function_entry_count", i64 49941}
!754 = !{!"tree-ssa-loop-im.c:VEC_bitmap_base_quick_push"}
!755 = !{!756, !528, i64 0}
!756 = !{!"VEC_bitmap_base", !528, i64 0, !528, i64 4, !517, i64 8}
!757 = !{!"function_entry_count", i64 0}
!758 = !{!"tree-ssa-loop-im.c:vtoe_hash"}
!759 = !{!760, !528, i64 0}
!760 = !{!"vop_to_refs_elt", !528, i64 0, !516, i64 8, !516, i64 16}
!761 = !{!"function_entry_count", i64 15978}
!762 = !{!"tree-ssa-loop-im.c:vtoe_eq"}
!763 = !{!"function_entry_count", i64 5562}
!764 = !{!"tree-ssa-loop-im.c:vtoe_free"}
!765 = !{!760, !516, i64 8}
!766 = !{!760, !516, i64 16}
!767 = !{!"function_entry_count", i64 16647}
!768 = !{!"tree-ssa-loop-im.c:VEC_htab_t_base_quick_push"}
!769 = !{!770, !528, i64 0}
!770 = !{!"VEC_htab_t_base", !528, i64 0, !528, i64 4, !517, i64 8}
!771 = !{!"tree-ssa-loop-im.c:gather_mem_refs_in_loops"}
!772 = !{!"branch_weights", i32 65505, i32 113565}
!773 = !{!"branch_weights", i32 113564, i32 1}
!774 = !{!"branch_weights", i32 170918, i32 113564}
!775 = distinct !{!775, !599}
!776 = distinct !{!776, !599}
!777 = !{!663, !528, i64 0}
!778 = !{!"branch_weights", i32 5943, i32 8073}
!779 = !{!"branch_weights", i32 2627, i32 11388}
!780 = distinct !{!780, !599}
!781 = !{!"tree-ssa-loop-im.c:create_vop_ref_mapping"}
!782 = distinct !{!782, !599}
!783 = !{!"function_entry_count", i64 1472004}
!784 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_iterate"}
!785 = !{!"branch_weights", i32 1, i32 1472005}
!786 = !{!787, !528, i64 0}
!787 = !{!"VEC_mem_ref_locs_p_base", !528, i64 0, !528, i64 4, !517, i64 8}
!788 = !{!"branch_weights", i32 1386827, i32 85179}
!789 = !{!"function_entry_count", i64 1386826}
!790 = !{!"tree-ssa-loop-im.c:free_mem_ref_locs"}
!791 = !{!"branch_weights", i32 1295684, i32 91144}
!792 = !{!793, !516, i64 0}
!793 = !{!"mem_ref_locs", !516, i64 0}
!794 = !{!"branch_weights", i32 1, i32 91143}
!795 = !{!"branch_weights", i32 91143, i32 30097}
!796 = distinct !{!796, !599}
!797 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_free"}
!798 = !{!"branch_weights", i32 1, i32 85179}
!799 = !{!"function_entry_count", i64 229616}
!800 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_base_iterate"}
!801 = !{!"branch_weights", i32 1, i32 229617}
!802 = !{!803, !528, i64 0}
!803 = !{!"VEC_mem_ref_loc_p_base", !528, i64 0, !528, i64 4, !517, i64 8}
!804 = !{!"branch_weights", i32 134182, i32 95436}
!805 = !{!"function_entry_count", i64 93015}
!806 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_heap_free"}
!807 = !{!"branch_weights", i32 1, i32 93016}
!808 = !{!"function_entry_count", i64 733588}
!809 = !{!"tree-ssa-loop-im.c:VEC_loop_p_base_length"}
!810 = !{!"branch_weights", i32 147297, i32 586293}
!811 = !{!812, !528, i64 0}
!812 = !{!"VEC_loop_p_base", !528, i64 0, !528, i64 4, !517, i64 8}
!813 = !{!"function_entry_count", i64 284481}
!814 = !{!"tree-ssa-loop-im.c:gather_mem_refs_stmt"}
!815 = !{!"branch_weights", i32 138148, i32 146335}
!816 = !{!"branch_weights", i32 25096, i32 121240}
!817 = !{!"branch_weights", i32 85179, i32 36062}
!818 = !{!"branch_weights", i32 85179, i32 1}
!819 = !{!"branch_weights", i32 96939, i32 24302}
!820 = !{!"branch_weights", i32 1, i32 121240}
!821 = !{!"branch_weights", i32 1, i32 25096}
!822 = !{!"function_entry_count", i64 5254}
!823 = !{!"tree-ssa-loop-im.c:fel_init"}
!824 = !{!825, !528, i64 8}
!825 = !{!"", !516, i64 0, !528, i64 8}
!826 = !{!"branch_weights", i32 1, i32 5255}
!827 = !{!825, !516, i64 0}
!828 = !{!"branch_weights", i32 2628, i32 2628}
!829 = !{!663, !516, i64 48}
!830 = !{!"branch_weights", i32 2628, i32 4419}
!831 = distinct !{!831, !599}
!832 = !{!"branch_weights", i32 2628, i32 14015}
!833 = !{!663, !516, i64 56}
!834 = !{!"branch_weights", i32 10060, i32 6583}
!835 = !{!"branch_weights", i32 6583, i32 3015}
!836 = distinct !{!836, !599}
!837 = !{!"branch_weights", i32 2628, i32 7433}
!838 = !{!"branch_weights", i32 9210, i32 7433}
!839 = !{!"branch_weights", i32 10060, i32 9210}
!840 = !{!"branch_weights", i32 2628, i32 14014}
!841 = distinct !{!841, !599}
!842 = !{!"function_entry_count", i64 460663}
!843 = !{!"tree-ssa-loop-im.c:VEC_bitmap_base_index"}
!844 = !{!"function_entry_count", i64 678362}
!845 = !{!"tree-ssa-loop-im.c:loop_outer"}
!846 = !{!663, !516, i64 40}
!847 = !{!"branch_weights", i32 141626, i32 536738}
!848 = !{!"function_entry_count", i64 33282}
!849 = !{!"tree-ssa-loop-im.c:fel_next"}
!850 = !{!"branch_weights", i32 5255, i32 28029}
!851 = !{!"branch_weights", i32 1, i32 28029}
!852 = distinct !{!852, !599}
!853 = !{!"function_entry_count", i64 609796}
!854 = !{!"tree-ssa-loop-im.c:gimple_vuse"}
!855 = !{!"branch_weights", i32 134247, i32 475551}
!856 = !{!"function_entry_count", i64 160999}
!857 = !{!"tree-ssa-loop-im.c:simple_mem_ref_in_stmt"}
!858 = !{!"branch_weights", i32 136061, i32 24940}
!859 = !{i32 0, i32 65536}
!860 = !{!"branch_weights", i32 111604, i32 24458}
!861 = !{!"branch_weights", i32 111604, i32 1}
!862 = !{!"branch_weights", i32 1, i32 111604}
!863 = !{!"branch_weights", i32 16712, i32 7747}
!864 = !{!"branch_weights", i32 7747, i32 1}
!865 = !{!"branch_weights", i32 157, i32 7591}
!866 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_length"}
!867 = !{!"branch_weights", i32 2565, i32 82615}
!868 = !{!869, !528, i64 0}
!869 = !{!"VEC_mem_ref_p_base", !528, i64 0, !528, i64 4, !517, i64 8}
!870 = !{!"tree-ssa-loop-im.c:mem_ref_alloc"}
!871 = !{!730, !528, i64 8}
!872 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_heap_safe_push"}
!873 = !{!"function_entry_count", i64 24301}
!874 = !{!"tree-ssa-loop-im.c:mark_ref_stored"}
!875 = !{!"branch_weights", i32 1, i32 18919}
!876 = !{!"branch_weights", i32 41651, i32 24302}
!877 = !{!"branch_weights", i32 18919, i32 28114}
!878 = distinct !{!878, !599}
!879 = !{!"function_entry_count", i64 121239}
!880 = !{!"tree-ssa-loop-im.c:record_mem_ref_loc"}
!881 = !{!"branch_weights", i32 31982, i32 89259}
!882 = !{!"branch_weights", i32 91144, i32 30097}
!883 = !{!884, !516, i64 8}
!884 = !{!"mem_ref_loc", !516, i64 0, !516, i64 8}
!885 = !{!884, !516, i64 0}
!886 = !{!"function_entry_count", i64 397319}
!887 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs_code"}
!888 = !{!"branch_weights", i32 237324, i32 159997}
!889 = !{!"function_entry_count", i64 136060}
!890 = !{!"tree-ssa-loop-im.c:gimple_assign_lhs_ptr"}
!891 = !{!"function_entry_count", i64 682089}
!892 = !{!"tree-ssa-loop-im.c:get_gimple_rhs_class"}
!893 = !{!"function_entry_count", i64 404266}
!894 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs1"}
!895 = !{!"function_entry_count", i64 111603}
!896 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs1_ptr"}
!897 = !{!"tree-ssa-loop-im.c:gimple_expr_code"}
!898 = !{!"branch_weights", i32 1, i32 1589280, i32 2, i32 1}
!899 = !{!"function_entry_count", i64 247663}
!900 = !{!"tree-ssa-loop-im.c:gimple_op_ptr"}
!901 = !{!"branch_weights", i32 1, i32 247664}
!902 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_heap_reserve"}
!903 = !{!"branch_weights", i32 8498, i32 76682}
!904 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_quick_push"}
!905 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_space"}
!906 = !{!869, !528, i64 4}
!907 = !{!"function_entry_count", i64 302876}
!908 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_length"}
!909 = !{!"branch_weights", i32 255535, i32 47343}
!910 = !{!"function_entry_count", i64 89258}
!911 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_safe_grow_cleared"}
!912 = !{!"function_entry_count", i64 124360}
!913 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_index"}
!914 = !{!"function_entry_count", i64 91143}
!915 = !{!"tree-ssa-loop-im.c:mem_ref_locs_alloc"}
!916 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_replace"}
!917 = !{!"function_entry_count", i64 127752}
!918 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_heap_safe_push"}
!919 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_safe_grow"}
!920 = !{!"branch_weights", i32 85179, i32 4081}
!921 = !{}
!922 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_address"}
!923 = !{!"branch_weights", i32 1, i32 89259}
!924 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_reserve_exact"}
!925 = !{!"branch_weights", i32 89259, i32 1}
!926 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_space"}
!927 = !{!787, !528, i64 4}
!928 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_heap_reserve"}
!929 = !{!"branch_weights", i32 95464, i32 32290}
!930 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_base_quick_push"}
!931 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_base_space"}
!932 = !{!"branch_weights", i32 93016, i32 34738}
!933 = !{!803, !528, i64 4}
!934 = !{!"tree-ssa-loop-im.c:VEC_int_heap_alloc"}
!935 = !{!"function_entry_count", i64 28028}
!936 = !{!"tree-ssa-loop-im.c:VEC_int_base_quick_push"}
!937 = !{!938, !528, i64 0}
!938 = !{!"VEC_int_base", !528, i64 0, !528, i64 4, !517, i64 8}
!939 = !{!"function_entry_count", i64 564765}
!940 = !{!"tree-ssa-loop-im.c:VEC_loop_p_base_index"}
!941 = !{!"tree-ssa-loop-im.c:VEC_int_base_iterate"}
!942 = !{!"branch_weights", i32 1, i32 33283}
!943 = !{!"branch_weights", i32 28029, i32 5255}
!944 = !{!"tree-ssa-loop-im.c:get_loop"}
!945 = !{!"tree-ssa-loop-im.c:VEC_int_heap_free"}
!946 = !{!"tree-ssa-loop-im.c:create_vop_ref_mapping_loop"}
!947 = !{!"branch_weights", i32 1, i32 14014}
!948 = !{!"branch_weights", i32 91143, i32 121987}
!949 = distinct !{!949, !599}
!950 = !{!"branch_weights", i32 14014, i32 77130}
!951 = distinct !{!951, !599}
!952 = !{!"function_entry_count", i64 29286}
!953 = !{!"tree-ssa-loop-im.c:bmp_iter_set_init"}
!954 = !{!955, !516, i64 0}
!955 = !{!"bitmap_head_def", !516, i64 0, !516, i64 8, !528, i64 16, !516, i64 24}
!956 = !{!957, !516, i64 0}
!957 = !{!"", !516, i64 0, !516, i64 8, !528, i64 16, !570, i64 24}
!958 = !{!957, !516, i64 8}
!959 = !{!"branch_weights", i32 14408, i32 14880}
!960 = !{!961, !528, i64 16}
!961 = !{!"bitmap_element_def", !516, i64 0, !516, i64 8, !528, i64 16, !517, i64 24}
!962 = !{!957, !528, i64 16}
!963 = !{!957, !570, i64 24}
!964 = !{!"function_entry_count", i64 124445}
!965 = !{!"tree-ssa-loop-im.c:bmp_iter_set"}
!966 = !{!"branch_weights", i32 34708, i32 89739}
!967 = !{!"branch_weights", i32 95347, i32 1}
!968 = !{!"branch_weights", i32 293711, i32 95347}
!969 = distinct !{!969, !599}
!970 = !{!"branch_weights", i32 1, i32 30670}
!971 = !{!"branch_weights", i32 26675, i32 5610}
!972 = !{!"branch_weights", i32 30670, i32 1614}
!973 = distinct !{!973, !599}
!974 = !{!961, !516, i64 0}
!975 = !{!"branch_weights", i32 29099, i32 1573}
!976 = !{!"function_entry_count", i64 299146}
!977 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_index"}
!978 = !{!"function_entry_count", i64 213129}
!979 = !{!"tree-ssa-loop-im.c:add_vop_ref_mapping"}
!980 = !{!"branch_weights", i32 192847, i32 20283}
!981 = !{!"branch_weights", i32 20283, i32 0}
!982 = distinct !{!982, !599}
!983 = !{!"function_entry_count", i64 320498}
!984 = !{!"tree-ssa-loop-im.c:bmp_iter_next"}
!985 = !{!"function_entry_count", i64 214387}
!986 = !{!"tree-ssa-loop-im.c:VEC_htab_t_base_index"}
!987 = !{!"function_entry_count", i64 228401}
!988 = !{!"tree-ssa-loop-im.c:bmp_iter_and_compl_init"}
!989 = !{!"branch_weights", i32 210, i32 228193}
!990 = !{!"branch_weights", i32 1, i32 35517}
!991 = !{!"branch_weights", i32 10, i32 228402}
!992 = !{!"branch_weights", i32 35517, i32 157377}
!993 = distinct !{!993, !599}
!994 = !{!"branch_weights", i32 192885, i32 1}
!995 = !{!"function_entry_count", i64 453740}
!996 = !{!"tree-ssa-loop-im.c:bmp_iter_and_compl"}
!997 = !{!"branch_weights", i32 246130, i32 207612}
!998 = !{!"branch_weights", i32 225339, i32 1}
!999 = !{!"branch_weights", i32 774518, i32 225339}
!1000 = distinct !{!1000, !599}
!1001 = !{!"branch_weights", i32 1, i32 230438}
!1002 = !{!"branch_weights", i32 39592, i32 192885}
!1003 = !{!"branch_weights", i32 214748, i32 17729}
!1004 = !{!"branch_weights", i32 230438, i32 2038}
!1005 = distinct !{!1005, !599}
!1006 = !{!"branch_weights", i32 228402, i32 2038}
!1007 = !{!"branch_weights", i32 2033, i32 5}
!1008 = !{!"branch_weights", i32 5, i32 2038}
!1009 = !{!"branch_weights", i32 5, i32 0}
!1010 = distinct !{!1010, !599}
!1011 = !{!"function_entry_count", i64 20282}
!1012 = !{!"tree-ssa-loop-im.c:record_vop_access"}
!1013 = !{!"branch_weights", i32 5563, i32 14721}
!1014 = !{!"branch_weights", i32 15966, i32 4318}
!1015 = !{!"function_entry_count", i64 181695}
!1016 = !{!"tree-ssa-loop-im.c:determine_invariantness_stmt"}
!1017 = !{!"branch_weights", i32 68132, i32 113565}
!1018 = !{!"branch_weights", i32 113565, i32 1}
!1019 = !{i32 0, i32 3}
!1020 = !{!"branch_weights", i32 54704, i32 229857}
!1021 = !{!"branch_weights", i32 30675, i32 24030}
!1022 = !{!"branch_weights", i32 6212, i32 24464}
!1023 = !{!1024, !516, i64 16}
!1024 = !{!"lim_aux_data", !516, i64 0, !516, i64 8, !516, i64 16, !528, i64 24, !516, i64 32}
!1025 = !{!"branch_weights", i32 64436, i32 165422}
!1026 = !{!"branch_weights", i32 45772, i32 119651}
!1027 = !{!"branch_weights", i32 45494, i32 279}
!1028 = !{!"branch_weights", i32 1, i32 45494}
!1029 = !{!"branch_weights", i32 6617, i32 38878}
!1030 = !{!"branch_weights", i32 5536, i32 1082}
!1031 = !{!"branch_weights", i32 1082, i32 1}
!1032 = !{!"branch_weights", i32 83, i32 1000}
!1033 = !{!"branch_weights", i32 1671617340, i32 -530299275}
!1034 = !{!"branch_weights", i32 155492, i32 3687}
!1035 = !{!1024, !516, i64 0}
!1036 = !{!"branch_weights", i32 3687, i32 1}
!1037 = !{!1024, !528, i64 24}
!1038 = !{!1039, !528, i64 8}
!1039 = !{!"param_info", !516, i64 0, !528, i64 8, !517, i64 12, !528, i64 16, !528, i64 20, !516, i64 24}
!1040 = !{!"branch_weights", i32 1192, i32 2496}
!1041 = !{!"branch_weights", i32 170996, i32 113564}
!1042 = distinct !{!1042, !599}
!1043 = !{!"function_entry_count", i64 20190}
!1044 = !{!"tree-ssa-loop-im.c:loop_depth"}
!1045 = !{!"function_entry_count", i64 254561}
!1046 = !{!"tree-ssa-loop-im.c:init_lim_data"}
!1047 = !{!"function_entry_count", i64 46311}
!1048 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs2"}
!1049 = !{!"branch_weights", i32 46312, i32 1}
!1050 = !{!"function_entry_count", i64 253133}
!1051 = !{!"tree-ssa-loop-im.c:outermost_invariant_loop"}
!1052 = !{!"branch_weights", i32 15323, i32 237812}
!1053 = !{!"branch_weights", i32 204116, i32 33697}
!1054 = !{!"branch_weights", i32 1, i32 33697}
!1055 = !{!"branch_weights", i32 809, i32 203308}
!1056 = !{!"branch_weights", i32 60974, i32 142335}
!1057 = !{!"branch_weights", i32 140452, i32 1884}
!1058 = !{!"branch_weights", i32 191883, i32 11426}
!1059 = !{!"function_entry_count", i64 47471}
!1060 = !{!"tree-ssa-loop-im.c:loop_containing_stmt"}
!1061 = !{!"branch_weights", i32 1, i32 47472}
!1062 = !{!"tree-ssa-loop-im.c:rewrite_reciprocal"}
!1063 = distinct !{!1063, !599}
!1064 = !{i64 0, i64 8, !515, i64 8, i64 8, !515, i64 16, i64 8, !515}
!1065 = !{!"function_entry_count", i64 1451}
!1066 = !{!"tree-ssa-loop-im.c:has_single_use"}
!1067 = !{!1068, !516, i64 8}
!1068 = !{!"ssa_use_operand_d", !516, i64 0, !516, i64 8, !517, i64 16, !516, i64 24}
!1069 = !{!"branch_weights", i32 1, i32 1452}
!1070 = !{!"branch_weights", i32 1348, i32 105}
!1071 = !{!"branch_weights", i32 105, i32 1}
!1072 = !{!"function_entry_count", i64 999}
!1073 = !{!"tree-ssa-loop-im.c:rewrite_bittest"}
!1074 = !{!"branch_weights", i32 1000, i32 1}
!1075 = !{!"branch_weights", i32 11, i32 990}
!1076 = !{!"branch_weights", i32 915, i32 76}
!1077 = !{!"branch_weights", i32 915, i32 1}
!1078 = !{!"branch_weights", i32 270841, i32 295}
!1079 = !{!"branch_weights", i32 2, i32 914}
!1080 = !{!"branch_weights", i32 906, i32 9}
!1081 = !{!"branch_weights", i32 371, i32 536}
!1082 = !{!"branch_weights", i32 1, i32 536}
!1083 = !{!"branch_weights", i32 371, i32 1}
!1084 = !{!"branch_weights", i32 23, i32 349}
!1085 = !{!"branch_weights", i32 347, i32 3}
!1086 = !{!"branch_weights", i32 541, i32 342}
!1087 = !{!"branch_weights", i32 541, i32 1}
!1088 = !{!"branch_weights", i32 461, i32 81}
!1089 = !{!"branch_weights", i32 79, i32 3}
!1090 = !{!"function_entry_count", i64 159177}
!1091 = !{!"tree-ssa-loop-im.c:determine_max_movement"}
!1092 = !{!"branch_weights", i32 145255, i32 13924}
!1093 = !{!"branch_weights", i32 17430, i32 1}
!1094 = !{!"branch_weights", i32 141748, i32 11188}
!1095 = !{!"branch_weights", i32 135505, i32 17430}
!1096 = distinct !{!1096, !599}
!1097 = !{!"branch_weights", i32 2766, i32 14666}
!1098 = !{!"branch_weights", i32 1, i32 14666}
!1099 = !{!"branch_weights", i32 13745, i32 922}
!1100 = !{!"function_entry_count", i64 2495}
!1101 = !{!"tree-ssa-loop-im.c:set_profitable_level"}
!1102 = !{!"function_entry_count", i64 46545}
!1103 = !{!"tree-ssa-loop-im.c:gimple_num_ops"}
!1104 = !{!"function_entry_count", i64 569636}
!1105 = !{!"tree-ssa-loop-im.c:gimple_bb"}
!1106 = !{!"function_entry_count", i64 673131}
!1107 = !{!"tree-ssa-loop-im.c:get_lim_data"}
!1108 = !{!"branch_weights", i32 96607, i32 576526}
!1109 = !{!"function_entry_count", i64 156}
!1110 = !{!"tree-ssa-loop-im.c:make_ssa_name"}
!1111 = !{!"tree-ssa-loop-im.c:gimple_assign_set_lhs"}
!1112 = !{!"branch_weights", i32 1, i32 157}
!1113 = !{!"branch_weights", i32 157, i32 1}
!1114 = !{!"function_entry_count", i64 234}
!1115 = !{!"tree-ssa-loop-im.c:gimple_set_op"}
!1116 = !{!"branch_weights", i32 1, i32 235}
!1117 = !{!"branch_weights", i32 235, i32 1}
!1118 = !{!"function_entry_count", i64 2336}
!1119 = !{!"tree-ssa-loop-im.c:is_gimple_debug"}
!1120 = !{!"tree-ssa-loop-im.c:single_imm_use"}
!1121 = !{!"branch_weights", i32 1, i32 1000}
!1122 = !{!"branch_weights", i32 990, i32 11}
!1123 = !{!"branch_weights", i32 990, i32 1}
!1124 = !{!"branch_weights", i32 11, i32 1}
!1125 = !{!"function_entry_count", i64 914}
!1126 = !{!"tree-ssa-loop-im.c:gimple_cond_lhs"}
!1127 = !{!"function_entry_count", i64 1208}
!1128 = !{!"tree-ssa-loop-im.c:gimple_cond_code"}
!1129 = !{!"tree-ssa-loop-im.c:gimple_cond_rhs"}
!1130 = !{!"function_entry_count", i64 78}
!1131 = !{!"tree-ssa-loop-im.c:set_ssa_use_from_ptr"}
!1132 = !{!1068, !516, i64 24}
!1133 = !{!"tree-ssa-loop-im.c:gimple_cond_set_rhs"}
!1134 = !{!"tree-ssa-loop-im.c:delink_imm_use"}
!1135 = !{!1068, !516, i64 0}
!1136 = !{!"branch_weights", i32 1, i32 79}
!1137 = !{!"tree-ssa-loop-im.c:link_imm_use"}
!1138 = !{!"branch_weights", i32 79, i32 1}
!1139 = !{!"tree-ssa-loop-im.c:link_imm_use_to_list"}
!1140 = !{!"tree-ssa-loop-im.c:op_iter_init_tree"}
!1141 = !{!1142, !528, i64 4}
!1142 = !{!"ssa_operand_iterator_d", !517, i64 0, !528, i64 4, !516, i64 8, !516, i64 16, !528, i64 24, !528, i64 28, !516, i64 32}
!1143 = !{!"function_entry_count", i64 170364}
!1144 = !{!"tree-ssa-loop-im.c:op_iter_done"}
!1145 = !{!1142, !517, i64 0}
!1146 = !{!"function_entry_count", i64 152934}
!1147 = !{!"tree-ssa-loop-im.c:add_dependency"}
!1148 = !{!"branch_weights", i32 1868, i32 151068}
!1149 = !{!"branch_weights", i32 141748, i32 9321}
!1150 = !{!"branch_weights", i32 5639, i32 3683}
!1151 = !{!"branch_weights", i32 5214, i32 4108}
!1152 = !{!"branch_weights", i32 1, i32 4108}
!1153 = !{!"branch_weights", i32 1258, i32 2851}
!1154 = !{!1155, !516, i64 0}
!1155 = !{!"depend", !516, i64 0, !516, i64 8}
!1156 = !{!1024, !516, i64 32}
!1157 = !{!1155, !516, i64 8}
!1158 = !{!"tree-ssa-loop-im.c:op_iter_next_tree"}
!1159 = !{!1142, !516, i64 16}
!1160 = !{!"branch_weights", i32 17431, i32 152935}
!1161 = !{!1162, !516, i64 0}
!1162 = !{!"use_optype_d", !516, i64 0, !1068, i64 8}
!1163 = !{!1142, !516, i64 8}
!1164 = !{!"branch_weights", i32 17431, i32 1}
!1165 = !{!1166, !516, i64 8}
!1166 = !{!"def_optype_d", !516, i64 0, !516, i64 8}
!1167 = !{!1166, !516, i64 0}
!1168 = !{!"function_entry_count", i64 14665}
!1169 = !{!"tree-ssa-loop-im.c:mem_ref_in_stmt"}
!1170 = !{!"branch_weights", i32 14666, i32 1}
!1171 = !{!"tree-ssa-loop-im.c:outermost_indep_loop"}
!1172 = !{!"branch_weights", i32 11183, i32 3484}
!1173 = !{!"branch_weights", i32 2123, i32 8913}
!1174 = !{!"branch_weights", i32 8507, i32 407}
!1175 = !{!"branch_weights", i32 8360, i32 148}
!1176 = !{!"branch_weights", i32 8913, i32 0}
!1177 = distinct !{!1177, !599}
!1178 = !{!"branch_weights", i32 10262, i32 775}
!1179 = !{!"function_entry_count", i64 3686}
!1180 = !{!"tree-ssa-loop-im.c:stmt_cost"}
!1181 = !{!"branch_weights", i32 1156, i32 2532}
!1182 = !{!"branch_weights", i32 1611, i32 922}
!1183 = !{!"branch_weights", i32 2532, i32 1}
!1184 = !{!"branch_weights", i32 2300, i32 104, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 92, i32 39}
!1185 = !{!"tree-ssa-loop-im.c:op_iter_init"}
!1186 = !{!"branch_weights", i32 158, i32 159021}
!1187 = !{!"branch_weights", i32 131481, i32 27541}
!1188 = !{!"tree-ssa-loop-im.c:gimple_use_ops"}
!1189 = !{!"branch_weights", i32 1, i32 159178}
!1190 = !{!"tree-ssa-loop-im.c:get_use_from_ptr"}
!1191 = !{!"tree-ssa-loop-im.c:get_def_from_ptr"}
!1192 = !{!"function_entry_count", i64 24970}
!1193 = !{!"tree-ssa-loop-im.c:ref_indep_loop_p"}
!1194 = !{!"branch_weights", i32 24878, i32 94}
!1195 = !{!"branch_weights", i32 14733, i32 10146}
!1196 = !{!"branch_weights", i32 14733, i32 1}
!1197 = !{!"function_entry_count", i64 14732}
!1198 = !{!"tree-ssa-loop-im.c:ref_indep_loop_p_1"}
!1199 = !{!"branch_weights", i32 1259, i32 13475}
!1200 = !{!"branch_weights", i32 1, i32 1258}
!1201 = !{!"branch_weights", i32 944, i32 316}
!1202 = !{!"branch_weights", i32 1258, i32 1}
!1203 = distinct !{!1203, !599}
!1204 = !{!"branch_weights", i32 1, i32 1070}
!1205 = !{!"branch_weights", i32 189, i32 3775}
!1206 = !{!"branch_weights", i32 1070, i32 2893}
!1207 = distinct !{!1207, !599}
!1208 = !{!"function_entry_count", i64 14920}
!1209 = !{!"tree-ssa-loop-im.c:record_indep_loop"}
!1210 = !{!"branch_weights", i32 13851, i32 1071}
!1211 = !{!"function_entry_count", i64 315}
!1212 = !{!"tree-ssa-loop-im.c:get_vop_accesses"}
!1213 = !{!"function_entry_count", i64 943}
!1214 = !{!"tree-ssa-loop-im.c:get_vop_stores"}
!1215 = !{!"function_entry_count", i64 3962}
!1216 = !{!"tree-ssa-loop-im.c:refs_independent_p"}
!1217 = !{!"branch_weights", i32 302, i32 3662}
!1218 = !{!"branch_weights", i32 3315, i32 348}
!1219 = !{!"branch_weights", i32 3296, i32 20}
!1220 = !{!"branch_weights", i32 3296, i32 1}
!1221 = !{!"branch_weights", i32 3127, i32 170}
!1222 = !{!"branch_weights", i32 170, i32 1}
!1223 = !{!"branch_weights", i32 3127, i32 1}
!1224 = !{!"function_entry_count", i64 3295}
!1225 = !{!"tree-ssa-loop-im.c:mem_refs_may_alias_p"}
!1226 = !{!"branch_weights", i32 3125, i32 172}
!1227 = !{!"branch_weights", i32 1, i32 172}
!1228 = !{!"function_entry_count", i64 171}
!1229 = !{!"tree-ssa-loop-im.c:cannot_overlap_p"}
!1230 = !{!1231, !528, i64 24}
!1231 = !{!"affine_tree_combination", !516, i64 0, !665, i64 8, !528, i64 24, !517, i64 32, !516, i64 224}
!1232 = !{!"branch_weights", i32 13, i32 160}
!1233 = !{i64 0, i64 8, !569, i64 8, i64 8, !569}
!1234 = !{i64 0, i64 8, !569}
!1235 = !{!"branch_weights", i32 12, i32 2}
!1236 = !{!"function_entry_count", i64 2531}
!1237 = !{!"tree-ssa-loop-im.c:gimple_references_memory_p"}
!1238 = !{!"branch_weights", i32 1, i32 2532}
!1239 = !{!"tree-ssa-loop-im.c:gimple_call_fndecl"}
!1240 = !{!"tree-ssa-loop-im.c:gimple_call_fn"}
!1241 = !{!"function_entry_count", i64 3444}
!1242 = !{!"tree-ssa-loop-im.c:set_level"}
!1243 = !{!"branch_weights", i32 36, i32 3410}
!1244 = !{!1024, !516, i64 8}
!1245 = !{!"branch_weights", i32 3013, i32 398}
!1246 = !{!"branch_weights", i32 2785, i32 661}
!1247 = !{!"branch_weights", i32 2776, i32 10}
!1248 = !{!"branch_weights", i32 1, i32 10}
!1249 = !{!"branch_weights", i32 1905, i32 880}
!1250 = !{!"branch_weights", i32 880, i32 0}
!1251 = distinct !{!1251, !599}
!1252 = !{!"tree-ssa-loop-im.c:store_motion_loop"}
!1253 = !{!"branch_weights", i32 1, i32 14015}
!1254 = distinct !{!1254, !599}
!1255 = !{!"tree-ssa-loop-im.c:loop_suitable_for_sm"}
!1256 = !{!"branch_weights", i32 14014, i32 15356}
!1257 = distinct !{!1257, !599}
!1258 = !{!676, !528, i64 48}
!1259 = !{!"branch_weights", i32 29370, i32 1}
!1260 = !{!"tree-ssa-loop-im.c:find_refs_for_sm"}
!1261 = !{!"branch_weights", i32 203558, i32 243}
!1262 = !{!"branch_weights", i32 14014, i32 189786}
!1263 = distinct !{!1263, !599}
!1264 = !{!"tree-ssa-loop-im.c:hoist_memory_references"}
!1265 = !{!"branch_weights", i32 13772, i32 243}
!1266 = !{!"branch_weights", i32 243, i32 0}
!1267 = distinct !{!1267, !599}
!1268 = !{!"tree-ssa-loop-im.c:VEC_edge_heap_free"}
!1269 = !{!"function_entry_count", i64 43967}
!1270 = !{!"tree-ssa-loop-im.c:VEC_edge_base_iterate"}
!1271 = !{!"branch_weights", i32 1, i32 43968}
!1272 = !{!"branch_weights", i32 29712, i32 14257}
!1273 = !{!"function_entry_count", i64 203799}
!1274 = !{!"tree-ssa-loop-im.c:can_sm_ref_p"}
!1275 = !{!"branch_weights", i32 162176, i32 41625}
!1276 = !{!"branch_weights", i32 2, i32 41624}
!1277 = !{!"branch_weights", i32 41622, i32 3}
!1278 = !{!"branch_weights", i32 34695, i32 6928}
!1279 = !{!"branch_weights", i32 5298, i32 1631}
!1280 = !{!"branch_weights", i32 28074103, i32 5298}
!1281 = !{!"branch_weights", i32 1499, i32 133}
!1282 = !{!"function_entry_count", i64 40353}
!1283 = !{!"tree-ssa-loop-im.c:may_move_till"}
!1284 = !{!"branch_weights", i32 7662, i32 32693}
!1285 = !{!"branch_weights", i32 1, i32 7662}
!1286 = !{!"function_entry_count", i64 1630}
!1287 = !{!"tree-ssa-loop-im.c:ref_always_accessed_p"}
!1288 = !{!"branch_weights", i32 7668291, i32 328509}
!1289 = !{!"branch_weights", i32 1, i32 1498}
!1290 = !{!"branch_weights", i32 1, i32 5980}
!1291 = !{!"branch_weights", i32 -1222531961, i32 -1664037661}
!1292 = !{!"branch_weights", i32 3309, i32 2672}
!1293 = !{!"branch_weights", i32 3135, i32 175}
!1294 = !{!"branch_weights", i32 133, i32 43}
!1295 = !{!"branch_weights", i32 43, i32 1}
!1296 = !{!"branch_weights", i32 1498, i32 4482}
!1297 = distinct !{!1297, !599}
!1298 = !{!"function_entry_count", i64 6196}
!1299 = !{!"tree-ssa-loop-im.c:get_all_locs_in_loop"}
!1300 = !{!"branch_weights", i32 3076, i32 3122}
!1301 = !{!"branch_weights", i32 3122, i32 1}
!1302 = !{!"branch_weights", i32 570, i32 2553}
!1303 = !{!"branch_weights", i32 1, i32 2552}
!1304 = !{!"branch_weights", i32 2552, i32 3962}
!1305 = distinct !{!1305, !599}
!1306 = !{!"branch_weights", i32 1, i32 3121}
!1307 = !{!"branch_weights", i32 3121, i32 1204}
!1308 = distinct !{!1308, !599}
!1309 = !{!"function_entry_count", i64 242}
!1310 = !{!"tree-ssa-loop-im.c:execute_sm"}
!1311 = !{!"branch_weights", i32 243, i32 1}
!1312 = !{!1313, !516, i64 0}
!1313 = !{!"fmt_data", !516, i64 0, !516, i64 8}
!1314 = !{!1313, !516, i64 8}
!1315 = !{!"branch_weights", i32 1, i32 242}
!1316 = !{!"branch_weights", i32 242, i32 101}
!1317 = distinct !{!1317, !599}
!1318 = !{!"function_entry_count", i64 90}
!1319 = !{!"tree-ssa-loop-im.c:force_move_till"}
!1320 = !{!"branch_weights", i32 19, i32 73}
!1321 = !{!"tree-ssa-loop-im.c:rewrite_mem_refs"}
!1322 = !{!"branch_weights", i32 242, i32 209}
!1323 = distinct !{!1323, !599}
!1324 = !{!"function_entry_count", i64 126}
!1325 = !{!"tree-ssa-loop-im.c:force_move_till_op"}
!1326 = !{!"branch_weights", i32 37, i32 91}
!1327 = !{!"branch_weights", i32 75, i32 17}
!1328 = !{!"branch_weights", i32 75, i32 1}
!1329 = !{!"branch_weights", i32 71, i32 5}
!1330 = !{!"function_entry_count", i64 74}
!1331 = !{!"tree-ssa-loop-im.c:gimple_nop_p"}
!1332 = !{!"function_entry_count", i64 450}
!1333 = !{!"tree-ssa-loop-im.c:rewrite_mem_ref_loc"}
!1334 = !{!"tree-ssa-loop-im.c:update_stmt"}
!1335 = !{!"branch_weights", i32 1, i32 451}
!1336 = !{!"function_entry_count", i64 181900}
!1337 = !{!"tree-ssa-loop-im.c:move_computations_stmt"}
!1338 = !{!"branch_weights", i32 68241, i32 113661}
!1339 = !{!"branch_weights", i32 113660, i32 1}
!1340 = !{!"branch_weights", i32 31541, i32 254562}
!1341 = !{!"branch_weights", i32 172442, i32 113660}
!1342 = distinct !{!1342, !599}
!1343 = !{!"branch_weights", i32 251537, i32 3026}
!1344 = !{!"branch_weights", i32 1156, i32 1871}
!1345 = !{!"branch_weights", i32 1871, i32 1}
!1346 = !{!"tree-ssa-loop-im.c:clear_lim_data"}
!1347 = !{!"branch_weights", i32 1, i32 254562}
!1348 = !{!"tree-ssa-loop-im.c:free_lim_aux_data"}
!1349 = !{!"branch_weights", i32 250454, i32 4108}
!1350 = !{!"branch_weights", i32 4108, i32 0}
!1351 = distinct !{!1351, !599}
!1352 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_heap_free"}
!1353 = !{!"branch_weights", i32 64, i32 2565}
!1354 = !{!"function_entry_count", i64 57822}
!1355 = !{!"tree-ssa-loop-im.c:VEC_bitmap_base_iterate"}
!1356 = !{!"branch_weights", i32 1, i32 57823}
!1357 = !{!"branch_weights", i32 49942, i32 7882}
!1358 = !{!"tree-ssa-loop-im.c:VEC_bitmap_heap_free"}
!1359 = !{!"branch_weights", i32 1, i32 7882}
!1360 = !{!"function_entry_count", i64 19274}
!1361 = !{!"tree-ssa-loop-im.c:VEC_htab_t_base_iterate"}
!1362 = !{!"branch_weights", i32 1, i32 19275}
!1363 = !{!"branch_weights", i32 16648, i32 2628}
!1364 = !{!"tree-ssa-loop-im.c:VEC_htab_t_heap_free"}
!1365 = !{!"branch_weights", i32 1, i32 2628}
