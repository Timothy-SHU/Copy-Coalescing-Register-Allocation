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
@lsm_tmp_name_length = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_lsm\00", align 1
@lsm_tmp_name = internal global [41 x i8] zeroinitializer, align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
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
define dso_local zeroext i8 @for_each_index(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  br label %4

4:                                                ; preds = %30, %3
  %5 = phi ptr [ %0, %3 ], [ %32, %30 ]
  %6 = phi ptr [ undef, %3 ], [ %32, %30 ]
  br label %7

7:                                                ; preds = %4, %55
  %8 = phi ptr [ %6, %55 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !35
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
  ]

12:                                               ; preds = %7
  %13 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2) #20
  br label %56

14:                                               ; preds = %7, %7, %7
  %15 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %16 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %15, ptr noundef %2) #20
  br label %56

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef %2) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8, !tbaa !35
  br label %30

26:                                               ; preds = %7, %7
  %27 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %28 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %27, ptr noundef %2) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %56, label %30

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
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %38, ptr noundef %2) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8, !tbaa !35
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi ptr [ %45, %44 ], [ %9, %37 ]
  %48 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = tail call zeroext i8 %1(ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef %2) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

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
define dso_local i32 @movement_possibility(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !39
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %48, label %7

7:                                                ; preds = %4, %1
  %8 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #21, !range !42
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #21, !range !42
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #21
  br label %35

30:                                               ; preds = %25
  %31 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #21, !range !42
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #21
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %29, %28 ], [ %34, %33 ]
  %37 = phi i32 [ 1, %28 ], [ 2, %33 ]
  %38 = load i64, ptr %36, align 8
  %39 = and i64 %38, 4259839
  %40 = icmp eq i64 %39, 4194445
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = and i64 %38, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @gimple_could_trap_p(ptr noundef %0) #20
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 %37, i32 1
  br label %48

48:                                               ; preds = %44, %41, %35, %30, %13, %16, %19, %22, %10, %7, %4
  %49 = phi i32 [ 2, %4 ], [ 0, %7 ], [ 0, %10 ], [ 0, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %30 ], [ 0, %35 ], [ 1, %41 ], [ %47, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !43 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !44 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !46 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !42
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
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !47 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !48 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !49 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !50 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @gimple_could_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @get_lsm_tmp_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #22
  store i32 0, ptr @lsm_tmp_name_length, align 4, !tbaa !39
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %0) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.2) #21
  %4 = icmp ult i32 %1, 10
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i8
  %7 = or disjoint i8 %6, 48
  store i8 %7, ptr %3, align 1, !tbaa !45
  %8 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %8, align 1, !tbaa !45
  call fastcc void @lsm_tmp_name_add(ptr noundef nonnull %3) #21
  br label %9

9:                                                ; preds = %5, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #22
  ret ptr @lsm_tmp_name
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_lsm_tmp_name(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !51 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %40 [
    i16 49, label %7
    i16 48, label %7
    i16 47, label %7
    i16 42, label %10
    i16 118, label %10
    i16 46, label %10
    i16 43, label %13
    i16 44, label %16
    i16 41, label %19
    i16 45, label %27
    i16 141, label %30
    i16 32, label %33
    i16 34, label %33
    i16 28, label %38
    i16 36, label %39
    i16 23, label %6
  ]

6:                                                ; preds = %40, %39, %38, %33, %2, %27, %19, %16, %13, %7
  ret void

7:                                                ; preds = %2, %2, %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %9) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.4) #21
  br label %6

10:                                               ; preds = %2, %2, %2
  %11 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  br label %2

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %15) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.5) #21
  br label %6

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %18) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.6) #21
  br label %6

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %21) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.4) #21
  %22 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call ptr @get_name(ptr noundef %23) #20
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @.str.7, ptr %24
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull %26) #21
  br label %6

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %29) #21
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.8) #21
  br label %6

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %2, %2, %30
  %34 = phi ptr [ %32, %30 ], [ %3, %2 ], [ %3, %2 ]
  %35 = tail call ptr @get_name(ptr noundef %34) #20
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.9, ptr %35
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull %37) #21
  br label %6

38:                                               ; preds = %2
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.10) #21
  br label %6

39:                                               ; preds = %2
  tail call fastcc void @lsm_tmp_name_add(ptr noundef nonnull @.str.11) #21
  br label %6

40:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #20
  br label %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lsm_tmp_name_add(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !52 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %3 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !39
  %4 = trunc i64 %2 to i32
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, 40
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %8
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #21
  store i32 %5, ptr @lsm_tmp_name_length, align 4, !tbaa !39
  br label %11

11:                                               ; preds = %1, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_ssa_lim() local_unnamed_addr #0 !prof !34 {
  tail call fastcc void @tree_ssa_lim_initialize() #21
  tail call fastcc void @analyze_memory_references() #21
  tail call fastcc void @determine_invariantness() #21
  tail call fastcc void @store_motion() #21
  tail call fastcc void @move_computations() #21
  tail call fastcc void @tree_ssa_lim_finalize() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_lim_initialize() unnamed_addr #0 !prof !34 !PGOFuncName !53 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  tail call void @sbitmap_zero(ptr noundef %7) #20
  %8 = load ptr, ptr @cfun, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %40, label %17

17:                                               ; preds = %0, %31
  %18 = phi ptr [ %33, %31 ], [ %13, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %18) #21
  %19 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !42
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17, %25
  %22 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  %23 = tail call fastcc zeroext i8 @nonpure_call_p(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #21
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !42
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %21, label %31, !llvm.loop !63

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !65
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %30) #21
  br label %31

31:                                               ; preds = %25, %17, %28
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = load ptr, ptr @cfun, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %17, !llvm.loop !66

40:                                               ; preds = %31, %0
  %41 = phi ptr [ %8, %0 ], [ %34, %31 ]
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = getelementptr inbounds %struct.loops, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %52, %49 ], [ %47, %40 ]
  tail call fastcc void @fill_always_executed_in(ptr noundef nonnull %50, ptr noundef %7) #21
  %51 = getelementptr inbounds %struct.loop, ptr %50, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !llvm.loop !70

54:                                               ; preds = %49, %40
  %55 = load ptr, ptr %7, align 8, !tbaa !71
  tail call void @free(ptr noundef %55) #21
  tail call void @free(ptr noundef %7) #21
  %56 = tail call ptr @pointer_map_create() #20
  store ptr %56, ptr @lim_aux_data_map, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_memory_references() unnamed_addr #0 !prof !34 !PGOFuncName !73 {
  %1 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @memref_hash, ptr noundef nonnull @memref_eq, ptr noundef nonnull @memref_free) #20
  store ptr %1, ptr @memory_accesses, align 8, !tbaa !74
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !76
  %2 = tail call fastcc i32 @number_of_loops() #21
  %3 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %2) #21
  store ptr %3, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8, !tbaa !77
  %4 = tail call fastcc i32 @number_of_loops() #21
  %5 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %4) #21
  store ptr %5, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8, !tbaa !78
  %6 = tail call fastcc i32 @number_of_loops() #21
  %7 = tail call fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %6) #21
  store ptr %7, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8, !tbaa !79
  %8 = tail call fastcc i32 @number_of_loops() #21
  %9 = tail call fastcc ptr @VEC_htab_t_heap_alloc(i32 noundef %8) #21
  store ptr %9, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !80
  %10 = tail call fastcc i32 @number_of_loops() #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

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
  br i1 %24, label %12, label %25, !llvm.loop !81

25:                                               ; preds = %12, %0
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6), align 8, !tbaa !82
  tail call fastcc void @gather_mem_refs_in_loops() #21
  tail call fastcc void @create_vop_ref_mapping() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_invariantness() unnamed_addr #0 !prof !34 !PGOFuncName !83 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i8 1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @determine_invariantness_stmt, ptr %2, align 8, !tbaa !84
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %6) #20
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_motion() unnamed_addr #0 !prof !34 !PGOFuncName !86 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %0 ]
  tail call fastcc void @store_motion_loop(ptr noundef nonnull %11, ptr noundef %1) #21
  %12 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !87

15:                                               ; preds = %10, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #20
  tail call void @gsi_commit_edge_inserts() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_computations() unnamed_addr #0 !prof !34 !PGOFuncName !88 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i8 1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @move_computations_stmt, ptr %2, align 8, !tbaa !84
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %6) #20
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #20
  call void @gsi_commit_edge_inserts() #20
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = call zeroext i8 @need_ssa_update_p(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #20
  br label %11

11:                                               ; preds = %10, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_ssa_lim_finalize() unnamed_addr #0 !prof !34 !PGOFuncName !89 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %18, label %12

12:                                               ; preds = %0, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %18, label %12, !llvm.loop !91

18:                                               ; preds = %12, %0
  %19 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  tail call void @pointer_map_destroy(ptr noundef %19) #20
  tail call fastcc void @VEC_mem_ref_p_heap_free() #21
  %20 = load ptr, ptr @memory_accesses, align 8, !tbaa !74
  tail call void @htab_delete(ptr noundef %20) #20
  %21 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %22 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %1) #21, !range !92
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %18 ]
  %26 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %26) #20
  store ptr null, ptr %1, align 8, !tbaa !35
  %27 = add i32 %25, 1
  %28 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %29 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %1) #21, !range !92
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %24, !llvm.loop !93

31:                                               ; preds = %24, %18
  tail call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2)) #21
  %32 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %33 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %1) #21, !range !92
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %38, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %37) #20
  store ptr null, ptr %1, align 8, !tbaa !35
  %38 = add i32 %36, 1
  %39 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %40 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %39, i32 noundef %38, ptr noundef nonnull %1) #21, !range !92
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %35, !llvm.loop !94

42:                                               ; preds = %35, %31
  tail call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3)) #21
  %43 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %44 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %1) #21, !range !92
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %46
  %47 = phi i32 [ %49, %46 ], [ 0, %42 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %48) #20
  store ptr null, ptr %1, align 8, !tbaa !35
  %49 = add i32 %47, 1
  %50 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %51 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %50, i32 noundef %49, ptr noundef nonnull %1) #21, !range !92
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %46, !llvm.loop !95

53:                                               ; preds = %46, %42
  tail call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4)) #21
  %54 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %55 = call fastcc i32 @VEC_htab_t_base_iterate(ptr noundef %54, i32 noundef 0, ptr noundef nonnull %2) #21, !range !92
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53, %57
  %58 = phi i32 [ %60, %57 ], [ 0, %53 ]
  %59 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @htab_delete(ptr noundef %59) #20
  %60 = add i32 %58, 1
  %61 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %62 = call fastcc i32 @VEC_htab_t_base_iterate(ptr noundef %61, i32 noundef %60, ptr noundef nonnull %2) #21, !range !92
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %57, !llvm.loop !96

64:                                               ; preds = %57, %53
  tail call fastcc void @VEC_htab_t_heap_free() #21
  %65 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6), align 8, !tbaa !82
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @pointer_map_destroy(ptr noundef nonnull %65) #20
  br label %68

68:                                               ; preds = %67, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !97 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !98 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !42
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !99 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !100 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !102 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !103 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !39
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !104 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !34 !PGOFuncName !109 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @nonpure_call_p(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !110 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !34 !PGOFuncName !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !114 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  store ptr %4, ptr %0, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !116 {
  %3 = load ptr, ptr %0, align 8, !tbaa !71
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
  %15 = load i64, ptr %14, align 8, !tbaa !101
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !45
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !101
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_always_executed_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !117 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %97

10:                                               ; preds = %2
  %11 = tail call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %0) #20
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !122
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %85, label %15

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
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = load ptr, ptr %16, align 8, !tbaa !123
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %24) #20
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr %19, ptr %24
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !65
  %31 = lshr i32 %30, 6
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !101
  %35 = and i32 %30, 63
  %36 = zext nneg i32 %35 to i64
  %37 = shl nuw i64 1, %36
  %38 = and i64 %37, %34
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !124
  store ptr %42, ptr %17, align 8, !tbaa.struct !125
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %3) #21, !range !42
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40, %51
  %46 = load ptr, ptr %3, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %48) #20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %45
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %52 = load i32, ptr %4, align 8
  %53 = load ptr, ptr %17, align 8
  %54 = call fastcc zeroext i8 @ei_cond(i32 %52, ptr %53, ptr noundef nonnull %3) #21, !range !42
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %45, !llvm.loop !128

