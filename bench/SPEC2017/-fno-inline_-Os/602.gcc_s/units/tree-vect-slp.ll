; ModuleID = 'tree-vect-slp.c'
source_filename = "tree-vect-slp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.insn_data = type { ptr, %union.anon.2, ptr, ptr, i8, i8, i8, i8 }
%union.anon.2 = type { ptr }
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
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct._slp_instance = type { ptr, i32, i32, %struct.anon, ptr, ptr, ptr }
%struct.anon = type { i32, i32 }
%struct._slp_tree = type { ptr, ptr, ptr, ptr, i32, %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct._bb_vec_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon.1, i32, ptr }
%struct.anon.1 = type { i32, i32 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_slp_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_slp_instance_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }

@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"=== vect_analyze_slp ===\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to SLP the basic block.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Build SLP failed: unsupported data-type \00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Build SLP failed: unrolling required in basic block SLP\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Build SLP failed: unsupported load permutation \00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Build SLP for \00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Build SLP failed: not GIMPLE_ASSIGN nor GIMPLE_CALL\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"SLP with multiple types \00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Build SLP failed: no optab.\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Build SLP failed: op not supported by target.\00", align 1
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.12 = private unnamed_addr constant [47 x i8] c"Build SLP failed: different operation in stmt \00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Build SLP failed: different shift arguments in \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"Build SLP failed: strided loads have gaps \00", align 1
@.str.15 = private unnamed_addr constant [86 x i8] c"Build SLP failed: the number of interleaved loads is greater than the SLP group size \00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Build SLP failed: unsupported unaligned load \00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Build SLP failed: not strided load \00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Build SLP failed: operation\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" unsupported \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [38 x i8] c"Build SLP failed: can't find def for \00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"Build SLP failed: some of the stmts are in a pattern, and others are not \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Unsupported pattern.\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"unsupported defining stmt: \00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Build SLP failed: two constant oprnds in stmt\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Build SLP failed: different types \00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Build SLP failed: illegal type of def \00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Load permutation \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Build SLP failed: unsupported data permutation \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"node \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"\0A\09stmt %d \00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"=== vect_make_slp_decision ===\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"Decided to SLP %d instances. Unrolling factor %d\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"=== vect_detect_hybrid_slp ===\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"===vect_slp_analyze_bb===\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [55 x i8] c"not vectorized: too many instructions in basic block.\0A\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"not vectorized: unhandled data-ref in basic block.\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"not vectorized: not enough data-refs in basic block.\0A\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"not vectorized: bad data alignment in basic block.\0A\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"not vectorized: unhandled data dependence in basic block.\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"not vectorized: unhandled data access in basic block.\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"not vectorized: unsupported alignment in basic block.\0A\00", align 1
@.str.46 = private unnamed_addr constant [66 x i8] c"not vectorized: failed to find SLP opportunities in basic block.\0A\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"not vectorized: bad operation in basic block.\0A\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"Basic block will be vectorized using SLP\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"tree-vect-slp.c\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"=== vect_update_slp_costs_according_to_vf ===\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.51 = private unnamed_addr constant [33 x i8] c"no builtin for vect permute for \00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"unsupported vect permute \00", align 1
@vect_get_mask_element.number_of_mask_fixes = internal unnamed_addr global i32 1, align 4
@vect_get_mask_element.mask_fixed = internal unnamed_addr global i1 false, align 1
@vect_get_mask_element.needs_first_vector = internal unnamed_addr global i1 false, align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"permutation requires at least two vectors \00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"permutation requires at least three vectors \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [29 x i8] c"vectorizing stmts using SLP.\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"------>vectorizing SLP node starting from: \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"SLPing BB\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"------>SLPing statement: \00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"BASIC BLOCK VECTORIZED\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @find_bb_location(ptr noundef %0) local_unnamed_addr #0 !prof !131 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4, !prof !132

4:                                                ; preds = %1
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %0) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14, !prof !134

7:                                                ; preds = %4, %11
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %9 = tail call fastcc i32 @gimple_location(ptr noundef %8) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14, !prof !135

11:                                               ; preds = %7
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %12 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %14, !prof !136, !llvm.loop !137

14:                                               ; preds = %11, %7, %4, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 0, %11 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #2 !prof !139 !PGOFuncName !140 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !146
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !148 !PGOFuncName !149 {
  %2 = load ptr, ptr %0, align 8, !tbaa !141
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !150 !PGOFuncName !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !141
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !154 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !156
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #2 !prof !157 !PGOFuncName !158 {
  %2 = load ptr, ptr %0, align 8, !tbaa !141
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  store ptr %4, ptr %0, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !139 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !161
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !165

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !166

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !167
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !139 !PGOFuncName !169 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !166

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !170
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_free_slp_instance(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !172 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  tail call fastcc void @vect_free_slp_tree(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 4
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %3) #20
  %4 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_slp_tree_heap_free(ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_free_slp_tree(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !176 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !177
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @vect_free_slp_tree(ptr noundef nonnull %4) #20
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @vect_free_slp_tree(ptr noundef nonnull %9) #20
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %13) #20
  %14 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !180
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %14) #20
  br label %18

18:                                               ; preds = %17, %12
  tail call void @free(ptr noundef nonnull %0) #20
  br label %19

19:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !172 !PGOFuncName !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_slp_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !172 !PGOFuncName !183 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !131 !PGOFuncName !184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !132

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_analyze_slp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !185 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !186

6:                                                ; preds = %2
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %8 = tail call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 1
  %13 = select i1 %10, ptr %12, ptr %11, !prof !187
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3) #20, !range !188
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17, !prof !189

17:                                               ; preds = %9, %17
  %18 = phi i8 [ %23, %17 ], [ 0, %9 ]
  %19 = phi i32 [ %24, %17 ], [ 0, %9 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !182
  %21 = tail call fastcc zeroext i8 @vect_analyze_slp_instance(ptr noundef %0, ptr noundef %1, ptr noundef %20) #20, !range !133
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 %18, i8 1, !prof !190
  %24 = add i32 %19, 1
  %25 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %14, i32 noundef %24, ptr noundef nonnull %3) #20, !range !188
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !prof !191, !llvm.loop !192

27:                                               ; preds = %17
  %28 = icmp ne i8 %23, 0
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi i1 [ false, %9 ], [ %28, %27 ]
  %31 = icmp eq ptr %1, null
  %32 = select i1 %31, i1 true, i1 %30
  br i1 %32, label %39, label %33, !prof !193

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36, !prof !194

36:                                               ; preds = %33
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %38 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 30, i64 1, ptr %37)
  br label %39

39:                                               ; preds = %29, %33, %36
  %40 = phi i8 [ 0, %36 ], [ 0, %33 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %40
}

; Function Attrs: optsize
declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !195 !PGOFuncName !196 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !197

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !198
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !200

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !182
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_analyze_slp_instance(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 !prof !201 !PGOFuncName !202 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %10 = tail call ptr @xmalloc(i64 noundef 48) #21
  store ptr %10, ptr %4, align 8, !tbaa !182
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #20
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %14 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %2) #20
  %15 = getelementptr inbounds %struct._stmt_vec_info, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = getelementptr inbounds %struct.data_reference, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !207
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %20) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30, !prof !212

23:                                               ; preds = %3
  %24 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %28 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %27)
  %29 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_generic_expr(ptr noundef %29, ptr noundef %20, i32 noundef 2) #21
  br label %116

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1023
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = trunc i64 %35 to i32
  %37 = icmp ne ptr %0, null
  br i1 %37, label %38, label %41, !prof !212

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !213
  br label %41

41:                                               ; preds = %30, %38
  %42 = phi i32 [ %40, %38 ], [ %36, %30 ]
  %43 = tail call i32 @least_common_multiple(i32 noundef %36, i32 noundef %13) #21
  %44 = udiv i32 %43, %13
  %45 = icmp eq i32 %44, 1
  %46 = or i1 %37, %45
  br i1 %46, label %53, label %47, !prof !215

47:                                               ; preds = %41
  %48 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %116, label %50, !prof !190

50:                                               ; preds = %47
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %52 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 55, i64 1, ptr %51)
  br label %116

53:                                               ; preds = %41
  %54 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %13) #20
  %55 = getelementptr inbounds %struct._slp_tree, ptr %10, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !216
  %56 = icmp eq ptr %2, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %61, %57 ], [ %2, %53 ]
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %55, ptr noundef nonnull %58) #20
  %59 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %58) #20
  %60 = getelementptr inbounds %struct._stmt_vec_info, ptr %59, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !217
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %57, !llvm.loop !218

63:                                               ; preds = %57, %53
  %64 = getelementptr inbounds %struct._slp_tree, ptr %10, i64 0, i32 3
  %65 = mul i32 %44, %13
  %66 = udiv i32 %65, %36
  %67 = mul i32 %13, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %64, i8 0, i64 20, i1 false)
  %68 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %67) #20
  store ptr %68, ptr %8, align 8, !tbaa !182
  %69 = tail call fastcc ptr @VEC_slp_tree_heap_alloc(i32 noundef %13) #20
  store ptr %69, ptr %9, align 8, !tbaa !182
  %70 = call fastcc zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %66, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %42) #20, !range !133
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %115, label %72

72:                                               ; preds = %63
  %73 = call ptr @xmalloc(i64 noundef 48) #21
  store ptr %10, ptr %73, align 8, !tbaa !173
  %74 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 1
  store i32 %13, ptr %74, align 8, !tbaa !219
  %75 = load i32, ptr %7, align 4, !tbaa !205
  %76 = icmp ugt i32 %75, %36
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 @least_common_multiple(i32 noundef %75, i32 noundef %13) #21
  %79 = udiv i32 %78, %13
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i32 [ %79, %77 ], [ %44, %72 ]
  %82 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 2
  store i32 %81, ptr %82, align 4, !tbaa !220
  %83 = load i32, ptr %6, align 4, !tbaa !205
  %84 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 3
  store i32 %83, ptr %84, align 8, !tbaa !221
  %85 = load i32, ptr %5, align 4, !tbaa !205
  %86 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 3, i32 1
  store i32 %85, ptr %86, align 4, !tbaa !222
  %87 = load ptr, ptr %9, align 8
  %88 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 5
  store ptr %87, ptr %88, align 8, !tbaa !223
  %89 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 6
  store ptr null, ptr %89, align 8, !tbaa !224
  %90 = load ptr, ptr %8, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct._slp_instance, ptr %73, i64 0, i32 4
  store ptr %90, ptr %91, align 8, !tbaa !225
  %92 = call fastcc i32 @VEC_slp_tree_base_length(ptr noundef %87) #20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %80
  %95 = call fastcc zeroext i8 @vect_supported_load_permutation_p(ptr noundef nonnull %73, i32 noundef %13, ptr noundef %90) #20, !range !133
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %102 = call i64 @fwrite(ptr nonnull @.str.4, i64 47, i64 1, ptr %101)
  %103 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %103, ptr noundef %2, i32 noundef 0, i32 noundef 2) #21
  br label %104

104:                                              ; preds = %100, %97
  call void @vect_free_slp_instance(ptr noundef nonnull %73) #20
  br label %116

105:                                              ; preds = %94
  %106 = call fastcc ptr @vect_find_first_load_in_slp_instance(ptr noundef nonnull %73) #20
  store ptr %106, ptr %89, align 8, !tbaa !224
  br label %108

107:                                              ; preds = %80
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %91) #20
  br label %108

108:                                              ; preds = %107, %105
  %109 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 2
  %110 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %111 = select i1 %37, ptr %110, ptr %109
  call fastcc void @VEC_slp_instance_heap_safe_push(ptr noundef nonnull %111, ptr noundef nonnull %73) #20
  %112 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  call fastcc void @vect_print_slp_tree(ptr noundef nonnull %10) #20
  br label %116

115:                                              ; preds = %63
  call fastcc void @vect_free_slp_tree(ptr noundef nonnull %10) #20
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %8) #20
  call fastcc void @VEC_slp_tree_heap_free(ptr noundef nonnull %9) #20
  br label %116

116:                                              ; preds = %108, %114, %47, %50, %23, %26, %115, %104
  %117 = phi i8 [ 0, %104 ], [ 0, %115 ], [ 0, %26 ], [ 0, %23 ], [ 0, %50 ], [ 0, %47 ], [ 1, %114 ], [ 1, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i8 %117
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !226 !PGOFuncName !227 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4, !prof !228

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #20
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10, !prof !228

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 629, ptr noundef nonnull @.str.6) #21
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = add i32 %2, -1
  %13 = tail call fastcc ptr @VEC_vec_void_p_base_index(ptr noundef %11, i32 noundef %12) #20
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @least_common_multiple(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %0) unnamed_addr #5 !prof !131 !PGOFuncName !229 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !230 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !182
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !231 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_slp_tree_heap_alloc(i32 noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !232 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #5 !prof !172 !PGOFuncName !233 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  %25 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %3) #20
  store ptr %25, ptr %12, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  %26 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %3) #20
  store ptr %26, ptr %13, align 8, !tbaa !182
  %27 = load ptr, ptr %2, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct._slp_tree, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  %30 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %29, i32 noundef 0) #20
  store ptr %30, ptr %14, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store i32 0, ptr %15, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  store i32 0, ptr %16, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #19
  store ptr null, ptr %17, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #19
  store ptr null, ptr %18, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #19
  store ptr null, ptr %19, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #19
  store i8 0, ptr %20, align 1, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #19
  store i8 0, ptr %21, align 1, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #19
  %31 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %14) #20, !range !188
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %315, label %33

33:                                               ; preds = %11
  %34 = zext i32 %10 to i64
  %35 = icmp eq ptr %1, null
  br label %36

36:                                               ; preds = %33, %305
  %37 = phi i32 [ 0, %33 ], [ %308, %305 ]
  %38 = phi i8 [ 0, %33 ], [ %307, %305 ]
  %39 = phi i32 [ 0, %33 ], [ %201, %305 ]
  %40 = phi i8 [ 0, %33 ], [ %306, %305 ]
  %41 = phi i8 [ 0, %33 ], [ %200, %305 ]
  %42 = phi ptr [ null, %33 ], [ %199, %305 ]
  %43 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load ptr, ptr %14, align 8, !tbaa !182
  br label %52

47:                                               ; preds = %36
  %48 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %49 = call i64 @fwrite(ptr nonnull @.str.7, i64 14, i64 1, ptr %48)
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %51 = load ptr, ptr %14, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %50, ptr noundef %51, i32 noundef 0, i32 noundef 2) #21
  br label %52

52:                                               ; preds = %45, %47
  %53 = phi ptr [ %46, %45 ], [ %51, %47 ]
  %54 = call ptr @gimple_get_lhs(ptr noundef %53) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %362, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %61 = call i64 @fwrite(ptr nonnull @.str.8, i64 51, i64 1, ptr %60)
  %62 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %62, ptr noundef %53, i32 noundef 0, i32 noundef 2) #21
  br label %362

63:                                               ; preds = %52
  %64 = call ptr @vect_get_smallest_scalar_type(ptr noundef %53, ptr noundef nonnull %22, ptr noundef nonnull %22) #21
  %65 = call ptr @get_vectype_for_scalar_type(ptr noundef %64) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %362, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %72 = call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %71)
  %73 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_generic_expr(ptr noundef %73, ptr noundef %64, i32 noundef 2) #21
  br label %362

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1023
  %78 = zext nneg i32 %77 to i64
  %79 = lshr i64 %34, %78
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %93, label %82

82:                                               ; preds = %74
  %83 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %87 = call i64 @fwrite(ptr nonnull @.str.9, i64 24, i64 1, ptr %86)
  br label %88

88:                                               ; preds = %85, %82
  br i1 %35, label %89, label %362

89:                                               ; preds = %88
  %90 = load i32, ptr %75, align 4
  %91 = and i32 %90, 1023
  %92 = zext nneg i32 %91 to i64
  br label %93

93:                                               ; preds = %89, %74
  %94 = phi i64 [ %92, %89 ], [ %78, %74 ]
  %95 = load i32, ptr %7, align 4, !tbaa !205
  %96 = zext i32 %95 to i64
  %97 = shl nuw i64 1, %94
  %98 = icmp ugt i64 %97, %96
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = trunc i64 %97 to i32
  store i32 %100, ptr %7, align 4, !tbaa !205
  br label %101

101:                                              ; preds = %99, %93
  %102 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %53) #20, !range !133
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %53) #20, !range !234
  br label %106

106:                                              ; preds = %101, %104
  %107 = phi i32 [ %105, %104 ], [ 59, %101 ]
  %108 = icmp eq i32 %37, 0
  br i1 %108, label %109, label %164

109:                                              ; preds = %106
  %110 = add nsw i32 %107, -83
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %112, label %197

112:                                              ; preds = %109
  %113 = load i64, ptr %65, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 @vector_type_mode(ptr noundef nonnull %65) #21
  br label %122

118:                                              ; preds = %112
  %119 = load i32, ptr %75, align 4
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br label %122

122:                                              ; preds = %118, %116
  %123 = phi i32 [ %117, %116 ], [ %121, %118 ]
  %124 = call ptr @optab_for_tree_code(i32 noundef %107, ptr noundef nonnull %65, i32 noundef 2) #21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = sext i32 %123 to i64
  %128 = getelementptr inbounds %struct.optab_d, ptr %124, i64 0, i32 4, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !235
  %130 = icmp eq i32 %129, 2956
  br i1 %130, label %131, label %197

131:                                              ; preds = %126, %122
  %132 = call ptr @optab_for_tree_code(i32 noundef %107, ptr noundef nonnull %65, i32 noundef 1) #21
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %362, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %139 = call i64 @fwrite(ptr nonnull @.str.10, i64 27, i64 1, ptr %138)
  br label %362