56:                                               ; preds = %51, %40
  %57 = load ptr, ptr %3, align 8, !tbaa !35
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !129
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %20, ptr noundef nonnull %24) #20
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !130
  %70 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !118
  %72 = icmp eq ptr %71, %24
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load ptr, ptr %16, align 8, !tbaa !123
  %75 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %74, ptr noundef nonnull %24) #20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %68, align 8, !tbaa !130
  br label %80

79:                                               ; preds = %18, %56, %59, %64, %73, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %85

80:                                               ; preds = %77, %67
  %81 = phi ptr [ %78, %77 ], [ %20, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %82 = add nuw i32 %21, 1
  %83 = load i32, ptr %12, align 4, !tbaa !122
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %18, label %85, !llvm.loop !131

85:                                               ; preds = %80, %10, %79
  %86 = phi ptr [ %28, %79 ], [ null, %10 ], [ %28, %80 ]
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 2
  store ptr %0, ptr %87, align 8, !tbaa !90
  %88 = load ptr, ptr %5, align 8, !tbaa !118
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %90
  %91 = phi ptr [ %92, %90 ], [ %86, %85 ]
  %92 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %91) #20
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  store ptr %0, ptr %93, align 8, !tbaa !90
  %94 = load ptr, ptr %5, align 8, !tbaa !118
  %95 = icmp eq ptr %92, %94
  br i1 %95, label %96, label %90

96:                                               ; preds = %90, %85
  tail call void @free(ptr noundef %11) #21
  br label %97

97:                                               ; preds = %96, %2
  %98 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97, %101
  %102 = phi ptr [ %104, %101 ], [ %99, %97 ]
  tail call fastcc void @fill_always_executed_in(ptr noundef nonnull %102, ptr noundef %1) #21
  %103 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %101, !llvm.loop !132

106:                                              ; preds = %101, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 !PGOFuncName !133 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !129
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !134
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !136 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !137
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !139 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !34 !PGOFuncName !140 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !35
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !141 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !142
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !34 !PGOFuncName !144 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !34 !PGOFuncName !145 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !146 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !147
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !149 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !150 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @memref_hash(ptr nocapture noundef readonly %0) #3 !prof !34 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !152
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @memref_eq(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !154 {
  %3 = load ptr, ptr %0, align 8, !tbaa !155
  %4 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %1, i32 noundef 0) #20
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @memref_free(ptr nocapture noundef %0) #0 !prof !34 !PGOFuncName !156 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  store ptr null, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  store ptr null, ptr %5, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  tail call void @bitmap_obstack_free(ptr noundef %8) #20
  store ptr null, ptr %7, align 8, !tbaa !159
  %9 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  tail call void @bitmap_obstack_free(ptr noundef %10) #20
  store ptr null, ptr %9, align 8, !tbaa !160
  %11 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  tail call void @bitmap_obstack_free(ptr noundef %12) #20
  store ptr null, ptr %11, align 8, !tbaa !161
  %13 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = call fastcc i32 @VEC_mem_ref_locs_p_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #21, !range !92
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1, %17
  %18 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !35
  tail call fastcc void @free_mem_ref_locs(ptr noundef %19) #21
  %20 = add i32 %18, 1
  %21 = load ptr, ptr %13, align 8, !tbaa !162
  %22 = call fastcc i32 @VEC_mem_ref_locs_p_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %2) #21, !range !92
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17, !llvm.loop !163

24:                                               ; preds = %17, %1
  tail call fastcc void @VEC_mem_ref_locs_p_heap_free(ptr noundef nonnull %13) #21
  %25 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  tail call void @bitmap_obstack_free(ptr noundef %26) #20
  tail call void @free(ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !165 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #10 !prof !34 !PGOFuncName !166 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #21
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_htab_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !168 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !34 !PGOFuncName !169 {
  %3 = load i32, ptr %0, align 8, !tbaa !170
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !170
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vtoe_hash(ptr nocapture noundef readonly %0) #3 !prof !34 !PGOFuncName !172 {
  %2 = load i32, ptr %0, align 8, !tbaa !173
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vtoe_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !34 !PGOFuncName !175 {
  %3 = load i32, ptr %0, align 8, !tbaa !173
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @vtoe_free(ptr nocapture noundef %0) #0 !prof !34 !PGOFuncName !176 {
  %2 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  tail call void @bitmap_obstack_free(ptr noundef %3) #20
  store ptr null, ptr %2, align 8, !tbaa !177
  %4 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_htab_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !34 !PGOFuncName !179 {
  %3 = load i32, ptr %0, align 8, !tbaa !180
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !180
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_mem_refs_in_loops() unnamed_addr #0 !prof !34 !PGOFuncName !182 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %39, label %13

13:                                               ; preds = %0, %30
  %14 = phi ptr [ %33, %30 ], [ %4, %0 ]
  %15 = phi ptr [ %32, %30 ], [ %9, %0 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = icmp eq ptr %17, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef nonnull %15) #21
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !42
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %26
  %27 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  tail call fastcc void @gather_mem_refs_stmt(ptr noundef %17, ptr noundef %27) #21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #21
  %28 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21, !range !42
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %26, label %30, !llvm.loop !183

30:                                               ; preds = %26, %23, %13
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = load ptr, ptr @cfun, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %39, label %13, !llvm.loop !184

39:                                               ; preds = %30, %0
  %40 = phi ptr [ undef, %0 ], [ %17, %30 ]
  store ptr %40, ptr %2, align 8, !tbaa !35
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #21
  %41 = load ptr, ptr %2, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %39, %70
  %44 = phi ptr [ %71, %70 ], [ %41, %39 ]
  %45 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %46 = load i32, ptr %44, align 8, !tbaa !185
  %47 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %45, i32 noundef %46) #21
  %48 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %49 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %48, i32 noundef %46) #21
  %50 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %49, ptr noundef %47) #20
  %51 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %44) #21
  %52 = load ptr, ptr @cfun, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.loops, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = icmp eq ptr %51, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %43
  %59 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %60 = load i32, ptr %44, align 8, !tbaa !185
  %61 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %59, i32 noundef %60) #21
  %62 = load i32, ptr %51, align 8, !tbaa !185
  %63 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %59, i32 noundef %62) #21
  %64 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %63, ptr noundef %61) #20
  %65 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %66 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %44) #21
  %67 = load i32, ptr %66, align 8, !tbaa !185
  %68 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %65, i32 noundef %67) #21
  %69 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %68, ptr noundef %49) #20
  br label %70

70:                                               ; preds = %43, %58
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %71 = load ptr, ptr %2, align 8, !tbaa !35
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %43, !llvm.loop !186

73:                                               ; preds = %70, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_vop_ref_mapping() unnamed_addr #0 !prof !34 !PGOFuncName !187 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #21
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call fastcc void @create_vop_ref_mapping_loop(ptr noundef nonnull %6) #21
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  %7 = load ptr, ptr %2, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !188

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
define internal fastcc noundef i32 @VEC_mem_ref_locs_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !34 !PGOFuncName !189 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !190
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !35
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_mem_ref_locs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !192 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !193
  %6 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #21, !range !92
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @free(ptr noundef %10) #21
  %11 = add i32 %9, 1
  %12 = load ptr, ptr %0, align 8, !tbaa !193
  %13 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %12, i32 noundef %11, ptr noundef nonnull %2) #21, !range !92
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %8, !llvm.loop !195

15:                                               ; preds = %8, %4
  tail call fastcc void @VEC_mem_ref_loc_p_heap_free(ptr noundef nonnull %0) #21
  tail call void @free(ptr noundef nonnull %0) #21
  br label %16

16:                                               ; preds = %1, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !196 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !34 !PGOFuncName !197 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !198
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !35
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_mem_ref_loc_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !200 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !201 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !202
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_mem_refs_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !204 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %2
  %7 = call fastcc ptr @simple_mem_ref_in_stmt(ptr noundef %1, ptr noundef nonnull %3) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = tail call i32 @iterative_hash_expr(ptr noundef %10, i32 noundef 0) #20
  %12 = load ptr, ptr @memory_accesses, align 8, !tbaa !74
  %13 = load ptr, ptr %7, align 8, !tbaa !35
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef %13, i32 noundef %11, i32 noundef 1) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %19 = tail call fastcc i32 @VEC_mem_ref_p_base_length(ptr noundef %18) #21
  %20 = load ptr, ptr %7, align 8, !tbaa !35
  %21 = tail call fastcc ptr @mem_ref_alloc(ptr noundef %20, i32 noundef %11, i32 noundef %19) #21
  tail call fastcc void @VEC_mem_ref_p_heap_safe_push(ptr noundef %21) #21
  store ptr %21, ptr %14, align 8, !tbaa !35
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.13, i32 noundef %19) #21
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %31 = load ptr, ptr %21, align 8, !tbaa !155
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef %31, i32 noundef 2) #20
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %33 = tail call i32 @fputc(i32 10, ptr %32)
  br label %34

34:                                               ; preds = %9, %17, %24, %28
  %35 = phi ptr [ %21, %28 ], [ %21, %24 ], [ %21, %17 ], [ %15, %9 ]
  %36 = load i8, ptr %3, align 1, !tbaa !45
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @mark_ref_stored(ptr noundef %35, ptr noundef %0) #21
  br label %39

39:                                               ; preds = %38, %34
  %40 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.mem_ref, ptr %35, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !164
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !45
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %48) #20
  br label %50

50:                                               ; preds = %42, %39
  tail call fastcc void @record_mem_ref_loc(ptr noundef %35, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  br label %63

51:                                               ; preds = %6
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %56 = load i32, ptr %0, align 8, !tbaa !185
  %57 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %55, i32 noundef %56) #21
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !45
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %57, i32 noundef %61) #20
  br label %63

63:                                               ; preds = %51, %54, %2, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !205 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !206
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !208
  store ptr null, ptr %1, align 8, !tbaa !35
  br label %68

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #21
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #21
  store ptr %12, ptr %0, align 8, !tbaa !208
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @cfun, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  br i1 %16, label %47, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %10 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !209
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !210

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !185
  %30 = icmp slt i32 %29, %14
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !208
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %32, i32 noundef %29) #21
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !209
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %37, !llvm.loop !212

42:                                               ; preds = %33
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %28) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %27

47:                                               ; preds = %10, %57
  %48 = phi ptr [ %58, %57 ], [ %21, %10 ]
  %49 = load i32, ptr %48, align 8, !tbaa !185
  %50 = icmp slt i32 %49, %14
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !208
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %52, i32 noundef %49) #21
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !209
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %59, %53
  %58 = phi ptr [ %55, %53 ], [ %62, %59 ]
  br label %47

59:                                               ; preds = %53, %64
  %60 = phi ptr [ %65, %64 ], [ %48, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !211
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57

64:                                               ; preds = %59
  %65 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %60) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !llvm.loop !213

67:                                               ; preds = %42, %64
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_bitmap_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !214 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 !PGOFuncName !215 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #21
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !217 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !206
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !208
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #21, !range !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !206
  %13 = load i32, ptr %3, align 4, !tbaa !39
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #21
  store ptr %14, ptr %1, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !218

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #21
  store ptr null, ptr %1, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !219 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simple_mem_ref_in_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !220 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #21, !range !221
  %7 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) #21
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #21, !range !41
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %17 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %16) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  store i8 0, ptr %1, align 1, !tbaa !45
  %20 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) #21
  br label %31

21:                                               ; preds = %5
  %22 = icmp eq i32 %6, 141
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #21, !range !41
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %28 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %27) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %21
  store i8 1, ptr %1, align 1, !tbaa !45
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
define internal fastcc i32 @VEC_mem_ref_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !222 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !223
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mem_ref_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !225 {
  %4 = tail call ptr @xmalloc(i64 noundef 72) #20
  store ptr %0, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !226
  %6 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 2
  store i32 %1, ptr %6, align 4, !tbaa !152
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %8 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !157
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %10 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !158
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %12 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 7
  store ptr %11, ptr %12, align 8, !tbaa !159
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %14 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 8
  store ptr %13, ptr %14, align 8, !tbaa !160
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %16 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 9
  store ptr %15, ptr %16, align 8, !tbaa !161
  %17 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 4
  store ptr null, ptr %17, align 8, !tbaa !162
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %19 = getelementptr inbounds %struct.mem_ref, ptr %4, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !164
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !227 {
  tail call fastcc void @VEC_mem_ref_p_heap_reserve() #21
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  tail call fastcc void @VEC_mem_ref_p_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_stored(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !228 {
  %3 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %27, label %10

10:                                               ; preds = %2, %16
  %11 = phi ptr [ %20, %16 ], [ %1, %2 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !157
  %13 = load i32, ptr %11, align 8, !tbaa !185
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %12, i32 noundef %13) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa !157
  %18 = load i32, ptr %11, align 8, !tbaa !185
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %18) #20
  %20 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %11) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.loops, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %27, label %10, !llvm.loop !229

27:                                               ; preds = %10, %16, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_mem_ref_loc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !230 {
  %5 = tail call ptr @xmalloc(i64 noundef 16) #20
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %7 = load i32, ptr %1, align 8, !tbaa !185
  %8 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %6, i32 noundef %7) #21
  %9 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef %10) #21
  %12 = icmp ugt i32 %11, %7
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = add nsw i32 %7, 1
  tail call fastcc void @VEC_mem_ref_locs_p_heap_safe_grow_cleared(ptr noundef nonnull %9, i32 noundef %14) #21
  %15 = load ptr, ptr %9, align 8, !tbaa !162
  %16 = load i32, ptr %1, align 8, !tbaa !185
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ %7, %4 ]
  %19 = phi ptr [ %15, %13 ], [ %10, %4 ]
  %20 = tail call fastcc ptr @VEC_mem_ref_locs_p_base_index(ptr noundef %19, i32 noundef %18) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @mem_ref_locs_alloc() #21
  %24 = load ptr, ptr %9, align 8, !tbaa !162
  %25 = load i32, ptr %1, align 8, !tbaa !185
  tail call fastcc void @VEC_mem_ref_locs_p_base_replace(ptr noundef %24, i32 noundef %25, ptr noundef %23) #21
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi ptr [ %20, %17 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.mem_ref_loc, ptr %5, i64 0, i32 1
  store ptr %2, ptr %28, align 8, !tbaa !231
  store ptr %3, ptr %5, align 8, !tbaa !233
  tail call fastcc void @VEC_mem_ref_loc_p_heap_safe_push(ptr noundef %27, ptr noundef nonnull %5) #21
  %29 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !226
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %30) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !234 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !221
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #21, !range !41
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !235 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !236 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !45
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_addressable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !237 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !238 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !239 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !240 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !42
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

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
define internal fastcc void @VEC_mem_ref_p_heap_reserve() unnamed_addr #0 !prof !34 !PGOFuncName !241 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  %2 = tail call fastcc i32 @VEC_mem_ref_p_base_space(ptr noundef %1) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #20
  store ptr %5, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_mem_ref_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !34 !PGOFuncName !242 {
  %3 = load i32, ptr %0, align 8, !tbaa !223
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !223
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !243 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !244
  %6 = load i32, ptr %0, align 8, !tbaa !223
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
define internal fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !245 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !190
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !246 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef %3) #21
  tail call fastcc void @VEC_mem_ref_locs_p_heap_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !35
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
define internal fastcc ptr @VEC_mem_ref_locs_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !247 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mem_ref_locs_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !248 {
  %1 = tail call ptr @xmalloc(i64 noundef 8) #20
  store ptr null, ptr %1, align 8, !tbaa !193
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_mem_ref_locs_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #13 !prof !34 !PGOFuncName !249 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_loc_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !250 {
  tail call fastcc void @VEC_mem_ref_loc_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call fastcc void @VEC_mem_ref_loc_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !251 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !190
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_mem_ref_locs_p_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #21
  %10 = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !252, !noundef !252
  store i32 %1, ptr %10, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_mem_ref_locs_p_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !34 !PGOFuncName !253 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_ref_locs_p_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !254 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_space(ptr noundef %3, i32 noundef %1) #21, !range !92
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_locs_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !255 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !256
  %7 = load i32, ptr %0, align 8, !tbaa !190
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
define internal fastcc void @VEC_mem_ref_loc_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !257 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = tail call fastcc i32 @VEC_mem_ref_loc_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_mem_ref_loc_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !34 !PGOFuncName !258 {
  %3 = load i32, ptr %0, align 8, !tbaa !198
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !198
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_ref_loc_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !259 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !260
  %6 = load i32, ptr %0, align 8, !tbaa !198
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !261 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 !prof !34 !PGOFuncName !262 {
  %3 = load i32, ptr %0, align 4, !tbaa !263
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !263
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !265 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !34 !PGOFuncName !266 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !263
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !39
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #10 !prof !34 !PGOFuncName !267 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #21
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !268 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_vop_ref_mapping_loop(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !269 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %5 = load i32, ptr %0, align 8, !tbaa !185
  %6 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %4, i32 noundef %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !42
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @cfun, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %9, %30
  %12 = phi ptr [ %10, %9 ], [ %31, %30 ]
  %13 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %14 = load i32, ptr %3, align 4, !tbaa !39
  %15 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %13, i32 noundef %14) #21
  %16 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %30, label %21

21:                                               ; preds = %11, %21
  %22 = phi ptr [ %23, %21 ], [ %0, %11 ]
  tail call fastcc void @add_vop_ref_mapping(ptr noundef %22, ptr noundef %15) #21
  %23 = tail call fastcc ptr @loop_outer(ptr noundef %22) #21
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.loops, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %21, !llvm.loop !270

30:                                               ; preds = %21, %11
  %31 = phi ptr [ %12, %11 ], [ %24, %21 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !42
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %11, !llvm.loop !271

34:                                               ; preds = %30, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !34 !PGOFuncName !272 {
  %4 = load ptr, ptr %1, align 8, !tbaa !273
  store ptr %4, ptr %0, align 8, !tbaa !275
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !277
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !275
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !278
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !280
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !281
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #17 !prof !34 !PGOFuncName !282 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !281
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !283

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !39
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !39
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !280
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !275
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !280
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !101
  store i64 %35, ptr %3, align 8, !tbaa !281
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !39
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !39
  %40 = load i32, ptr %23, align 8, !tbaa !280
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !280
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !284

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !285
  store ptr %44, ptr %0, align 8, !tbaa !275
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !278
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !39
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !281
  store i32 %16, ptr %1, align 4, !tbaa !39
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_mem_ref_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !286 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_vop_ref_mapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !287 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %6 = load i32, ptr %0, align 8, !tbaa !185
  %7 = tail call fastcc ptr @VEC_htab_t_base_index(ptr noundef %5, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %6) #20
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %13 = load i32, ptr %0, align 8, !tbaa !185
  %14 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %12, i32 noundef %13) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %15 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %3, ptr noundef %16, ptr noundef %14, ptr noundef nonnull %4) #21
  %17 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !42
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %21
  %22 = load i32, ptr %4, align 4, !tbaa !39
  %23 = load i32, ptr %20, align 8, !tbaa !226
  tail call fastcc void @record_vop_access(ptr noundef %7, i32 noundef %22, i32 noundef %23, i8 noundef zeroext %11) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %24 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !42
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %21, !llvm.loop !288

26:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !34 !PGOFuncName !289 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !281
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !281
  %6 = load i32, ptr %1, align 4, !tbaa !39
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_htab_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !290 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_compl_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 !prof !34 !PGOFuncName !291 {
  %5 = load ptr, ptr %1, align 8, !tbaa !273
  store ptr %5, ptr %0, align 8, !tbaa !275
  %6 = load ptr, ptr %2, align 8, !tbaa !273
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !277
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !275
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %9 ]
  %12 = icmp eq ptr %6, null
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !278
  br i1 %12, label %23, label %15

15:                                               ; preds = %10, %20
  %16 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !278
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !285
  store ptr %21, ptr %7, align 8, !tbaa !277
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !292

23:                                               ; preds = %20, %10
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !280
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %26, ptr %27, align 8, !tbaa !281
  br label %41

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %29, align 8, !tbaa !280
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !101
  %32 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %31, ptr %32, align 8, !tbaa !281
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !278
  %35 = icmp eq i32 %14, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 0
  %38 = load i64, ptr %37, align 8, !tbaa !101
  %39 = xor i64 %38, -1
  %40 = and i64 %31, %39
  store i64 %40, ptr %32, align 8, !tbaa !281
  br label %41

41:                                               ; preds = %23, %36, %28
  %42 = phi i64 [ %40, %36 ], [ %31, %28 ], [ %26, %23 ]
  %43 = shl i32 %14, 7
  %44 = icmp eq i64 %42, 0
  %45 = zext i1 %44 to i32
  %46 = or disjoint i32 %43, %45
  store i32 %46, ptr %3, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and_compl(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #17 !prof !34 !PGOFuncName !293 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !281
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %51, %2
  %7 = phi i64 [ %4, %2 ], [ %52, %51 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %78, !llvm.loop !294

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !39
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !39
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !280
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !275
  br label %28

28:                                               ; preds = %19, %76
  %29 = phi ptr [ %27, %19 ], [ %61, %76 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %76 ]
  store i32 %30, ptr %23, align 8, !tbaa !280
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %60, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !277
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  br label %37

37:                                               ; preds = %32, %54
  %38 = phi i32 [ %30, %32 ], [ %58, %54 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !101
  store i64 %41, ptr %3, align 8, !tbaa !281
  br i1 %34, label %51, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %35, align 8, !tbaa !278
  %44 = load i32, ptr %36, align 8, !tbaa !278
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %39
  %48 = load i64, ptr %47, align 8, !tbaa !101
  %49 = xor i64 %48, -1
  %50 = and i64 %41, %49
  store i64 %50, ptr %3, align 8, !tbaa !281
  br label %51

51:                                               ; preds = %42, %46, %37
  %52 = phi i64 [ %50, %46 ], [ %41, %37 ], [ %41, %42 ]
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %6

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4, !tbaa !39
  %56 = add i32 %55, 64
  store i32 %56, ptr %1, align 4, !tbaa !39
  %57 = load i32, ptr %23, align 8, !tbaa !280
  %58 = add i32 %57, 1
  store i32 %58, ptr %23, align 8, !tbaa !280
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %37, !llvm.loop !295

60:                                               ; preds = %54, %28
  %61 = load ptr, ptr %29, align 8, !tbaa !285
  store ptr %61, ptr %0, align 8, !tbaa !275
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %26, align 8, !tbaa !277
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %61, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !278
  br i1 %65, label %76, label %68

68:                                               ; preds = %63, %73
  %69 = phi ptr [ %74, %73 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !278
  %72 = icmp ult i32 %71, %67
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 8, !tbaa !285
  store ptr %74, ptr %26, align 8, !tbaa !277
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68, !llvm.loop !296

76:                                               ; preds = %68, %73, %63
  %77 = shl i32 %67, 7
  store i32 %77, ptr %1, align 4, !tbaa !39
  br label %28

78:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !281
  store i32 %16, ptr %1, align 4, !tbaa !39
  br label %79

79:                                               ; preds = %60, %6, %78
  %80 = phi i8 [ 1, %78 ], [ 1, %6 ], [ 0, %60 ]
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_vop_access(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !34 !PGOFuncName !297 {
  %5 = alloca i32, align 4
  store i32 %1, ptr %5, align 4, !tbaa !39
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, i32 noundef 1) #20
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = call ptr @xmalloc(i64 noundef 24) #20
  %11 = load i32, ptr %5, align 4, !tbaa !39
  store i32 %11, ptr %10, align 8, !tbaa !173
  %12 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %13 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %10, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !177
  %14 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %15 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %10, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !178
  store ptr %10, ptr %6, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %18 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %2) #20
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %2) #20
  br label %26

26:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @determine_invariantness_stmt(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !298 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = tail call fastcc ptr @loop_outer(ptr noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %127, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = load i32, ptr %9, align 8, !tbaa !185
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %9) #21
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %22, i32 noundef %23) #21
  br label %25

25:                                               ; preds = %19, %15, %12
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #21
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !42
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %127

28:                                               ; preds = %25, %122
  %29 = phi i8 [ %124, %122 ], [ %7, %25 ]
  %30 = phi ptr [ %123, %122 ], [ %5, %25 ]
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %32 = call i32 @movement_possibility(ptr noundef %31) #21, !range !299
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = call fastcc zeroext i8 @nonpure_call_p(ptr noundef %31) #21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %122

37:                                               ; preds = %34
  %38 = call zeroext i8 @stmt_makes_single_store(ptr noundef %31) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %122, label %40

40:                                               ; preds = %37
  %41 = call fastcc ptr @init_lim_data(ptr noundef %31) #21
  %42 = getelementptr inbounds %struct.lim_aux_data, ptr %41, i64 0, i32 2
  store ptr %30, ptr %42, align 8, !tbaa !300
  br label %122

43:                                               ; preds = %28
  %44 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %31) #21, !range !42
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %43
  %47 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %31) #21, !range !221
  %48 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %47) #21, !range !41
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %31) #21
  %52 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %31) #21
  %53 = call fastcc ptr @loop_containing_stmt(ptr noundef %31) #21
  %54 = call fastcc ptr @outermost_invariant_loop(ptr noundef %52, ptr noundef %53) #21
  %55 = icmp eq i32 %32, 2
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %31) #21, !range !221
  %58 = icmp eq i32 %57, 75
  %59 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  %62 = load i32, ptr @flag_trapping_math, align 4
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  %65 = icmp ne ptr %54, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = call fastcc ptr @outermost_invariant_loop(ptr noundef %51, ptr noundef nonnull %54) #21
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call fastcc ptr @rewrite_reciprocal(ptr noundef nonnull %3) #21
  br label %72