140:                                              ; preds = %131
  %141 = sext i32 %123 to i64
  %142 = getelementptr inbounds %struct.optab_d, ptr %132, i64 0, i32 4, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !235
  %144 = icmp eq i32 %143, 2956
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %362, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %150 = call i64 @fwrite(ptr nonnull @.str.11, i64 45, i64 1, ptr %149)
  br label %362

151:                                              ; preds = %140
  %152 = sext i32 %143 to i64
  %153 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %152, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !237
  %155 = getelementptr inbounds %struct.insn_operand_data, ptr %154, i64 2, i32 2
  %156 = load i16, ptr %155, align 8
  %157 = zext i16 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !156
  %160 = add i8 %159, -12
  %161 = icmp ult i8 %160, 6
  br i1 %161, label %197, label %162

162:                                              ; preds = %151
  %163 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %53) #20
  br label %197

164:                                              ; preds = %106
  %165 = icmp eq i32 %39, %107
  br i1 %165, label %181, label %166

166:                                              ; preds = %164
  %167 = icmp ne i32 %39, 44
  %168 = icmp ne i32 %107, 43
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = icmp ne i32 %39, 43
  %172 = icmp ne i32 %107, 44
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %362, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %179 = call i64 @fwrite(ptr nonnull @.str.12, i64 46, i64 1, ptr %178)
  %180 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %180, ptr noundef %53, i32 noundef 0, i32 noundef 2) #21
  br label %362

181:                                              ; preds = %170, %166, %164
  %182 = icmp eq i8 %41, 0
  br i1 %182, label %197, label %183

183:                                              ; preds = %181
  %184 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %53) #20
  %185 = call i32 @operand_equal_p(ptr noundef %42, ptr noundef %184, i32 noundef 0) #21
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %14, align 8, !tbaa !182
  br label %197

189:                                              ; preds = %183
  %190 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %362, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %194 = call i64 @fwrite(ptr nonnull @.str.13, i64 47, i64 1, ptr %193)
  %195 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %196 = load ptr, ptr %14, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %195, ptr noundef %196, i32 noundef 0, i32 noundef 2) #21
  br label %362

197:                                              ; preds = %187, %151, %181, %109, %162, %126
  %198 = phi ptr [ %53, %162 ], [ %53, %126 ], [ %53, %109 ], [ %188, %187 ], [ %53, %181 ], [ %53, %151 ]
  %199 = phi ptr [ %163, %162 ], [ %42, %126 ], [ %42, %109 ], [ %42, %187 ], [ %42, %181 ], [ %42, %151 ]
  %200 = phi i8 [ 1, %162 ], [ %41, %126 ], [ %41, %109 ], [ %41, %187 ], [ 0, %181 ], [ %41, %151 ]
  %201 = phi i32 [ %107, %162 ], [ %107, %126 ], [ %107, %109 ], [ %39, %187 ], [ %39, %181 ], [ %107, %151 ]
  %202 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %203 = getelementptr inbounds %struct._stmt_vec_info, ptr %202, i64 0, i32 17
  %204 = load ptr, ptr %203, align 8, !tbaa !239
  %205 = icmp eq ptr %204, null
  br i1 %205, label %281, label %206

206:                                              ; preds = %197
  %207 = load i64, ptr %54, align 8
  %208 = and i64 %207, 65535
  %209 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !205
  %211 = icmp eq i32 %210, 4
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load ptr, ptr %2, align 8, !tbaa !182
  %214 = call fastcc zeroext i8 @vect_get_and_check_slp_defs(ptr noundef %0, ptr noundef %1, ptr noundef %213, ptr noundef %198, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %19, i32 noundef %6, ptr noundef nonnull %20, ptr noundef nonnull %21) #20, !range !133
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %362, label %305

216:                                              ; preds = %206
  %217 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %218 = getelementptr inbounds %struct._stmt_vec_info, ptr %217, i64 0, i32 17
  %219 = load ptr, ptr %218, align 8, !tbaa !239
  %220 = icmp eq ptr %219, %198
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %223 = getelementptr inbounds %struct._stmt_vec_info, ptr %222, i64 0, i32 21
  %224 = load i32, ptr %223, align 8, !tbaa !240
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %221, %216
  %227 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %228 = getelementptr inbounds %struct._stmt_vec_info, ptr %227, i64 0, i32 17
  %229 = load ptr, ptr %228, align 8, !tbaa !239
  %230 = icmp eq ptr %229, %198
  br i1 %230, label %243, label %231

231:                                              ; preds = %226
  %232 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %233 = getelementptr inbounds %struct._stmt_vec_info, ptr %232, i64 0, i32 21
  %234 = load i32, ptr %233, align 8, !tbaa !240
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %243, label %236

236:                                              ; preds = %231, %221
  %237 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %362, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %241 = call i64 @fwrite(ptr nonnull @.str.14, i64 42, i64 1, ptr %240)
  %242 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %242, ptr noundef %198, i32 noundef 0, i32 noundef 2) #21
  br label %362

243:                                              ; preds = %231, %226
  %244 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %245 = getelementptr inbounds %struct._stmt_vec_info, ptr %244, i64 0, i32 19
  %246 = load i32, ptr %245, align 8, !tbaa !203
  %247 = mul i32 %80, %3
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %243
  %250 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %362, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %254 = call i64 @fwrite(ptr nonnull @.str.15, i64 85, i64 1, ptr %253)
  %255 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %255, ptr noundef %198, i32 noundef 0, i32 noundef 2) #21
  br label %362

256:                                              ; preds = %243
  %257 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %258 = getelementptr inbounds %struct._stmt_vec_info, ptr %257, i64 0, i32 17
  %259 = load ptr, ptr %258, align 8, !tbaa !239
  %260 = icmp eq ptr %259, %198
  br i1 %260, label %261, label %277

261:                                              ; preds = %256
  %262 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %263 = getelementptr inbounds %struct._stmt_vec_info, ptr %262, i64 0, i32 7
  %264 = load ptr, ptr %263, align 8, !tbaa !206
  %265 = call i32 @vect_supportable_dr_alignment(ptr noundef %264) #21
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %362, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %272 = call i64 @fwrite(ptr nonnull @.str.16, i64 45, i64 1, ptr %271)
  %273 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %273, ptr noundef %198, i32 noundef 0, i32 noundef 2) #21
  br label %362

274:                                              ; preds = %261
  %275 = call fastcc ptr @vinfo_for_stmt(ptr noundef %198) #20
  %276 = load ptr, ptr %2, align 8, !tbaa !182
  call void @vect_model_load_cost(ptr noundef %275, i32 noundef %6, ptr noundef %276) #21
  br label %277

277:                                              ; preds = %274, %256
  %278 = call i32 @vect_get_place_in_interleaving_chain(ptr noundef %198, ptr noundef %259) #21
  %279 = icmp eq i32 %278, %37
  %280 = select i1 %279, i8 %38, i8 1
  call fastcc void @VEC_int_heap_safe_push(ptr noundef %8, i32 noundef %278) #20
  br label %305

281:                                              ; preds = %197
  %282 = zext nneg i32 %107 to i64
  %283 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !205
  switch i32 %284, label %292 [
    i32 4, label %285
    i32 7, label %301
    i32 6, label %301
  ]

285:                                              ; preds = %281
  %286 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %362, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %290 = call i64 @fwrite(ptr nonnull @.str.17, i64 35, i64 1, ptr %289)
  %291 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %291, ptr noundef %198, i32 noundef 0, i32 noundef 2) #21
  br label %362

292:                                              ; preds = %281
  %293 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %362, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %297 = call i64 @fwrite(ptr nonnull @.str.18, i64 27, i64 1, ptr %296)
  %298 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %299 = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %298)
  %300 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %300, ptr noundef %198, i32 noundef 0, i32 noundef 2) #21
  br label %362

301:                                              ; preds = %281, %281
  %302 = load ptr, ptr %2, align 8, !tbaa !182
  %303 = call fastcc zeroext i8 @vect_get_and_check_slp_defs(ptr noundef %0, ptr noundef %1, ptr noundef %302, ptr noundef %198, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %19, i32 noundef %6, ptr noundef nonnull %20, ptr noundef nonnull %21) #20, !range !133
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %362, label %305

305:                                              ; preds = %212, %301, %277
  %306 = phi i8 [ %40, %212 ], [ 1, %277 ], [ %40, %301 ]
  %307 = phi i8 [ %38, %212 ], [ %280, %277 ], [ %38, %301 ]
  %308 = add i32 %37, 1
  %309 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %29, i32 noundef %308, ptr noundef nonnull %14) #20, !range !188
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %36, !llvm.loop !241

311:                                              ; preds = %305
  %312 = load ptr, ptr %2, align 8, !tbaa !182
  %313 = icmp eq i8 %306, 0
  %314 = icmp eq i8 %307, 0
  br label %315

315:                                              ; preds = %311, %11
  %316 = phi ptr [ %27, %11 ], [ %312, %311 ]
  %317 = phi i1 [ true, %11 ], [ %313, %311 ]
  %318 = phi i1 [ true, %11 ], [ %314, %311 ]
  %319 = getelementptr inbounds %struct._slp_tree, ptr %316, i64 0, i32 5, i32 1
  %320 = load i32, ptr %319, align 4, !tbaa !242
  %321 = load i32, ptr %4, align 4, !tbaa !205
  %322 = add nsw i32 %321, %320
  store i32 %322, ptr %4, align 4, !tbaa !205
  %323 = getelementptr inbounds %struct._slp_tree, ptr %316, i64 0, i32 5
  %324 = load i32, ptr %323, align 4, !tbaa !243
  %325 = load i32, ptr %5, align 4, !tbaa !205
  %326 = add nsw i32 %325, %324
  store i32 %326, ptr %5, align 4, !tbaa !205
  br i1 %317, label %331, label %327

327:                                              ; preds = %315
  br i1 %318, label %362, label %328

328:                                              ; preds = %327
  call fastcc void @VEC_slp_tree_heap_safe_push(ptr noundef %9, ptr noundef nonnull %316) #20
  %329 = load i32, ptr %4, align 4, !tbaa !205
  %330 = add i32 %329, %3
  store i32 %330, ptr %4, align 4, !tbaa !205
  br label %362

331:                                              ; preds = %315
  %332 = load i32, ptr %15, align 4, !tbaa !205
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %345

334:                                              ; preds = %331
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #19
  %335 = call ptr @xmalloc(i64 noundef 48) #21
  store ptr %335, ptr %23, align 8, !tbaa !182
  %336 = load ptr, ptr %12, align 8, !tbaa !182
  %337 = getelementptr inbounds %struct._slp_tree, ptr %335, i64 0, i32 2
  store ptr %336, ptr %337, align 8, !tbaa !216
  %338 = getelementptr inbounds %struct._slp_tree, ptr %335, i64 0, i32 3
  store ptr null, ptr %338, align 8, !tbaa !180
  %339 = getelementptr inbounds %struct._slp_tree, ptr %335, i64 0, i32 5
  store i32 0, ptr %339, align 4, !tbaa !243
  %340 = getelementptr inbounds %struct._slp_tree, ptr %335, i64 0, i32 5, i32 1
  store i32 0, ptr %340, align 4, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %335, i8 0, i64 16, i1 false)
  %341 = call fastcc zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #20, !range !133
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %360, label %343

343:                                              ; preds = %334
  %344 = load ptr, ptr %2, align 8, !tbaa !182
  store ptr %335, ptr %344, align 8, !tbaa !177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #19
  br label %345

345:                                              ; preds = %343, %331
  %346 = load i32, ptr %16, align 4, !tbaa !205
  %347 = icmp eq i32 %346, 3
  br i1 %347, label %348, label %362

348:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #19
  %349 = call ptr @xmalloc(i64 noundef 48) #21
  store ptr %349, ptr %24, align 8, !tbaa !182
  %350 = load ptr, ptr %13, align 8, !tbaa !182
  %351 = getelementptr inbounds %struct._slp_tree, ptr %349, i64 0, i32 2
  store ptr %350, ptr %351, align 8, !tbaa !216
  %352 = getelementptr inbounds %struct._slp_tree, ptr %349, i64 0, i32 3
  store ptr null, ptr %352, align 8, !tbaa !180
  %353 = getelementptr inbounds %struct._slp_tree, ptr %349, i64 0, i32 5
  store i32 0, ptr %353, align 4, !tbaa !243
  %354 = getelementptr inbounds %struct._slp_tree, ptr %349, i64 0, i32 5, i32 1
  store i32 0, ptr %354, align 4, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %349, i8 0, i64 16, i1 false)
  %355 = call fastcc zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %24, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #20, !range !133
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %348
  %358 = load ptr, ptr %2, align 8, !tbaa !182
  %359 = getelementptr inbounds %struct._slp_tree, ptr %358, i64 0, i32 1
  store ptr %349, ptr %359, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  br label %362

360:                                              ; preds = %334
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #19
  br label %362

361:                                              ; preds = %348
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  br label %362

362:                                              ; preds = %301, %212, %88, %345, %357, %361, %360, %327, %328, %292, %295, %285, %288, %267, %270, %249, %252, %236, %239, %189, %192, %174, %177, %145, %148, %134, %137, %67, %70, %56, %59
  %363 = phi i8 [ 0, %59 ], [ 0, %56 ], [ 0, %70 ], [ 0, %67 ], [ 0, %137 ], [ 0, %134 ], [ 0, %148 ], [ 0, %145 ], [ 0, %177 ], [ 0, %174 ], [ 0, %192 ], [ 0, %189 ], [ 0, %239 ], [ 0, %236 ], [ 0, %252 ], [ 0, %249 ], [ 0, %270 ], [ 0, %267 ], [ 0, %288 ], [ 0, %285 ], [ 0, %295 ], [ 0, %292 ], [ 1, %328 ], [ 1, %327 ], [ 0, %360 ], [ 0, %361 ], [ 1, %357 ], [ 1, %345 ], [ 0, %88 ], [ 0, %212 ], [ 0, %301 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  ret i8 %363
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_slp_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !244 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !245
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_supported_load_permutation_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !172 !PGOFuncName !247 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = icmp eq ptr %0, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %11 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr %10)
  %12 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %4) #20, !range !188
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9, %14
  %15 = phi i32 [ %19, %14 ], [ 0, %9 ]
  %16 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %17 = load i32, ptr %4, align 4, !tbaa !205
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.29, i32 noundef %17) #20
  %19 = add nuw nsw i32 %15, 1
  %20 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %2, i32 noundef %19, ptr noundef nonnull %4) #20, !range !188
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %14, !llvm.loop !248

22:                                               ; preds = %14, %9, %6
  %23 = phi i32 [ 0, %6 ], [ 0, %9 ], [ %19, %14 ]
  %24 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %2) #20
  %25 = mul nsw i32 %1, %1
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  %28 = tail call ptr @sbitmap_alloc(i32 noundef %1) #21
  tail call void @sbitmap_zero(ptr noundef %28) #21
  %29 = icmp sgt i32 %1, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %27, %65
  %31 = phi i8 [ %55, %65 ], [ 1, %27 ]
  %32 = phi i32 [ %54, %65 ], [ -1, %27 ]
  %33 = phi i32 [ %66, %65 ], [ 0, %27 ]
  %34 = mul nsw i32 %33, %1
  %35 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %2, i32 noundef %34, ptr noundef nonnull %4) #20, !range !188
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %30, %45
  %38 = phi i32 [ %47, %45 ], [ 0, %30 ]
  %39 = phi i32 [ %42, %45 ], [ %32, %30 ]
  %40 = phi i32 [ %46, %45 ], [ %34, %30 ]
  %41 = icmp eq i32 %40, %34
  %42 = load i32, ptr %4, align 4
  %43 = icmp eq i32 %42, %39
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = add nuw nsw i32 %40, 1
  %47 = add nuw nsw i32 %38, 1
  %48 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %2, i32 noundef %46, ptr noundef nonnull %4) #20, !range !188
  %49 = icmp ne i32 %48, 0
  %50 = icmp slt i32 %47, %1
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %37, label %52, !llvm.loop !249

52:                                               ; preds = %45, %37, %30
  %53 = phi i32 [ %34, %30 ], [ %40, %37 ], [ %46, %45 ]
  %54 = phi i32 [ %32, %30 ], [ %39, %37 ], [ %42, %45 ]
  %55 = phi i8 [ %31, %30 ], [ 0, %37 ], [ %31, %45 ]
  %56 = lshr i32 %54, 6
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.simple_bitmap_def, ptr %28, i64 0, i32 3, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !250
  %60 = and i32 %54, 63
  %61 = zext nneg i32 %60 to i64
  %62 = shl nuw i64 1, %61
  %63 = and i64 %59, %62
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  tail call fastcc void @SET_BIT(ptr noundef nonnull %28, i32 noundef %54) #20
  %66 = add nuw nsw i32 %33, 1
  %67 = icmp eq i32 %66, %1
  br i1 %67, label %68, label %30, !llvm.loop !251

68:                                               ; preds = %52, %65
  %69 = phi i8 [ %55, %65 ], [ 0, %52 ]
  %70 = icmp ne i8 %69, 0
  br label %71