72:                                               ; preds = %70, %67, %56
  %73 = phi ptr [ %31, %56 ], [ %31, %67 ], [ %71, %70 ]
  %74 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %73) #21, !range !221
  %75 = icmp eq i32 %74, 89
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = call i32 @integer_onep(ptr noundef %52) #20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i64, ptr %51, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 141
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %51) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call fastcc ptr @rewrite_bittest(ptr noundef nonnull %3) #21
  br label %88

88:                                               ; preds = %50, %72, %76, %79, %83, %86, %46, %43
  %89 = phi ptr [ %31, %46 ], [ %31, %43 ], [ %87, %86 ], [ %73, %83 ], [ %73, %79 ], [ %73, %76 ], [ %73, %72 ], [ %31, %50 ]
  %90 = call fastcc ptr @init_lim_data(ptr noundef %89) #21
  %91 = getelementptr inbounds %struct.lim_aux_data, ptr %90, i64 0, i32 2
  store ptr %30, ptr %91, align 8, !tbaa !300
  %92 = icmp ne i8 %29, 0
  %93 = icmp eq i32 %32, 1
  %94 = and i1 %92, %93
  br i1 %94, label %122, label %95

95:                                               ; preds = %88
  %96 = zext i1 %93 to i8
  %97 = call fastcc zeroext i8 @determine_max_movement(ptr noundef %89, i8 noundef zeroext %96) #21, !range !42
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store ptr null, ptr %90, align 8, !tbaa !302
  br label %122

100:                                              ; preds = %95
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  call void @print_gimple_stmt(ptr noundef nonnull %101, ptr noundef %89, i32 noundef 2, i32 noundef 0) #20
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %109 = load ptr, ptr %90, align 8, !tbaa !302
  %110 = call fastcc i32 @loop_depth(ptr noundef %109) #21
  %111 = getelementptr inbounds %struct.lim_aux_data, ptr %90, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !303
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.16, i32 noundef %110, i32 noundef %112) #21
  br label %114

114:                                              ; preds = %107, %103, %100
  %115 = getelementptr inbounds %struct.lim_aux_data, ptr %90, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !303
  %117 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %118 = getelementptr inbounds %struct.param_info, ptr %117, i64 59, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !304
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  call fastcc void @set_profitable_level(ptr noundef %89) #21
  br label %122

122:                                              ; preds = %34, %114, %121, %88, %40, %37, %99
  %123 = phi ptr [ %30, %40 ], [ %30, %37 ], [ %30, %88 ], [ %30, %121 ], [ %30, %114 ], [ %30, %99 ], [ null, %34 ]
  %124 = phi i8 [ %29, %40 ], [ %29, %37 ], [ %29, %88 ], [ %29, %121 ], [ %29, %114 ], [ %29, %99 ], [ 1, %34 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %125 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !42
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %28, label %127, !llvm.loop !306

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
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 !PGOFuncName !307 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_makes_single_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_lim_data(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !308 {
  %2 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %3 = tail call ptr @pointer_map_insert(ptr noundef %2, ptr noundef %0) #20
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20
  store ptr %4, ptr %3, align 8, !tbaa !35
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !309 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @outermost_invariant_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !310 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 431, ptr noundef nonnull @.str.1) #20
  br label %35

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %19) #20
  %21 = tail call fastcc ptr @get_lim_data(ptr noundef %14) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %21, align 8, !tbaa !302
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %24) #21
  %28 = tail call ptr @find_common_loop(ptr noundef %20, ptr noundef %27) #20
  br label %29

29:                                               ; preds = %26, %23, %17
  %30 = phi ptr [ %28, %26 ], [ %20, %23 ], [ %20, %17 ]
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %38, label %32

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
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 !PGOFuncName !311 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rewrite_reciprocal(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !312 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
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
  %17 = load ptr, ptr %16, align 8, !tbaa !45
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
  br i1 %31, label %32, label %26, !llvm.loop !313

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !314
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %40, i32 noundef 0) #20
  call void @gsi_replace(ptr noundef nonnull %2, ptr noundef %43, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %40
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !316
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !316
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #21, !range !42
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !39
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #20
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rewrite_bittest(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !318 {
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
  br i1 %9, label %10, label %91

10:                                               ; preds = %1
  %11 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %91, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !35
  %15 = call fastcc i32 @gimple_code(ptr noundef %14) #21, !range !41
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %91

17:                                               ; preds = %13
  %18 = call fastcc ptr @gimple_cond_lhs(ptr noundef %14) #21
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %20, label %91

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8, !tbaa !35
  %22 = call fastcc i32 @gimple_cond_code(ptr noundef %21) #21, !range !221
  %23 = add nsw i32 %22, -101
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %91

25:                                               ; preds = %20
  %26 = call fastcc ptr @gimple_cond_rhs(ptr noundef %21) #21
  %27 = call i32 @integer_zerop(ptr noundef %26) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %91, label %29

29:                                               ; preds = %25
  %30 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #21
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = call fastcc i32 @gimple_code(ptr noundef %32) #21, !range !41
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %91

35:                                               ; preds = %29
  %36 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %32) #21, !range !221
  %37 = icmp eq i32 %36, 116
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %32) #21, !range !221
  %40 = icmp eq i32 %39, 113
  br i1 %40, label %41, label %54

41:                                               ; preds = %38, %35
  %42 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %32) #21
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %91

46:                                               ; preds = %41
  %47 = call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %42) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = call fastcc i32 @gimple_code(ptr noundef %51) #21, !range !41
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %91

54:                                               ; preds = %49, %38
  %55 = phi ptr [ %51, %49 ], [ %32, %38 ]
  %56 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %55) #21, !range !221
  %57 = icmp eq i32 %56, 84
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = call fastcc ptr @loop_containing_stmt(ptr noundef %55) #21
  %60 = call fastcc ptr @loop_containing_stmt(ptr noundef %5) #21
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %55) #21
  %64 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %55) #21
  %65 = call fastcc ptr @loop_containing_stmt(ptr noundef %55) #21
  %66 = call fastcc ptr @outermost_invariant_loop(ptr noundef %64, ptr noundef %65) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %91, label %68

68:                                               ; preds = %62
  %69 = call fastcc ptr @loop_containing_stmt(ptr noundef %55) #21
  %70 = call fastcc ptr @outermost_invariant_loop(ptr noundef %63, ptr noundef %69) #21
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %73 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !45
  %75 = call ptr @create_tmp_var(ptr noundef %74, ptr noundef nonnull @.str.18) #20
  %76 = call zeroext i8 @add_referenced_var(ptr noundef %75) #20
  %77 = load ptr, ptr %73, align 8, !tbaa !45
  %78 = call ptr @build_int_cst(ptr noundef %77, i64 noundef 1) #20
  %79 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %77, ptr noundef %78, ptr noundef %64) #20
  %80 = call ptr @gimple_build_assign_stat(ptr noundef %75, ptr noundef %79) #20
  %81 = call fastcc ptr @make_ssa_name(ptr noundef %75, ptr noundef %80) #21
  call fastcc void @gimple_assign_set_lhs(ptr noundef %80, ptr noundef %81) #21
  %82 = load ptr, ptr %73, align 8, !tbaa !45
  %83 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %82, ptr noundef %63, ptr noundef %81) #20
  %84 = call ptr @gimple_build_assign_stat(ptr noundef %75, ptr noundef %83) #20
  %85 = call fastcc ptr @make_ssa_name(ptr noundef %75, ptr noundef %84) #21
  call fastcc void @gimple_assign_set_lhs(ptr noundef %84, ptr noundef %85) #21
  %86 = load ptr, ptr %3, align 8, !tbaa !35
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %86, ptr noundef %85) #21
  %87 = load ptr, ptr %2, align 8, !tbaa !35
  %88 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = call ptr @build_int_cst_type(ptr noundef %89, i64 noundef 0) #20
  call fastcc void @gimple_cond_set_rhs(ptr noundef %87, ptr noundef %90) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !314
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
define internal fastcc noundef zeroext i8 @determine_max_movement(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !34 !PGOFuncName !319 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = tail call fastcc ptr @get_lim_data(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  br label %14

12:                                               ; preds = %2
  %13 = tail call ptr @superloop_at_depth(ptr noundef %6, i32 noundef 1) #20
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %11, %9 ], [ %13, %12 ]
  store ptr %15, ptr %7, align 8, !tbaa !302
  %16 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %0) #21
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14, %23
  %20 = phi ptr [ %24, %23 ], [ %16, %14 ]
  %21 = tail call fastcc zeroext i8 @add_dependency(ptr noundef %20, ptr noundef nonnull %7, ptr noundef %6, i8 noundef zeroext 1) #21, !range !42
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #21
  %25 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %19, label %27, !llvm.loop !320