71:                                               ; preds = %68, %27
  %72 = phi i32 [ %23, %27 ], [ %53, %68 ]
  %73 = phi i1 [ true, %27 ], [ %70, %68 ]
  %74 = load ptr, ptr %28, align 8, !tbaa !252
  tail call void @free(ptr noundef %74) #20
  tail call void @free(ptr noundef %28) #20
  %75 = icmp eq i32 %72, %24
  %76 = and i1 %75, %73
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = tail call fastcc zeroext i8 @vect_supported_slp_permutation_p(ptr noundef nonnull %0) #20
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %77, %22, %3, %80
  %82 = phi i8 [ 0, %80 ], [ 0, %3 ], [ 0, %22 ], [ 1, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i8 %82
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_find_first_load_in_slp_instance(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !172 !PGOFuncName !254 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !223
  %6 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %1, %28
  %9 = phi ptr [ %29, %28 ], [ %5, %1 ]
  %10 = phi ptr [ %30, %28 ], [ null, %1 ]
  %11 = phi i32 [ %31, %28 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct._slp_tree, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3) #20, !range !188
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %8, %17
  %18 = phi ptr [ %21, %17 ], [ %10, %8 ]
  %19 = phi i32 [ %22, %17 ], [ 0, %8 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !182
  %21 = tail call fastcc ptr @get_earlier_stmt(ptr noundef %20, ptr noundef %18) #20
  %22 = add nuw nsw i32 %19, 1
  %23 = load ptr, ptr %13, align 8, !tbaa !216
  %24 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %23, i32 noundef %22, ptr noundef nonnull %3) #20, !range !188
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17, !llvm.loop !255

26:                                               ; preds = %17
  %27 = load ptr, ptr %4, align 8, !tbaa !223
  br label %28

28:                                               ; preds = %26, %8
  %29 = phi ptr [ %9, %8 ], [ %27, %26 ]
  %30 = phi ptr [ %10, %8 ], [ %21, %26 ]
  %31 = add nuw nsw i32 %11, 1
  %32 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %2) #20, !range !188
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %8, !llvm.loop !256

34:                                               ; preds = %28, %1
  %35 = phi ptr [ null, %1 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_slp_instance_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !257 {
  tail call fastcc void @VEC_slp_instance_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !182
  tail call fastcc void @VEC_slp_instance_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_print_slp_tree(ptr noundef readonly %0) unnamed_addr #5 !prof !172 !PGOFuncName !258 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %6 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %5)
  %7 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %17, %11 ], [ 0, %4 ]
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef %12) #20
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %16 = load ptr, ptr %2, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %16, i32 noundef 0, i32 noundef 2) #21
  %17 = add nuw nsw i32 %12, 1
  %18 = load ptr, ptr %7, align 8, !tbaa !216
  %19 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %18, i32 noundef %17, ptr noundef nonnull %2) #20, !range !188
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11, !llvm.loop !259

21:                                               ; preds = %11, %4
  %22 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  %24 = load ptr, ptr %0, align 8, !tbaa !177
  tail call fastcc void @vect_print_slp_tree(ptr noundef %24) #20
  %25 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !179
  tail call fastcc void @vect_print_slp_tree(ptr noundef %26) #20
  br label %27

27:                                               ; preds = %1, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !260 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !156
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !260 !PGOFuncName !262 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !263

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !264
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !226 !PGOFuncName !266 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !267 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !182
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !172 !PGOFuncName !268 {
  %3 = load i32, ptr %0, align 8, !tbaa !198
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !198
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !269 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !270
  %6 = load i32, ptr %0, align 8, !tbaa !198
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !172 !PGOFuncName !271 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @vect_get_smallest_scalar_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !272 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !274 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !234
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !273
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

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !275 {
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

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_get_and_check_slp_defs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef %9, ptr nocapture noundef %10, i32 noundef %11, ptr nocapture noundef %12, ptr nocapture noundef %13) unnamed_addr #5 !prof !172 !PGOFuncName !276 {
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #19
  store i64 34359738376, ptr %17, align 8
  %18 = getelementptr inbounds %struct._slp_tree, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %19, i32 noundef 0) #20
  %21 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %20) #20
  %22 = icmp eq ptr %0, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %0, align 8, !tbaa !277
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ %24, %23 ], [ null, %14 ]
  %27 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %3) #20, !range !234
  %28 = tail call fastcc i32 @gimple_num_ops(ptr noundef %3) #20
  %29 = add i32 %28, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %230, label %31

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %27) #20, !range !273
  %33 = icmp eq ptr %26, null
  %34 = icmp eq i32 %32, 3
  %35 = zext i32 %29 to i64
  br label %36

36:                                               ; preds = %31, %228
  %37 = phi i64 [ 0, %31 ], [ %38, %228 ]
  %38 = add nuw nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call fastcc ptr @gimple_op(ptr noundef %3, i32 noundef %39) #20
  %41 = getelementptr inbounds [2 x i32], ptr %17, i64 0, i64 %37
  %42 = call zeroext i8 @vect_is_simple_use(ptr noundef %40, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %41) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %16, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, ptr %41, align 4, !tbaa !205
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %127, label %50

50:                                               ; preds = %47, %36
  %51 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %230, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %55 = call i64 @fwrite(ptr nonnull @.str.21, i64 37, i64 1, ptr %54)
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_generic_expr(ptr noundef %56, ptr noundef %40, i32 noundef 2) #21
  br label %230

57:                                               ; preds = %44
  br i1 %33, label %127, label %58

58:                                               ; preds = %57
  %59 = call fastcc ptr @gimple_bb(ptr noundef nonnull %45) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %127, label %61

61:                                               ; preds = %58
  %62 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %26, ptr noundef nonnull %59) #21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %127, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %16, align 8, !tbaa !182
  %66 = call fastcc ptr @vinfo_for_stmt(ptr noundef %65) #20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %127, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %16, align 8, !tbaa !182
  %70 = call fastcc ptr @vinfo_for_stmt(ptr noundef %69) #20
  %71 = getelementptr inbounds %struct._stmt_vec_info, ptr %70, i64 0, i32 13
  %72 = load i8, ptr %71, align 8, !tbaa !278
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %127, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %6, align 4, !tbaa !205
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = trunc i64 %37 to i32
  switch i32 %78, label %97 [
    i32 1, label %79
    i32 0, label %82
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %7, align 4, !tbaa !205
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %95, label %85

82:                                               ; preds = %77
  %83 = load i8, ptr %12, align 1, !tbaa !156
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %97

85:                                               ; preds = %79
  %86 = load i8, ptr %13, align 1, !tbaa !156
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85, %82
  %89 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %230, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %93 = call i64 @fwrite(ptr nonnull @.str.22, i64 73, i64 1, ptr %92)
  %94 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_generic_expr(ptr noundef %94, ptr noundef %40, i32 noundef 2) #21
  br label %230

95:                                               ; preds = %79, %74
  %96 = phi ptr [ %12, %74 ], [ %13, %79 ]
  store i8 1, ptr %96, align 1, !tbaa !156
  br label %97

97:                                               ; preds = %95, %77, %82, %85
  %98 = load ptr, ptr %16, align 8, !tbaa !182
  %99 = call fastcc ptr @vinfo_for_stmt(ptr noundef %98) #20
  %100 = getelementptr inbounds %struct._stmt_vec_info, ptr %99, i64 0, i32 14
  %101 = load ptr, ptr %100, align 8, !tbaa !279
  store ptr %101, ptr %16, align 8, !tbaa !182
  %102 = call fastcc ptr @vinfo_for_stmt(ptr noundef %101) #20
  %103 = getelementptr inbounds %struct._stmt_vec_info, ptr %102, i64 0, i32 16
  %104 = load i32, ptr %103, align 8, !tbaa !280
  store i32 %104, ptr %41, align 4, !tbaa !205
  %105 = load i32, ptr %17, align 8, !tbaa !205
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %230, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %112 = call i64 @fwrite(ptr nonnull @.str.23, i64 20, i64 1, ptr %111)
  br label %230

113:                                              ; preds = %97
  %114 = load ptr, ptr %16, align 8, !tbaa !182
  %115 = call fastcc i32 @gimple_code(ptr noundef %114) #20, !range !273
  %116 = trunc i32 %115 to i8
  switch i8 %116, label %121 [
    i8 16, label %117
    i8 6, label %119
  ]

117:                                              ; preds = %113
  %118 = call fastcc ptr @gimple_phi_result(ptr noundef %114) #20
  store ptr %118, ptr %15, align 8, !tbaa !182
  br label %127

119:                                              ; preds = %113
  %120 = call fastcc ptr @gimple_assign_lhs(ptr noundef %114) #20
  store ptr %120, ptr %15, align 8, !tbaa !182
  br label %127

121:                                              ; preds = %113
  %122 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %230, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %126 = call i64 @fwrite(ptr nonnull @.str.24, i64 27, i64 1, ptr %125)
  br label %230

127:                                              ; preds = %47, %117, %119, %68, %64, %61, %58, %57
  %128 = load i32, ptr %6, align 4, !tbaa !205
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i32, ptr %41, align 4, !tbaa !205
  store i32 %131, ptr %6, align 4, !tbaa !205
  %132 = load ptr, ptr %15, align 8, !tbaa !182
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !156
  store ptr %136, ptr %8, align 8, !tbaa !182
  br label %138

137:                                              ; preds = %130
  store ptr %40, ptr %10, align 8, !tbaa !182
  br label %138

138:                                              ; preds = %137, %134
  br i1 %34, label %140, label %139

139:                                              ; preds = %138
  call void @vect_model_simple_cost(ptr noundef %21, i32 noundef %11, ptr noundef nonnull %17, ptr noundef %2) #21
  br label %214

140:                                              ; preds = %138
  %141 = load i32, ptr %17, align 8, !tbaa !205
  call void @vect_model_store_cost(ptr noundef %21, i32 noundef %11, i32 noundef %141, ptr noundef %2) #21
  br label %214

142:                                              ; preds = %127
  %143 = load i32, ptr %7, align 4, !tbaa !205
  %144 = icmp eq i32 %143, 0
  %145 = icmp eq i64 %37, 1
  %146 = and i1 %145, %144
  br i1 %146, label %147, label %164

147:                                              ; preds = %142
  %148 = load i32, ptr %41, align 4, !tbaa !205
  store i32 %148, ptr %7, align 4, !tbaa !205
  %149 = load ptr, ptr %15, align 8, !tbaa !182
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !156
  store ptr %153, ptr %9, align 8, !tbaa !182
  br label %214

154:                                              ; preds = %147
  %155 = load ptr, ptr %10, align 8, !tbaa !182
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %230, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %162 = call i64 @fwrite(ptr nonnull @.str.25, i64 45, i64 1, ptr %161)
  br label %230

163:                                              ; preds = %154
  store ptr %40, ptr %10, align 8, !tbaa !182
  br label %214

164:                                              ; preds = %142
  %165 = icmp eq i64 %37, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %164
  %167 = load i32, ptr %41, align 4, !tbaa !205
  %168 = icmp eq i32 %128, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %166
  %170 = load ptr, ptr %8, align 8, !tbaa !182
  %171 = icmp ne ptr %170, null
  %172 = load ptr, ptr %15, align 8
  %173 = icmp ne ptr %172, null
  %174 = select i1 %171, i1 %173, i1 false
  br i1 %174, label %175, label %195

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !156
  %178 = call zeroext i8 @types_compatible_p(ptr noundef nonnull %170, ptr noundef %177) #21
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %208, label %195

180:                                              ; preds = %164
  br i1 %145, label %181, label %195

181:                                              ; preds = %180
  %182 = load i32, ptr %41, align 4, !tbaa !205
  %183 = icmp eq i32 %143, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = load ptr, ptr %9, align 8, !tbaa !182
  %186 = icmp ne ptr %185, null
  %187 = load ptr, ptr %15, align 8
  %188 = icmp ne ptr %187, null
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.tree_common, ptr %187, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !156
  %193 = call zeroext i8 @types_compatible_p(ptr noundef nonnull %185, ptr noundef %192) #21
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %169, %175, %180, %190
  %196 = load ptr, ptr %15, align 8, !tbaa !182
  br label %197

197:                                              ; preds = %195, %184
  %198 = phi ptr [ %196, %195 ], [ %187, %184 ]
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load ptr, ptr %10, align 8, !tbaa !182
  %202 = getelementptr inbounds %struct.tree_common, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !156
  %204 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !156
  %206 = call zeroext i8 @types_compatible_p(ptr noundef %203, ptr noundef %205) #21
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %200, %190, %181, %175, %166
  %209 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %230, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %213 = call i64 @fwrite(ptr nonnull @.str.26, i64 34, i64 1, ptr %212)
  br label %230

214:                                              ; preds = %163, %151, %200, %197, %139, %140
  %215 = load i32, ptr %41, align 4, !tbaa !205
  switch i32 %215, label %220 [
    i32 1, label %228
    i32 2, label %228
    i32 3, label %216
  ]

216:                                              ; preds = %214
  %217 = icmp eq i64 %37, 0
  %218 = load ptr, ptr %16, align 8, !tbaa !182
  %219 = select i1 %217, ptr %4, ptr %5
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %219, ptr noundef %218) #20
  br label %228

220:                                              ; preds = %214
  %221 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %225 = call i64 @fwrite(ptr nonnull @.str.27, i64 38, i64 1, ptr %224)
  %226 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %227 = load ptr, ptr %15, align 8, !tbaa !182
  call void @print_generic_expr(ptr noundef %226, ptr noundef %227, i32 noundef 2) #21
  br label %230

228:                                              ; preds = %216, %214, %214
  %229 = icmp eq i64 %38, %35
  br i1 %229, label %230, label %36, !llvm.loop !281

230:                                              ; preds = %228, %25, %220, %223, %208, %211, %157, %160, %121, %124, %107, %110, %88, %91, %50, %53
  %231 = phi i8 [ 0, %53 ], [ 0, %50 ], [ 0, %91 ], [ 0, %88 ], [ 0, %110 ], [ 0, %107 ], [ 0, %124 ], [ 0, %121 ], [ 0, %160 ], [ 0, %157 ], [ 0, %211 ], [ 0, %208 ], [ 0, %223 ], [ 0, %220 ], [ 1, %25 ], [ 1, %228 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  ret i8 %231
}

; Function Attrs: optsize
declare i32 @vect_supportable_dr_alignment(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @vect_model_load_cost(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @vect_get_place_in_interleaving_chain(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !282 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !182
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_slp_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !283 {
  tail call fastcc void @VEC_slp_tree_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !182
  tail call fastcc void @VEC_slp_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !284 !PGOFuncName !285 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !172 !PGOFuncName !286 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1446, ptr noundef nonnull @.str.6) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 !prof !172 !PGOFuncName !287 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !156
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !288 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !289 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !133
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !290 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #5 !prof !172 !PGOFuncName !291 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !250
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.6) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !292 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !172 !PGOFuncName !293 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !205
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !156
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @vect_is_simple_use(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !296 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !297 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @vect_model_simple_cost(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @vect_model_store_cost(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !298 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #21
  store ptr %6, ptr %0, align 8, !tbaa !182
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !172 !PGOFuncName !299 {
  %3 = load i32, ptr %0, align 4, !tbaa !300
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !300
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !302 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !303
  %6 = load i32, ptr %0, align 4, !tbaa !300
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_slp_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !304 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = tail call fastcc i32 @VEC_slp_tree_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !182
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_slp_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !172 !PGOFuncName !305 {
  %3 = load i32, ptr %0, align 8, !tbaa !245
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !245
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_slp_tree_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !306 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !307
  %6 = load i32, ptr %0, align 8, !tbaa !245
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !172 !PGOFuncName !308 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !300
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !205
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !205
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !309 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !300
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !172 !PGOFuncName !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !252
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
  %15 = load i64, ptr %14, align 8, !tbaa !250
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !156
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !156
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !250
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !250
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_supported_slp_permutation_p(ptr nocapture noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !311 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = tail call fastcc ptr @VEC_slp_tree_base_index(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct._slp_tree, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %9, i32 noundef 0) #20
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %10) #20
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %14 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #21
  %19 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !225
  %21 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %3) #20, !range !188
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %1, %46
  %24 = phi i32 [ %51, %46 ], [ 0, %1 ]
  %25 = phi i32 [ %50, %46 ], [ 0, %1 ]
  %26 = load ptr, ptr %5, align 8, !tbaa !223
  %27 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %26, i32 noundef %24, ptr noundef nonnull %4) #20, !range !188
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %4, align 8, !tbaa !182
  %31 = getelementptr inbounds %struct._slp_tree, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %32, i32 noundef 0) #20
  %34 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %33) #20
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !239
  %37 = icmp eq ptr %36, %13
  br i1 %37, label %46, label %38

38:                                               ; preds = %29
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %43 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 47, i64 1, ptr %42)
  %44 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %44, ptr noundef %33, i32 noundef 0, i32 noundef 2) #21
  br label %45

45:                                               ; preds = %38, %41
  tail call void @free(ptr noundef %18) #20
  br label %75

46:                                               ; preds = %29
  %47 = load i32, ptr %3, align 4, !tbaa !205
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %18, i64 %48
  store ptr %30, ptr %49, align 8, !tbaa !182
  %50 = add nsw i32 %25, %15
  %51 = add nuw nsw i32 %24, 1
  %52 = load ptr, ptr %19, align 8, !tbaa !225
  %53 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %52, i32 noundef %50, ptr noundef nonnull %3) #20, !range !188
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %23, !llvm.loop !312

55:                                               ; preds = %23, %46, %1
  %56 = tail call fastcc ptr @VEC_slp_tree_heap_alloc(i32 noundef %15) #20
  store ptr %56, ptr %2, align 8, !tbaa !182
  %57 = icmp sgt i32 %15, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = zext nneg i32 %15 to i64
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ 0, %58 ], [ %64, %60 ]
  %62 = getelementptr inbounds ptr, ptr %18, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  call fastcc void @VEC_slp_tree_heap_safe_push(ptr noundef nonnull %2, ptr noundef %63) #20
  %64 = add nuw nsw i64 %61, 1
  %65 = icmp eq i64 %64, %59
  br i1 %65, label %66, label %60, !llvm.loop !313

66:                                               ; preds = %60
  %67 = load ptr, ptr %2, align 8, !tbaa !182
  br label %68