27:                                               ; preds = %23, %14
  %28 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @mem_ref_in_stmt(ptr noundef %0) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 8, !tbaa !302
  %35 = tail call fastcc ptr @outermost_indep_loop(ptr noundef %34, ptr noundef %6, ptr noundef nonnull %31) #21
  store ptr %35, ptr %7, align 8, !tbaa !302
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %43

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i8 @add_dependency(ptr noundef nonnull %38, ptr noundef nonnull %7, ptr noundef %6, i8 noundef zeroext 0) #21, !range !42
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33, %40, %37, %27
  %44 = tail call fastcc i32 @stmt_cost(ptr noundef %0) #21
  %45 = getelementptr inbounds %struct.lim_aux_data, ptr %7, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !303
  %47 = add i32 %46, %44
  store i32 %47, ptr %45, align 8, !tbaa !303
  br label %48

48:                                               ; preds = %19, %33, %40, %43
  %49 = phi i8 [ 1, %43 ], [ 0, %40 ], [ 0, %33 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret i8 %49
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_profitable_level(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !321 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = tail call fastcc ptr @get_lim_data(ptr noundef %0) #21
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call fastcc void @set_level(ptr noundef %0, ptr noundef %4, ptr noundef %6) #21
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !322 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !45
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !323 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_lim_data(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !324 {
  %2 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !325 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !326 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #21
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !45
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
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !327 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !328 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !329 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !316
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !35
  store ptr null, ptr %2, align 8, !tbaa !35
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !316
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #21, !range !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !35
  %19 = load ptr, ptr %5, align 8, !tbaa !316
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  store ptr %21, ptr %2, align 8, !tbaa !35
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !39
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #20
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !330 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !331 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !332 {
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
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !34 !PGOFuncName !333 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  store ptr %1, ptr %4, align 8, !tbaa !35
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !335 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #18 !prof !34 !PGOFuncName !336 {
  %2 = load ptr, ptr %0, align 8, !tbaa !337
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !316
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !316
  store ptr %2, ptr %6, align 8, !tbaa !337
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !34 !PGOFuncName !338 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !337
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !34 !PGOFuncName !339 {
  store ptr %1, ptr %0, align 8, !tbaa !337
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !316
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !316
  store ptr %0, ptr %4, align 8, !tbaa !337
  store ptr %0, ptr %3, align 8, !tbaa !316
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !34 !PGOFuncName !340 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !341
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !343 {
  %2 = load i8, ptr %0, align 8, !tbaa !344
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_dependency(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !34 !PGOFuncName !345 {
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef nonnull %0, ptr noundef %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !302
  %14 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %13, ptr noundef nonnull %10) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr %10, ptr %1, align 8, !tbaa !302
  br label %17

17:                                               ; preds = %16, %12
  %18 = tail call fastcc ptr @get_lim_data(ptr noundef %6) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.lim_aux_data, ptr %18, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !303
  %29 = getelementptr inbounds %struct.lim_aux_data, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !303
  %31 = add i32 %30, %28
  store i32 %31, ptr %29, align 8, !tbaa !303
  br label %32

32:                                               ; preds = %26, %22, %20
  %33 = tail call ptr @xmalloc(i64 noundef 16) #20
  store ptr %6, ptr %33, align 8, !tbaa !346
  %34 = getelementptr inbounds %struct.lim_aux_data, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !348
  %36 = getelementptr inbounds %struct.depend, ptr %33, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !349
  store ptr %33, ptr %34, align 8, !tbaa !348
  br label %37

37:                                               ; preds = %17, %9, %4, %32
  %38 = phi i8 [ 1, %32 ], [ 1, %4 ], [ 0, %9 ], [ 1, %17 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !350 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !351
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !352
  store ptr %8, ptr %2, align 8, !tbaa !351
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !354
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !355
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #21
  %17 = load ptr, ptr %11, align 8, !tbaa !357
  store ptr %17, ptr %10, align 8, !tbaa !354
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !344
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mem_ref_in_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !358 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %3 = call fastcc ptr @simple_mem_ref_in_stmt(ptr noundef %0, ptr noundef nonnull %2) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1, !tbaa !45
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %5, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  %11 = tail call i32 @iterative_hash_expr(ptr noundef %10, i32 noundef 0) #20
  %12 = load ptr, ptr @memory_accesses, align 8, !tbaa !74
  %13 = load ptr, ptr %3, align 8, !tbaa !35
  %14 = tail call ptr @htab_find_with_hash(ptr noundef %12, ptr noundef %13, i32 noundef %11) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.1) #20
  br label %17

17:                                               ; preds = %16, %9, %1
  %18 = phi ptr [ null, %1 ], [ %14, %9 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @outermost_indep_loop(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !359 {
  %4 = getelementptr inbounds %struct.mem_ref, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = load i32, ptr %1, align 8, !tbaa !185
  %7 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %25, label %11

11:                                               ; preds = %9, %20
  %12 = phi ptr [ %23, %20 ], [ %0, %9 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !157
  %14 = load i32, ptr %12, align 8, !tbaa !185
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %12, ptr noundef nonnull %2) #21, !range !42
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11, %17
  %21 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %12) #21
  %22 = add i32 %21, 1
  %23 = tail call ptr @superloop_at_depth(ptr noundef nonnull %1, i32 noundef %22) #20
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %11, !llvm.loop !360

25:                                               ; preds = %20, %9
  %26 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %1, ptr noundef nonnull %2) #21, !range !42
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr null, ptr %1
  br label %29

29:                                               ; preds = %17, %25, %3
  %30 = phi ptr [ null, %3 ], [ %28, %25 ], [ %12, %17 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @stmt_cost(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !361 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 59, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !304
  br label %33

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #21, !range !42
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 21
  %12 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #21, !range !42
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

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
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #21, !range !221
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
  ]

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
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !34 !PGOFuncName !362 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !354
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !351
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !352
  store ptr %11, ptr %5, align 8, !tbaa !351
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !344
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !363 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 !PGOFuncName !364 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !365 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_indep_loop_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !366 {
  %3 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = load i32, ptr %0, align 8, !tbaa !185
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = load i32, ptr %0, align 8, !tbaa !185
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %11) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i8 @ref_indep_loop_p_1(ptr noundef nonnull %0, ptr noundef nonnull %1) #21, !range !42
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !226
  %25 = load i32, ptr %0, align 8, !tbaa !185
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
define internal fastcc noundef zeroext i8 @ref_indep_loop_p_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !367 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = load i32, ptr %0, align 8, !tbaa !185
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %7) #20
  %9 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %10 = load i32, ptr %0, align 8, !tbaa !185
  %11 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %9, i32 noundef %10) #21
  %12 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %13, ptr noundef %11) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %18 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %19 = load i32, ptr %0, align 8, !tbaa !185
  %20 = tail call fastcc ptr @VEC_htab_t_base_index(ptr noundef %18, i32 noundef %19) #21
  %21 = load ptr, ptr %12, align 8, !tbaa !164
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %4, ptr noundef %21, ptr noundef %11, ptr noundef nonnull %3) #21
  %22 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !42
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %16
  %25 = and i32 %8, 255
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %24, %33
  %28 = load i32, ptr %3, align 4, !tbaa !39
  br i1 %26, label %31, label %29

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
  %36 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !42
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %27, !llvm.loop !368

38:                                               ; preds = %33, %16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %17, ptr noundef nonnull %3) #21
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !42
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38, %48
  %42 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %43 = load i32, ptr %3, align 4, !tbaa !39
  %44 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %42, i32 noundef %43) #21
  %45 = tail call fastcc zeroext i8 @refs_independent_p(ptr noundef %1, ptr noundef %44) #21, !range !42
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call fastcc void @record_indep_loop(ptr noundef nonnull %0, ptr noundef %44, i8 noundef zeroext 0) #21
  br label %51

48:                                               ; preds = %41
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !42
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %41, !llvm.loop !369

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
define internal fastcc void @record_indep_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !34 !PGOFuncName !370 {
  %4 = icmp eq i8 %2, 0
  %5 = load i32, ptr %0, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 7
  %7 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 6
  %8 = select i1 %4, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %5) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vop_accesses(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !371 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !39
  %4 = call ptr @htab_find_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) #20
  %5 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vop_stores(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !372 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !39
  %4 = call ptr @htab_find_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) #20
  %5 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @refs_independent_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !373 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !226
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %8) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = load i32, ptr %7, align 8, !tbaa !226
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !226
  %27 = load i32, ptr %7, align 8, !tbaa !226
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %18, ptr noundef nonnull @.str.23, i32 noundef %26, i32 noundef %27) #21
  br label %29

29:                                               ; preds = %24, %20, %17
  %30 = load ptr, ptr %0, align 8, !tbaa !155
  %31 = load ptr, ptr %1, align 8, !tbaa !155
  %32 = tail call fastcc zeroext i8 @mem_refs_may_alias_p(ptr noundef %30, ptr noundef %31) #21
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr %7, align 8, !tbaa !226
  %35 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  br i1 %33, label %51, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %12, align 8, !tbaa !161
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %37, i32 noundef %34) #20
  %39 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = load i32, ptr %35, align 8, !tbaa !226
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %40, i32 noundef %41) #20
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45

45:                                               ; preds = %36
  %46 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 11, i64 1, ptr nonnull %43)
  br label %66

51:                                               ; preds = %29
  %52 = load ptr, ptr %5, align 8, !tbaa !160
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %52, i32 noundef %34) #20
  %54 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !160
  %56 = load i32, ptr %35, align 8, !tbaa !226
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %55, i32 noundef %56) #20
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %51
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !39
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
define internal fastcc zeroext i8 @mem_refs_may_alias_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !374 {
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
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @optimize, align 4, !tbaa !39
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %22, label %12

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
define internal fastcc zeroext i8 @cannot_overlap_p(ptr nocapture noundef readonly %0, i64 %1, i64 %2, i64 %3, i64 %4) unnamed_addr #0 !prof !34 !PGOFuncName !375 {
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !376
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa.struct !378
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa.struct !379
  %14 = tail call zeroext i8 @double_int_negative_p(i64 %11, i64 %13) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

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
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !380 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

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
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !381 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !382 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_level(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !383 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %6) #20
  %8 = tail call fastcc ptr @get_lim_data(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.lim_aux_data, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !384
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %12) #21
  %16 = tail call ptr @find_common_loop(ptr noundef %7, ptr noundef %15) #20
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = phi ptr [ %16, %14 ], [ %7, %10 ], [ %7, %3 ]
  %19 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %18, ptr noundef %2) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8, !tbaa !302
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %22, ptr noundef %2) #20
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 731, ptr noundef nonnull @.str.1) #20
  br label %28

28:                                               ; preds = %21, %24, %27
  %29 = getelementptr inbounds %struct.lim_aux_data, ptr %8, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !384
  %30 = getelementptr inbounds %struct.lim_aux_data, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !346
  tail call fastcc void @set_level(ptr noundef %35, ptr noundef %1, ptr noundef %2) #21
  %36 = getelementptr inbounds %struct.depend, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33, !llvm.loop !385

39:                                               ; preds = %33, %28, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_motion_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !386 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #20
  store ptr %4, ptr %3, align 8, !tbaa !35
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %6 = tail call fastcc zeroext i8 @loop_suitable_for_sm(ptr noundef %4) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @find_refs_for_sm(ptr noundef %0, ptr noundef %1, ptr noundef %5) #21
  tail call fastcc void @hoist_memory_references(ptr noundef %0, ptr noundef %5, ptr noundef %4) #21
  br label %9

9:                                                ; preds = %8, %2
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #21
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %5) #20
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  tail call fastcc void @store_motion_loop(ptr noundef nonnull %15, ptr noundef %1) #21
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !387

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
define internal fastcc noundef zeroext i8 @loop_suitable_for_sm(ptr noundef %0) unnamed_addr #17 !prof !34 !PGOFuncName !388 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #21, !range !92
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %9

5:                                                ; preds = %9
  %6 = add i32 %10, 1
  %7 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #21, !range !92
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !llvm.loop !389

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !390
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %5, label %16

16:                                               ; preds = %9, %5, %1
  %17 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_refs_for_sm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !391 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %7 = load i32, ptr %0, align 8, !tbaa !185
  %8 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %6, i32 noundef %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %5, ptr noundef %8, ptr noundef %1, ptr noundef nonnull %4) #21
  %9 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !42
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %19
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %13 = load i32, ptr %4, align 4, !tbaa !39
  %14 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %12, i32 noundef %13) #21
  %15 = tail call fastcc zeroext i8 @can_sm_ref_p(ptr noundef nonnull %0, ptr noundef %14) #21, !range !42
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %13) #20
  br label %19

19:                                               ; preds = %11, %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %20 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !42
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11, !llvm.loop !392

22:                                               ; preds = %19, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hoist_memory_references(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !393 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #21
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3, %8
  %9 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %10 = load i32, ptr %4, align 4, !tbaa !39
  %11 = tail call fastcc ptr @VEC_mem_ref_p_base_index(ptr noundef %9, i32 noundef %10) #21
  tail call fastcc void @execute_sm(ptr noundef %0, ptr noundef %2, ptr noundef %11) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #21, !range !42
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !394

14:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !395 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !34 !PGOFuncName !396 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !147
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !35
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_sm_ref_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !397 {
  %3 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = load i32, ptr %0, align 8, !tbaa !185
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !155
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !155
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 524288
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @for_each_index(ptr noundef nonnull %1, ptr noundef nonnull @may_move_till, ptr noundef nonnull %0) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %1, align 8, !tbaa !155
  %24 = tail call ptr @get_base_address(ptr noundef %23) #20
  %25 = load ptr, ptr %1, align 8, !tbaa !155
  %26 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %25) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i64, ptr %24, align 8
  %30 = and i64 %29, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !39
  %33 = icmp ne i32 %32, 3
  %34 = and i64 %29, 1048576
  %35 = icmp eq i64 %34, 0
  %36 = or i1 %33, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %28, %22
  %38 = tail call fastcc zeroext i8 @ref_always_accessed_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37, %28
  %41 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #21, !range !42
  br label %42

42:                                               ; preds = %40, %37, %8, %14, %19, %2
  %43 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 0, %14 ], [ 0, %8 ], [ 0, %37 ], [ %41, %40 ]
  ret i8 %43
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @may_move_till(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !34 !PGOFuncName !398 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 45
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %9, ptr noundef %2) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %11, ptr noundef %2) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %3
  %18 = load ptr, ptr %1, align 8, !tbaa !35
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
define internal fastcc noundef zeroext i8 @ref_always_accessed_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !399 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %1, align 8, !tbaa !155
  %6 = tail call ptr @get_base_address(ptr noundef %5) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -47
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ %6, %2 ]
  call fastcc void @get_all_locs_in_loop(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #21
  %17 = load ptr, ptr %3, align 8
  %18 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %4) #21, !range !92
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %15, %59
  %21 = phi i32 [ %60, %59 ], [ 0, %15 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.mem_ref_loc, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !231
  %25 = tail call fastcc ptr @get_lim_data(ptr noundef %24) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %59, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %23, align 8, !tbaa !231
  %29 = tail call ptr @gimple_get_lhs(ptr noundef %28) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %23, align 8, !tbaa !231
  %33 = tail call ptr @gimple_get_lhs(ptr noundef %32) #20
  %34 = tail call ptr @get_base_address(ptr noundef %33) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %34, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -47
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  br label %45

45:                                               ; preds = %36, %42
  %46 = phi ptr [ %44, %42 ], [ %34, %36 ]
  %47 = icmp eq ptr %46, %16
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load ptr, ptr %23, align 8, !tbaa !231
  %50 = tail call fastcc ptr @get_lim_data(ptr noundef %49) #21
  %51 = getelementptr inbounds %struct.lim_aux_data, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !300
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = icmp eq ptr %52, %0
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef nonnull %52, ptr noundef %0) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45, %31, %27, %56, %48, %20
  %60 = add i32 %21, 1
  %61 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %17, i32 noundef %60, ptr noundef nonnull %4) #21, !range !92
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %20, !llvm.loop !400

63:                                               ; preds = %59, %56, %54, %15
  %64 = phi i8 [ 0, %15 ], [ 1, %54 ], [ 1, %56 ], [ 0, %59 ]
  call fastcc void @VEC_mem_ref_loc_p_heap_free(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_all_locs_in_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !401 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %6 = load i32, ptr %0, align 8, !tbaa !185
  %7 = tail call fastcc ptr @VEC_bitmap_base_index(ptr noundef %5, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !226
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = tail call fastcc i32 @VEC_mem_ref_locs_p_base_length(ptr noundef %14) #21
  %16 = load i32, ptr %0, align 8, !tbaa !185
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = tail call fastcc ptr @VEC_mem_ref_locs_p_base_index(ptr noundef %14, i32 noundef %16) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !193
  %23 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %4) #21, !range !92
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %21 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !35
  tail call fastcc void @VEC_mem_ref_loc_p_heap_safe_push(ptr noundef %2, ptr noundef %27) #21
  %28 = add i32 %26, 1
  %29 = load ptr, ptr %19, align 8, !tbaa !193
  %30 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %29, i32 noundef %28, ptr noundef nonnull %4) #21, !range !92
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %25, !llvm.loop !402

32:                                               ; preds = %25, %21, %18, %12
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call fastcc void @get_all_locs_in_loop(ptr noundef nonnull %37, ptr noundef %1, ptr noundef %2) #21
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !403

41:                                               ; preds = %36, %32, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_sm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !404 {
  %4 = alloca %struct.fmt_data, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 26, i64 1, ptr nonnull %6)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = load ptr, ptr %2, align 8, !tbaa !155
  tail call void @print_generic_expr(ptr noundef %14, ptr noundef %15, i32 noundef 0) #20
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = load i32, ptr %0, align 8, !tbaa !185
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.27, i32 noundef %17) #21
  br label %19

19:                                               ; preds = %12, %8, %3
  %20 = load ptr, ptr %2, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call ptr @get_lsm_tmp_name(ptr noundef %20, i32 noundef -1) #21
  %24 = tail call ptr @make_rename_temp(ptr noundef %22, ptr noundef nonnull @lsm_tmp_name) #20
  store ptr %0, ptr %4, align 8, !tbaa !405
  %25 = getelementptr inbounds %struct.fmt_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %25, align 8, !tbaa !407
  %26 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @force_move_till, ptr noundef nonnull %4) #21
  call fastcc void @rewrite_mem_refs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %24) #21
  %27 = load ptr, ptr %2, align 8, !tbaa !155
  %28 = call ptr @unshare_expr(ptr noundef %27) #20
  %29 = call ptr @gimple_build_assign_stat(ptr noundef %24, ptr noundef %28) #20
  %30 = call fastcc ptr @init_lim_data(ptr noundef %29) #21
  store ptr %0, ptr %30, align 8, !tbaa !302
  %31 = getelementptr inbounds %struct.lim_aux_data, ptr %30, i64 0, i32 1
  store ptr %0, ptr %31, align 8, !tbaa !384
  %32 = call ptr @loop_latch_edge(ptr noundef %0) #20
  call void @gsi_insert_on_edge(ptr noundef %32, ptr noundef %29) #20
  %33 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5) #21, !range !92
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %19, %35
  %36 = phi i32 [ %41, %35 ], [ 0, %19 ]
  %37 = load ptr, ptr %2, align 8, !tbaa !155
  %38 = call ptr @unshare_expr(ptr noundef %37) #20
  %39 = call ptr @gimple_build_assign_stat(ptr noundef %38, ptr noundef %24) #20
  %40 = load ptr, ptr %5, align 8, !tbaa !35
  call void @gsi_insert_on_edge(ptr noundef %40, ptr noundef %39) #20
  %41 = add i32 %36, 1
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %41, ptr noundef nonnull %5) #21, !range !92
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %35, !llvm.loop !408

44:                                               ; preds = %35, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @force_move_till(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !prof !34 !PGOFuncName !409 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 45
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.fmt_data, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !407
  %14 = load ptr, ptr %2, align 8, !tbaa !405
  tail call fastcc void @force_move_till_op(ptr noundef %9, ptr noundef %13, ptr noundef %14) #21
  %15 = load ptr, ptr %12, align 8, !tbaa !407
  %16 = load ptr, ptr %2, align 8, !tbaa !405
  tail call fastcc void @force_move_till_op(ptr noundef %11, ptr noundef %15, ptr noundef %16) #21
  br label %17

17:                                               ; preds = %7, %3
  %18 = load ptr, ptr %1, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.fmt_data, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !407
  %21 = load ptr, ptr %2, align 8, !tbaa !405
  tail call fastcc void @force_move_till_op(ptr noundef %18, ptr noundef %20, ptr noundef %21) #21
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_mem_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !410 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !35
  call fastcc void @get_all_locs_in_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #21
  %6 = load ptr, ptr %5, align 8
  %7 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #21, !range !92
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %3 ]
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  tail call fastcc void @rewrite_mem_ref_loc(ptr noundef %11, ptr noundef %2) #21
  %12 = add i32 %10, 1
  %13 = call fastcc i32 @VEC_mem_ref_loc_p_base_iterate(ptr noundef %6, i32 noundef %12, ptr noundef nonnull %4) #21, !range !92
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9, !llvm.loop !411

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
define internal fastcc void @force_move_till_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !412 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1140, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %15) #21, !range !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call fastcc void @set_level(ptr noundef %15, ptr noundef %1, ptr noundef %2) #21
  br label %19