68:                                               ; preds = %66, %55
  %69 = phi ptr [ %67, %66 ], [ %56, %55 ]
  tail call fastcc void @VEC_slp_tree_heap_free(ptr noundef nonnull %5) #20
  store ptr %69, ptr %5, align 8, !tbaa !223
  tail call void @free(ptr noundef %18) #20
  %70 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !220
  %72 = tail call zeroext i8 @vect_transform_slp_perm_load(ptr noundef %10, ptr noundef null, ptr noundef null, i32 noundef %71, ptr noundef %0, i8 noundef zeroext 1) #20
  %73 = icmp ne i8 %72, 0
  %74 = zext i1 %73 to i8
  br label %75

75:                                               ; preds = %45, %68
  %76 = phi i8 [ 0, %45 ], [ %74, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %76
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_slp_tree_base_index(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_slp_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !172 !PGOFuncName !315 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !245
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !182
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_transform_slp_perm_load(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) local_unnamed_addr #5 !prof !172 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !316
  %14 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #19
  store i8 0, ptr %10, align 1, !tbaa !156
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 7), align 8, !tbaa !317
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %180, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %23 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 32, i64 1, ptr %22)
  %24 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %24, ptr noundef %0, i32 noundef 0, i32 noundef 2) #21
  br label %180

25:                                               ; preds = %6
  %26 = call ptr %16(ptr noundef %13, ptr noundef nonnull %7) #21
  %27 = icmp ne ptr %26, null
  %28 = load ptr, ptr %7, align 8
  %29 = icmp ne ptr %28, null
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %180, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %36 = call i64 @fwrite(ptr nonnull @.str.51, i64 32, i64 1, ptr %35)
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_gimple_stmt(ptr noundef %37, ptr noundef %0, i32 noundef 0, i32 noundef 2) #21
  br label %180

38:                                               ; preds = %25
  %39 = call ptr @get_vectype_for_scalar_type(ptr noundef nonnull %28) #21
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1023
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = trunc i64 %44 to i32
  %46 = shl i64 4294967296, %43
  %47 = ashr exact i64 %46, 30
  %48 = call ptr @xmalloc(i64 noundef %47) #21
  %49 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1023
  %52 = zext nneg i32 %51 to i64
  %53 = shl nuw i64 1, %52
  %54 = trunc i64 %53 to i32
  %55 = sdiv i32 %45, %54
  %56 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !220
  %58 = mul i32 %57, %15
  %59 = udiv i32 %58, %54
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i8
  %62 = udiv i32 %3, %57
  %63 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !223
  %65 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %64, i32 noundef 0, ptr noundef nonnull %8) #20, !range !188
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %179, label %67

67:                                               ; preds = %38
  %68 = xor i1 %60, true
  %69 = zext i1 %68 to i32
  %70 = icmp sgt i32 %57, 0
  %71 = icmp sgt i32 %15, 0
  %72 = icmp sgt i32 %55, 0
  %73 = icmp sgt i32 %45, 0
  br label %74

74:                                               ; preds = %67, %174
  %75 = phi ptr [ %64, %67 ], [ %175, %174 ]
  %76 = phi i32 [ 0, %67 ], [ %176, %174 ]
  br i1 %70, label %77, label %174

77:                                               ; preds = %74, %164
  %78 = phi i32 [ %169, %164 ], [ 0, %74 ]
  %79 = phi i32 [ %168, %164 ], [ %69, %74 ]
  %80 = phi i32 [ %167, %164 ], [ 0, %74 ]
  %81 = phi i32 [ %170, %164 ], [ 0, %74 ]
  %82 = phi i32 [ %166, %164 ], [ 0, %74 ]
  %83 = phi i32 [ %165, %164 ], [ 0, %74 ]
  br i1 %71, label %84, label %164

84:                                               ; preds = %77
  %85 = mul nsw i32 %81, %15
  %86 = add nuw nsw i32 %85, %76
  %87 = mul nsw i32 %86, %55
  br label %88

88:                                               ; preds = %84, %156
  %89 = phi i32 [ %78, %84 ], [ %161, %156 ]
  %90 = phi i32 [ %79, %84 ], [ %160, %156 ]
  %91 = phi i32 [ %80, %84 ], [ %159, %156 ]
  %92 = phi i32 [ 0, %84 ], [ %162, %156 ]
  %93 = phi i32 [ %82, %84 ], [ %158, %156 ]
  %94 = phi i32 [ %83, %84 ], [ %157, %156 ]
  br i1 %72, label %95, label %111

95:                                               ; preds = %88
  %96 = sext i32 %93 to i64
  br label %97

97:                                               ; preds = %95, %103
  %98 = phi i64 [ %96, %95 ], [ %105, %103 ]
  %99 = phi i32 [ 0, %95 ], [ %107, %103 ]
  %100 = trunc i64 %98 to i32
  %101 = call fastcc zeroext i8 @vect_get_mask_element(ptr noundef %0, i32 noundef %87, i32 noundef %99, i32 noundef %45, i8 noundef zeroext %61, i32 noundef %100, ptr noundef %48, ptr noundef nonnull %9, ptr noundef nonnull %10) #20, !range !133
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %180, label %103

103:                                              ; preds = %97
  %104 = load i32, ptr %9, align 4, !tbaa !205
  %105 = add nsw i64 %98, 1
  %106 = getelementptr inbounds i32, ptr %48, i64 %98
  store i32 %104, ptr %106, align 4, !tbaa !205
  %107 = add nuw nsw i32 %99, 1
  %108 = icmp eq i32 %107, %55
  br i1 %108, label %109, label %97, !llvm.loop !329

109:                                              ; preds = %103
  %110 = trunc i64 %105 to i32
  br label %111

111:                                              ; preds = %109, %88
  %112 = phi i32 [ %93, %88 ], [ %110, %109 ]
  %113 = icmp eq i32 %112, %45
  br i1 %113, label %114, label %156

114:                                              ; preds = %111
  br i1 %73, label %115, label %128

115:                                              ; preds = %114
  %116 = and i64 %44, 4294967295
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i64 [ %120, %117 ], [ %116, %115 ]
  %119 = phi ptr [ %126, %117 ], [ null, %115 ]
  %120 = add nsw i64 %118, -1
  %121 = load ptr, ptr %7, align 8, !tbaa !182
  %122 = getelementptr inbounds i32, ptr %48, i64 %120
  %123 = load i32, ptr %122, align 4, !tbaa !205
  %124 = sext i32 %123 to i64
  %125 = call ptr @build_int_cst(ptr noundef %121, i64 noundef %124) #21
  %126 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %125, ptr noundef %119) #21
  %127 = icmp ugt i64 %118, 1
  br i1 %127, label %117, label %128, !llvm.loop !330

128:                                              ; preds = %117, %114
  %129 = phi ptr [ null, %114 ], [ %126, %117 ]
  %130 = call ptr @build_vector(ptr noundef %39, ptr noundef %129) #21
  %131 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 8), align 8, !tbaa !331
  %132 = call zeroext i8 %131(ptr noundef %13, ptr noundef %130) #21
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %139 = call i64 @fwrite(ptr nonnull @.str.52, i64 25, i64 1, ptr %138)
  %140 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  call void @print_generic_expr(ptr noundef %140, ptr noundef %130, i32 noundef 0) #21
  br label %155

141:                                              ; preds = %128
  %142 = icmp eq i8 %5, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %141
  %144 = select i1 %60, i32 1, i32 2
  %145 = load i8, ptr %10, align 1, !tbaa !156
  %146 = icmp eq i8 %145, 0
  %147 = select i1 %146, i32 %91, i32 %90
  %148 = select i1 %146, i32 %90, i32 %144
  %149 = load ptr, ptr %8, align 8, !tbaa !182
  %150 = getelementptr inbounds %struct._slp_tree, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !216
  %152 = add nsw i32 %94, 1
  %153 = call fastcc ptr @VEC_gimple_base_index(ptr noundef %151, i32 noundef %94) #20
  %154 = add nsw i32 %89, 1
  call fastcc void @vect_create_mask_and_perm(ptr noundef %0, ptr noundef %153, ptr noundef %130, i32 noundef %147, i32 noundef %148, ptr noundef %2, ptr noundef %149, ptr noundef nonnull %26, ptr noundef %13, ptr noundef %1, i32 noundef %62, i32 noundef %89) #20
  br label %156

155:                                              ; preds = %134, %137
  call void @free(ptr noundef %48) #20
  br label %180

156:                                              ; preds = %143, %141, %111
  %157 = phi i32 [ %94, %111 ], [ %152, %143 ], [ %94, %141 ]
  %158 = phi i32 [ %112, %111 ], [ 0, %143 ], [ 0, %141 ]
  %159 = phi i32 [ %91, %111 ], [ %147, %143 ], [ %91, %141 ]
  %160 = phi i32 [ %90, %111 ], [ %148, %143 ], [ %90, %141 ]
  %161 = phi i32 [ %89, %111 ], [ %154, %143 ], [ %89, %141 ]
  %162 = add nuw nsw i32 %92, 1
  %163 = icmp eq i32 %162, %15
  br i1 %163, label %164, label %88, !llvm.loop !332

164:                                              ; preds = %156, %77
  %165 = phi i32 [ %83, %77 ], [ %157, %156 ]
  %166 = phi i32 [ %82, %77 ], [ %158, %156 ]
  %167 = phi i32 [ %80, %77 ], [ %159, %156 ]
  %168 = phi i32 [ %79, %77 ], [ %160, %156 ]
  %169 = phi i32 [ %78, %77 ], [ %161, %156 ]
  %170 = add nuw nsw i32 %81, 1
  %171 = icmp eq i32 %170, %57
  br i1 %171, label %172, label %77, !llvm.loop !333

172:                                              ; preds = %164
  %173 = load ptr, ptr %63, align 8, !tbaa !223
  br label %174

174:                                              ; preds = %172, %74
  %175 = phi ptr [ %173, %172 ], [ %75, %74 ]
  %176 = add nuw nsw i32 %76, 1
  %177 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %175, i32 noundef %176, ptr noundef nonnull %8) #20, !range !188
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %74, !llvm.loop !334

179:                                              ; preds = %174, %38
  call void @free(ptr noundef %48) #20
  br label %180

180:                                              ; preds = %97, %155, %31, %34, %18, %21, %179
  %181 = phi i8 [ 0, %155 ], [ 1, %179 ], [ 0, %21 ], [ 0, %18 ], [ 0, %34 ], [ 0, %31 ], [ 0, %97 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i8 %181
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_earlier_stmt(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 !prof !172 !PGOFuncName !335 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @gimple_uid(ptr noundef nonnull %0) #20
  %8 = tail call fastcc i32 @gimple_uid(ptr noundef nonnull %1) #20
  %9 = icmp eq i32 %7, 0
  %10 = icmp eq i32 %8, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %13) #20
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 665, ptr noundef nonnull @.str.6) #21
  %17 = load ptr, ptr @stmt_vec_info_vec, align 8
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %20 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %19) #20
  %21 = icmp ugt i32 %8, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 666, ptr noundef nonnull @.str.6) #21
  br label %23

23:                                               ; preds = %18, %22
  %24 = icmp ult i32 %7, %8
  %25 = select i1 %24, ptr %0, ptr %1
  br label %26

26:                                               ; preds = %23, %6, %4, %2
  %27 = phi ptr [ %1, %2 ], [ %0, %4 ], [ null, %6 ], [ %25, %23 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_slp_instance_heap_reserve(ptr nocapture noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !336 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = tail call fastcc i32 @VEC_slp_instance_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !182
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_slp_instance_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !172 !PGOFuncName !337 {
  %3 = load i32, ptr %0, align 8, !tbaa !338
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !338
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_slp_instance_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !340 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !341
  %6 = load i32, ptr %0, align 8, !tbaa !338
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_make_slp_decision(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !342 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %5 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7, !prof !344

7:                                                ; preds = %1
  %8 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %9 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 30, i64 1, ptr %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !345

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 17
  store i32 1, ptr %14, align 8, !tbaa !346
  br label %33

15:                                               ; preds = %10, %15
  %16 = phi i32 [ %23, %15 ], [ 0, %10 ]
  %17 = phi i32 [ %21, %15 ], [ 1, %10 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct._slp_instance, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !220
  %21 = tail call i32 @llvm.umax.i32(i32 %17, i32 %20)
  %22 = load ptr, ptr %18, align 8, !tbaa !173
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %22, i32 noundef 1, i32 noundef -1) #20
  %23 = add nuw i32 %16, 1
  %24 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %4, i32 noundef %23, ptr noundef nonnull %2) #20, !range !188
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %15, !prof !347, !llvm.loop !348

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 17
  store i32 %21, ptr %27, align 8, !tbaa !346
  %28 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.35, i32 noundef %23, i32 noundef %21) #20
  br label %33

33:                                               ; preds = %13, %30, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_slp_instance_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !349 !PGOFuncName !350 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !351

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !338
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !351

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !182
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_mark_slp_stmts(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !172 !PGOFuncName !352 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = icmp eq ptr %0, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %4) #20, !range !188
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = icmp slt i32 %2, 0
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi ptr [ %8, %11 ], [ %24, %23 ]
  %15 = phi i32 [ 0, %11 ], [ %25, %23 ]
  %16 = icmp eq i32 %15, %2
  %17 = or i1 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8, !tbaa !182
  %20 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %19) #20
  %21 = getelementptr inbounds %struct._stmt_vec_info, ptr %20, i64 0, i32 25
  store i32 %1, ptr %21, align 4, !tbaa !353
  %22 = load ptr, ptr %7, align 8, !tbaa !216
  br label %23

23:                                               ; preds = %13, %18
  %24 = phi ptr [ %14, %13 ], [ %22, %18 ]
  %25 = add nuw nsw i32 %15, 1
  %26 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef %25, ptr noundef nonnull %4) #20, !range !188
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13, !llvm.loop !354

28:                                               ; preds = %23, %6
  %29 = load ptr, ptr %0, align 8, !tbaa !177
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %29, i32 noundef %1, i32 noundef %2) #20
  %30 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %31, i32 noundef %1, i32 noundef %2) #20
  br label %32

32:                                               ; preds = %3, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_detect_hybrid_slp(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !342 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %5 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7, !prof !344

7:                                                ; preds = %1
  %8 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %9 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 30, i64 1, ptr %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13, !prof !345

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %10 ]
  %15 = load ptr, ptr %2, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  tail call fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %16) #20
  %17 = add i32 %14, 1
  %18 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %4, i32 noundef %17, ptr noundef nonnull %2) #20, !range !188
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %13, !prof !347, !llvm.loop !355

20:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !356 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %5, %49
  %11 = phi i32 [ %50, %49 ], [ 0, %5 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !182
  %13 = call fastcc ptr @vinfo_for_stmt(ptr noundef %12) #20
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !353
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %49

17:                                               ; preds = %10
  %18 = call fastcc ptr @gimple_op(ptr noundef %12, i32 noundef 0) #20
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = call fastcc ptr @gimple_op(ptr noundef %12, i32 noundef 0) #20
  %24 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %23) #20
  %25 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !133
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %24, %22 ]
  %29 = call fastcc ptr @vinfo_for_stmt(ptr noundef %28) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 25
  %33 = load i32, ptr %32, align 4, !tbaa !353
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !357
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %29, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !280
  %42 = add i32 %41, -5
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35
  call fastcc void @vect_mark_slp_stmts(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %11) #20
  br label %45

45:                                               ; preds = %39, %27, %31, %44
  %46 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #20
  %47 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !133
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %27, label %49, !llvm.loop !358

49:                                               ; preds = %45, %22, %10, %17
  %50 = add nuw nsw i32 %11, 1
  %51 = load ptr, ptr %6, align 8, !tbaa !216
  %52 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %51, i32 noundef %50, ptr noundef nonnull %2) #20, !range !188
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %10, !llvm.loop !359

54:                                               ; preds = %49, %5
  %55 = load ptr, ptr %0, align 8, !tbaa !177
  call fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %55) #20
  %56 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !179
  call fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %57) #20
  br label %58

58:                                               ; preds = %1, %54
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !360 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !361
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !364
  store ptr %6, ptr %0, align 8, !tbaa !365
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !133
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !365
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !366 {
  %2 = load ptr, ptr %0, align 8, !tbaa !365
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !367 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !368
  store ptr %4, ptr %0, align 8, !tbaa !365
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !133
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !369
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !365
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !370 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !273
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !371

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !372

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !369
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !172 !PGOFuncName !373 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 !prof !172 !PGOFuncName !375 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !376
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 918, ptr noundef nonnull @.str.6) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !376
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !378
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !379
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !380
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !381 {
  %2 = load i8, ptr %0, align 8, !tbaa !376
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #13 !prof !172 !PGOFuncName !382 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !364
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !383 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !384
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !385
  store ptr %7, ptr %2, align 8, !tbaa !384
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !387
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !379
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !378
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !387
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !376
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !prof !172 !PGOFuncName !388 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 771, ptr noundef nonnull @.str.6) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !380
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #4 !prof !172 !PGOFuncName !389 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !133
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !390
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #13 !prof !172 !PGOFuncName !391 {
  %2 = load ptr, ptr %0, align 8, !tbaa !392
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !364
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !364
  store ptr %2, ptr %6, align 8, !tbaa !392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !172 !PGOFuncName !393 {
  store ptr %1, ptr %0, align 8, !tbaa !392
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !364
  store ptr %0, ptr %4, align 8, !tbaa !392
  store ptr %0, ptr %3, align 8, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #14 !prof !172 !PGOFuncName !394 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !376
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !395 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !156
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !396 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !397 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !156
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.6) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !prof !172 !PGOFuncName !398 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 747, ptr noundef nonnull @.str.6) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !399
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !399
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !400
  store ptr %22, ptr %16, align 8, !tbaa !399
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !384
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !384
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !385
  store ptr %36, ptr %29, align 8, !tbaa !384
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !376
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !402 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !133
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !403 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !133
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !404 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !133
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !405 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !133
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !406 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @vect_slp_analyze_bb(ptr noundef %0) local_unnamed_addr #5 !prof !131 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !407

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %8 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 26, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !133
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %29, !prof !408