19:                                               ; preds = %13, %3, %5, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !34 !PGOFuncName !413 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !41
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_mem_ref_loc(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !414 {
  %3 = getelementptr inbounds %struct.mem_ref_loc, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !233
  store ptr %1, ptr %5, align 8, !tbaa !35
  %6 = load ptr, ptr %3, align 8, !tbaa !231
  tail call fastcc void @update_stmt(ptr noundef %6) #21
  ret void
}

; Function Attrs: optsize
declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !415 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !42
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

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
define internal void @move_computations_stmt(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !416 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = tail call fastcc ptr @loop_outer(ptr noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #21
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !42
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8, %16
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %13 = call fastcc ptr @get_lim_data(ptr noundef %12) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  br label %16

16:                                               ; preds = %15, %25, %42, %26
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !42
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %11, label %44, !llvm.loop !417

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.lim_aux_data, ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !303
  %22 = getelementptr inbounds %struct.lim_aux_data, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !384
  call fastcc void @clear_lim_data(ptr noundef %12) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  br label %16

26:                                               ; preds = %19
  %27 = call fastcc i32 @gimple_code(ptr noundef %12) #21, !range !41
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %16, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !39
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr nonnull %30)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %38, ptr noundef %12, i32 noundef 0, i32 noundef 0) #20
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %40 = load i32, ptr %23, align 8, !tbaa !185
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
define internal fastcc void @clear_lim_data(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !418 {
  %2 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  tail call fastcc void @free_lim_aux_data(ptr noundef %6) #21
  store ptr null, ptr %3, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lim_aux_data(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !419 {
  %2 = getelementptr inbounds %struct.lim_aux_data, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !348
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.depend, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !349
  tail call void @free(ptr noundef nonnull %6) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !420

10:                                               ; preds = %5, %1
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_mem_ref_p_heap_free() unnamed_addr #14 !prof !34 !PGOFuncName !421 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_bitmap_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !34 !PGOFuncName !422 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !170
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !35
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !423 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_htab_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !34 !PGOFuncName !424 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !180
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !35
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_htab_t_heap_free() unnamed_addr #14 !prof !34 !PGOFuncName !425 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !35
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
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{i32 0, i32 256}
!42 = !{i8 0, i8 2}
!43 = !{!"tree-ssa-loop-im.c:gimple_code"}
!44 = !{!"tree-ssa-loop-im.c:gimple_vdef"}
!45 = !{!37, !37, i64 0}
!46 = !{!"tree-ssa-loop-im.c:gimple_has_volatile_ops"}
!47 = !{!"tree-ssa-loop-im.c:is_gimple_call"}
!48 = !{!"tree-ssa-loop-im.c:gimple_call_lhs"}
!49 = !{!"tree-ssa-loop-im.c:is_gimple_assign"}
!50 = !{!"tree-ssa-loop-im.c:gimple_assign_lhs"}
!51 = !{!"tree-ssa-loop-im.c:gen_lsm_tmp_name"}
!52 = !{!"tree-ssa-loop-im.c:lsm_tmp_name_add"}
!53 = !{!"tree-ssa-loop-im.c:tree_ssa_lim_initialize"}
!54 = !{!55, !36, i64 8}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !36, i64 128, !40, i64 136, !40, i64 137, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139}
!56 = !{!57, !40, i64 32}
!57 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !36, i64 40, !40, i64 48, !37, i64 52, !37, i64 60, !40, i64 68, !40, i64 72}
!58 = !{!57, !36, i64 0}
!59 = !{!60, !36, i64 56}
!60 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !61, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96}
!61 = !{!"long", !37, i64 0}
!62 = !{!57, !36, i64 8}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!60, !40, i64 80}
!66 = distinct !{!66, !64}
!67 = !{!55, !36, i64 32}
!68 = !{!69, !36, i64 24}
!69 = !{!"loops", !40, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!70 = distinct !{!70, !64}
!71 = !{!72, !36, i64 0}
!72 = !{!"simple_bitmap_def", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!73 = !{!"tree-ssa-loop-im.c:analyze_memory_references"}
!74 = !{!75, !36, i64 0}
!75 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!76 = !{!75, !36, i64 8}
!77 = !{!75, !36, i64 16}
!78 = !{!75, !36, i64 24}
!79 = !{!75, !36, i64 32}
!80 = !{!75, !36, i64 40}
!81 = distinct !{!81, !64}
!82 = !{!75, !36, i64 48}
!83 = !{!"tree-ssa-loop-im.c:determine_invariantness"}
!84 = !{!85, !36, i64 16}
!85 = !{!"dom_walk_data", !40, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !61, i64 48, !36, i64 56}
!86 = !{!"tree-ssa-loop-im.c:store_motion"}
!87 = distinct !{!87, !64}
!88 = !{!"tree-ssa-loop-im.c:move_computations"}
!89 = !{!"tree-ssa-loop-im.c:tree_ssa_lim_finalize"}
!90 = !{!60, !36, i64 16}
!91 = distinct !{!91, !64}
!92 = !{i32 0, i32 2}
!93 = distinct !{!93, !64}
!94 = distinct !{!94, !64}
!95 = distinct !{!95, !64}
!96 = distinct !{!96, !64}
!97 = !{!"tree-ssa-loop-im.c:gimple_has_mem_ops"}
!98 = !{!"tree-ssa-loop-im.c:gimple_op"}
!99 = !{!"tree-ssa-loop-im.c:gimple_has_ops"}
!100 = !{!"tree-ssa-loop-im.c:gimple_ops"}
!101 = !{!61, !61, i64 0}
!102 = !{!"tree-ssa-loop-im.c:gimple_statement_structure"}
!103 = !{!"tree-ssa-loop-im.c:gss_for_code"}
!104 = !{!"tree-ssa-loop-im.c:gsi_start_bb"}
!105 = !{!106, !36, i64 0}
!106 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!107 = !{!106, !36, i64 8}
!108 = !{!106, !36, i64 16}
!109 = !{!"tree-ssa-loop-im.c:gsi_end_p"}
!110 = !{!"tree-ssa-loop-im.c:nonpure_call_p"}
!111 = !{!"tree-ssa-loop-im.c:gsi_stmt"}
!112 = !{!113, !36, i64 0}
!113 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!114 = !{!"tree-ssa-loop-im.c:gsi_next"}
!115 = !{!113, !36, i64 16}
!116 = !{!"tree-ssa-loop-im.c:SET_BIT"}
!117 = !{!"tree-ssa-loop-im.c:fill_always_executed_in"}
!118 = !{!119, !36, i64 8}
!119 = !{!"loop", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 16, !120, i64 24, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !121, i64 80, !121, i64 96, !37, i64 112, !37, i64 113, !40, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!120 = !{!"lpt_decision", !40, i64 0, !40, i64 4}
!121 = !{!"", !61, i64 0, !61, i64 8}
!122 = !{!119, !40, i64 36}
!123 = !{!119, !36, i64 16}
!124 = !{i64 0, i64 4, !39, i64 8, i64 8, !35}
!125 = !{i64 0, i64 8, !35}
!126 = !{!127, !36, i64 8}
!127 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !61, i64 56}
!128 = distinct !{!128, !64}
!129 = !{!60, !40, i64 96}
!130 = !{!60, !36, i64 24}
!131 = distinct !{!131, !64}
!132 = distinct !{!132, !64}
!133 = !{!"tree-ssa-loop-im.c:bb_seq"}
!134 = !{!135, !36, i64 0}
!135 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!136 = !{!"tree-ssa-loop-im.c:gimple_seq_first"}
!137 = !{!138, !36, i64 0}
!138 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!139 = !{!"tree-ssa-loop-im.c:ei_start_1"}
!140 = !{!"tree-ssa-loop-im.c:ei_cond"}
!141 = !{!"tree-ssa-loop-im.c:ei_next"}
!142 = !{!143, !40, i64 0}
!143 = !{!"", !40, i64 0, !36, i64 8}
!144 = !{!"tree-ssa-loop-im.c:ei_end_p"}
!145 = !{!"tree-ssa-loop-im.c:ei_edge"}
!146 = !{!"tree-ssa-loop-im.c:VEC_edge_base_length"}
!147 = !{!148, !40, i64 0}
!148 = !{!"VEC_edge_base", !40, i64 0, !40, i64 4, !37, i64 8}
!149 = !{!"tree-ssa-loop-im.c:ei_container"}
!150 = !{!"tree-ssa-loop-im.c:VEC_edge_base_index"}
!151 = !{!"tree-ssa-loop-im.c:memref_hash"}
!152 = !{!153, !40, i64 12}
!153 = !{!"mem_ref", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!154 = !{!"tree-ssa-loop-im.c:memref_eq"}
!155 = !{!153, !36, i64 0}
!156 = !{!"tree-ssa-loop-im.c:memref_free"}
!157 = !{!153, !36, i64 16}
!158 = !{!153, !36, i64 40}
!159 = !{!153, !36, i64 48}
!160 = !{!153, !36, i64 56}
!161 = !{!153, !36, i64 64}
!162 = !{!153, !36, i64 24}
!163 = distinct !{!163, !64}
!164 = !{!153, !36, i64 32}
!165 = !{!"tree-ssa-loop-im.c:VEC_bitmap_heap_alloc"}
!166 = !{!"tree-ssa-loop-im.c:number_of_loops"}
!167 = !{!69, !36, i64 8}
!168 = !{!"tree-ssa-loop-im.c:VEC_htab_t_heap_alloc"}
!169 = !{!"tree-ssa-loop-im.c:VEC_bitmap_base_quick_push"}
!170 = !{!171, !40, i64 0}
!171 = !{!"VEC_bitmap_base", !40, i64 0, !40, i64 4, !37, i64 8}
!172 = !{!"tree-ssa-loop-im.c:vtoe_hash"}
!173 = !{!174, !40, i64 0}
!174 = !{!"vop_to_refs_elt", !40, i64 0, !36, i64 8, !36, i64 16}
!175 = !{!"tree-ssa-loop-im.c:vtoe_eq"}
!176 = !{!"tree-ssa-loop-im.c:vtoe_free"}
!177 = !{!174, !36, i64 8}
!178 = !{!174, !36, i64 16}
!179 = !{!"tree-ssa-loop-im.c:VEC_htab_t_base_quick_push"}
!180 = !{!181, !40, i64 0}
!181 = !{!"VEC_htab_t_base", !40, i64 0, !40, i64 4, !37, i64 8}
!182 = !{!"tree-ssa-loop-im.c:gather_mem_refs_in_loops"}
!183 = distinct !{!183, !64}
!184 = distinct !{!184, !64}
!185 = !{!119, !40, i64 0}
!186 = distinct !{!186, !64}
!187 = !{!"tree-ssa-loop-im.c:create_vop_ref_mapping"}
!188 = distinct !{!188, !64}
!189 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_iterate"}
!190 = !{!191, !40, i64 0}
!191 = !{!"VEC_mem_ref_locs_p_base", !40, i64 0, !40, i64 4, !37, i64 8}
!192 = !{!"tree-ssa-loop-im.c:free_mem_ref_locs"}
!193 = !{!194, !36, i64 0}
!194 = !{!"mem_ref_locs", !36, i64 0}
!195 = distinct !{!195, !64}
!196 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_free"}
!197 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_base_iterate"}
!198 = !{!199, !40, i64 0}
!199 = !{!"VEC_mem_ref_loc_p_base", !40, i64 0, !40, i64 4, !37, i64 8}
!200 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_heap_free"}
!201 = !{!"tree-ssa-loop-im.c:VEC_loop_p_base_length"}
!202 = !{!203, !40, i64 0}
!203 = !{!"VEC_loop_p_base", !40, i64 0, !40, i64 4, !37, i64 8}
!204 = !{!"tree-ssa-loop-im.c:gather_mem_refs_stmt"}
!205 = !{!"tree-ssa-loop-im.c:fel_init"}
!206 = !{!207, !40, i64 8}
!207 = !{!"", !36, i64 0, !40, i64 8}
!208 = !{!207, !36, i64 0}
!209 = !{!119, !36, i64 48}
!210 = distinct !{!210, !64}
!211 = !{!119, !36, i64 56}
!212 = distinct !{!212, !64}
!213 = distinct !{!213, !64}
!214 = !{!"tree-ssa-loop-im.c:VEC_bitmap_base_index"}
!215 = !{!"tree-ssa-loop-im.c:loop_outer"}
!216 = !{!119, !36, i64 40}
!217 = !{!"tree-ssa-loop-im.c:fel_next"}
!218 = distinct !{!218, !64}
!219 = !{!"tree-ssa-loop-im.c:gimple_vuse"}
!220 = !{!"tree-ssa-loop-im.c:simple_mem_ref_in_stmt"}
!221 = !{i32 0, i32 65536}
!222 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_length"}
!223 = !{!224, !40, i64 0}
!224 = !{!"VEC_mem_ref_p_base", !40, i64 0, !40, i64 4, !37, i64 8}
!225 = !{!"tree-ssa-loop-im.c:mem_ref_alloc"}
!226 = !{!153, !40, i64 8}
!227 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_heap_safe_push"}
!228 = !{!"tree-ssa-loop-im.c:mark_ref_stored"}
!229 = distinct !{!229, !64}
!230 = !{!"tree-ssa-loop-im.c:record_mem_ref_loc"}
!231 = !{!232, !36, i64 8}
!232 = !{!"mem_ref_loc", !36, i64 0, !36, i64 8}
!233 = !{!232, !36, i64 0}
!234 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs_code"}
!235 = !{!"tree-ssa-loop-im.c:gimple_assign_lhs_ptr"}
!236 = !{!"tree-ssa-loop-im.c:get_gimple_rhs_class"}
!237 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs1"}
!238 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs1_ptr"}
!239 = !{!"tree-ssa-loop-im.c:gimple_expr_code"}
!240 = !{!"tree-ssa-loop-im.c:gimple_op_ptr"}
!241 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_heap_reserve"}
!242 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_quick_push"}
!243 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_space"}
!244 = !{!224, !40, i64 4}
!245 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_length"}
!246 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_safe_grow_cleared"}
!247 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_index"}
!248 = !{!"tree-ssa-loop-im.c:mem_ref_locs_alloc"}
!249 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_replace"}
!250 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_heap_safe_push"}
!251 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_safe_grow"}
!252 = !{}
!253 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_address"}
!254 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_heap_reserve_exact"}
!255 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_locs_p_base_space"}
!256 = !{!191, !40, i64 4}
!257 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_heap_reserve"}
!258 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_base_quick_push"}
!259 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_loc_p_base_space"}
!260 = !{!199, !40, i64 4}
!261 = !{!"tree-ssa-loop-im.c:VEC_int_heap_alloc"}
!262 = !{!"tree-ssa-loop-im.c:VEC_int_base_quick_push"}
!263 = !{!264, !40, i64 0}
!264 = !{!"VEC_int_base", !40, i64 0, !40, i64 4, !37, i64 8}
!265 = !{!"tree-ssa-loop-im.c:VEC_loop_p_base_index"}
!266 = !{!"tree-ssa-loop-im.c:VEC_int_base_iterate"}
!267 = !{!"tree-ssa-loop-im.c:get_loop"}
!268 = !{!"tree-ssa-loop-im.c:VEC_int_heap_free"}
!269 = !{!"tree-ssa-loop-im.c:create_vop_ref_mapping_loop"}
!270 = distinct !{!270, !64}
!271 = distinct !{!271, !64}
!272 = !{!"tree-ssa-loop-im.c:bmp_iter_set_init"}
!273 = !{!274, !36, i64 0}
!274 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24}
!275 = !{!276, !36, i64 0}
!276 = !{!"", !36, i64 0, !36, i64 8, !40, i64 16, !61, i64 24}
!277 = !{!276, !36, i64 8}
!278 = !{!279, !40, i64 16}
!279 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 24}
!280 = !{!276, !40, i64 16}
!281 = !{!276, !61, i64 24}
!282 = !{!"tree-ssa-loop-im.c:bmp_iter_set"}
!283 = distinct !{!283, !64}
!284 = distinct !{!284, !64}
!285 = !{!279, !36, i64 0}
!286 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_base_index"}
!287 = !{!"tree-ssa-loop-im.c:add_vop_ref_mapping"}
!288 = distinct !{!288, !64}
!289 = !{!"tree-ssa-loop-im.c:bmp_iter_next"}
!290 = !{!"tree-ssa-loop-im.c:VEC_htab_t_base_index"}
!291 = !{!"tree-ssa-loop-im.c:bmp_iter_and_compl_init"}
!292 = distinct !{!292, !64}
!293 = !{!"tree-ssa-loop-im.c:bmp_iter_and_compl"}
!294 = distinct !{!294, !64}
!295 = distinct !{!295, !64}
!296 = distinct !{!296, !64}
!297 = !{!"tree-ssa-loop-im.c:record_vop_access"}
!298 = !{!"tree-ssa-loop-im.c:determine_invariantness_stmt"}
!299 = !{i32 0, i32 3}
!300 = !{!301, !36, i64 16}
!301 = !{!"lim_aux_data", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !36, i64 32}
!302 = !{!301, !36, i64 0}
!303 = !{!301, !40, i64 24}
!304 = !{!305, !40, i64 8}
!305 = !{!"param_info", !36, i64 0, !40, i64 8, !37, i64 12, !40, i64 16, !40, i64 20, !36, i64 24}
!306 = distinct !{!306, !64}
!307 = !{!"tree-ssa-loop-im.c:loop_depth"}
!308 = !{!"tree-ssa-loop-im.c:init_lim_data"}
!309 = !{!"tree-ssa-loop-im.c:gimple_assign_rhs2"}
!310 = !{!"tree-ssa-loop-im.c:outermost_invariant_loop"}
!311 = !{!"tree-ssa-loop-im.c:loop_containing_stmt"}
!312 = !{!"tree-ssa-loop-im.c:rewrite_reciprocal"}
!313 = distinct !{!313, !64}
!314 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!315 = !{!"tree-ssa-loop-im.c:has_single_use"}
!316 = !{!317, !36, i64 8}
!317 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!318 = !{!"tree-ssa-loop-im.c:rewrite_bittest"}
!319 = !{!"tree-ssa-loop-im.c:determine_max_movement"}
!320 = distinct !{!320, !64}
!321 = !{!"tree-ssa-loop-im.c:set_profitable_level"}
!322 = !{!"tree-ssa-loop-im.c:gimple_num_ops"}
!323 = !{!"tree-ssa-loop-im.c:gimple_bb"}
!324 = !{!"tree-ssa-loop-im.c:get_lim_data"}
!325 = !{!"tree-ssa-loop-im.c:make_ssa_name"}
!326 = !{!"tree-ssa-loop-im.c:gimple_assign_set_lhs"}
!327 = !{!"tree-ssa-loop-im.c:gimple_set_op"}
!328 = !{!"tree-ssa-loop-im.c:is_gimple_debug"}
!329 = !{!"tree-ssa-loop-im.c:single_imm_use"}
!330 = !{!"tree-ssa-loop-im.c:gimple_cond_lhs"}
!331 = !{!"tree-ssa-loop-im.c:gimple_cond_code"}
!332 = !{!"tree-ssa-loop-im.c:gimple_cond_rhs"}
!333 = !{!"tree-ssa-loop-im.c:set_ssa_use_from_ptr"}
!334 = !{!317, !36, i64 24}
!335 = !{!"tree-ssa-loop-im.c:gimple_cond_set_rhs"}
!336 = !{!"tree-ssa-loop-im.c:delink_imm_use"}
!337 = !{!317, !36, i64 0}
!338 = !{!"tree-ssa-loop-im.c:link_imm_use"}
!339 = !{!"tree-ssa-loop-im.c:link_imm_use_to_list"}
!340 = !{!"tree-ssa-loop-im.c:op_iter_init_tree"}
!341 = !{!342, !40, i64 4}
!342 = !{!"ssa_operand_iterator_d", !37, i64 0, !40, i64 4, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32}
!343 = !{!"tree-ssa-loop-im.c:op_iter_done"}
!344 = !{!342, !37, i64 0}
!345 = !{!"tree-ssa-loop-im.c:add_dependency"}
!346 = !{!347, !36, i64 0}
!347 = !{!"depend", !36, i64 0, !36, i64 8}
!348 = !{!301, !36, i64 32}
!349 = !{!347, !36, i64 8}
!350 = !{!"tree-ssa-loop-im.c:op_iter_next_tree"}
!351 = !{!342, !36, i64 16}
!352 = !{!353, !36, i64 0}
!353 = !{!"use_optype_d", !36, i64 0, !317, i64 8}
!354 = !{!342, !36, i64 8}
!355 = !{!356, !36, i64 8}
!356 = !{!"def_optype_d", !36, i64 0, !36, i64 8}
!357 = !{!356, !36, i64 0}
!358 = !{!"tree-ssa-loop-im.c:mem_ref_in_stmt"}
!359 = !{!"tree-ssa-loop-im.c:outermost_indep_loop"}
!360 = distinct !{!360, !64}
!361 = !{!"tree-ssa-loop-im.c:stmt_cost"}
!362 = !{!"tree-ssa-loop-im.c:op_iter_init"}
!363 = !{!"tree-ssa-loop-im.c:gimple_use_ops"}
!364 = !{!"tree-ssa-loop-im.c:get_use_from_ptr"}
!365 = !{!"tree-ssa-loop-im.c:get_def_from_ptr"}
!366 = !{!"tree-ssa-loop-im.c:ref_indep_loop_p"}
!367 = !{!"tree-ssa-loop-im.c:ref_indep_loop_p_1"}
!368 = distinct !{!368, !64}
!369 = distinct !{!369, !64}
!370 = !{!"tree-ssa-loop-im.c:record_indep_loop"}
!371 = !{!"tree-ssa-loop-im.c:get_vop_accesses"}
!372 = !{!"tree-ssa-loop-im.c:get_vop_stores"}
!373 = !{!"tree-ssa-loop-im.c:refs_independent_p"}
!374 = !{!"tree-ssa-loop-im.c:mem_refs_may_alias_p"}
!375 = !{!"tree-ssa-loop-im.c:cannot_overlap_p"}
!376 = !{!377, !40, i64 24}
!377 = !{!"affine_tree_combination", !36, i64 0, !121, i64 8, !40, i64 24, !37, i64 32, !36, i64 224}
!378 = !{i64 0, i64 8, !101, i64 8, i64 8, !101}
!379 = !{i64 0, i64 8, !101}
!380 = !{!"tree-ssa-loop-im.c:gimple_references_memory_p"}
!381 = !{!"tree-ssa-loop-im.c:gimple_call_fndecl"}
!382 = !{!"tree-ssa-loop-im.c:gimple_call_fn"}
!383 = !{!"tree-ssa-loop-im.c:set_level"}
!384 = !{!301, !36, i64 8}
!385 = distinct !{!385, !64}
!386 = !{!"tree-ssa-loop-im.c:store_motion_loop"}
!387 = distinct !{!387, !64}
!388 = !{!"tree-ssa-loop-im.c:loop_suitable_for_sm"}
!389 = distinct !{!389, !64}
!390 = !{!127, !40, i64 48}
!391 = !{!"tree-ssa-loop-im.c:find_refs_for_sm"}
!392 = distinct !{!392, !64}
!393 = !{!"tree-ssa-loop-im.c:hoist_memory_references"}
!394 = distinct !{!394, !64}
!395 = !{!"tree-ssa-loop-im.c:VEC_edge_heap_free"}
!396 = !{!"tree-ssa-loop-im.c:VEC_edge_base_iterate"}
!397 = !{!"tree-ssa-loop-im.c:can_sm_ref_p"}
!398 = !{!"tree-ssa-loop-im.c:may_move_till"}
!399 = !{!"tree-ssa-loop-im.c:ref_always_accessed_p"}
!400 = distinct !{!400, !64}
!401 = !{!"tree-ssa-loop-im.c:get_all_locs_in_loop"}
!402 = distinct !{!402, !64}
!403 = distinct !{!403, !64}
!404 = !{!"tree-ssa-loop-im.c:execute_sm"}
!405 = !{!406, !36, i64 0}
!406 = !{!"fmt_data", !36, i64 0, !36, i64 8}
!407 = !{!406, !36, i64 8}
!408 = distinct !{!408, !64}
!409 = !{!"tree-ssa-loop-im.c:force_move_till"}
!410 = !{!"tree-ssa-loop-im.c:rewrite_mem_refs"}
!411 = distinct !{!411, !64}
!412 = !{!"tree-ssa-loop-im.c:force_move_till_op"}
!413 = !{!"tree-ssa-loop-im.c:gimple_nop_p"}
!414 = !{!"tree-ssa-loop-im.c:rewrite_mem_ref_loc"}
!415 = !{!"tree-ssa-loop-im.c:update_stmt"}
!416 = !{!"tree-ssa-loop-im.c:move_computations_stmt"}
!417 = distinct !{!417, !64}
!418 = !{!"tree-ssa-loop-im.c:clear_lim_data"}
!419 = !{!"tree-ssa-loop-im.c:free_lim_aux_data"}
!420 = distinct !{!420, !64}
!421 = !{!"tree-ssa-loop-im.c:VEC_mem_ref_p_heap_free"}
!422 = !{!"tree-ssa-loop-im.c:VEC_bitmap_base_iterate"}
!423 = !{!"tree-ssa-loop-im.c:VEC_bitmap_heap_free"}
!424 = !{!"tree-ssa-loop-im.c:VEC_htab_t_base_iterate"}
!425 = !{!"tree-ssa-loop-im.c:VEC_htab_t_heap_free"}