12:                                               ; preds = %9, %25
  %13 = phi i32 [ %26, %25 ], [ 0, %9 ]
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %15 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %14) #20, !range !133
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25, !prof !409

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %14) #20, !range !133
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25, !prof !409

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @gimple_code(ptr noundef %14) #20, !range !273
  %22 = icmp ne i32 %21, 4
  %23 = zext i1 %22 to i32
  %24 = add nsw i32 %13, %23
  br label %25

25:                                               ; preds = %20, %17, %12
  %26 = phi i32 [ %13, %12 ], [ %13, %17 ], [ %24, %20 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !133
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %12, label %29, !prof !410, !llvm.loop !411

29:                                               ; preds = %25, %9
  %30 = phi i32 [ 0, %9 ], [ %26, %25 ]
  %31 = load ptr, ptr @compiler_params, align 8, !tbaa !182
  %32 = getelementptr inbounds %struct.param_info, ptr %31, i64 113, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !412
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %41, !prof !132

35:                                               ; preds = %29
  %36 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %145, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %40 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 54, i64 1, ptr %39)
  br label %145

41:                                               ; preds = %29
  %42 = tail call fastcc ptr @new_bb_vec_info(ptr noundef %0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %145, label %44, !prof !132

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @vect_analyze_data_refs(ptr noundef null, ptr noundef nonnull %42) #21
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %54, !prof !414

47:                                               ; preds = %44
  %48 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50, !prof !415

50:                                               ; preds = %47
  %51 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %52 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 51, i64 1, ptr %51)
  br label %53

53:                                               ; preds = %50, %47
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct._bb_vec_info, ptr %42, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !416
  %57 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %56) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66, !prof !418

59:                                               ; preds = %54
  %60 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62, !prof !419

62:                                               ; preds = %59
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %64 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 53, i64 1, ptr %63)
  br label %65

65:                                               ; preds = %62, %59
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

66:                                               ; preds = %54
  %67 = tail call zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef null, ptr noundef nonnull %42) #21
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %76, !prof !420

69:                                               ; preds = %66
  %70 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %74 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 51, i64 1, ptr %73)
  br label %75

75:                                               ; preds = %72, %69
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

76:                                               ; preds = %66
  %77 = tail call zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef null, ptr noundef nonnull %42) #21
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %86, !prof !421

79:                                               ; preds = %76
  %80 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82, !prof !422

82:                                               ; preds = %79
  %83 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %84 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 58, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %82, %79
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

86:                                               ; preds = %76
  %87 = tail call zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef null, ptr noundef nonnull %42) #21
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %96, !prof !423

89:                                               ; preds = %86
  %90 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92, !prof !424

92:                                               ; preds = %89
  %93 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %94 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 54, i64 1, ptr %93)
  br label %95

95:                                               ; preds = %92, %89
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

96:                                               ; preds = %86
  %97 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef null, ptr noundef nonnull %42) #21
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %106, !prof !425

99:                                               ; preds = %96
  %100 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102, !prof !426

102:                                              ; preds = %99
  %103 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %104 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 54, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %102, %99
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

106:                                              ; preds = %96
  %107 = tail call zeroext i8 @vect_analyze_slp(ptr noundef null, ptr noundef nonnull %42) #20, !range !133
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %116, !prof !194

109:                                              ; preds = %106
  %110 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112, !prof !194

112:                                              ; preds = %109
  %113 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %114 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 65, i64 1, ptr %113)
  br label %115

115:                                              ; preds = %112, %109
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct._bb_vec_info, ptr %42, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !427
  %119 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %118, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %116, %121
  %122 = phi i32 [ %126, %121 ], [ 0, %116 ]
  %123 = load ptr, ptr %2, align 8, !tbaa !182
  %124 = load ptr, ptr %123, align 8, !tbaa !173
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %124, i32 noundef 1, i32 noundef -1) #20
  %125 = load ptr, ptr %123, align 8, !tbaa !173
  tail call fastcc void @vect_mark_slp_stmts_relevant(ptr noundef %125) #20
  %126 = add nuw nsw i32 %122, 1
  %127 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %118, i32 noundef %126, ptr noundef nonnull %2) #20, !range !188
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %121, !llvm.loop !428

129:                                              ; preds = %121, %116
  %130 = tail call fastcc zeroext i8 @vect_slp_analyze_operations(ptr noundef nonnull %42) #20, !range !133
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %137 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 46, i64 1, ptr %136)
  br label %138

138:                                              ; preds = %135, %132
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %42) #20
  br label %145

139:                                              ; preds = %129
  %140 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %144 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 41, i64 1, ptr %143)
  br label %145

145:                                              ; preds = %139, %142, %41, %35, %38, %138, %115, %105, %95, %85, %75, %65, %53
  %146 = phi ptr [ null, %138 ], [ null, %115 ], [ null, %105 ], [ null, %95 ], [ null, %85 ], [ null, %75 ], [ null, %65 ], [ null, %53 ], [ null, %38 ], [ null, %35 ], [ null, %41 ], [ %42, %142 ], [ %42, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %146
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !429 !PGOFuncName !430 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !429 !PGOFuncName !431 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !273
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_bb_vec_info(ptr noundef %0) unnamed_addr #5 !prof !131 !PGOFuncName !432 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #21
  store ptr %0, ptr %3, align 8, !tbaa !433
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !408

6:                                                ; preds = %1, %6
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  tail call fastcc void @gimple_set_uid(ptr noundef %7, i32 noundef 0) #20
  %8 = tail call ptr @new_stmt_vec_info(ptr noundef %7, ptr noundef null, ptr noundef nonnull %3) #21
  tail call fastcc void @set_vinfo_for_stmt(ptr noundef %7, ptr noundef %8) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %6, label %11, !prof !410, !llvm.loop !434

11:                                               ; preds = %6, %1
  %12 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef 10) #20
  %13 = getelementptr inbounds %struct._bb_vec_info, ptr %3, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !435
  %14 = tail call fastcc ptr @VEC_slp_instance_heap_alloc() #20
  %15 = getelementptr inbounds %struct._bb_vec_info, ptr %3, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !427
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  store ptr %3, ptr %16, align 8, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_refs(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @destroy_bb_vec_info(ptr noundef %0) unnamed_addr #5 !prof !131 !PGOFuncName !437 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4, !prof !132

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !433
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #20
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %16, !prof !408

8:                                                ; preds = %4, %13
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %10 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !438

12:                                               ; preds = %8
  tail call void @free_stmt_vec_info(ptr noundef %9) #21
  br label %13

13:                                               ; preds = %12, %8
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %8, label %16, !prof !410, !llvm.loop !439

16:                                               ; preds = %13, %4
  %17 = getelementptr inbounds %struct._bb_vec_info, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %17) #20
  %18 = getelementptr inbounds %struct._bb_vec_info, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_slp_instance_heap_free(ptr noundef nonnull %18) #20
  tail call void @free(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 2
  store ptr null, ptr %19, align 8, !tbaa !436
  br label %20

20:                                               ; preds = %1, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !440 !PGOFuncName !441 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !418

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !442
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @vect_verify_datarefs_alignment(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_mark_slp_stmts_relevant(ptr noundef readonly %0) unnamed_addr #5 !prof !172 !PGOFuncName !444 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !216
  %7 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4, %16
  %10 = phi i32 [ %17, %16 ], [ 0, %4 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !182
  %12 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %11) #20
  %13 = getelementptr inbounds %struct._stmt_vec_info, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !357
  switch i32 %14, label %15 [
    i32 0, label %16
    i32 4, label %16
  ]

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 721, ptr noundef nonnull @.str.6) #21
  br label %16

16:                                               ; preds = %9, %9, %15
  store i32 4, ptr %13, align 8, !tbaa !357
  %17 = add nuw nsw i32 %10, 1
  %18 = load ptr, ptr %5, align 8, !tbaa !216
  %19 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %18, i32 noundef %17, ptr noundef nonnull %2) #20, !range !188
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %9, !llvm.loop !445

21:                                               ; preds = %16, %4
  %22 = load ptr, ptr %0, align 8, !tbaa !177
  tail call fastcc void @vect_mark_slp_stmts_relevant(ptr noundef %22) #20
  %23 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !179
  tail call fastcc void @vect_mark_slp_stmts_relevant(ptr noundef %24) #20
  br label %25

25:                                               ; preds = %1, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vect_slp_analyze_operations(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !446 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct._bb_vec_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %5 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %16
  %8 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !182
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = tail call fastcc zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %10) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @vect_free_slp_instance(ptr noundef nonnull %9) #20
  tail call fastcc void @VEC_slp_instance_base_ordered_remove(ptr noundef %4, i32 noundef %8) #20
  br label %16

14:                                               ; preds = %7
  %15 = add nsw i32 %8, 1
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %15, %14 ], [ %8, %13 ]
  %18 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %4, i32 noundef %17, ptr noundef nonnull %2) #20, !range !188
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %7, !llvm.loop !447

20:                                               ; preds = %16, %1
  %21 = tail call fastcc i32 @VEC_slp_instance_base_length(ptr noundef %4) #20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !prof !448 !PGOFuncName !449 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !156
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_vinfo_for_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !429 !PGOFuncName !450 {
  %3 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12, !prof !409

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !438

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 639, ptr noundef nonnull @.str.6) #21
  br label %8

8:                                                ; preds = %5, %7
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %9) #20
  %11 = add i32 %10, 1
  tail call fastcc void @gimple_set_uid(ptr noundef %0, i32 noundef %11) #20
  tail call fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %1) #20
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = add i32 %3, -1
  tail call fastcc void @VEC_vec_void_p_base_replace(ptr noundef %13, i32 noundef %14, ptr noundef %1) #20
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_slp_instance_heap_alloc() unnamed_addr #5 !prof !131 !PGOFuncName !451 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #5 !prof !429 !PGOFuncName !452 {
  tail call fastcc void @VEC_vec_void_p_heap_reserve() #20
  %2 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !182
  tail call fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !172 !PGOFuncName !453 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_reserve() unnamed_addr #5 !prof !429 !PGOFuncName !454 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !182
  %2 = tail call fastcc i32 @VEC_vec_void_p_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !455

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !182
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !429 !PGOFuncName !456 {
  %3 = load i32, ptr %0, align 8, !tbaa !264
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !264
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !429 !PGOFuncName !457 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !438

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !458
  %6 = load i32, ptr %0, align 8, !tbaa !264
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @free_stmt_vec_info(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_slp_instance_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !131 !PGOFuncName !459 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !132

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !460 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !177
  %7 = tail call fastcc zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %6) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !179
  %12 = tail call fastcc zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %3) #20, !range !188
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %24

19:                                               ; preds = %35
  %20 = add nuw nsw i32 %25, 1
  %21 = load ptr, ptr %15, align 8, !tbaa !216
  %22 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %3) #20, !range !188
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24, !llvm.loop !461

24:                                               ; preds = %14, %19
  %25 = phi i32 [ %20, %19 ], [ 0, %14 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !182
  %27 = call fastcc ptr @vinfo_for_stmt(ptr noundef %26) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 1222, ptr noundef nonnull @.str.6) #21
  br label %30

30:                                               ; preds = %24, %29
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 25
  %32 = load i32, ptr %31, align 4, !tbaa !353
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 1223, ptr noundef nonnull @.str.6) #21
  br label %35

35:                                               ; preds = %30, %34
  %36 = call zeroext i8 @vect_analyze_stmt(ptr noundef %26, ptr noundef nonnull %2, ptr noundef nonnull %0) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %19

38:                                               ; preds = %35, %19, %14, %5, %9, %1
  %39 = phi i8 [ 1, %1 ], [ 0, %9 ], [ 0, %5 ], [ 1, %14 ], [ 0, %35 ], [ 1, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret i8 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_slp_instance_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !172 !PGOFuncName !462 {
  %3 = load i32, ptr %0, align 8, !tbaa !338
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !338
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_slp_instance_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !463 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !338
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @vect_analyze_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_update_slp_costs_according_to_vf(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !342 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %7 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !344

9:                                                ; preds = %1
  %10 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %11 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 45, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #20, !range !188
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15, !prof !345

15:                                               ; preds = %12, %15
  %16 = phi i32 [ %24, %15 ], [ 0, %12 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !182
  %18 = getelementptr inbounds %struct._slp_instance, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !220
  %20 = udiv i32 %4, %19
  %21 = getelementptr inbounds %struct._slp_instance, ptr %17, i64 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !222
  %23 = mul i32 %22, %20
  store i32 %23, ptr %21, align 4, !tbaa !222
  %24 = add i32 %16, 1
  %25 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %6, i32 noundef %24, ptr noundef nonnull %2) #20, !range !188
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %15, !prof !347, !llvm.loop !464

27:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_get_slp_defs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #5 !prof !172 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %7, i32 noundef 0) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._slp_tree, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !465
  br label %27

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !465
  %17 = call ptr @vect_get_smallest_scalar_type(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %18 = load i64, ptr %5, align 8, !tbaa !250
  %19 = load i64, ptr %4, align 8, !tbaa !250
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = trunc i64 %18 to i32
  %23 = mul i32 %16, %22
  %24 = sext i32 %23 to i64
  %25 = sdiv i64 %24, %19
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %14, %21, %11
  %28 = phi i32 [ %13, %11 ], [ %26, %21 ], [ %16, %14 ]
  %29 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %28) #20
  store ptr %29, ptr %1, align 8, !tbaa !182
  %30 = load ptr, ptr %0, align 8, !tbaa !177
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  call fastcc void @vect_get_slp_vect_defs(ptr noundef nonnull %30, ptr noundef nonnull %1) #20
  br label %34

33:                                               ; preds = %27
  call fastcc void @vect_get_constant_vectors(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %28) #20
  br label %34

34:                                               ; preds = %33, %32
  %35 = call fastcc ptr @vinfo_for_stmt(ptr noundef %8) #20
  %36 = getelementptr inbounds %struct._stmt_vec_info, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !206
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %8) #20, !range !234
  %41 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %40) #20, !range !273
  %42 = icmp eq i32 %41, 1
  %43 = icmp ne ptr %2, null
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !179
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr %0, ptr %47
  %50 = getelementptr inbounds %struct._slp_tree, ptr %49, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !465
  %52 = call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %51) #20
  store ptr %52, ptr %2, align 8, !tbaa !182
  %53 = load ptr, ptr %46, align 8, !tbaa !179
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  call fastcc void @vect_get_slp_vect_defs(ptr noundef nonnull %53, ptr noundef nonnull %2) #20
  br label %57

56:                                               ; preds = %45
  call fastcc void @vect_get_constant_vectors(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %51) #20
  br label %57

57:                                               ; preds = %55, %56, %39, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #5 !prof !172 !PGOFuncName !466 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_get_slp_vect_defs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !172 !PGOFuncName !467 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 1548, ptr noundef nonnull @.str.6) #21
  %8 = load ptr, ptr %4, align 8, !tbaa !180
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %5, %2 ], [ %8, %7 ]
  %11 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %3) #20, !range !188
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ %21, %18 ], [ 0, %9 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !182
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 1554, ptr noundef nonnull @.str.6) #21
  br label %18

18:                                               ; preds = %13, %17
  %19 = tail call ptr @gimple_get_lhs(ptr noundef %15) #21
  %20 = load ptr, ptr %1, align 8, !tbaa !182
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %20, ptr noundef %19) #20
  %21 = add i32 %14, 1
  %22 = load ptr, ptr %4, align 8, !tbaa !180
  %23 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %22, i32 noundef %21, ptr noundef nonnull %3) #20, !range !188
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !468

25:                                               ; preds = %18, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_get_constant_vectors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !prof !172 !PGOFuncName !469 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %9, i32 noundef 0) #20
  store ptr %10, ptr %5, align 8, !tbaa !182
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %12 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %13 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %3) #20
  store ptr %13, ptr %7, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #20
  br label %22

19:                                               ; preds = %4
  %20 = add nuw nsw i32 %2, 1
  %21 = tail call fastcc ptr @gimple_op(ptr noundef %10, i32 noundef %20) #20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !205
  %28 = icmp eq i32 %27, 1
  %29 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !156
  %31 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %30) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 1463, ptr noundef nonnull @.str.6) #21
  br label %34

34:                                               ; preds = %22, %33
  %35 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @least_common_multiple(i32 noundef %40, i32 noundef %12) #21
  %42 = sdiv i32 %41, %12
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %34
  %45 = add i32 %12, -1
  %46 = add nuw nsw i32 %2, 1
  br label %47

47:                                               ; preds = %44, %81
  %48 = phi ptr [ null, %44 ], [ %83, %81 ]
  %49 = phi i32 [ 0, %44 ], [ %84, %81 ]
  %50 = phi i32 [ %40, %44 ], [ %82, %81 ]
  %51 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef %45, ptr noundef nonnull %5) #20, !range !188
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %47, %75
  %54 = phi i32 [ %78, %75 ], [ %45, %47 ]
  %55 = phi ptr [ %77, %75 ], [ %48, %47 ]
  %56 = phi i32 [ %76, %75 ], [ %50, %47 ]
  %57 = load ptr, ptr %5, align 8, !tbaa !182
  br i1 %16, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %57) #20
  br label %62

60:                                               ; preds = %53
  %61 = tail call fastcc ptr @gimple_op(ptr noundef %57, i32 noundef %46) #20
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi ptr [ %59, %58 ], [ %61, %60 ]
  %64 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %63, ptr noundef %55) #21
  %65 = add nsw i32 %56, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  br i1 %28, label %68, label %70

68:                                               ; preds = %67
  %69 = tail call ptr @build_vector(ptr noundef %31, ptr noundef %64) #21
  br label %72

70:                                               ; preds = %67
  %71 = tail call ptr @build_constructor_from_list(ptr noundef %31, ptr noundef %64) #21
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = tail call ptr @vect_init_vector(ptr noundef %57, ptr noundef %73, ptr noundef %31, ptr noundef null) #21
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %13, ptr noundef %74) #20
  br label %75

75:                                               ; preds = %62, %72
  %76 = phi i32 [ %40, %72 ], [ %65, %62 ]
  %77 = phi ptr [ null, %72 ], [ %64, %62 ]
  %78 = add i32 %54, -1
  %79 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef %78, ptr noundef nonnull %5) #20, !range !188
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %53, !llvm.loop !470

81:                                               ; preds = %75, %47
  %82 = phi i32 [ %50, %47 ], [ %76, %75 ]
  %83 = phi ptr [ %48, %47 ], [ %77, %75 ]
  %84 = add nuw nsw i32 %49, 1
  %85 = icmp eq i32 %84, %42
  br i1 %85, label %86, label %47, !llvm.loop !471

86:                                               ; preds = %81, %34
  %87 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #20
  %88 = add i32 %87, -1
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %90
  %91 = phi i32 [ %94, %90 ], [ %88, %86 ]
  %92 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %91) #20
  %93 = load ptr, ptr %1, align 8, !tbaa !182
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %93, ptr noundef %92) #20
  %94 = add nsw i32 %91, -1
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %96, label %90, !llvm.loop !472

96:                                               ; preds = %90, %86
  %97 = phi ptr [ undef, %86 ], [ %92, %90 ]
  store ptr %97, ptr %6, align 8, !tbaa !182
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %7) #20
  %98 = load ptr, ptr %1, align 8, !tbaa !182
  %99 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %98) #20
  %100 = icmp ult i32 %99, %3
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = icmp ne i32 %87, 0
  br label %107

103:                                              ; preds = %112, %107
  %104 = phi ptr [ %108, %107 ], [ %117, %112 ]
  %105 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %104) #20
  %106 = icmp ult i32 %105, %3
  br i1 %106, label %107, label %122, !llvm.loop !473

107:                                              ; preds = %101, %103
  %108 = phi ptr [ %98, %101 ], [ %104, %103 ]
  %109 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %108, i32 noundef 0, ptr noundef nonnull %6) #20, !range !188
  %110 = icmp ne i32 %109, 0
  %111 = and i1 %110, %102
  br i1 %111, label %112, label %103

112:                                              ; preds = %107, %112
  %113 = phi ptr [ %117, %112 ], [ %108, %107 ]
  %114 = phi i32 [ %116, %112 ], [ 0, %107 ]
  %115 = load ptr, ptr %6, align 8, !tbaa !182
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %113, ptr noundef %115) #20
  %116 = add nuw i32 %114, 1
  %117 = load ptr, ptr %1, align 8, !tbaa !182
  %118 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %117, i32 noundef %116, ptr noundef nonnull %6) #20, !range !188
  %119 = icmp ne i32 %118, 0
  %120 = icmp ult i32 %116, %87
  %121 = and i1 %119, %120
  br i1 %121, label %112, label %103, !llvm.loop !474

122:                                              ; preds = %103, %96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !172 !PGOFuncName !475 {
  %3 = load i32, ptr %0, align 8, !tbaa !476
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !476
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !478 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !198
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @vect_init_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !479 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !476
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !172 !PGOFuncName !480 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !172 !PGOFuncName !481 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !172 !PGOFuncName !482 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !476
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !182
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_get_mask_element(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #5 !prof !172 !PGOFuncName !483 {
  %10 = add nsw i32 %2, %1
  %11 = load i32, ptr @vect_get_mask_element.number_of_mask_fixes, align 4, !tbaa !205
  %12 = add nsw i32 %11, -1
  %13 = mul nsw i32 %12, %3
  %14 = sub nsw i32 %10, %13
  store i32 %14, ptr %7, align 4, !tbaa !205
  %15 = icmp slt i32 %14, %3
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i1 true, ptr @vect_get_mask_element.needs_first_vector, align 1
  br label %26

17:                                               ; preds = %9
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %24 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 42, i64 1, ptr %23)
  %25 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %25, ptr noundef %0, i32 noundef 0, i32 noundef 2) #21
  br label %61

26:                                               ; preds = %16, %17
  %27 = shl nsw i32 %3, 1
  %28 = icmp slt i32 %14, %27
  %29 = load i1, ptr @vect_get_mask_element.mask_fixed, align 1
  br i1 %28, label %55, label %30

30:                                               ; preds = %26
  %31 = load i1, ptr @vect_get_mask_element.needs_first_vector, align 1
  %32 = select i1 %31, i1 true, i1 %29
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %38 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 44, i64 1, ptr %37)
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %39, ptr noundef %0, i32 noundef 0, i32 noundef 2) #21
  br label %61

40:                                               ; preds = %30
  %41 = mul nsw i32 %11, %3
  %42 = sub nsw i32 %14, %41
  store i32 %42, ptr %7, align 4, !tbaa !205
  %43 = icmp sgt i32 %5, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = zext nneg i32 %5 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %51, %46 ]
  %48 = getelementptr inbounds i32, ptr %6, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !205
  %50 = sub nsw i32 %49, %41
  store i32 %50, ptr %48, align 4, !tbaa !205
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %45
  br i1 %52, label %53, label %46, !llvm.loop !484

53:                                               ; preds = %46, %40
  %54 = add nsw i32 %11, 1
  store i32 %54, ptr @vect_get_mask_element.number_of_mask_fixes, align 4, !tbaa !205
  store i1 true, ptr @vect_get_mask_element.mask_fixed, align 1
  br label %55

55:                                               ; preds = %53, %26
  %56 = phi i1 [ true, %53 ], [ %29, %26 ]
  %57 = zext i1 %56 to i8
  store i8 %57, ptr %8, align 1, !tbaa !156
  %58 = add nsw i32 %3, -1
  %59 = icmp eq i32 %58, %5
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, ptr @vect_get_mask_element.number_of_mask_fixes, align 4, !tbaa !205
  store i1 false, ptr @vect_get_mask_element.mask_fixed, align 1
  store i1 false, ptr @vect_get_mask_element.needs_first_vector, align 1
  br label %61

61:                                               ; preds = %55, %60, %33, %36, %19, %22
  %62 = phi i8 [ 0, %22 ], [ 0, %19 ], [ 0, %36 ], [ 0, %33 ], [ 1, %60 ], [ 1, %55 ]
  ret i8 %62
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_create_mask_and_perm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, i32 noundef %11) unnamed_addr #5 !prof !172 !PGOFuncName !485 {
  %13 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct._slp_tree, ptr %6, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !465
  %16 = udiv i32 %15, %10
  %17 = getelementptr inbounds %struct._slp_tree, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !180
  %19 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %18) #20
  %20 = icmp slt i32 %19, %15
  br i1 %20, label %21, label %27

21:                                               ; preds = %12, %21
  %22 = phi i32 [ %24, %21 ], [ %19, %12 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !180
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %23, ptr noundef null) #20
  %24 = add nsw i32 %22, 1
  %25 = load i32, ptr %14, align 8, !tbaa !465
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %21, label %27, !llvm.loop !486

27:                                               ; preds = %21, %12
  %28 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %29 = tail call ptr @vect_create_destination_var(ptr noundef %28, ptr noundef %8) #21
  %30 = icmp sgt i32 %10, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27, %31
  %32 = phi i32 [ %43, %31 ], [ %3, %27 ]
  %33 = phi i32 [ %44, %31 ], [ %4, %27 ]
  %34 = phi i32 [ %45, %31 ], [ 0, %27 ]
  %35 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %9, i32 noundef %32) #20
  %36 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %9, i32 noundef %33) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %13) #20
  %37 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 3) #20
  store ptr %37, ptr %13, align 8, !tbaa !182
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %37, ptr noundef %35) #20
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %37, ptr noundef %36) #20
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %37, ptr noundef %2) #20
  %38 = tail call ptr @gimple_build_call_vec(ptr noundef %7, ptr noundef %37) #21
  %39 = tail call fastcc ptr @make_ssa_name(ptr noundef %29, ptr noundef %38) #20
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %38, ptr noundef %39) #20
  tail call void @vect_finish_stmt_generation(ptr noundef %0, ptr noundef %38, ptr noundef %5) #21
  %40 = load ptr, ptr %17, align 8, !tbaa !180
  %41 = mul nsw i32 %34, %16
  %42 = add nsw i32 %41, %11
  tail call fastcc void @VEC_gimple_base_replace(ptr noundef %40, i32 noundef %42, ptr noundef %38) #20
  %43 = add nsw i32 %32, %16
  %44 = add nsw i32 %33, %16
  %45 = add nuw nsw i32 %34, 1
  %46 = icmp eq i32 %45, %10
  br i1 %46, label %47, label %31, !llvm.loop !487

47:                                               ; preds = %31, %27
  %48 = phi ptr [ null, %27 ], [ %38, %31 ]
  %49 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #20
  %50 = getelementptr inbounds %struct._stmt_vec_info, ptr %49, i64 0, i32 6
  store ptr %48, ptr %50, align 8, !tbaa !488
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  ret void
}

; Function Attrs: optsize
declare ptr @vect_create_destination_var(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !489 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !182
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !490 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !156
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @vect_finish_stmt_generation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !172 !PGOFuncName !491 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !182
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !172 !PGOFuncName !492 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !133
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1665, ptr noundef nonnull @.str.6) #21
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  store ptr %1, ptr %10, align 8, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_schedule_slp(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !172 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !213
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %6, %5 ], [ %10, %9 ]
  %13 = phi i32 [ %8, %5 ], [ 1, %9 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !182
  %15 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3) #20, !range !188
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %11, %30
  %18 = phi i32 [ %31, %30 ], [ 0, %11 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !182
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = tail call fastcc zeroext i8 @vect_schedule_slp_instance(ptr noundef %20, ptr noundef nonnull %19, i32 noundef %13) #20, !range !133
  %22 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %17
  %28 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %29 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 28, i64 1, ptr %28)
  br label %30

30:                                               ; preds = %24, %27
  %31 = add i32 %18, 1
  %32 = call fastcc i32 @VEC_slp_instance_base_iterate(ptr noundef %14, i32 noundef %31, ptr noundef nonnull %3) #20, !range !188
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %17, !llvm.loop !493

34:                                               ; preds = %30, %11
  %35 = phi i8 [ 0, %11 ], [ %21, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vect_schedule_slp_instance(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 !prof !172 !PGOFuncName !494 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = icmp eq ptr %0, null
  br i1 %7, label %97, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !177
  %10 = tail call fastcc zeroext i8 @vect_schedule_slp_instance(ptr noundef %9, ptr noundef %1, i32 noundef %2) #20, !range !133
  %11 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !179
  %13 = tail call fastcc zeroext i8 @vect_schedule_slp_instance(ptr noundef %12, ptr noundef %1, i32 noundef %2) #20, !range !133
  %14 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  %16 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %15, i32 noundef 0) #20
  %17 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %16) #20
  %18 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %16) #20
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %20) #21
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !219
  %30 = mul i32 %29, %2
  %31 = udiv i32 %30, %27
  %32 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !225
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %8
  %36 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !223
  %38 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %37, i32 noundef 0, ptr noundef nonnull %6) #20, !range !188
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35, %51
  %41 = phi ptr [ %52, %51 ], [ %37, %35 ]
  %42 = phi i32 [ %53, %51 ], [ 0, %35 ]
  %43 = load ptr, ptr %6, align 8, !tbaa !182
  %44 = getelementptr inbounds %struct._slp_tree, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !180
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %31) #20
  store ptr %48, ptr %44, align 8, !tbaa !180
  %49 = getelementptr inbounds %struct._slp_tree, ptr %43, i64 0, i32 4
  store i32 %31, ptr %49, align 8, !tbaa !465
  %50 = load ptr, ptr %36, align 8, !tbaa !223
  br label %51

51:                                               ; preds = %40, %47
  %52 = phi ptr [ %41, %40 ], [ %50, %47 ]
  %53 = add nuw nsw i32 %42, 1
  %54 = call fastcc i32 @VEC_slp_tree_base_iterate(ptr noundef %52, i32 noundef %53, ptr noundef nonnull %6) #20, !range !188
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %40, !llvm.loop !495

56:                                               ; preds = %51, %35, %8
  %57 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !180
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %31) #20
  store ptr %61, ptr %57, align 8, !tbaa !180
  %62 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 4
  store i32 %31, ptr %62, align 8, !tbaa !465
  br label %63

63:                                               ; preds = %60, %56
  %64 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %68 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 43, i64 1, ptr %67)
  %69 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %69, ptr noundef %16, i32 noundef 0, i32 noundef 2) #21
  br label %70

70:                                               ; preds = %66, %63
  %71 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !224
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !239
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @gimple_get_lhs(ptr noundef %16) #21
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !205
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %71, align 8, !tbaa !224
  br label %87

87:                                               ; preds = %70, %74, %78, %85
  %88 = phi ptr [ %86, %85 ], [ %16, %78 ], [ %16, %74 ], [ %16, %70 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %88) #21
  %89 = call zeroext i8 @vect_transform_stmt(ptr noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._stmt_vec_info, ptr %17, i64 0, i32 17
  %93 = load ptr, ptr %92, align 8, !tbaa !239
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @vect_remove_stores(ptr noundef nonnull %93) #21
  br label %97

96:                                               ; preds = %91
  call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 2032, ptr noundef nonnull @.str.6) #21
  br label %97

97:                                               ; preds = %87, %95, %96, %3
  %98 = phi i8 [ 0, %3 ], [ 1, %96 ], [ 1, %95 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  ret i8 %98
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @vect_transform_stmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @vect_remove_stores(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_slp_transform_bb(ptr noundef %0) local_unnamed_addr #5 !prof !172 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call fastcc ptr @vec_info_for_bb(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 2083, ptr noundef nonnull @.str.6) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %11 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 10, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %9, %6
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12, %33
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %17 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %21 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 25, i64 1, ptr %20)
  %22 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  tail call void @print_gimple_stmt(ptr noundef %22, ptr noundef %16, i32 noundef 0, i32 noundef 2) #21
  br label %23

23:                                               ; preds = %19, %15
  %24 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %16) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.49, i32 noundef 2100, ptr noundef nonnull @.str.6) #21
  br label %27

27:                                               ; preds = %23, %26
  %28 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 25
  %29 = load i32, ptr %28, align 4, !tbaa !353
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @vect_schedule_slp(ptr noundef null, ptr noundef %3) #20, !range !133
  br label %36

33:                                               ; preds = %27
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %34 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !133
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %15, label %36, !llvm.loop !496

36:                                               ; preds = %33, %12, %31
  %37 = load ptr, ptr @cfun, align 8, !tbaa !182
  %38 = tail call fastcc ptr @gimple_vop(ptr noundef %37) #20
  tail call void @mark_sym_for_renaming(ptr noundef %38) #21
  tail call void @update_ssa(i32 noundef 2048) #21
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !182
  %43 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 23, i64 1, ptr %42)
  br label %44

44:                                               ; preds = %41, %36
  tail call fastcc void @destroy_bb_vec_info(ptr noundef %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @vec_info_for_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !172 !PGOFuncName !497 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !436
  ret ptr %3
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #5 !prof !172 !PGOFuncName !498 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !499
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 51, ptr noundef nonnull @.str.6) #21
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !499
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !501
  ret ptr %13
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!130}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!36 = !{ptr @find_bb_location, ptr @gsi_start_bb, i64 258390}
!37 = !{ptr @find_bb_location, ptr @gsi_end_p, i64 300335}
!38 = !{ptr @find_bb_location, ptr @gsi_stmt, i64 292700}
!39 = !{ptr @find_bb_location, ptr @gimple_location, i64 292700}
!40 = !{ptr @find_bb_location, ptr @gsi_next, i64 41945}
!41 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1033564}
!42 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1033564}
!43 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 258390}
!44 = !{ptr @vect_analyze_slp, ptr @vect_print_dump_info, i64 294}
!45 = !{ptr @vect_analyze_slp, ptr @fwrite, i64 2}
!46 = !{ptr @vect_analyze_slp, ptr @VEC_gimple_base_iterate, i64 162}
!47 = !{ptr @vect_analyze_slp, ptr @vect_analyze_slp_instance, i64 3}
!48 = !{ptr @vect_analyze_slp_instance, ptr @xmalloc, i64 2}
!49 = !{ptr @vect_analyze_slp_instance, ptr @vinfo_for_stmt, i64 17}
!50 = !{ptr @vect_analyze_slp_instance, ptr @get_vectype_for_scalar_type, i64 2}
!51 = !{ptr @vect_analyze_slp_instance, ptr @least_common_multiple, i64 2}
!52 = !{ptr @vect_analyze_slp_instance, ptr @vect_print_dump_info, i64 1}
!53 = !{ptr @vect_analyze_slp_instance, ptr @VEC_gimple_heap_alloc, i64 1}
!54 = !{ptr @vect_analyze_slp_instance, ptr @VEC_gimple_heap_safe_push, i64 13}
!55 = !{ptr @vect_analyze_slp_instance, ptr @VEC_int_heap_alloc, i64 1}
!56 = !{ptr @vect_analyze_slp_instance, ptr @VEC_slp_tree_heap_alloc, i64 1}
!57 = !{ptr @vect_analyze_slp_instance, ptr @vect_build_slp_tree, i64 1}
!58 = !{ptr @vinfo_for_stmt, ptr @gimple_uid, i64 687887}
!59 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 687886}
!60 = !{ptr @vinfo_for_stmt, ptr @fancy_abort, i64 1}
!61 = !{ptr @vinfo_for_stmt, ptr @VEC_vec_void_p_base_index, i64 687886}
!62 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 258391}
!63 = !{ptr @vect_make_slp_decision, ptr @vect_print_dump_info, i64 23}
!64 = !{ptr @vect_make_slp_decision, ptr @fwrite, i64 1}
!65 = !{ptr @vect_make_slp_decision, ptr @VEC_slp_instance_base_iterate, i64 23}
!66 = !{ptr @vect_make_slp_decision, ptr @vect_mark_slp_stmts, i64 1}
!67 = !{ptr @vect_make_slp_decision, ptr @fprintf, i64 1}
!68 = !{ptr @vect_detect_hybrid_slp, ptr @vect_print_dump_info, i64 22}
!69 = !{ptr @vect_detect_hybrid_slp, ptr @fwrite, i64 1}
!70 = !{ptr @vect_detect_hybrid_slp, ptr @VEC_slp_instance_base_iterate, i64 23}
!71 = !{ptr @vect_detect_hybrid_slp, ptr @vect_detect_hybrid_slp_stmts, i64 1}
!72 = !{ptr @vect_slp_analyze_bb, ptr @vect_print_dump_info, i64 516781}
!73 = !{ptr @vect_slp_analyze_bb, ptr @fwrite, i64 9}
!74 = !{ptr @vect_slp_analyze_bb, ptr @gsi_start_bb, i64 258391}
!75 = !{ptr @vect_slp_analyze_bb, ptr @gsi_end_p, i64 946272}
!76 = !{ptr @vect_slp_analyze_bb, ptr @gsi_stmt, i64 687881}
!77 = !{ptr @vect_slp_analyze_bb, ptr @is_gimple_debug, i64 687881}
!78 = !{ptr @vect_slp_analyze_bb, ptr @gimple_nop_p, i64 687880}
!79 = !{ptr @vect_slp_analyze_bb, ptr @gimple_code, i64 687879}
!80 = !{ptr @vect_slp_analyze_bb, ptr @gsi_next, i64 687881}
!81 = !{ptr @vect_slp_analyze_bb, ptr @new_bb_vec_info, i64 258390}
!82 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_refs, i64 258389}
!83 = !{ptr @vect_slp_analyze_bb, ptr @destroy_bb_vec_info, i64 258388}
!84 = !{ptr @vect_slp_analyze_bb, ptr @VEC_ddr_p_base_length, i64 90824}
!85 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_refs_alignment, i64 11306}
!86 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_ref_dependences, i64 11305}
!87 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_ref_accesses, i64 10941}
!88 = !{ptr @vect_slp_analyze_bb, ptr @vect_verify_datarefs_alignment, i64 727}
!89 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_slp, i64 138}
!90 = !{ptr @vect_slp_analyze_bb, ptr @VEC_slp_instance_base_iterate, i64 21}
!91 = !{ptr @vect_slp_analyze_bb, ptr @vect_mark_slp_stmts, i64 20}
!92 = !{ptr @vect_slp_analyze_bb, ptr @vect_mark_slp_stmts_relevant, i64 20}
!93 = !{ptr @vect_slp_analyze_bb, ptr @vect_slp_analyze_operations, i64 1}
!94 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 687883}
!95 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 687883}
!96 = !{ptr @new_bb_vec_info, ptr @xcalloc, i64 258391}
!97 = !{ptr @new_bb_vec_info, ptr @gsi_start_bb, i64 258391}
!98 = !{ptr @new_bb_vec_info, ptr @gsi_end_p, i64 946272}
!99 = !{ptr @new_bb_vec_info, ptr @gsi_stmt, i64 687881}
!100 = !{ptr @new_bb_vec_info, ptr @gimple_set_uid, i64 687881}
!101 = !{ptr @new_bb_vec_info, ptr @new_stmt_vec_info, i64 687881}
!102 = !{ptr @new_bb_vec_info, ptr @set_vinfo_for_stmt, i64 687881}
!103 = !{ptr @new_bb_vec_info, ptr @gsi_next, i64 687881}
!104 = !{ptr @new_bb_vec_info, ptr @VEC_gimple_heap_alloc, i64 258391}
!105 = !{ptr @new_bb_vec_info, ptr @VEC_slp_instance_heap_alloc, i64 258391}
!106 = !{ptr @destroy_bb_vec_info, ptr @gsi_start_bb, i64 258390}
!107 = !{ptr @destroy_bb_vec_info, ptr @gsi_end_p, i64 946269}
!108 = !{ptr @destroy_bb_vec_info, ptr @gsi_stmt, i64 687879}
!109 = !{ptr @destroy_bb_vec_info, ptr @vinfo_for_stmt, i64 687879}
!110 = !{ptr @destroy_bb_vec_info, ptr @free_stmt_vec_info, i64 687878}
!111 = !{ptr @destroy_bb_vec_info, ptr @gsi_next, i64 687879}
!112 = !{ptr @destroy_bb_vec_info, ptr @VEC_gimple_heap_free, i64 258390}
!113 = !{ptr @destroy_bb_vec_info, ptr @VEC_slp_instance_heap_free, i64 258390}
!114 = !{ptr @destroy_bb_vec_info, ptr @free, i64 258390}
!115 = !{ptr @set_vinfo_for_stmt, ptr @gimple_uid, i64 687883}
!116 = !{ptr @set_vinfo_for_stmt, ptr @fancy_abort, i64 1}
!117 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_base_length, i64 687882}
!118 = !{ptr @set_vinfo_for_stmt, ptr @gimple_set_uid, i64 687882}
!119 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_heap_safe_push, i64 687882}
!120 = !{ptr @set_vinfo_for_stmt, ptr @VEC_vec_void_p_base_replace, i64 1}
!121 = !{ptr @VEC_slp_instance_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 258391}
!122 = !{ptr @VEC_vec_void_p_heap_safe_push, ptr @VEC_vec_void_p_heap_reserve, i64 687883}
!123 = !{ptr @VEC_vec_void_p_heap_safe_push, ptr @VEC_vec_void_p_base_quick_push, i64 687883}
!124 = !{ptr @VEC_vec_void_p_heap_reserve, ptr @VEC_vec_void_p_base_space, i64 687883}
!125 = !{ptr @VEC_vec_void_p_heap_reserve, ptr @vec_heap_p_reserve, i64 6865}
!126 = !{ptr @VEC_slp_instance_heap_free, ptr @free, i64 258390}
!127 = !{ptr @vect_update_slp_costs_according_to_vf, ptr @vect_print_dump_info, i64 22}
!128 = !{ptr @vect_update_slp_costs_according_to_vf, ptr @fwrite, i64 1}
!129 = !{ptr @vect_update_slp_costs_according_to_vf, ptr @VEC_slp_instance_base_iterate, i64 23}
!130 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!131 = !{!"function_entry_count", i64 258391}
!132 = !{!"branch_weights", i32 1, i32 258392}
!133 = !{i8 0, i8 2}
!134 = !{!"branch_weights", i32 45254, i32 1}
!135 = !{!"branch_weights", i32 35653, i32 213138}
!136 = !{!"branch_weights", i32 203536, i32 45254}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"function_entry_count", i64 1033564}
!140 = !{!"tree-vect-slp.c:gsi_start_bb"}
!141 = !{!142, !143, i64 0}
!142 = !{!"", !143, i64 0, !143, i64 8, !143, i64 16}
!143 = !{!"any pointer", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C/C++ TBAA"}
!146 = !{!142, !143, i64 8}
!147 = !{!142, !143, i64 16}
!148 = !{!"function_entry_count", i64 3132865}
!149 = !{!"tree-vect-slp.c:gsi_end_p"}
!150 = !{!"function_entry_count", i64 2312438}
!151 = !{!"tree-vect-slp.c:gsi_stmt"}
!152 = !{!153, !143, i64 0}
!153 = !{!"gimple_seq_node_d", !143, i64 0, !143, i64 8, !143, i64 16}
!154 = !{!"function_entry_count", i64 461926}
!155 = !{!"tree-vect-slp.c:gimple_location"}
!156 = !{!144, !144, i64 0}
!157 = !{!"function_entry_count", i64 2099301}
!158 = !{!"tree-vect-slp.c:gsi_next"}
!159 = !{!153, !143, i64 16}
!160 = !{!"tree-vect-slp.c:bb_seq"}
!161 = !{!162, !164, i64 96}
!162 = !{!"basic_block_def", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !144, i64 32, !143, i64 48, !143, i64 56, !144, i64 64, !163, i64 72, !164, i64 80, !164, i64 84, !164, i64 88, !164, i64 92, !164, i64 96}
!163 = !{!"long", !144, i64 0}
!164 = !{!"int", !144, i64 0}
!165 = !{!"branch_weights", i32 1033565, i32 1}
!166 = !{!"branch_weights", i32 1, i32 1033565}
!167 = !{!168, !143, i64 0}
!168 = !{!"gimple_bb_info", !143, i64 0, !143, i64 8}
!169 = !{!"tree-vect-slp.c:gimple_seq_first"}
!170 = !{!171, !143, i64 0}
!171 = !{!"gimple_seq_d", !143, i64 0, !143, i64 8, !143, i64 16}
!172 = !{!"function_entry_count", i64 0}
!173 = !{!174, !143, i64 0}
!174 = !{!"_slp_instance", !143, i64 0, !164, i64 8, !164, i64 12, !175, i64 16, !143, i64 24, !143, i64 32, !143, i64 40}
!175 = !{!"", !164, i64 0, !164, i64 4}
!176 = !{!"tree-vect-slp.c:vect_free_slp_tree"}
!177 = !{!178, !143, i64 0}
!178 = !{!"_slp_tree", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !164, i64 32, !175, i64 36}
!179 = !{!178, !143, i64 8}
!180 = !{!178, !143, i64 24}
!181 = !{!"tree-vect-slp.c:VEC_int_heap_free"}
!182 = !{!143, !143, i64 0}
!183 = !{!"tree-vect-slp.c:VEC_slp_tree_heap_free"}
!184 = !{!"tree-vect-slp.c:VEC_gimple_heap_free"}
!185 = !{!"function_entry_count", i64 159}
!186 = !{!"branch_weights", i32 160, i32 1}
!187 = !{!"branch_weights", i32 138, i32 23}
!188 = !{i32 0, i32 2}
!189 = !{!"branch_weights", i32 157, i32 3}
!190 = !{!"branch_weights", i32 3, i32 1}
!191 = !{!"branch_weights", i32 3, i32 0}
!192 = distinct !{!192, !138}
!193 = !{!"branch_weights", i32 3335, i32 19044}
!194 = !{!"branch_weights", i32 138, i32 1}
!195 = !{!"function_entry_count", i64 161}
!196 = !{!"tree-vect-slp.c:VEC_gimple_base_iterate"}
!197 = !{!"branch_weights", i32 1, i32 162}
!198 = !{!199, !164, i64 0}
!199 = !{!"VEC_gimple_base", !164, i64 0, !164, i64 4, !144, i64 8}
!200 = !{!"branch_weights", i32 3, i32 160}
!201 = !{!"function_entry_count", i64 2}
!202 = !{!"tree-vect-slp.c:vect_analyze_slp_instance"}
!203 = !{!204, !164, i64 144}
!204 = !{!"_stmt_vec_info", !164, i64 0, !143, i64 8, !143, i64 16, !164, i64 24, !144, i64 28, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !144, i64 96, !143, i64 104, !143, i64 112, !164, i64 120, !143, i64 128, !143, i64 136, !164, i64 144, !164, i64 148, !164, i64 152, !143, i64 160, !144, i64 168, !175, i64 172, !164, i64 180, !143, i64 184}
!205 = !{!164, !164, i64 0}
!206 = !{!204, !143, i64 48}
!207 = !{!208, !143, i64 8}
!208 = !{!"data_reference", !143, i64 0, !143, i64 8, !143, i64 16, !144, i64 24, !209, i64 32, !210, i64 72, !211, i64 88, !143, i64 104}
!209 = !{!"innermost_loop_behavior", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32}
!210 = !{!"indices", !143, i64 0, !143, i64 8}
!211 = !{!"dr_alias", !143, i64 0, !143, i64 8}
!212 = !{!"branch_weights", i32 1, i32 3}
!213 = !{!214, !164, i64 40}
!214 = !{!"_loop_vec_info", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !164, i64 32, !144, i64 36, !164, i64 40, !143, i64 48, !164, i64 56, !164, i64 60, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !164, i64 96, !143, i64 104, !143, i64 112, !164, i64 120}
!215 = !{!"branch_weights", i32 7, i32 9}
!216 = !{!178, !143, i64 16}
!217 = !{!204, !143, i64 136}
!218 = distinct !{!218, !138}
!219 = !{!174, !164, i64 8}
!220 = !{!174, !164, i64 12}
!221 = !{!174, !164, i64 16}
!222 = !{!174, !164, i64 20}
!223 = !{!174, !143, i64 32}
!224 = !{!174, !143, i64 40}
!225 = !{!174, !143, i64 24}
!226 = !{!"function_entry_count", i64 687887}
!227 = !{!"tree-vect-slp.c:vinfo_for_stmt"}
!228 = !{!"branch_weights", i32 1, i32 687888}
!229 = !{!"tree-vect-slp.c:VEC_gimple_heap_alloc"}
!230 = !{!"tree-vect-slp.c:VEC_gimple_heap_safe_push"}
!231 = !{!"tree-vect-slp.c:VEC_int_heap_alloc"}
!232 = !{!"tree-vect-slp.c:VEC_slp_tree_heap_alloc"}
!233 = !{!"tree-vect-slp.c:vect_build_slp_tree"}
!234 = !{i32 0, i32 65536}
!235 = !{!236, !164, i64 0}
!236 = !{!"optab_handlers", !164, i64 0}
!237 = !{!238, !143, i64 24}
!238 = !{!"insn_data", !143, i64 0, !144, i64 8, !143, i64 16, !143, i64 24, !144, i64 32, !144, i64 33, !144, i64 34, !144, i64 35}
!239 = !{!204, !143, i64 128}
!240 = !{!204, !164, i64 152}
!241 = distinct !{!241, !138}
!242 = !{!178, !164, i64 40}
!243 = !{!178, !164, i64 36}
!244 = !{!"tree-vect-slp.c:VEC_slp_tree_base_length"}
!245 = !{!246, !164, i64 0}
!246 = !{!"VEC_slp_tree_base", !164, i64 0, !164, i64 4, !144, i64 8}
!247 = !{!"tree-vect-slp.c:vect_supported_load_permutation_p"}
!248 = distinct !{!248, !138}
!249 = distinct !{!249, !138}
!250 = !{!163, !163, i64 0}
!251 = distinct !{!251, !138}
!252 = !{!253, !143, i64 0}
!253 = !{!"simple_bitmap_def", !143, i64 0, !164, i64 8, !164, i64 12, !144, i64 16}
!254 = !{!"tree-vect-slp.c:vect_find_first_load_in_slp_instance"}
!255 = distinct !{!255, !138}
!256 = distinct !{!256, !138}
!257 = !{!"tree-vect-slp.c:VEC_slp_instance_heap_safe_push"}
!258 = !{!"tree-vect-slp.c:vect_print_slp_tree"}
!259 = distinct !{!259, !138}
!260 = !{!"function_entry_count", i64 1375770}
!261 = !{!"tree-vect-slp.c:gimple_uid"}
!262 = !{!"tree-vect-slp.c:VEC_vec_void_p_base_length"}
!263 = !{!"branch_weights", i32 1, i32 1375771}
!264 = !{!265, !164, i64 0}
!265 = !{!"VEC_vec_void_p_base", !164, i64 0, !164, i64 4, !144, i64 8}
!266 = !{!"tree-vect-slp.c:VEC_vec_void_p_base_index"}
!267 = !{!"tree-vect-slp.c:VEC_gimple_heap_reserve"}
!268 = !{!"tree-vect-slp.c:VEC_gimple_base_quick_push"}
!269 = !{!"tree-vect-slp.c:VEC_gimple_base_space"}
!270 = !{!199, !164, i64 4}
!271 = !{!"tree-vect-slp.c:VEC_gimple_base_index"}
!272 = !{!"tree-vect-slp.c:is_gimple_call"}
!273 = !{i32 0, i32 256}
!274 = !{!"tree-vect-slp.c:gimple_assign_rhs_code"}
!275 = !{!"tree-vect-slp.c:gimple_assign_rhs2"}
!276 = !{!"tree-vect-slp.c:vect_get_and_check_slp_defs"}
!277 = !{!214, !143, i64 0}
!278 = !{!204, !144, i64 96}
!279 = !{!204, !143, i64 104}
!280 = !{!204, !164, i64 120}
!281 = distinct !{!281, !138}
!282 = !{!"tree-vect-slp.c:VEC_int_heap_safe_push"}
!283 = !{!"tree-vect-slp.c:VEC_slp_tree_heap_safe_push"}
!284 = !{!"function_entry_count", i64 2063649}
!285 = !{!"tree-vect-slp.c:gimple_code"}
!286 = !{!"tree-vect-slp.c:gimple_expr_code"}
!287 = !{!"tree-vect-slp.c:get_gimple_rhs_class"}
!288 = !{!"tree-vect-slp.c:gimple_assign_rhs1"}
!289 = !{!"tree-vect-slp.c:gimple_op"}
!290 = !{!"tree-vect-slp.c:gimple_has_ops"}
!291 = !{!"tree-vect-slp.c:gimple_ops"}
!292 = !{!"tree-vect-slp.c:gimple_statement_structure"}
!293 = !{!"tree-vect-slp.c:gss_for_code"}
!294 = !{!"tree-vect-slp.c:gimple_num_ops"}
!295 = !{!"tree-vect-slp.c:gimple_bb"}
!296 = !{!"tree-vect-slp.c:gimple_phi_result"}
!297 = !{!"tree-vect-slp.c:gimple_assign_lhs"}
!298 = !{!"tree-vect-slp.c:VEC_int_heap_reserve"}
!299 = !{!"tree-vect-slp.c:VEC_int_base_quick_push"}
!300 = !{!301, !164, i64 0}
!301 = !{!"VEC_int_base", !164, i64 0, !164, i64 4, !144, i64 8}
!302 = !{!"tree-vect-slp.c:VEC_int_base_space"}
!303 = !{!301, !164, i64 4}
!304 = !{!"tree-vect-slp.c:VEC_slp_tree_heap_reserve"}
!305 = !{!"tree-vect-slp.c:VEC_slp_tree_base_quick_push"}
!306 = !{!"tree-vect-slp.c:VEC_slp_tree_base_space"}
!307 = !{!246, !164, i64 4}
!308 = !{!"tree-vect-slp.c:VEC_int_base_iterate"}
!309 = !{!"tree-vect-slp.c:VEC_int_base_length"}
!310 = !{!"tree-vect-slp.c:SET_BIT"}
!311 = !{!"tree-vect-slp.c:vect_supported_slp_permutation_p"}
!312 = distinct !{!312, !138}
!313 = distinct !{!313, !138}
!314 = !{!"tree-vect-slp.c:VEC_slp_tree_base_index"}
!315 = !{!"tree-vect-slp.c:VEC_slp_tree_base_iterate"}
!316 = !{!204, !143, i64 32}
!317 = !{!318, !143, i64 720}
!318 = !{!"gcc_target", !319, i64 0, !321, i64 368, !322, i64 664, !164, i64 744, !143, i64 752, !143, i64 760, !143, i64 768, !143, i64 776, !143, i64 784, !143, i64 792, !143, i64 800, !143, i64 808, !143, i64 816, !143, i64 824, !143, i64 832, !143, i64 840, !143, i64 848, !143, i64 856, !143, i64 864, !143, i64 872, !143, i64 880, !143, i64 888, !143, i64 896, !143, i64 904, !143, i64 912, !143, i64 920, !143, i64 928, !143, i64 936, !143, i64 944, !143, i64 952, !143, i64 960, !143, i64 968, !143, i64 976, !143, i64 984, !143, i64 992, !143, i64 1000, !143, i64 1008, !143, i64 1016, !143, i64 1024, !143, i64 1032, !143, i64 1040, !143, i64 1048, !143, i64 1056, !163, i64 1064, !163, i64 1072, !143, i64 1080, !143, i64 1088, !143, i64 1096, !143, i64 1104, !143, i64 1112, !143, i64 1120, !143, i64 1128, !143, i64 1136, !143, i64 1144, !143, i64 1152, !143, i64 1160, !143, i64 1168, !323, i64 1176, !143, i64 1232, !143, i64 1240, !143, i64 1248, !143, i64 1256, !143, i64 1264, !143, i64 1272, !143, i64 1280, !143, i64 1288, !143, i64 1296, !143, i64 1304, !143, i64 1312, !143, i64 1320, !143, i64 1328, !143, i64 1336, !143, i64 1344, !143, i64 1352, !143, i64 1360, !143, i64 1368, !143, i64 1376, !143, i64 1384, !143, i64 1392, !143, i64 1400, !143, i64 1408, !143, i64 1416, !143, i64 1424, !143, i64 1432, !143, i64 1440, !143, i64 1448, !143, i64 1456, !163, i64 1464, !324, i64 1472, !143, i64 1664, !143, i64 1672, !143, i64 1680, !143, i64 1688, !143, i64 1696, !143, i64 1704, !143, i64 1712, !143, i64 1720, !143, i64 1728, !143, i64 1736, !143, i64 1744, !143, i64 1752, !143, i64 1760, !143, i64 1768, !143, i64 1776, !325, i64 1784, !326, i64 1792, !327, i64 1896, !328, i64 1968, !143, i64 2016, !144, i64 2024, !144, i64 2025, !144, i64 2026, !144, i64 2027, !144, i64 2028, !144, i64 2029, !144, i64 2030, !144, i64 2031, !144, i64 2032, !144, i64 2033, !144, i64 2034, !144, i64 2035}
!319 = !{!"asm_out", !143, i64 0, !143, i64 8, !143, i64 16, !320, i64 24, !320, i64 56, !143, i64 88, !143, i64 96, !143, i64 104, !143, i64 112, !143, i64 120, !143, i64 128, !143, i64 136, !143, i64 144, !143, i64 152, !143, i64 160, !143, i64 168, !143, i64 176, !143, i64 184, !143, i64 192, !143, i64 200, !143, i64 208, !143, i64 216, !143, i64 224, !143, i64 232, !143, i64 240, !143, i64 248, !143, i64 256, !143, i64 264, !143, i64 272, !143, i64 280, !143, i64 288, !143, i64 296, !143, i64 304, !143, i64 312, !143, i64 320, !143, i64 328, !143, i64 336, !143, i64 344, !143, i64 352, !143, i64 360}
!320 = !{!"asm_int_op", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24}
!321 = !{!"sched", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !143, i64 96, !143, i64 104, !143, i64 112, !143, i64 120, !143, i64 128, !143, i64 136, !143, i64 144, !143, i64 152, !143, i64 160, !143, i64 168, !143, i64 176, !143, i64 184, !143, i64 192, !143, i64 200, !143, i64 208, !143, i64 216, !143, i64 224, !143, i64 232, !143, i64 240, !143, i64 248, !143, i64 256, !143, i64 264, !143, i64 272, !143, i64 280, !143, i64 288}
!322 = !{!"vectorize", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72}
!323 = !{!"addr_space", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48}
!324 = !{!"calls", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !143, i64 96, !143, i64 104, !143, i64 112, !143, i64 120, !143, i64 128, !143, i64 136, !143, i64 144, !143, i64 152, !143, i64 160, !143, i64 168, !143, i64 176, !143, i64 184}
!325 = !{!"c", !143, i64 0}
!326 = !{!"cxx", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !143, i64 96}
!327 = !{!"emutls", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !144, i64 64, !144, i64 65}
!328 = !{!"target_option_hooks", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40}
!329 = distinct !{!329, !138}
!330 = distinct !{!330, !138}
!331 = !{!318, !143, i64 728}
!332 = distinct !{!332, !138}
!333 = distinct !{!333, !138}
!334 = distinct !{!334, !138}
!335 = !{!"tree-vect-slp.c:get_earlier_stmt"}
!336 = !{!"tree-vect-slp.c:VEC_slp_instance_heap_reserve"}
!337 = !{!"tree-vect-slp.c:VEC_slp_instance_base_quick_push"}
!338 = !{!339, !164, i64 0}
!339 = !{!"VEC_slp_instance_base", !164, i64 0, !164, i64 4, !144, i64 8}
!340 = !{!"tree-vect-slp.c:VEC_slp_instance_base_space"}
!341 = !{!339, !164, i64 4}
!342 = !{!"function_entry_count", i64 22}
!343 = !{!214, !143, i64 112}
!344 = !{!"branch_weights", i32 23, i32 1}
!345 = !{!"branch_weights", i32 22, i32 1}
!346 = !{!214, !164, i64 120}
!347 = !{!"branch_weights", i32 1, i32 0}
!348 = distinct !{!348, !138}
!349 = !{!"function_entry_count", i64 66}
!350 = !{!"tree-vect-slp.c:VEC_slp_instance_base_iterate"}
!351 = !{!"branch_weights", i32 1, i32 67}
!352 = !{!"tree-vect-slp.c:vect_mark_slp_stmts"}
!353 = !{!204, !164, i64 180}
!354 = distinct !{!354, !138}
!355 = distinct !{!355, !138}
!356 = !{!"tree-vect-slp.c:vect_detect_hybrid_slp_stmts"}
!357 = !{!204, !164, i64 24}
!358 = distinct !{!358, !138}
!359 = distinct !{!359, !138}
!360 = !{!"tree-vect-slp.c:first_imm_use_stmt"}
!361 = !{!362, !143, i64 8}
!362 = !{!"immediate_use_iterator_d", !143, i64 0, !143, i64 8, !363, i64 16, !143, i64 48}
!363 = !{!"ssa_use_operand_d", !143, i64 0, !143, i64 8, !144, i64 16, !143, i64 24}
!364 = !{!363, !143, i64 8}
!365 = !{!362, !143, i64 0}
!366 = !{!"tree-vect-slp.c:end_imm_use_stmt_p"}
!367 = !{!"tree-vect-slp.c:next_imm_use_stmt"}
!368 = !{!362, !143, i64 24}
!369 = !{!362, !143, i64 16}
!370 = !{!"tree-vect-slp.c:link_use_stmts_after"}
!371 = distinct !{!371, !138}
!372 = distinct !{!372, !138}
!373 = !{!"tree-vect-slp.c:get_use_from_ptr"}
!374 = !{!363, !143, i64 24}
!375 = !{!"tree-vect-slp.c:op_iter_init_phiuse"}
!376 = !{!377, !144, i64 0}
!377 = !{!"ssa_operand_iterator_d", !144, i64 0, !164, i64 4, !143, i64 8, !143, i64 16, !164, i64 24, !164, i64 28, !143, i64 32}
!378 = !{!377, !143, i64 32}
!379 = !{!377, !164, i64 28}
!380 = !{!377, !164, i64 4}
!381 = !{!"tree-vect-slp.c:op_iter_done"}
!382 = !{!"tree-vect-slp.c:move_use_after_head"}
!383 = !{!"tree-vect-slp.c:op_iter_next_use"}
!384 = !{!377, !143, i64 16}
!385 = !{!386, !143, i64 0}
!386 = !{!"use_optype_d", !143, i64 0, !363, i64 8}
!387 = !{!377, !164, i64 24}
!388 = !{!"tree-vect-slp.c:op_iter_init_use"}
!389 = !{!"tree-vect-slp.c:gimple_vuse_op"}
!390 = !{!386, !143, i64 32}
!391 = !{!"tree-vect-slp.c:delink_imm_use"}
!392 = !{!363, !143, i64 0}
!393 = !{!"tree-vect-slp.c:link_imm_use_to_list"}
!394 = !{!"tree-vect-slp.c:clear_and_done_ssa_iter"}
!395 = !{!"tree-vect-slp.c:gimple_phi_num_args"}
!396 = !{!"tree-vect-slp.c:gimple_phi_arg_imm_use_ptr"}
!397 = !{!"tree-vect-slp.c:gimple_phi_arg"}
!398 = !{!"tree-vect-slp.c:op_iter_init"}
!399 = !{!377, !143, i64 8}
!400 = !{!401, !143, i64 0}
!401 = !{!"def_optype_d", !143, i64 0, !143, i64 8}
!402 = !{!"tree-vect-slp.c:gimple_def_ops"}
!403 = !{!"tree-vect-slp.c:gimple_vdef"}
!404 = !{!"tree-vect-slp.c:gimple_use_ops"}
!405 = !{!"tree-vect-slp.c:gimple_vuse"}
!406 = !{!"tree-vect-slp.c:gimple_has_mem_ops"}
!407 = !{!"branch_weights", i32 258392, i32 1}
!408 = !{!"branch_weights", i32 258391, i32 1}
!409 = !{!"branch_weights", i32 687884, i32 1}
!410 = !{!"branch_weights", i32 429493, i32 258391}
!411 = distinct !{!411, !138}
!412 = !{!413, !164, i64 8}
!413 = !{!"param_info", !143, i64 0, !164, i64 8, !144, i64 12, !164, i64 16, !164, i64 20, !143, i64 24}
!414 = !{!"branch_weights", i32 167568, i32 90825}
!415 = !{!"branch_weights", i32 167568, i32 1}
!416 = !{!417, !143, i64 32}
!417 = !{!"_bb_vec_info", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32}
!418 = !{!"branch_weights", i32 79520, i32 11306}
!419 = !{!"branch_weights", i32 79520, i32 1}
!420 = !{!"branch_weights", i32 1, i32 11306}
!421 = !{!"branch_weights", i32 364, i32 10943}
!422 = !{!"branch_weights", i32 364, i32 1}
!423 = !{!"branch_weights", i32 10217, i32 727}
!424 = !{!"branch_weights", i32 10217, i32 1}
!425 = !{!"branch_weights", i32 590, i32 138}
!426 = !{!"branch_weights", i32 590, i32 1}
!427 = !{!417, !143, i64 16}
!428 = distinct !{!428, !138}
!429 = !{!"function_entry_count", i64 687883}
!430 = !{!"tree-vect-slp.c:is_gimple_debug"}
!431 = !{!"tree-vect-slp.c:gimple_nop_p"}
!432 = !{!"tree-vect-slp.c:new_bb_vec_info"}
!433 = !{!417, !143, i64 0}
!434 = distinct !{!434, !138}
!435 = !{!417, !143, i64 8}
!436 = !{!162, !143, i64 16}
!437 = !{!"tree-vect-slp.c:destroy_bb_vec_info"}
!438 = !{!"branch_weights", i32 1, i32 687884}
!439 = distinct !{!439, !138}
!440 = !{!"function_entry_count", i64 90824}
!441 = !{!"tree-vect-slp.c:VEC_ddr_p_base_length"}
!442 = !{!443, !164, i64 0}
!443 = !{!"VEC_ddr_p_base", !164, i64 0, !164, i64 4, !144, i64 8}
!444 = !{!"tree-vect-slp.c:vect_mark_slp_stmts_relevant"}
!445 = distinct !{!445, !138}
!446 = !{!"tree-vect-slp.c:vect_slp_analyze_operations"}
!447 = distinct !{!447, !138}
!448 = !{!"function_entry_count", i64 1375766}
!449 = !{!"tree-vect-slp.c:gimple_set_uid"}
!450 = !{!"tree-vect-slp.c:set_vinfo_for_stmt"}
!451 = !{!"tree-vect-slp.c:VEC_slp_instance_heap_alloc"}
!452 = !{!"tree-vect-slp.c:VEC_vec_void_p_heap_safe_push"}
!453 = !{!"tree-vect-slp.c:VEC_vec_void_p_base_replace"}
!454 = !{!"tree-vect-slp.c:VEC_vec_void_p_heap_reserve"}
!455 = !{!"branch_weights", i32 6865, i32 681020}
!456 = !{!"tree-vect-slp.c:VEC_vec_void_p_base_quick_push"}
!457 = !{!"tree-vect-slp.c:VEC_vec_void_p_base_space"}
!458 = !{!265, !164, i64 4}
!459 = !{!"tree-vect-slp.c:VEC_slp_instance_heap_free"}
!460 = !{!"tree-vect-slp.c:vect_slp_analyze_node_operations"}
!461 = distinct !{!461, !138}
!462 = !{!"tree-vect-slp.c:VEC_slp_instance_base_ordered_remove"}
!463 = !{!"tree-vect-slp.c:VEC_slp_instance_base_length"}
!464 = distinct !{!464, !138}
!465 = !{!178, !164, i64 32}
!466 = !{!"tree-vect-slp.c:VEC_tree_heap_alloc"}
!467 = !{!"tree-vect-slp.c:vect_get_slp_vect_defs"}
!468 = distinct !{!468, !138}
!469 = !{!"tree-vect-slp.c:vect_get_constant_vectors"}
!470 = distinct !{!470, !138}
!471 = distinct !{!471, !138}
!472 = distinct !{!472, !138}
!473 = distinct !{!473, !138}
!474 = distinct !{!474, !138}
!475 = !{!"tree-vect-slp.c:VEC_tree_base_quick_push"}
!476 = !{!477, !164, i64 0}
!477 = !{!"VEC_tree_base", !164, i64 0, !164, i64 4, !144, i64 8}
!478 = !{!"tree-vect-slp.c:VEC_gimple_base_length"}
!479 = !{!"tree-vect-slp.c:VEC_tree_base_length"}
!480 = !{!"tree-vect-slp.c:VEC_tree_base_index"}
!481 = !{!"tree-vect-slp.c:VEC_tree_heap_free"}
!482 = !{!"tree-vect-slp.c:VEC_tree_base_iterate"}
!483 = !{!"tree-vect-slp.c:vect_get_mask_element"}
!484 = distinct !{!484, !138}
!485 = !{!"tree-vect-slp.c:vect_create_mask_and_perm"}
!486 = distinct !{!486, !138}
!487 = distinct !{!487, !138}
!488 = !{!204, !143, i64 40}
!489 = !{!"tree-vect-slp.c:make_ssa_name"}
!490 = !{!"tree-vect-slp.c:gimple_call_set_lhs"}
!491 = !{!"tree-vect-slp.c:VEC_gimple_base_replace"}
!492 = !{!"tree-vect-slp.c:gimple_set_op"}
!493 = distinct !{!493, !138}
!494 = !{!"tree-vect-slp.c:vect_schedule_slp_instance"}
!495 = distinct !{!495, !138}
!496 = distinct !{!496, !138}
!497 = !{!"tree-vect-slp.c:vec_info_for_bb"}
!498 = !{!"tree-vect-slp.c:gimple_vop"}
!499 = !{!500, !143, i64 24}
!500 = !{!"function", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !143, i64 96, !164, i64 104, !164, i64 108, !164, i64 112, !164, i64 116, !164, i64 120, !164, i64 124, !143, i64 128, !164, i64 136, !164, i64 137, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 138, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139, !164, i64 139}
!501 = !{!502, !143, i64 24}
!502 = !{!"gimple_df", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !503, i64 32, !503, i64 48, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !164, i64 96, !504, i64 104}
!503 = !{!"pt_solution", !164, i64 0, !164, i64 0, !164, i64 0, !164, i64 0, !164, i64 0, !164, i64 0, !143, i64 8}
!504 = !{!"ssa_operands", !143, i64 0, !164, i64 8, !164, i64 12, !144, i64 16, !143, i64 24, !143, i64 32}
