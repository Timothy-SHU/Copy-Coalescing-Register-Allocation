; ModuleID = 'tree-vect-slp.c'
source_filename = "tree-vect-slp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.insn_data = type { ptr, %union.anon.2, ptr, ptr, i8, i8, i8, i8 }
%union.anon.2 = type { ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct._slp_instance = type { ptr, i32, i32, %struct.anon, ptr, ptr, ptr }
%struct.anon = type { i32, i32 }
%struct._slp_tree = type { ptr, ptr, ptr, ptr, i32, %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct._bb_vec_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
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
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_slp_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_slp_instance_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"=== vect_analyze_slp ===\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to SLP the basic block.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"=== vect_make_slp_decision ===\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Decided to SLP %d instances. Unrolling factor %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"=== vect_detect_hybrid_slp ===\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"===vect_slp_analyze_bb===\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"not vectorized: too many instructions in basic block.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"not vectorized: unhandled data-ref in basic block.\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"not vectorized: not enough data-refs in basic block.\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"not vectorized: bad data alignment in basic block.\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"not vectorized: unhandled data dependence in basic block.\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"not vectorized: unhandled data access in basic block.\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"not vectorized: unsupported alignment in basic block.\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"not vectorized: failed to find SLP opportunities in basic block.\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"not vectorized: bad operation in basic block.\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Basic block will be vectorized using SLP\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"=== vect_update_slp_costs_according_to_vf ===\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.17 = private unnamed_addr constant [33 x i8] c"no builtin for vect permute for \00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"unsupported vect permute \00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"vectorizing stmts using SLP.\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"tree-vect-slp.c\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"SLPing BB\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"------>SLPing statement: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [24 x i8] c"BASIC BLOCK VECTORIZED\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Build SLP failed: unsupported data-type \00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"Build SLP failed: unrolling required in basic block SLP\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"Build SLP failed: unsupported load permutation \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Build SLP for \00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"Build SLP failed: not GIMPLE_ASSIGN nor GIMPLE_CALL\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"SLP with multiple types \00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Build SLP failed: no optab.\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"Build SLP failed: op not supported by target.\00", align 1
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.33 = private unnamed_addr constant [47 x i8] c"Build SLP failed: different operation in stmt \00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"Build SLP failed: different shift arguments in \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.35 = private unnamed_addr constant [43 x i8] c"Build SLP failed: strided loads have gaps \00", align 1
@.str.36 = private unnamed_addr constant [86 x i8] c"Build SLP failed: the number of interleaved loads is greater than the SLP group size \00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Build SLP failed: unsupported unaligned load \00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Build SLP failed: not strided load \00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Build SLP failed: operation\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c" unsupported \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.41 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.42 = private unnamed_addr constant [38 x i8] c"Build SLP failed: can't find def for \00", align 1
@.str.43 = private unnamed_addr constant [74 x i8] c"Build SLP failed: some of the stmts are in a pattern, and others are not \00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Unsupported pattern.\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"unsupported defining stmt: \00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"Build SLP failed: two constant oprnds in stmt\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Build SLP failed: different types \00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Build SLP failed: illegal type of def \00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"Load permutation \00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"Build SLP failed: unsupported data permutation \00", align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"node \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"\0A\09stmt %d \00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@vect_get_mask_element.number_of_mask_fixes = internal unnamed_addr global i32 1, align 4
@vect_get_mask_element.mask_fixed = internal unnamed_addr global i1 false, align 1
@vect_get_mask_element.needs_first_vector = internal unnamed_addr global i1 false, align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"permutation requires at least two vectors \00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"permutation requires at least three vectors \00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"------>vectorizing SLP node starting from: \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !50 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !51
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !50 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !51
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !50 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !51
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !50 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !50 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !50 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !50 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !67

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @find_bb_location(ptr noundef readonly %0) local_unnamed_addr #9 !prof !70 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3, !prof !71

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !72, !noalias !74
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !77

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !62, !noalias !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !71

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !78, !noalias !74
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %3 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !71

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !80, !noalias !74
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22, !prof !82

22:                                               ; preds = %19, %28
  %23 = phi ptr [ %30, %28 ], [ %20, %19 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.gimple_statement_base, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !85

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !prof !87, !llvm.loop !88

32:                                               ; preds = %28, %22, %19, %1
  %33 = phi i32 [ 0, %1 ], [ 0, %19 ], [ %26, %22 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_free_slp_instance(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !50 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  tail call fastcc void @vect_free_slp_tree(ptr noundef %2)
  %3 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef %4)
  br label %7

7:                                                ; preds = %1, %6
  store ptr null, ptr %3, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct._slp_instance, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %7, %11
  store ptr null, ptr %8, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_free_slp_tree(ptr noundef %0) unnamed_addr #10 !prof !50 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !92
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @vect_free_slp_tree(ptr noundef nonnull %4)
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @vect_free_slp_tree(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @free(ptr noundef %14)
  br label %17

17:                                               ; preds = %12, %16
  store ptr null, ptr %13, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @free(ptr noundef %19)
  store ptr null, ptr %18, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %21, %17
  tail call void @free(ptr noundef %0)
  br label %23

23:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_analyze_slp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !50 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %13 = tail call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = icmp eq ptr %0, null
  %16 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 15
  %17 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 1
  %18 = select i1 %15, ptr %17, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  %21 = icmp ne ptr %0, null
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  br label %23

23:                                               ; preds = %548, %14
  %24 = phi i32 [ 0, %14 ], [ %550, %548 ]
  %25 = phi i8 [ 0, %14 ], [ %549, %548 ]
  br i1 %20, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %19, align 8, !tbaa !95
  %28 = icmp ugt i32 %27, %24
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = zext i32 %24 to i64
  %31 = getelementptr inbounds %struct.VEC_gimple_base, ptr %19, i64 0, i32 2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  br label %33

33:                                               ; preds = %23, %26, %29
  %34 = phi ptr [ %32, %29 ], [ null, %26 ], [ null, %23 ]
  %35 = phi i1 [ false, %29 ], [ true, %26 ], [ true, %23 ]
  br i1 %35, label %551, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %37 = call ptr @xmalloc(i64 noundef 48) #18
  store ptr %37, ptr %3, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %34, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !62
  %40 = icmp ne i32 %39, 0
  call void @llvm.assume(i1 %40)
  %41 = load ptr, ptr @stmt_vec_info_vec, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %41, align 8, !tbaa !97
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %47 = icmp ugt i32 %39, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %49

49:                                               ; preds = %48, %45
  %50 = load ptr, ptr @stmt_vec_info_vec, align 8
  %51 = add i32 %39, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %50, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct._stmt_vec_info, ptr %54, i64 0, i32 19
  %56 = load i32, ptr %55, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %57 = load i32, ptr %38, align 4, !tbaa !62
  %58 = icmp ne i32 %57, 0
  call void @llvm.assume(i1 %58)
  %59 = icmp eq ptr %50, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load i32, ptr %50, align 8, !tbaa !97
  br label %62

62:                                               ; preds = %60, %49
  %63 = phi i32 [ %61, %60 ], [ 0, %49 ]
  %64 = icmp ugt i32 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %66

66:                                               ; preds = %65, %62
  %67 = load ptr, ptr @stmt_vec_info_vec, align 8
  %68 = add i32 %57, -1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %67, i64 0, i32 2, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !51
  %72 = getelementptr inbounds %struct._stmt_vec_info, ptr %71, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !101
  %74 = getelementptr inbounds %struct.data_reference, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !102
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !62
  %78 = call ptr @get_vectype_for_scalar_type(ptr noundef %77) #18
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %548, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %85 = call i64 @fwrite(ptr nonnull @.str.25, i64 40, i64 1, ptr %84)
  %86 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_generic_expr(ptr noundef %86, ptr noundef %77, i32 noundef 2) #18
  br label %548

87:                                               ; preds = %66
  %88 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1023
  %91 = zext nneg i32 %90 to i64
  %92 = shl nuw i64 1, %91
  %93 = trunc i64 %92 to i32
  br i1 %21, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, ptr %22, align 8, !tbaa !107
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ %93, %87 ]
  %98 = call i32 @least_common_multiple(i32 noundef %93, i32 noundef %56) #18
  %99 = udiv i32 %98, %56
  %100 = icmp eq i32 %99, 1
  %101 = or i1 %21, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %548, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %107 = call i64 @fwrite(ptr nonnull @.str.26, i64 55, i64 1, ptr %106)
  br label %548

108:                                              ; preds = %96
  %109 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %56) #18
  %110 = getelementptr inbounds %struct._slp_tree, ptr %37, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !109
  %111 = icmp eq ptr %34, null
  br i1 %111, label %149, label %112

112:                                              ; preds = %108, %140
  %113 = phi ptr [ %147, %140 ], [ %34, %108 ]
  %114 = load ptr, ptr %110, align 8, !tbaa !51
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.VEC_gimple_base, ptr %114, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !110
  %119 = load i32, ptr %114, align 8, !tbaa !95
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %112
  %122 = call ptr @vec_heap_p_reserve(ptr noundef %114, i32 noundef 1) #18
  store ptr %122, ptr %110, align 8, !tbaa !51
  br label %123

123:                                              ; preds = %121, %116
  %124 = load ptr, ptr %110, align 8, !tbaa !51
  %125 = load i32, ptr %124, align 8, !tbaa !95
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 8, !tbaa !95
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds %struct.VEC_gimple_base, ptr %124, i64 0, i32 2, i64 %127
  store ptr %113, ptr %128, align 8, !tbaa !51
  %129 = getelementptr inbounds %struct.gimple_statement_base, ptr %113, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !62
  %131 = icmp ne i32 %130, 0
  call void @llvm.assume(i1 %131)
  %132 = load ptr, ptr @stmt_vec_info_vec, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %123
  %135 = load i32, ptr %132, align 8, !tbaa !97
  br label %136

136:                                              ; preds = %134, %123
  %137 = phi i32 [ %135, %134 ], [ 0, %123 ]
  %138 = icmp ugt i32 %130, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %140

140:                                              ; preds = %139, %136
  %141 = load ptr, ptr @stmt_vec_info_vec, align 8
  %142 = add i32 %130, -1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %141, i64 0, i32 2, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !51
  %146 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 18
  %147 = load ptr, ptr %146, align 8, !tbaa !111
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %112, !llvm.loop !112

149:                                              ; preds = %140, %108
  %150 = getelementptr inbounds %struct._slp_tree, ptr %37, i64 0, i32 3
  %151 = mul i32 %99, %56
  %152 = udiv i32 %151, %93
  %153 = mul i32 %56, %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %150, i8 0, i64 20, i1 false)
  %154 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %153, i64 noundef 8, i64 noundef 4) #18
  store ptr %154, ptr %7, align 8, !tbaa !51
  %155 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %56) #18
  store ptr %155, ptr %8, align 8, !tbaa !51
  %156 = call fastcc zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %56, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %152, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %97), !range !113
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %539, label %158

158:                                              ; preds = %149
  %159 = call ptr @xmalloc(i64 noundef 48) #18
  store ptr %37, ptr %159, align 8, !tbaa !89
  %160 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 1
  store i32 %56, ptr %160, align 8, !tbaa !114
  %161 = load i32, ptr %6, align 4, !tbaa !66
  %162 = icmp ugt i32 %161, %93
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = call i32 @least_common_multiple(i32 noundef %161, i32 noundef %56) #18
  %165 = udiv i32 %164, %56
  br label %166

166:                                              ; preds = %163, %158
  %167 = phi i32 [ %165, %163 ], [ %99, %158 ]
  %168 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 2
  store i32 %167, ptr %168, align 4, !tbaa !115
  %169 = load i32, ptr %5, align 4, !tbaa !66
  %170 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 3
  store i32 %169, ptr %170, align 8, !tbaa !116
  %171 = load i32, ptr %4, align 4, !tbaa !66
  %172 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 3, i32 1
  store i32 %171, ptr %172, align 4, !tbaa !117
  %173 = load ptr, ptr %8, align 8
  %174 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 5
  store ptr %173, ptr %174, align 8, !tbaa !118
  %175 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 6
  store ptr null, ptr %175, align 8, !tbaa !119
  %176 = load ptr, ptr %7, align 8, !tbaa !51
  %177 = getelementptr inbounds %struct._slp_instance, ptr %159, i64 0, i32 4
  store ptr %176, ptr %177, align 8, !tbaa !120
  %178 = icmp eq ptr %173, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %166
  %180 = load i32, ptr %173, align 8, !tbaa !121
  br label %181

181:                                              ; preds = %179, %166
  %182 = phi i32 [ %180, %179 ], [ 0, %166 ]
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %501, label %184

184:                                              ; preds = %181
  %185 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %209, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %189 = call i64 @fwrite(ptr nonnull @.str.49, i64 17, i64 1, ptr %188)
  %190 = icmp eq ptr %176, null
  br label %191

191:                                              ; preds = %203, %187
  %192 = phi i64 [ %206, %203 ], [ 0, %187 ]
  br i1 %190, label %200, label %193

193:                                              ; preds = %191
  %194 = load i32, ptr %176, align 4, !tbaa !123
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.VEC_int_base, ptr %176, i64 0, i32 2, i64 %192
  %199 = load i32, ptr %198, align 4, !tbaa !66
  br label %200

200:                                              ; preds = %197, %193, %191
  %201 = phi i32 [ %199, %197 ], [ 0, %193 ], [ 0, %191 ]
  %202 = phi i1 [ false, %197 ], [ true, %193 ], [ true, %191 ]
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef nonnull @.str.50, i32 noundef %201)
  %206 = add nuw i64 %192, 1
  br label %191, !llvm.loop !125

207:                                              ; preds = %200
  %208 = trunc i64 %192 to i32
  br label %209

209:                                              ; preds = %207, %184
  %210 = phi i32 [ 0, %184 ], [ %208, %207 ]
  %211 = icmp eq ptr %176, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = load i32, ptr %176, align 4, !tbaa !123
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i32 [ %213, %212 ], [ 0, %209 ]
  %216 = icmp eq i32 %215, %153
  br i1 %216, label %217, label %422

217:                                              ; preds = %214
  %218 = call ptr @sbitmap_alloc(i32 noundef %56) #18
  call void @sbitmap_zero(ptr noundef %218) #18
  %219 = icmp sgt i32 %56, 0
  br i1 %219, label %220, label %281

220:                                              ; preds = %217
  %221 = zext nneg i32 %56 to i64
  br label %222

222:                                              ; preds = %220, %272
  %223 = phi i64 [ 0, %220 ], [ %275, %272 ]
  %224 = phi i32 [ 0, %220 ], [ %276, %272 ]
  %225 = phi i8 [ 1, %220 ], [ %255, %272 ]
  %226 = phi i32 [ -1, %220 ], [ %233, %272 ]
  %227 = zext i32 %224 to i64
  %228 = trunc i64 %223 to i32
  %229 = mul i32 %56, %228
  %230 = zext i32 %229 to i64
  br label %231

231:                                              ; preds = %251, %222
  %232 = phi i64 [ %252, %251 ], [ %227, %222 ]
  %233 = phi i32 [ %243, %251 ], [ %226, %222 ]
  %234 = phi i32 [ %253, %251 ], [ 0, %222 ]
  br i1 %211, label %242, label %235

235:                                              ; preds = %231
  %236 = load i32, ptr %176, align 4, !tbaa !123
  %237 = zext i32 %236 to i64
  %238 = icmp ult i64 %232, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.VEC_int_base, ptr %176, i64 0, i32 2, i64 %232
  %241 = load i32, ptr %240, align 4, !tbaa !66
  br label %242

242:                                              ; preds = %239, %235, %231
  %243 = phi i32 [ %241, %239 ], [ 0, %235 ], [ 0, %231 ]
  %244 = phi i1 [ true, %239 ], [ false, %235 ], [ false, %231 ]
  %245 = icmp slt i32 %234, %56
  %246 = select i1 %244, i1 %245, i1 false
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = icmp eq i64 %232, %230
  %249 = icmp eq i32 %243, %233
  %250 = select i1 %248, i1 true, i1 %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = add nuw nsw i64 %232, 1
  %253 = add nuw nsw i32 %234, 1
  br label %231, !llvm.loop !126

254:                                              ; preds = %247, %242
  %255 = phi i8 [ %225, %242 ], [ 0, %247 ]
  %256 = lshr i32 %233, 6
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds %struct.simple_bitmap_def, ptr %218, i64 0, i32 3, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !127
  %260 = and i32 %233, 63
  %261 = zext nneg i32 %260 to i64
  %262 = shl nuw i64 1, %261
  %263 = and i64 %259, %262
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %254
  %266 = load ptr, ptr %218, align 8, !tbaa !128
  %267 = icmp eq ptr %266, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds i8, ptr %266, i64 %257
  %270 = load i8, ptr %269, align 1, !tbaa !62
  %271 = add i8 %270, 1
  store i8 %271, ptr %269, align 1, !tbaa !62
  br label %272

272:                                              ; preds = %268, %265
  %273 = load i64, ptr %258, align 8, !tbaa !127
  %274 = or i64 %273, %262
  store i64 %274, ptr %258, align 8, !tbaa !127
  %275 = add nuw nsw i64 %223, 1
  %276 = add i32 %224, %56
  %277 = icmp eq i64 %275, %221
  br i1 %277, label %278, label %222, !llvm.loop !130

278:                                              ; preds = %254, %272
  %279 = phi i8 [ %255, %272 ], [ 0, %254 ]
  %280 = trunc i64 %232 to i32
  br label %281

281:                                              ; preds = %278, %217
  %282 = phi i32 [ %210, %217 ], [ %280, %278 ]
  %283 = phi i8 [ 1, %217 ], [ %279, %278 ]
  %284 = load ptr, ptr %218, align 8, !tbaa !128
  call void @free(ptr noundef %284)
  call void @free(ptr noundef %218)
  %285 = icmp ne i8 %283, 0
  %286 = icmp eq i32 %282, %153
  %287 = and i1 %286, %285
  br i1 %287, label %288, label %422

288:                                              ; preds = %281
  %289 = load ptr, ptr %174, align 8, !tbaa !118
  %290 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %289, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !51
  %292 = getelementptr inbounds %struct._slp_tree, ptr %291, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !109
  %294 = getelementptr inbounds %struct.VEC_gimple_base, ptr %293, i64 0, i32 2, i64 0
  %295 = load ptr, ptr %294, align 8, !tbaa !51
  %296 = getelementptr inbounds %struct.gimple_statement_base, ptr %295, i64 0, i32 1
  %297 = load i32, ptr %296, align 4, !tbaa !62
  %298 = icmp ne i32 %297, 0
  call void @llvm.assume(i1 %298)
  %299 = load ptr, ptr @stmt_vec_info_vec, align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %288
  %302 = load i32, ptr %299, align 8, !tbaa !97
  br label %303

303:                                              ; preds = %301, %288
  %304 = phi i32 [ %302, %301 ], [ 0, %288 ]
  %305 = icmp ugt i32 %297, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %307

307:                                              ; preds = %306, %303
  %308 = load ptr, ptr @stmt_vec_info_vec, align 8
  %309 = add i32 %297, -1
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %308, i64 0, i32 2, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !51
  %313 = getelementptr inbounds %struct._stmt_vec_info, ptr %312, i64 0, i32 17
  %314 = load ptr, ptr %313, align 8, !tbaa !131
  %315 = load i32, ptr %160, align 8, !tbaa !114
  %316 = sext i32 %315 to i64
  %317 = shl nsw i64 %316, 3
  %318 = call ptr @xmalloc(i64 noundef %317) #18
  br label %319

319:                                              ; preds = %384, %307
  %320 = phi i64 [ %386, %384 ], [ 0, %307 ]
  %321 = phi i32 [ %385, %384 ], [ 0, %307 ]
  %322 = load ptr, ptr %177, align 8, !tbaa !120
  %323 = icmp eq ptr %322, null
  br i1 %323, label %331, label %324

324:                                              ; preds = %319
  %325 = load i32, ptr %322, align 4, !tbaa !123
  %326 = icmp ugt i32 %325, %321
  br i1 %326, label %327, label %331

327:                                              ; preds = %324
  %328 = zext i32 %321 to i64
  %329 = getelementptr inbounds %struct.VEC_int_base, ptr %322, i64 0, i32 2, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !66
  br label %331

331:                                              ; preds = %327, %324, %319
  %332 = phi i32 [ %330, %327 ], [ 0, %324 ], [ 0, %319 ]
  %333 = phi i1 [ false, %327 ], [ true, %324 ], [ true, %319 ]
  br i1 %333, label %387, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %174, align 8, !tbaa !118
  %336 = icmp eq ptr %335, null
  br i1 %336, label %344, label %337

337:                                              ; preds = %334
  %338 = load i32, ptr %335, align 8, !tbaa !121
  %339 = zext i32 %338 to i64
  %340 = icmp ult i64 %320, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %335, i64 0, i32 2, i64 %320
  %343 = load ptr, ptr %342, align 8, !tbaa !51
  br label %344

344:                                              ; preds = %341, %337, %334
  %345 = phi ptr [ %343, %341 ], [ null, %337 ], [ null, %334 ]
  %346 = phi i1 [ false, %341 ], [ true, %337 ], [ true, %334 ]
  br i1 %346, label %387, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct._slp_tree, ptr %345, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !109
  %350 = getelementptr inbounds %struct.VEC_gimple_base, ptr %349, i64 0, i32 2, i64 0
  %351 = load ptr, ptr %350, align 8, !tbaa !51
  %352 = getelementptr inbounds %struct.gimple_statement_base, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !62
  %354 = icmp ne i32 %353, 0
  call void @llvm.assume(i1 %354)
  %355 = load ptr, ptr @stmt_vec_info_vec, align 8
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %347
  %358 = load i32, ptr %355, align 8, !tbaa !97
  br label %359

359:                                              ; preds = %357, %347
  %360 = phi i32 [ %358, %357 ], [ 0, %347 ]
  %361 = icmp ugt i32 %353, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %363

363:                                              ; preds = %362, %359
  %364 = load ptr, ptr @stmt_vec_info_vec, align 8
  %365 = add i32 %353, -1
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %364, i64 0, i32 2, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !51
  %369 = getelementptr inbounds %struct._stmt_vec_info, ptr %368, i64 0, i32 17
  %370 = load ptr, ptr %369, align 8, !tbaa !131
  %371 = icmp eq ptr %370, %314
  br i1 %371, label %380, label %372

372:                                              ; preds = %363
  %373 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %372
  %376 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %377 = call i64 @fwrite(ptr nonnull @.str.51, i64 47, i64 1, ptr %376)
  %378 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %378, ptr noundef %351, i32 noundef 0, i32 noundef 2) #18
  br label %379

379:                                              ; preds = %375, %372
  call void @free(ptr noundef %318)
  br label %383

380:                                              ; preds = %363
  %381 = sext i32 %332 to i64
  %382 = getelementptr inbounds ptr, ptr %318, i64 %381
  store ptr %345, ptr %382, align 8, !tbaa !51
  br label %383

383:                                              ; preds = %380, %379
  br i1 %371, label %384, label %422

384:                                              ; preds = %383
  %385 = add nsw i32 %321, %315
  %386 = add nuw i64 %320, 1
  br label %319, !llvm.loop !132

387:                                              ; preds = %344, %331
  %388 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %315) #18
  %389 = icmp sgt i32 %315, 0
  br i1 %389, label %390, label %413

390:                                              ; preds = %387
  %391 = zext nneg i32 %315 to i64
  br label %392

392:                                              ; preds = %390, %405
  %393 = phi i64 [ 0, %390 ], [ %411, %405 ]
  %394 = phi ptr [ %388, %390 ], [ %406, %405 ]
  %395 = getelementptr inbounds ptr, ptr %318, i64 %393
  %396 = load ptr, ptr %395, align 8, !tbaa !51
  %397 = icmp eq ptr %394, null
  br i1 %397, label %403, label %398

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %394, i64 0, i32 1
  %400 = load i32, ptr %399, align 4, !tbaa !133
  %401 = load i32, ptr %394, align 8, !tbaa !121
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %398, %392
  %404 = call ptr @vec_heap_p_reserve(ptr noundef %394, i32 noundef 1) #18
  br label %405

405:                                              ; preds = %403, %398
  %406 = phi ptr [ %404, %403 ], [ %394, %398 ]
  %407 = load i32, ptr %406, align 8, !tbaa !121
  %408 = add i32 %407, 1
  store i32 %408, ptr %406, align 8, !tbaa !121
  %409 = zext i32 %407 to i64
  %410 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %406, i64 0, i32 2, i64 %409
  store ptr %396, ptr %410, align 8, !tbaa !51
  %411 = add nuw nsw i64 %393, 1
  %412 = icmp eq i64 %411, %391
  br i1 %412, label %413, label %392, !llvm.loop !134

413:                                              ; preds = %405, %387
  %414 = phi ptr [ %388, %387 ], [ %406, %405 ]
  %415 = load ptr, ptr %174, align 8, !tbaa !51
  %416 = icmp eq ptr %415, null
  br i1 %416, label %418, label %417

417:                                              ; preds = %413
  call void @free(ptr noundef %415)
  br label %418

418:                                              ; preds = %417, %413
  store ptr %414, ptr %174, align 8, !tbaa !118
  call void @free(ptr noundef %318)
  %419 = load i32, ptr %168, align 4, !tbaa !115
  %420 = call zeroext i8 @vect_transform_slp_perm_load(ptr noundef %295, ptr noundef null, ptr noundef null, i32 noundef %419, ptr noundef nonnull %159, i8 noundef zeroext 1)
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %383, %281, %418, %214
  %423 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %429, label %425

425:                                              ; preds = %422
  %426 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %427 = call i64 @fwrite(ptr nonnull @.str.27, i64 47, i64 1, ptr %426)
  %428 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %428, ptr noundef %34, i32 noundef 0, i32 noundef 2) #18
  br label %429

429:                                              ; preds = %425, %422
  call void @vect_free_slp_instance(ptr noundef nonnull %159)
  br label %548

430:                                              ; preds = %418, %498
  %431 = phi i64 [ %499, %498 ], [ 0, %418 ]
  %432 = phi ptr [ %449, %498 ], [ null, %418 ]
  %433 = load ptr, ptr %174, align 8, !tbaa !118
  %434 = icmp eq ptr %433, null
  br i1 %434, label %442, label %435

435:                                              ; preds = %430
  %436 = load i32, ptr %433, align 8, !tbaa !121
  %437 = zext i32 %436 to i64
  %438 = icmp ult i64 %431, %437
  br i1 %438, label %439, label %442

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %433, i64 0, i32 2, i64 %431
  %441 = load ptr, ptr %440, align 8, !tbaa !51
  br label %442

442:                                              ; preds = %439, %435, %430
  %443 = phi ptr [ %441, %439 ], [ null, %435 ], [ null, %430 ]
  %444 = phi i1 [ false, %439 ], [ true, %435 ], [ true, %430 ]
  br i1 %444, label %500, label %445

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct._slp_tree, ptr %443, i64 0, i32 2
  br label %447

447:                                              ; preds = %445, %495
  %448 = phi i64 [ 0, %445 ], [ %497, %495 ]
  %449 = phi ptr [ %432, %445 ], [ %496, %495 ]
  %450 = load ptr, ptr %446, align 8, !tbaa !109
  %451 = icmp eq ptr %450, null
  br i1 %451, label %459, label %452

452:                                              ; preds = %447
  %453 = load i32, ptr %450, align 8, !tbaa !95
  %454 = zext i32 %453 to i64
  %455 = icmp ult i64 %448, %454
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.VEC_gimple_base, ptr %450, i64 0, i32 2, i64 %448
  %458 = load ptr, ptr %457, align 8, !tbaa !51
  br label %459

459:                                              ; preds = %456, %452, %447
  %460 = phi ptr [ %458, %456 ], [ null, %452 ], [ null, %447 ]
  %461 = phi i1 [ false, %456 ], [ true, %452 ], [ true, %447 ]
  br i1 %461, label %498, label %462

462:                                              ; preds = %459
  %463 = icmp eq ptr %460, null
  br i1 %463, label %495, label %464

464:                                              ; preds = %462
  %465 = icmp eq ptr %449, null
  br i1 %465, label %495, label %466

466:                                              ; preds = %464
  %467 = getelementptr inbounds %struct.gimple_statement_base, ptr %460, i64 0, i32 1
  %468 = load i32, ptr %467, align 4, !tbaa !62
  %469 = getelementptr inbounds %struct.gimple_statement_base, ptr %449, i64 0, i32 1
  %470 = load i32, ptr %469, align 4, !tbaa !62
  %471 = icmp eq i32 %468, 0
  %472 = icmp eq i32 %470, 0
  %473 = select i1 %471, i1 true, i1 %472
  br i1 %473, label %495, label %474

474:                                              ; preds = %466
  %475 = load ptr, ptr @stmt_vec_info_vec, align 8
  %476 = icmp eq ptr %475, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr %475, align 8, !tbaa !97
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i32 [ %478, %477 ], [ 0, %474 ]
  %481 = icmp ugt i32 %468, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 665, ptr noundef nonnull @.str.21) #18
  br label %483

483:                                              ; preds = %482, %479
  %484 = load ptr, ptr @stmt_vec_info_vec, align 8
  %485 = icmp eq ptr %484, null
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = load i32, ptr %484, align 8, !tbaa !97
  br label %488

488:                                              ; preds = %486, %483
  %489 = phi i32 [ %487, %486 ], [ 0, %483 ]
  %490 = icmp ugt i32 %470, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %488
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 666, ptr noundef nonnull @.str.21) #18
  br label %492

492:                                              ; preds = %491, %488
  %493 = icmp ult i32 %468, %470
  %494 = select i1 %493, ptr %460, ptr %449
  br label %495

495:                                              ; preds = %492, %466, %464, %462
  %496 = phi ptr [ %449, %462 ], [ %460, %464 ], [ null, %466 ], [ %494, %492 ]
  %497 = add nuw i64 %448, 1
  br label %447, !llvm.loop !135

498:                                              ; preds = %459
  %499 = add nuw i64 %431, 1
  br label %430, !llvm.loop !136

500:                                              ; preds = %442
  store ptr %432, ptr %175, align 8, !tbaa !119
  br label %505

501:                                              ; preds = %181
  %502 = icmp eq ptr %176, null
  br i1 %502, label %504, label %503

503:                                              ; preds = %501
  call void @free(ptr noundef %176)
  br label %504

504:                                              ; preds = %503, %501
  store ptr null, ptr %177, align 8, !tbaa !51
  br label %505

505:                                              ; preds = %504, %500
  br i1 %21, label %506, label %515

506:                                              ; preds = %505
  %507 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %508 = load ptr, ptr %507, align 8, !tbaa !51
  %509 = icmp eq ptr %508, null
  br i1 %509, label %524, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %508, i64 0, i32 1
  %512 = load i32, ptr %511, align 4, !tbaa !137
  %513 = load i32, ptr %508, align 8, !tbaa !139
  %514 = icmp eq i32 %512, %513
  br i1 %514, label %524, label %528

515:                                              ; preds = %505
  %516 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !51
  %518 = icmp eq ptr %517, null
  br i1 %518, label %524, label %519

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %517, i64 0, i32 1
  %521 = load i32, ptr %520, align 4, !tbaa !137
  %522 = load i32, ptr %517, align 8, !tbaa !139
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %524, label %528

524:                                              ; preds = %515, %519, %506, %510
  %525 = phi ptr [ %508, %510 ], [ %508, %506 ], [ %517, %519 ], [ %517, %515 ]
  %526 = phi ptr [ %507, %510 ], [ %507, %506 ], [ %516, %519 ], [ %516, %515 ]
  %527 = call ptr @vec_heap_p_reserve(ptr noundef %525, i32 noundef 1) #18
  store ptr %527, ptr %526, align 8, !tbaa !51
  br label %528

528:                                              ; preds = %524, %519, %510
  %529 = phi ptr [ %507, %510 ], [ %516, %519 ], [ %526, %524 ]
  %530 = load ptr, ptr %529, align 8, !tbaa !51
  %531 = load i32, ptr %530, align 8, !tbaa !139
  %532 = add i32 %531, 1
  store i32 %532, ptr %530, align 8, !tbaa !139
  %533 = zext i32 %531 to i64
  %534 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %530, i64 0, i32 2, i64 %533
  store ptr %159, ptr %534, align 8, !tbaa !51
  %535 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %548, label %537

537:                                              ; preds = %528
  %538 = load ptr, ptr %3, align 8, !tbaa !51
  call fastcc void @vect_print_slp_tree(ptr noundef %538)
  br label %548

539:                                              ; preds = %149
  call fastcc void @vect_free_slp_tree(ptr noundef nonnull %37)
  %540 = load ptr, ptr %7, align 8, !tbaa !51
  %541 = icmp eq ptr %540, null
  br i1 %541, label %543, label %542

542:                                              ; preds = %539
  call void @free(ptr noundef %540)
  br label %543

543:                                              ; preds = %542, %539
  store ptr null, ptr %7, align 8, !tbaa !51
  %544 = load ptr, ptr %8, align 8, !tbaa !51
  %545 = icmp eq ptr %544, null
  br i1 %545, label %547, label %546

546:                                              ; preds = %543
  call void @free(ptr noundef %544)
  br label %547

547:                                              ; preds = %546, %543
  store ptr null, ptr %8, align 8, !tbaa !51
  br label %548

548:                                              ; preds = %80, %83, %102, %105, %429, %528, %537, %547
  %549 = phi i8 [ %25, %429 ], [ %25, %547 ], [ %25, %83 ], [ %25, %80 ], [ %25, %105 ], [ %25, %102 ], [ 1, %537 ], [ 1, %528 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %550 = add i32 %24, 1
  br label %23, !llvm.loop !140

551:                                              ; preds = %33
  %552 = icmp eq ptr %1, null
  %553 = icmp ne i8 %25, 0
  %554 = select i1 %552, i1 true, i1 %553
  br i1 %554, label %561, label %555

555:                                              ; preds = %551
  %556 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %561, label %558

558:                                              ; preds = %555
  %559 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %560 = call i64 @fwrite(ptr nonnull @.str.1, i64 30, i64 1, ptr %559)
  br label %561

561:                                              ; preds = %551, %555, %558
  %562 = phi i8 [ 0, %558 ], [ 0, %555 ], [ 1, %551 ]
  ret i8 %562
}

declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_make_slp_decision(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !50 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %8 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 30, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %24, %9
  %12 = phi i64 [ %29, %24 ], [ 0, %9 ]
  %13 = phi i32 [ %27, %24 ], [ 1, %9 ]
  br i1 %10, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %3, align 8, !tbaa !139
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %3, i64 0, i32 2, i64 %12
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  br label %21

21:                                               ; preds = %11, %14, %18
  %22 = phi ptr [ %20, %18 ], [ null, %14 ], [ null, %11 ]
  %23 = phi i1 [ false, %18 ], [ true, %14 ], [ true, %11 ]
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._slp_instance, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !115
  %27 = tail call i32 @llvm.umax.i32(i32 %13, i32 %26)
  %28 = load ptr, ptr %22, align 8, !tbaa !89
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %28, i32 noundef 1, i32 noundef -1)
  %29 = add nuw i64 %12, 1
  br label %11, !llvm.loop !142

30:                                               ; preds = %21
  %31 = trunc i64 %12 to i32
  %32 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 17
  store i32 %13, ptr %32, align 8, !tbaa !143
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.3, i32 noundef %31, i32 noundef %13)
  br label %40

40:                                               ; preds = %37, %34, %30
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_mark_slp_stmts(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !50 {
  br label %4

4:                                                ; preds = %49, %3
  %5 = phi ptr [ %0, %3 ], [ %52, %49 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._slp_tree, ptr %5, i64 0, i32 2
  %9 = icmp slt i32 %2, 0
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %7, %47
  %12 = phi i64 [ 0, %7 ], [ %48, %47 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !109
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !95
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.VEC_gimple_base, ptr %13, i64 0, i32 2, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %11, %15, %19
  %23 = phi ptr [ %21, %19 ], [ null, %15 ], [ null, %11 ]
  %24 = phi i1 [ false, %19 ], [ true, %15 ], [ true, %11 ]
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = icmp eq i64 %12, %10
  %27 = or i1 %9, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !62
  %31 = icmp ne i32 %30, 0
  tail call void @llvm.assume(i1 %31)
  %32 = load ptr, ptr @stmt_vec_info_vec, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %32, align 8, !tbaa !97
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i32 [ %35, %34 ], [ 0, %28 ]
  %38 = icmp ugt i32 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %40

40:                                               ; preds = %39, %36
  %41 = load ptr, ptr @stmt_vec_info_vec, align 8
  %42 = add i32 %30, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %41, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct._stmt_vec_info, ptr %45, i64 0, i32 25
  store i32 %1, ptr %46, align 4, !tbaa !144
  br label %47

47:                                               ; preds = %25, %40
  %48 = add nuw i64 %12, 1
  br label %11, !llvm.loop !145

49:                                               ; preds = %22
  %50 = load ptr, ptr %5, align 8, !tbaa !92
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %50, i32 noundef %1, i32 noundef %2)
  %51 = getelementptr inbounds %struct._slp_tree, ptr %5, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !94
  br label %4

53:                                               ; preds = %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_detect_hybrid_slp(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !50 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %8 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %23, %9
  %12 = phi i32 [ 0, %9 ], [ %25, %23 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %3, align 8, !tbaa !139
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %3, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %11, %13, %16
  %21 = phi ptr [ %19, %16 ], [ null, %13 ], [ null, %11 ]
  %22 = phi i1 [ false, %16 ], [ true, %13 ], [ true, %11 ]
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !89
  tail call fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %24)
  %25 = add i32 %12, 1
  br label %11, !llvm.loop !146

26:                                               ; preds = %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %0) unnamed_addr #10 !prof !50 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  %3 = icmp eq ptr %0, null
  br i1 %3, label %155, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2, i32 1
  br label %9

9:                                                ; preds = %4, %149
  %10 = phi i64 [ 0, %4 ], [ %150, %149 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !95
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.VEC_gimple_base, ptr %11, i64 0, i32 2, i64 %10
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %9, %13, %17
  %21 = phi ptr [ %19, %17 ], [ null, %13 ], [ null, %9 ]
  %22 = phi i1 [ false, %17 ], [ true, %13 ], [ true, %9 ]
  br i1 %22, label %151, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !62
  %26 = icmp ne i32 %25, 0
  call void @llvm.assume(i1 %26)
  %27 = load ptr, ptr @stmt_vec_info_vec, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %27, align 8, !tbaa !97
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ 0, %23 ]
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %35

35:                                               ; preds = %34, %31
  %36 = load ptr, ptr @stmt_vec_info_vec, align 8
  %37 = add i32 %25, -1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %36, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct._stmt_vec_info, ptr %40, i64 0, i32 25
  %42 = load i32, ptr %41, align 4, !tbaa !144
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %149

44:                                               ; preds = %35
  %45 = load i32, ptr %21, align 8
  %46 = and i32 %45, 255
  %47 = add nsw i32 %46, -1
  %48 = icmp ult i32 %47, 9
  call void @llvm.assume(i1 %48)
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !66
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !127
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %57

57:                                               ; preds = %56, %44
  %58 = getelementptr inbounds i8, ptr %21, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %149

63:                                               ; preds = %57
  %64 = load i32, ptr %21, align 8
  %65 = and i32 %64, 255
  %66 = add nsw i32 %65, -1
  %67 = icmp ult i32 %66, 9
  call void @llvm.assume(i1 %67)
  %68 = zext nneg i32 %65 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !66
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !127
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %76

76:                                               ; preds = %75, %63
  %77 = getelementptr inbounds i8, ptr %21, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %78, i64 0, i32 5
  store ptr %79, ptr %6, align 8, !tbaa !147
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %78, i64 0, i32 5, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !150
  store ptr %81, ptr %2, align 8, !tbaa !151
  %82 = icmp eq ptr %81, %79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  call fastcc void @link_use_stmts_after(ptr noundef %81, ptr noundef nonnull %2)
  %84 = load ptr, ptr %2, align 8, !tbaa !151
  %85 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  br label %87

87:                                               ; preds = %76, %83
  %88 = phi ptr [ %86, %83 ], [ null, %76 ]
  %89 = load ptr, ptr %2, align 8, !tbaa !151
  %90 = load ptr, ptr %6, align 8, !tbaa !147
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %149, label %92

92:                                               ; preds = %87, %144
  %93 = phi ptr [ %145, %144 ], [ %88, %87 ]
  %94 = getelementptr inbounds %struct.gimple_statement_base, ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !62
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr @stmt_vec_info_vec, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %98, align 8, !tbaa !97
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i32 [ %101, %100 ], [ 0, %97 ]
  %104 = icmp ugt i32 %95, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %106

106:                                              ; preds = %105, %102
  %107 = load ptr, ptr @stmt_vec_info_vec, align 8
  %108 = add i32 %95, -1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %107, i64 0, i32 2, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !51
  br label %112

112:                                              ; preds = %92, %106
  %113 = phi ptr [ %111, %106 ], [ null, %92 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 25
  %117 = load i32, ptr %116, align 4, !tbaa !144
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !152
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._stmt_vec_info, ptr %113, i64 0, i32 16
  %125 = load i32, ptr %124, align 8, !tbaa !153
  %126 = add i32 %125, -5
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %119
  %129 = trunc i64 %10 to i32
  call fastcc void @vect_mark_slp_stmts(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %129)
  br label %130

130:                                              ; preds = %123, %112, %115, %128
  %131 = load ptr, ptr %8, align 8, !tbaa !150
  store ptr %131, ptr %2, align 8, !tbaa !151
  %132 = load ptr, ptr %6, align 8, !tbaa !147
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load ptr, ptr %7, align 8, !tbaa !154
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %135, i64 0, i32 1
  store ptr %131, ptr %138, align 8, !tbaa !150
  %139 = load ptr, ptr %8, align 8, !tbaa !150
  store ptr %135, ptr %139, align 8, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %144

140:                                              ; preds = %130
  call fastcc void @link_use_stmts_after(ptr noundef %131, ptr noundef nonnull %2)
  %141 = load ptr, ptr %2, align 8, !tbaa !151
  %142 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !62
  br label %144

144:                                              ; preds = %134, %137, %140
  %145 = phi ptr [ %143, %140 ], [ null, %137 ], [ null, %134 ]
  %146 = load ptr, ptr %2, align 8, !tbaa !151
  %147 = load ptr, ptr %6, align 8, !tbaa !147
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %149, label %92, !llvm.loop !155

149:                                              ; preds = %144, %87, %35, %57
  %150 = add nuw i64 %10, 1
  br label %9, !llvm.loop !156

151:                                              ; preds = %20
  %152 = load ptr, ptr %0, align 8, !tbaa !92
  call fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %152)
  %153 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !94
  call fastcc void @vect_detect_hybrid_slp_stmts(ptr noundef %154)
  br label %155

155:                                              ; preds = %1, %151
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #18
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @vect_slp_analyze_bb(ptr noundef %0) local_unnamed_addr #11 !prof !70 {
  %2 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !77

4:                                                ; preds = %1
  %5 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %6 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 26, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !72, !noalias !157
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !77

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !62, !noalias !157
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !71

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !78, !noalias !157
  br label %18

18:                                               ; preds = %16, %12, %7
  %19 = phi ptr [ %17, %16 ], [ null, %12 ], [ null, %7 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !71

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !80, !noalias !157
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi ptr [ %22, %21 ], [ null, %18 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26, !prof !160

26:                                               ; preds = %23, %37
  %27 = phi i32 [ %38, %37 ], [ 0, %23 ]
  %28 = phi ptr [ %40, %37 ], [ %24, %23 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i8
  switch i8 %31, label %32 [
    i8 2, label %37
    i8 18, label %37
  ], !prof !161

32:                                               ; preds = %26
  %33 = and i32 %30, 255
  %34 = icmp ne i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %27, %35
  br label %37

37:                                               ; preds = %26, %26, %32
  %38 = phi i32 [ %27, %26 ], [ %36, %32 ], [ %27, %26 ]
  %39 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %26, !prof !162, !llvm.loop !163

42:                                               ; preds = %37, %23
  %43 = phi i32 [ 0, %23 ], [ %38, %37 ]
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !51
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 113, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !164
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %54, !prof !71

48:                                               ; preds = %42
  %49 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %291, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %53 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 54, i64 1, ptr %52)
  br label %291

54:                                               ; preds = %42
  %55 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  store ptr %0, ptr %55, align 8, !tbaa !166
  %56 = load i32, ptr %8, align 8, !tbaa !72, !noalias !168
  %57 = and i32 %56, 512
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65, !prof !77

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !62, !noalias !168
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !71

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !78, !noalias !168
  br label %65

65:                                               ; preds = %63, %59, %54
  %66 = phi ptr [ %64, %63 ], [ null, %59 ], [ null, %54 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !71

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !80, !noalias !168
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %69, %68 ], [ null, %65 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %115, label %73, !prof !160

73:                                               ; preds = %70, %107
  %74 = phi ptr [ %113, %107 ], [ %71, %70 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = getelementptr inbounds %struct.gimple_statement_base, ptr %75, i64 0, i32 1
  store i32 0, ptr %76, align 4, !tbaa !62
  %77 = tail call ptr @new_stmt_vec_info(ptr noundef %75, ptr noundef null, ptr noundef nonnull %55) #18
  %78 = load i32, ptr %76, align 4, !tbaa !62
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %104, !prof !171

80:                                               ; preds = %73
  %81 = icmp eq ptr %77, null
  br i1 %81, label %82, label %83, !prof !172

82:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 639, ptr noundef nonnull @.str.21) #18
  br label %83

83:                                               ; preds = %82, %80
  %84 = load ptr, ptr @stmt_vec_info_vec, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86, !prof !172

86:                                               ; preds = %83
  %87 = load i32, ptr %84, align 8, !tbaa !97
  %88 = add i32 %87, 1
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %88, %86 ], [ 1, %83 ]
  store i32 %90, ptr %76, align 4, !tbaa !62
  %91 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !51
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93, !prof !172

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %91, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !173
  %96 = load i32, ptr %91, align 8, !tbaa !97
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100, !prof !174

98:                                               ; preds = %93, %89
  %99 = tail call ptr @vec_heap_p_reserve(ptr noundef %91, i32 noundef 1) #18
  store ptr %99, ptr @stmt_vec_info_vec, align 8, !tbaa !51
  br label %100

100:                                              ; preds = %98, %93
  %101 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !51
  %102 = load i32, ptr %101, align 8, !tbaa !97
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 8, !tbaa !97
  br label %107

104:                                              ; preds = %73
  %105 = load ptr, ptr @stmt_vec_info_vec, align 8
  %106 = add i32 %78, -1
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i32 [ %106, %104 ], [ %102, %100 ]
  %109 = phi ptr [ %105, %104 ], [ %101, %100 ]
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %109, i64 0, i32 2, i64 %110
  store ptr %77, ptr %111, align 8, !tbaa !51
  %112 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %74, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !86
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %73, !prof !162, !llvm.loop !175

115:                                              ; preds = %107, %70
  %116 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #18
  %117 = getelementptr inbounds %struct._bb_vec_info, ptr %55, i64 0, i32 1
  store ptr %116, ptr %117, align 8, !tbaa !176
  %118 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #18
  %119 = getelementptr inbounds %struct._bb_vec_info, ptr %55, i64 0, i32 2
  store ptr %118, ptr %119, align 8, !tbaa !177
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  store ptr %55, ptr %120, align 8, !tbaa !178
  %121 = icmp eq ptr %55, null
  br i1 %121, label %291, label %122, !prof !71

122:                                              ; preds = %115
  %123 = tail call zeroext i8 @vect_analyze_data_refs(ptr noundef null, ptr noundef nonnull %55) #18
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %190, !prof !179

125:                                              ; preds = %122
  %126 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128, !prof !180

128:                                              ; preds = %125
  %129 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %130 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 51, i64 1, ptr %129)
  br label %131

131:                                              ; preds = %125, %128
  %132 = load ptr, ptr %55, align 8, !tbaa !166
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 13
  %134 = load i32, ptr %133, align 8, !tbaa !72, !noalias !181
  %135 = and i32 %134, 512
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143, !prof !77

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 7
  %139 = load ptr, ptr %138, align 8, !tbaa !62, !noalias !181
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141, !prof !71

141:                                              ; preds = %137
  %142 = load ptr, ptr %139, align 8, !tbaa !78, !noalias !181
  br label %143

143:                                              ; preds = %141, %137, %131
  %144 = phi ptr [ %142, %141 ], [ null, %137 ], [ null, %131 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146, !prof !71

146:                                              ; preds = %143
  %147 = load ptr, ptr %144, align 8, !tbaa !80, !noalias !181
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi ptr [ %147, %146 ], [ null, %143 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %180, label %151, !prof !160

151:                                              ; preds = %148, %176
  %152 = phi ptr [ %178, %176 ], [ %149, %148 ]
  %153 = load ptr, ptr %152, align 8, !tbaa !83
  %154 = getelementptr inbounds %struct.gimple_statement_base, ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !62
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %172, label %157, !prof !172

157:                                              ; preds = %151
  %158 = load ptr, ptr @stmt_vec_info_vec, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160, !prof !172

160:                                              ; preds = %157
  %161 = load i32, ptr %158, align 8, !tbaa !97
  br label %162

162:                                              ; preds = %160, %157
  %163 = phi i32 [ %161, %160 ], [ 0, %157 ]
  %164 = icmp ugt i32 %155, %163
  br i1 %164, label %165, label %166, !prof !172

165:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %166

166:                                              ; preds = %165, %162
  %167 = load ptr, ptr @stmt_vec_info_vec, align 8
  %168 = add i32 %155, -1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %167, i64 0, i32 2, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !51
  br label %172

172:                                              ; preds = %166, %151
  %173 = phi ptr [ %171, %166 ], [ null, %151 ]
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175, !prof !172

175:                                              ; preds = %172
  tail call void @free_stmt_vec_info(ptr noundef %153) #18
  br label %176

176:                                              ; preds = %175, %172
  %177 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %152, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !86
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %151, !prof !162, !llvm.loop !184

180:                                              ; preds = %176, %148
  %181 = load ptr, ptr %117, align 8, !tbaa !51
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183, !prof !71

183:                                              ; preds = %180
  tail call void @free(ptr noundef %181)
  br label %184

184:                                              ; preds = %183, %180
  store ptr null, ptr %117, align 8, !tbaa !51
  %185 = load ptr, ptr %119, align 8, !tbaa !51
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187, !prof !71

187:                                              ; preds = %184
  tail call void @free(ptr noundef %185)
  br label %188

188:                                              ; preds = %187, %184
  store ptr null, ptr %119, align 8, !tbaa !51
  tail call void @free(ptr noundef %55)
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 2
  store ptr null, ptr %189, align 8, !tbaa !178
  br label %291

190:                                              ; preds = %122
  %191 = getelementptr inbounds %struct._bb_vec_info, ptr %55, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !185
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194, !prof !186

194:                                              ; preds = %190
  %195 = load i32, ptr %192, align 8, !tbaa !187
  br label %196

196:                                              ; preds = %190, %194
  %197 = phi i32 [ %195, %194 ], [ 0, %190 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206, !prof !186

199:                                              ; preds = %196
  %200 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %205, label %202, !prof !189

202:                                              ; preds = %199
  %203 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %204 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 53, i64 1, ptr %203)
  br label %205

205:                                              ; preds = %202, %199
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

206:                                              ; preds = %196
  %207 = tail call zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef null, ptr noundef nonnull %55) #18
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %216, !prof !190

209:                                              ; preds = %206
  %210 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %214 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 51, i64 1, ptr %213)
  br label %215

215:                                              ; preds = %212, %209
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

216:                                              ; preds = %206
  %217 = tail call zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef null, ptr noundef nonnull %55) #18
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %226, !prof !190

219:                                              ; preds = %216
  %220 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %224 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 58, i64 1, ptr %223)
  br label %225

225:                                              ; preds = %222, %219
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

226:                                              ; preds = %216
  %227 = tail call zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef null, ptr noundef nonnull %55) #18
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %236, !prof !191

229:                                              ; preds = %226
  %230 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %235, label %232, !prof !191

232:                                              ; preds = %229
  %233 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %234 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 54, i64 1, ptr %233)
  br label %235

235:                                              ; preds = %232, %229
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

236:                                              ; preds = %226
  %237 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef null, ptr noundef nonnull %55) #18
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %244 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 54, i64 1, ptr %243)
  br label %245

245:                                              ; preds = %242, %239
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

246:                                              ; preds = %236
  %247 = tail call zeroext i8 @vect_analyze_slp(ptr noundef null, ptr noundef nonnull %55), !range !113
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %254 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 65, i64 1, ptr %253)
  br label %255

255:                                              ; preds = %252, %249
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

256:                                              ; preds = %246
  %257 = load ptr, ptr %119, align 8, !tbaa !177
  %258 = icmp eq ptr %257, null
  br label %259

259:                                              ; preds = %271, %256
  %260 = phi i64 [ %274, %271 ], [ 0, %256 ]
  br i1 %258, label %268, label %261

261:                                              ; preds = %259
  %262 = load i32, ptr %257, align 8, !tbaa !139
  %263 = zext i32 %262 to i64
  %264 = icmp ult i64 %260, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %257, i64 0, i32 2, i64 %260
  %267 = load ptr, ptr %266, align 8, !tbaa !51
  br label %268

268:                                              ; preds = %259, %261, %265
  %269 = phi ptr [ %267, %265 ], [ null, %261 ], [ null, %259 ]
  %270 = phi i1 [ false, %265 ], [ true, %261 ], [ true, %259 ]
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %269, align 8, !tbaa !89
  tail call fastcc void @vect_mark_slp_stmts(ptr noundef %272, i32 noundef 1, i32 noundef -1)
  %273 = load ptr, ptr %269, align 8, !tbaa !89
  tail call fastcc void @vect_mark_slp_stmts_relevant(ptr noundef %273)
  %274 = add nuw i64 %260, 1
  br label %259, !llvm.loop !192

275:                                              ; preds = %268
  %276 = tail call fastcc zeroext i8 @vect_slp_analyze_operations(ptr noundef nonnull %55), !range !113
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %283 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 46, i64 1, ptr %282)
  br label %284

284:                                              ; preds = %281, %278
  tail call fastcc void @destroy_bb_vec_info(ptr noundef nonnull %55)
  br label %291

285:                                              ; preds = %275
  %286 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %290 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 41, i64 1, ptr %289)
  br label %291

291:                                              ; preds = %285, %288, %115, %48, %51, %284, %255, %245, %235, %225, %215, %205, %188
  %292 = phi ptr [ null, %284 ], [ null, %255 ], [ null, %245 ], [ null, %235 ], [ null, %225 ], [ null, %215 ], [ null, %205 ], [ null, %188 ], [ null, %51 ], [ null, %48 ], [ null, %115 ], [ %55, %288 ], [ %55, %285 ]
  ret ptr %292
}

declare zeroext i8 @vect_analyze_data_refs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @destroy_bb_vec_info(ptr noundef %0) unnamed_addr #11 !prof !193 !PGOFuncName !194 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3, !prof !71

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !72, !noalias !195
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15, !prof !77

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !62, !noalias !195
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !71

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !78, !noalias !195
  br label %15

15:                                               ; preds = %13, %9, %3
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !71

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !80, !noalias !195
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %19, %18 ], [ null, %15 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23, !prof !160

23:                                               ; preds = %20, %48
  %24 = phi ptr [ %50, %48 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !62
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29, !prof !172

29:                                               ; preds = %23
  %30 = load ptr, ptr @stmt_vec_info_vec, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !172

32:                                               ; preds = %29
  %33 = load i32, ptr %30, align 8, !tbaa !97
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ 0, %29 ]
  %36 = icmp ugt i32 %27, %35
  br i1 %36, label %37, label %38, !prof !172

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %38

38:                                               ; preds = %37, %34
  %39 = load ptr, ptr @stmt_vec_info_vec, align 8
  %40 = add i32 %27, -1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %39, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  br label %44

44:                                               ; preds = %23, %38
  %45 = phi ptr [ %43, %38 ], [ null, %23 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !172

47:                                               ; preds = %44
  tail call void @free_stmt_vec_info(ptr noundef %25) #18
  br label %48

48:                                               ; preds = %47, %44
  %49 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %24, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %23, !prof !162, !llvm.loop !184

52:                                               ; preds = %48, %20
  %53 = getelementptr inbounds %struct._bb_vec_info, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56, !prof !71

56:                                               ; preds = %52
  tail call void @free(ptr noundef %54)
  br label %57

57:                                               ; preds = %52, %56
  store ptr null, ptr %53, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct._bb_vec_info, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !71

61:                                               ; preds = %57
  tail call void @free(ptr noundef %59)
  br label %62

62:                                               ; preds = %57, %61
  store ptr null, ptr %58, align 8, !tbaa !51
  tail call void @free(ptr noundef %0)
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  store ptr null, ptr %63, align 8, !tbaa !178
  br label %64

64:                                               ; preds = %1, %62
  ret void
}

declare zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_verify_datarefs_alignment(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_mark_slp_stmts_relevant(ptr noundef readonly %0) unnamed_addr #10 !prof !50 {
  br label %2

2:                                                ; preds = %47, %1
  %3 = phi ptr [ %0, %1 ], [ %50, %47 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %45
  %8 = phi i64 [ 0, %5 ], [ %46, %45 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !109
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !95
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %8, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.VEC_gimple_base, ptr %9, i64 0, i32 2, i64 %8
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %7, %11, %15
  %19 = phi ptr [ %17, %15 ], [ null, %11 ], [ null, %7 ]
  %20 = phi i1 [ false, %15 ], [ true, %11 ], [ true, %7 ]
  br i1 %20, label %47, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !62
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @stmt_vec_info_vec, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 8, !tbaa !97
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp ugt i32 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @stmt_vec_info_vec, align 8
  %36 = add i32 %23, -1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %35, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  br label %40

40:                                               ; preds = %21, %34
  %41 = phi ptr [ %39, %34 ], [ null, %21 ]
  %42 = getelementptr inbounds %struct._stmt_vec_info, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !152
  switch i32 %43, label %44 [
    i32 0, label %45
    i32 4, label %45
  ]

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 721, ptr noundef nonnull @.str.21) #18
  br label %45

45:                                               ; preds = %40, %40, %44
  store i32 4, ptr %42, align 8, !tbaa !152
  %46 = add nuw i64 %8, 1
  br label %7, !llvm.loop !198

47:                                               ; preds = %18
  %48 = load ptr, ptr %3, align 8, !tbaa !92
  tail call fastcc void @vect_mark_slp_stmts_relevant(ptr noundef %48)
  %49 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  br label %2

51:                                               ; preds = %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @vect_slp_analyze_operations(ptr noundef %0) unnamed_addr #10 !prof !50 {
  %2 = getelementptr inbounds %struct._bb_vec_info, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br label %5

5:                                                ; preds = %31, %1
  %6 = phi i32 [ %32, %31 ], [ 0, %1 ]
  br label %7

7:                                                ; preds = %5, %22
  br i1 %4, label %15, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr %3, align 8, !tbaa !139
  %10 = icmp ugt i32 %9, %6
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %3, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  br label %15

15:                                               ; preds = %7, %8, %11
  %16 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %7 ]
  %17 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %7 ]
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !89
  %20 = tail call fastcc zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %19)
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = zext nneg i32 %6 to i64
  %24 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %3, i64 0, i32 2, i64 %23
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  tail call void @vect_free_slp_instance(ptr noundef nonnull %16)
  %26 = load i32, ptr %3, align 8, !tbaa !139
  %27 = add i32 %26, -1
  store i32 %27, ptr %3, align 8, !tbaa !139
  %28 = sub i32 %27, %6
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %24, ptr nonnull align 8 %25, i64 %30, i1 false)
  br label %7, !llvm.loop !199

31:                                               ; preds = %18
  %32 = add nuw nsw i32 %6, 1
  br label %5, !llvm.loop !199

33:                                               ; preds = %15
  br i1 %4, label %38, label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %3, align 8, !tbaa !139
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %33, %34
  %39 = phi i8 [ %37, %34 ], [ 0, %33 ]
  ret i8 %39
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_update_slp_costs_according_to_vf(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !50 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %10 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 45, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = icmp eq ptr %5, null
  br label %13

13:                                               ; preds = %25, %11
  %14 = phi i32 [ 0, %11 ], [ %32, %25 ]
  br i1 %12, label %22, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %5, align 8, !tbaa !139
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = zext i32 %14 to i64
  %20 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %5, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %13, %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ], [ null, %13 ]
  %24 = phi i1 [ false, %18 ], [ true, %15 ], [ true, %13 ]
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._slp_instance, ptr %23, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !115
  %28 = udiv i32 %3, %27
  %29 = getelementptr inbounds %struct._slp_instance, ptr %23, i64 0, i32 3, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !117
  %31 = mul i32 %30, %28
  store i32 %31, ptr %29, align 4, !tbaa !117
  %32 = add i32 %14, 1
  br label %13, !llvm.loop !200

33:                                               ; preds = %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_get_slp_defs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !50 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.VEC_gimple_base, ptr %7, i64 0, i32 2, i64 0
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = load ptr, ptr %0, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._slp_tree, ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !201
  br label %28

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !201
  %18 = call ptr @vect_get_smallest_scalar_type(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %19 = load i64, ptr %5, align 8, !tbaa !127
  %20 = load i64, ptr %4, align 8, !tbaa !127
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = trunc i64 %19 to i32
  %24 = mul i32 %17, %23
  %25 = sext i32 %24 to i64
  %26 = sdiv i64 %25, %20
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %15, %22, %12
  %29 = phi i32 [ %14, %12 ], [ %27, %22 ], [ %17, %15 ]
  %30 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %29) #18
  store ptr %30, ptr %1, align 8, !tbaa !51
  %31 = load ptr, ptr %0, align 8, !tbaa !92
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call fastcc void @vect_get_slp_vect_defs(ptr noundef nonnull %31, ptr noundef nonnull %1)
  br label %35

34:                                               ; preds = %28
  call fastcc void @vect_get_constant_vectors(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %29)
  br label %35

35:                                               ; preds = %34, %33
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %9, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = icmp ne i32 %37, 0
  call void @llvm.assume(i1 %38)
  %39 = load ptr, ptr @stmt_vec_info_vec, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %39, align 8, !tbaa !97
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ 0, %35 ]
  %45 = icmp ugt i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr @stmt_vec_info_vec, align 8
  %49 = add i32 %37, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %48, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  %53 = getelementptr inbounds %struct._stmt_vec_info, ptr %52, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !101
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %108

56:                                               ; preds = %47
  %57 = load i32, ptr %9, align 8
  %58 = trunc i32 %57 to i8
  switch i8 %58, label %61 [
    i8 6, label %59
    i8 1, label %59
    i8 8, label %62
  ]

59:                                               ; preds = %56, %56
  %60 = lshr i32 %57, 16
  br label %62

61:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1446, ptr noundef nonnull @.str.21) #18
  br label %62

62:                                               ; preds = %61, %59, %56
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ], [ 59, %56 ]
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !62
  %67 = icmp eq i8 %66, 3
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load i32, ptr %9, align 8
  %70 = and i32 %69, 255
  %71 = add nsw i32 %70, -1
  %72 = icmp ult i32 %71, 9
  call void @llvm.assume(i1 %72)
  %73 = zext nneg i32 %70 to i64
  %74 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !66
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !127
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %81

81:                                               ; preds = %80, %68
  %82 = getelementptr inbounds i8, ptr %9, i64 %78
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !51
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65535
  br label %88

88:                                               ; preds = %62, %81
  %89 = phi i32 [ %87, %81 ], [ %63, %62 ]
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !62
  %93 = icmp eq i8 %92, 1
  %94 = icmp ne ptr %2, null
  %95 = and i1 %94, %93
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !94
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, ptr %0, ptr %98
  %101 = getelementptr inbounds %struct._slp_tree, ptr %100, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !201
  %103 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %102) #18
  store ptr %103, ptr %2, align 8, !tbaa !51
  %104 = load ptr, ptr %97, align 8, !tbaa !94
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %96
  call fastcc void @vect_get_slp_vect_defs(ptr noundef nonnull %104, ptr noundef nonnull %2)
  br label %108

107:                                              ; preds = %96
  call fastcc void @vect_get_constant_vectors(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %102)
  br label %108

108:                                              ; preds = %106, %107, %88, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

declare ptr @vect_get_smallest_scalar_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_get_slp_vect_defs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !50 {
  %3 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1548, ptr noundef nonnull @.str.21) #18
  br label %7

7:                                                ; preds = %2, %6
  br label %8

8:                                                ; preds = %7, %25
  %9 = phi i32 [ %32, %25 ], [ 0, %7 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !202
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !95
  %14 = icmp ugt i32 %13, %9
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = zext i32 %9 to i64
  %17 = getelementptr inbounds %struct.VEC_gimple_base, ptr %10, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  br label %19

19:                                               ; preds = %8, %12, %15
  %20 = phi ptr [ %18, %15 ], [ null, %12 ], [ null, %8 ]
  %21 = phi i1 [ false, %15 ], [ true, %12 ], [ true, %8 ]
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1554, ptr noundef nonnull @.str.21) #18
  br label %25

25:                                               ; preds = %22, %24
  %26 = tail call ptr @gimple_get_lhs(ptr noundef %20) #18
  %27 = load ptr, ptr %1, align 8, !tbaa !51
  %28 = load i32, ptr %27, align 8, !tbaa !203
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !203
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.VEC_tree_base, ptr %27, i64 0, i32 2, i64 %30
  store ptr %26, ptr %31, align 8, !tbaa !51
  %32 = add i32 %9, 1
  br label %8, !llvm.loop !205

33:                                               ; preds = %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_get_constant_vectors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !50 {
  %5 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.VEC_gimple_base, ptr %6, i64 0, i32 2, i64 0
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !62
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !97
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ]
  %19 = icmp ugt i32 %10, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %21

21:                                               ; preds = %20, %17
  %22 = load ptr, ptr @stmt_vec_info_vec, align 8
  %23 = add i32 %10, -1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %22, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  br label %27

27:                                               ; preds = %4, %21
  %28 = phi ptr [ %26, %21 ], [ null, %4 ]
  %29 = icmp eq ptr %6, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  %34 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %3) #18
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %8, align 8
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -1
  %42 = icmp ult i32 %41, 9
  tail call void @llvm.assume(i1 %42)
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !66
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !127
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %51

51:                                               ; preds = %50, %38
  %52 = getelementptr inbounds i8, ptr %8, i64 %48
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  br label %72

54:                                               ; preds = %32
  %55 = add nuw nsw i32 %2, 1
  %56 = load i32, ptr %8, align 8
  %57 = and i32 %56, 255
  %58 = add nsw i32 %57, -1
  %59 = icmp ult i32 %58, 9
  tail call void @llvm.assume(i1 %59)
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !66
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !127
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %68

68:                                               ; preds = %67, %54
  %69 = getelementptr inbounds i8, ptr %8, i64 %65
  %70 = zext i32 %55 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  br label %72

72:                                               ; preds = %68, %51
  %73 = phi ptr [ %53, %51 ], [ %71, %68 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !66
  %79 = icmp eq i32 %78, 1
  %80 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  %82 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %81) #18
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1463, ptr noundef nonnull @.str.21) #18
  br label %85

85:                                               ; preds = %72, %84
  %86 = getelementptr inbounds %struct.tree_type, ptr %82, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = trunc i64 %90 to i32
  %92 = tail call i32 @least_common_multiple(i32 noundef %91, i32 noundef %33) #18
  %93 = sdiv i32 %92, %33
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %172

95:                                               ; preds = %85
  %96 = add nuw nsw i32 %2, 1
  %97 = zext i32 %96 to i64
  br label %98

98:                                               ; preds = %95, %169
  %99 = phi ptr [ null, %95 ], [ %104, %169 ]
  %100 = phi i32 [ 0, %95 ], [ %170, %169 ]
  %101 = phi i32 [ %91, %95 ], [ %103, %169 ]
  br label %102

102:                                              ; preds = %154, %98
  %103 = phi i32 [ %101, %98 ], [ %155, %154 ]
  %104 = phi ptr [ %99, %98 ], [ %156, %154 ]
  %105 = phi i32 [ %33, %98 ], [ %106, %154 ]
  %106 = add i32 %105, -1
  br i1 %29, label %114, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %6, align 8, !tbaa !95
  %109 = icmp ugt i32 %108, %106
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = zext i32 %106 to i64
  %112 = getelementptr inbounds %struct.VEC_gimple_base, ptr %6, i64 0, i32 2, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !51
  br label %114

114:                                              ; preds = %102, %107, %110
  %115 = phi ptr [ %113, %110 ], [ null, %107 ], [ null, %102 ]
  %116 = phi i1 [ false, %110 ], [ true, %107 ], [ true, %102 ]
  br i1 %116, label %169, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %115, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %37, label %131, label %122

122:                                              ; preds = %117
  br i1 %121, label %149, label %123

123:                                              ; preds = %122
  %124 = zext nneg i32 %119 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !66
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !127
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %140, label %143

131:                                              ; preds = %117
  br i1 %121, label %149, label %132

132:                                              ; preds = %131
  %133 = zext nneg i32 %119 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !66
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !127
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132, %123
  %141 = phi i64 [ %129, %123 ], [ %138, %132 ]
  %142 = phi i64 [ 1, %123 ], [ %97, %132 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %143

143:                                              ; preds = %140, %132, %123
  %144 = phi i64 [ %129, %123 ], [ %138, %132 ], [ %141, %140 ]
  %145 = phi i64 [ 1, %123 ], [ %97, %132 ], [ %142, %140 ]
  %146 = getelementptr inbounds i8, ptr %115, i64 %144
  %147 = getelementptr inbounds ptr, ptr %146, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !51
  br label %149

149:                                              ; preds = %143, %131, %122
  %150 = phi ptr [ null, %122 ], [ null, %131 ], [ %148, %143 ]
  %151 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %150, ptr noundef %104) #18
  %152 = add nsw i32 %103, -1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149, %162
  %155 = phi i32 [ %91, %162 ], [ %152, %149 ]
  %156 = phi ptr [ null, %162 ], [ %151, %149 ]
  br label %102, !llvm.loop !206

157:                                              ; preds = %149
  br i1 %79, label %158, label %160

158:                                              ; preds = %157
  %159 = tail call ptr @build_vector(ptr noundef %82, ptr noundef %151) #18
  br label %162

160:                                              ; preds = %157
  %161 = tail call ptr @build_constructor_from_list(ptr noundef %82, ptr noundef %151) #18
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi ptr [ %159, %158 ], [ %161, %160 ]
  %164 = tail call ptr @vect_init_vector(ptr noundef nonnull %115, ptr noundef %163, ptr noundef %82, ptr noundef null) #18
  %165 = load i32, ptr %34, align 8, !tbaa !203
  %166 = add i32 %165, 1
  store i32 %166, ptr %34, align 8, !tbaa !203
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds %struct.VEC_tree_base, ptr %34, i64 0, i32 2, i64 %167
  store ptr %164, ptr %168, align 8, !tbaa !51
  br label %154

169:                                              ; preds = %114
  %170 = add nuw nsw i32 %100, 1
  %171 = icmp eq i32 %170, %93
  br i1 %171, label %172, label %98, !llvm.loop !207

172:                                              ; preds = %169, %85
  %173 = icmp eq ptr %34, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %172
  %175 = load i32, ptr %34, align 8, !tbaa !203
  br label %176

176:                                              ; preds = %172, %174
  %177 = phi i32 [ %175, %174 ], [ 0, %172 ]
  %178 = add i32 %177, -1
  %179 = icmp sgt i32 %178, -1
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = zext nneg i32 %178 to i64
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ %181, %180 ], [ %191, %182 ]
  %184 = getelementptr inbounds %struct.VEC_tree_base, ptr %34, i64 0, i32 2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !51
  %186 = load ptr, ptr %1, align 8, !tbaa !51
  %187 = load i32, ptr %186, align 8, !tbaa !203
  %188 = add i32 %187, 1
  store i32 %188, ptr %186, align 8, !tbaa !203
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds %struct.VEC_tree_base, ptr %186, i64 0, i32 2, i64 %189
  store ptr %185, ptr %190, align 8, !tbaa !51
  %191 = add nsw i64 %183, -1
  %192 = icmp sgt i64 %183, 0
  br i1 %192, label %182, label %193, !llvm.loop !208

193:                                              ; preds = %182, %176
  br i1 %173, label %195, label %194

194:                                              ; preds = %193
  tail call void @free(ptr noundef %34)
  br label %195

195:                                              ; preds = %193, %194
  %196 = zext i32 %177 to i64
  br label %197

197:                                              ; preds = %216, %195
  %198 = load ptr, ptr %1, align 8, !tbaa !51
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load i32, ptr %198, align 8, !tbaa !203
  br label %202

202:                                              ; preds = %197, %200
  %203 = phi i32 [ %201, %200 ], [ 0, %197 ]
  %204 = icmp ult i32 %203, %3
  br i1 %204, label %205, label %227

205:                                              ; preds = %202, %221
  %206 = phi i64 [ %226, %221 ], [ 0, %202 ]
  %207 = load ptr, ptr %1, align 8, !tbaa !51
  %208 = icmp eq ptr %207, null
  br i1 %208, label %216, label %209

209:                                              ; preds = %205
  %210 = load i32, ptr %207, align 8, !tbaa !203
  %211 = zext i32 %210 to i64
  %212 = icmp ult i64 %206, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.VEC_tree_base, ptr %207, i64 0, i32 2, i64 %206
  %215 = load ptr, ptr %214, align 8, !tbaa !51
  br label %216

216:                                              ; preds = %205, %209, %213
  %217 = phi ptr [ %215, %213 ], [ null, %209 ], [ null, %205 ]
  %218 = phi i1 [ true, %213 ], [ false, %209 ], [ false, %205 ]
  %219 = icmp ult i64 %206, %196
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %221, label %197, !llvm.loop !209

221:                                              ; preds = %216
  %222 = load i32, ptr %207, align 8, !tbaa !203
  %223 = add i32 %222, 1
  store i32 %223, ptr %207, align 8, !tbaa !203
  %224 = zext i32 %222 to i64
  %225 = getelementptr inbounds %struct.VEC_tree_base, ptr %207, i64 0, i32 2, i64 %224
  store ptr %217, ptr %225, align 8, !tbaa !51
  %226 = add nuw nsw i64 %206, 1
  br label %205, !llvm.loop !210

227:                                              ; preds = %202
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_transform_slp_perm_load(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) local_unnamed_addr #10 !prof !50 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %10)
  %11 = load ptr, ptr @stmt_vec_info_vec, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %11, align 8, !tbaa !97
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi i32 [ %14, %13 ], [ 0, %6 ]
  %17 = icmp ugt i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @stmt_vec_info_vec, align 8
  %21 = add i32 %9, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %20, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct._stmt_vec_info, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !211
  %27 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !114
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 7), align 8, !tbaa !212
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %393, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %36 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 32, i64 1, ptr %35)
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  tail call void @print_gimple_stmt(ptr noundef %37, ptr noundef %0, i32 noundef 0, i32 noundef 2) #18
  br label %393

38:                                               ; preds = %19
  %39 = call ptr %29(ptr noundef %26, ptr noundef nonnull %7) #18
  %40 = icmp ne ptr %39, null
  %41 = load ptr, ptr %7, align 8
  %42 = icmp ne ptr %41, null
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %393, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %49 = call i64 @fwrite(ptr nonnull @.str.17, i64 32, i64 1, ptr %48)
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %50, ptr noundef %0, i32 noundef 0, i32 noundef 2) #18
  br label %393

51:                                               ; preds = %38
  %52 = call ptr @get_vectype_for_scalar_type(ptr noundef nonnull %41) #18
  %53 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1023
  %56 = zext nneg i32 %55 to i64
  %57 = shl i64 4294967296, %56
  %58 = ashr exact i64 %57, 30
  %59 = call ptr @xmalloc(i64 noundef %58) #18
  %60 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !115
  %64 = getelementptr inbounds %struct._slp_instance, ptr %4, i64 0, i32 5
  %65 = icmp sgt i32 %63, 0
  br label %66

66:                                               ; preds = %389, %51
  %67 = phi i64 [ %391, %389 ], [ 0, %51 ]
  %68 = phi i8 [ %390, %389 ], [ 0, %51 ]
  %69 = load ptr, ptr %64, align 8, !tbaa !118
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %69, align 8, !tbaa !121
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %67, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %69, i64 0, i32 2, i64 %67
  %77 = load ptr, ptr %76, align 8, !tbaa !51
  br label %78

78:                                               ; preds = %66, %71, %75
  %79 = phi ptr [ %77, %75 ], [ null, %71 ], [ null, %66 ]
  %80 = phi i1 [ false, %75 ], [ true, %71 ], [ true, %66 ]
  br i1 %80, label %392, label %81

81:                                               ; preds = %78
  br i1 %65, label %82, label %389

82:                                               ; preds = %81
  %83 = shl nuw i64 1, %56
  %84 = trunc i64 %83 to i32
  %85 = and i32 %61, 1023
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = trunc i64 %87 to i32
  %89 = sdiv i32 %84, %88
  %90 = mul i32 %63, %28
  %91 = udiv i32 %90, %88
  %92 = icmp ne i32 %91, 1
  %93 = zext i1 %92 to i32
  %94 = icmp sgt i32 %28, 0
  %95 = icmp sgt i32 %89, 0
  %96 = shl nsw i32 %84, 1
  %97 = shl i64 4294967296, %56
  %98 = add i64 %97, -4294967296
  %99 = ashr exact i64 %98, 32
  %100 = trunc i64 %67 to i32
  br label %101

101:                                              ; preds = %82, %380
  %102 = phi i32 [ 0, %82 ], [ %386, %380 ]
  %103 = phi i32 [ %93, %82 ], [ %385, %380 ]
  %104 = phi i32 [ 0, %82 ], [ %384, %380 ]
  %105 = phi i32 [ 0, %82 ], [ %387, %380 ]
  %106 = phi i32 [ 0, %82 ], [ %383, %380 ]
  %107 = phi i32 [ 0, %82 ], [ %382, %380 ]
  %108 = phi i8 [ %68, %82 ], [ %381, %380 ]
  br i1 %94, label %109, label %380

109:                                              ; preds = %101
  %110 = mul nsw i32 %105, %28
  %111 = add nuw nsw i32 %110, %100
  %112 = mul nsw i32 %111, %89
  br label %113

113:                                              ; preds = %109, %372
  %114 = phi i32 [ %102, %109 ], [ %377, %372 ]
  %115 = phi i32 [ %103, %109 ], [ %376, %372 ]
  %116 = phi i32 [ %104, %109 ], [ %375, %372 ]
  %117 = phi i32 [ 0, %109 ], [ %378, %372 ]
  %118 = phi i32 [ %106, %109 ], [ %374, %372 ]
  %119 = phi i32 [ %107, %109 ], [ %373, %372 ]
  %120 = phi i8 [ %108, %109 ], [ %189, %372 ]
  br i1 %95, label %121, label %188

121:                                              ; preds = %113
  %122 = sext i32 %118 to i64
  br label %123

123:                                              ; preds = %121, %181
  %124 = phi i64 [ %122, %121 ], [ %182, %181 ]
  %125 = phi i32 [ 0, %121 ], [ %184, %181 ]
  %126 = phi i8 [ %120, %121 ], [ %179, %181 ]
  %127 = add nuw nsw i32 %125, %112
  %128 = load i32, ptr @vect_get_mask_element.number_of_mask_fixes, align 4, !tbaa !66
  %129 = sub i32 1, %128
  %130 = mul i32 %129, %84
  %131 = add i32 %127, %130
  %132 = icmp slt i32 %131, %84
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i1 true, ptr @vect_get_mask_element.needs_first_vector, align 1
  br label %134

134:                                              ; preds = %133, %123
  %135 = or i1 %92, %132
  br i1 %135, label %143, label %136

136:                                              ; preds = %134
  %137 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %177, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %141 = call i64 @fwrite(ptr nonnull @.str.57, i64 42, i64 1, ptr %140)
  %142 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %142, ptr noundef %0, i32 noundef 0, i32 noundef 2) #18
  br label %177

143:                                              ; preds = %134
  %144 = icmp slt i32 %131, %96
  br i1 %144, label %171, label %145

145:                                              ; preds = %143
  %146 = load i1, ptr @vect_get_mask_element.needs_first_vector, align 1
  %147 = load i1, ptr @vect_get_mask_element.mask_fixed, align 1
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %154 = call i64 @fwrite(ptr nonnull @.str.58, i64 44, i64 1, ptr %153)
  %155 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %155, ptr noundef %0, i32 noundef 0, i32 noundef 2) #18
  br label %177

156:                                              ; preds = %145
  %157 = mul nsw i32 %128, %84
  %158 = sub nsw i32 %131, %157
  %159 = icmp sgt i64 %124, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = and i64 %124, 4294967295
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ 0, %160 ], [ %167, %162 ]
  %164 = getelementptr inbounds i32, ptr %59, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !66
  %166 = sub nsw i32 %165, %157
  store i32 %166, ptr %164, align 4, !tbaa !66
  %167 = add nuw nsw i64 %163, 1
  %168 = icmp eq i64 %167, %161
  br i1 %168, label %169, label %162, !llvm.loop !224

169:                                              ; preds = %162, %156
  %170 = add nsw i32 %128, 1
  store i32 %170, ptr @vect_get_mask_element.number_of_mask_fixes, align 4, !tbaa !66
  store i1 true, ptr @vect_get_mask_element.mask_fixed, align 1
  br label %171

171:                                              ; preds = %169, %143
  %172 = phi i32 [ %131, %143 ], [ %158, %169 ]
  %173 = load i1, ptr @vect_get_mask_element.mask_fixed, align 1
  %174 = zext i1 %173 to i8
  %175 = icmp eq i64 %124, %99
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 1, ptr @vect_get_mask_element.number_of_mask_fixes, align 4, !tbaa !66
  store i1 false, ptr @vect_get_mask_element.mask_fixed, align 1
  store i1 false, ptr @vect_get_mask_element.needs_first_vector, align 1
  br label %177

177:                                              ; preds = %136, %139, %149, %152, %171, %176
  %178 = phi i32 [ %172, %176 ], [ %172, %171 ], [ %131, %149 ], [ %131, %152 ], [ %131, %136 ], [ %131, %139 ]
  %179 = phi i8 [ %174, %176 ], [ %174, %171 ], [ %126, %149 ], [ %126, %152 ], [ %126, %136 ], [ %126, %139 ]
  %180 = phi i1 [ false, %176 ], [ false, %171 ], [ true, %149 ], [ true, %152 ], [ true, %136 ], [ true, %139 ]
  br i1 %180, label %393, label %181

181:                                              ; preds = %177
  %182 = add nsw i64 %124, 1
  %183 = getelementptr inbounds i32, ptr %59, i64 %124
  store i32 %178, ptr %183, align 4, !tbaa !66
  %184 = add nuw nsw i32 %125, 1
  %185 = icmp eq i32 %184, %89
  br i1 %185, label %186, label %123, !llvm.loop !225

186:                                              ; preds = %181
  %187 = trunc i64 %182 to i32
  br label %188

188:                                              ; preds = %186, %113
  %189 = phi i8 [ %120, %113 ], [ %179, %186 ]
  %190 = phi i32 [ %118, %113 ], [ %187, %186 ]
  %191 = icmp eq i32 %190, %84
  br i1 %191, label %192, label %372

192:                                              ; preds = %188
  %193 = icmp sgt i32 %190, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %192
  %195 = zext nneg i32 %190 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ %195, %194 ], [ %199, %196 ]
  %198 = phi ptr [ null, %194 ], [ %205, %196 ]
  %199 = add nsw i64 %197, -1
  %200 = load ptr, ptr %7, align 8, !tbaa !51
  %201 = getelementptr inbounds i32, ptr %59, i64 %199
  %202 = load i32, ptr %201, align 4, !tbaa !66
  %203 = sext i32 %202 to i64
  %204 = call ptr @build_int_cst(ptr noundef %200, i64 noundef %203) #18
  %205 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %204, ptr noundef %198) #18
  %206 = icmp sgt i64 %197, 1
  br i1 %206, label %196, label %207, !llvm.loop !226

207:                                              ; preds = %196, %192
  %208 = phi ptr [ null, %192 ], [ %205, %196 ]
  %209 = call ptr @build_vector(ptr noundef %52, ptr noundef %208) #18
  %210 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 8), align 8, !tbaa !227
  %211 = call zeroext i8 %210(ptr noundef %26, ptr noundef %209) #18
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %207
  %214 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %218 = call i64 @fwrite(ptr nonnull @.str.18, i64 25, i64 1, ptr %217)
  %219 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_generic_expr(ptr noundef %219, ptr noundef %209, i32 noundef 0) #18
  br label %220

220:                                              ; preds = %216, %213
  call void @free(ptr noundef %59)
  br label %367

221:                                              ; preds = %207
  %222 = icmp eq i8 %5, 0
  br i1 %222, label %223, label %367

223:                                              ; preds = %221
  %224 = udiv i32 %3, %63
  %225 = select i1 %92, i32 2, i32 1
  %226 = getelementptr inbounds %struct._slp_tree, ptr %79, i64 0, i32 2
  %227 = getelementptr inbounds %struct._slp_tree, ptr %79, i64 0, i32 4
  %228 = getelementptr inbounds %struct._slp_tree, ptr %79, i64 0, i32 3
  %229 = icmp eq i8 %189, 0
  %230 = select i1 %229, i32 %116, i32 %115
  %231 = select i1 %229, i32 %115, i32 %225
  %232 = load ptr, ptr %226, align 8, !tbaa !109
  %233 = add nsw i32 %119, 1
  %234 = zext i32 %119 to i64
  %235 = getelementptr inbounds %struct.VEC_gimple_base, ptr %232, i64 0, i32 2, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !51
  %237 = add nsw i32 %114, 1
  %238 = load i32, ptr %227, align 8, !tbaa !201
  %239 = udiv i32 %238, %224
  %240 = load ptr, ptr %228, align 8, !tbaa !202
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %223
  %243 = load i32, ptr %240, align 8, !tbaa !95
  br label %244

244:                                              ; preds = %242, %223
  %245 = phi i32 [ %243, %242 ], [ 0, %223 ]
  %246 = icmp slt i32 %245, %238
  br i1 %246, label %247, label %256

247:                                              ; preds = %244, %247
  %248 = phi i32 [ %254, %247 ], [ %245, %244 ]
  %249 = load ptr, ptr %228, align 8, !tbaa !202
  %250 = load i32, ptr %249, align 8, !tbaa !95
  %251 = add i32 %250, 1
  store i32 %251, ptr %249, align 8, !tbaa !95
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds %struct.VEC_gimple_base, ptr %249, i64 0, i32 2, i64 %252
  store ptr null, ptr %253, align 8, !tbaa !51
  %254 = add nsw i32 %248, 1
  %255 = icmp eq i32 %254, %238
  br i1 %255, label %256, label %247, !llvm.loop !228

256:                                              ; preds = %247, %244
  %257 = load i32, ptr %0, align 8
  %258 = and i32 %257, 255
  %259 = add nsw i32 %258, -10
  %260 = icmp ult i32 %259, -9
  br i1 %260, label %273, label %261

261:                                              ; preds = %256
  %262 = zext nneg i32 %258 to i64
  %263 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !66
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %265
  %267 = load i64, ptr %266, align 8, !tbaa !127
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %261
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %270

270:                                              ; preds = %269, %261
  %271 = getelementptr inbounds i8, ptr %0, i64 %267
  %272 = load ptr, ptr %271, align 8, !tbaa !51
  br label %273

273:                                              ; preds = %270, %256
  %274 = phi ptr [ %272, %270 ], [ null, %256 ]
  %275 = icmp sgt i32 %224, 0
  %276 = call ptr @vect_create_destination_var(ptr noundef %274, ptr noundef %26) #18
  br i1 %275, label %277, label %347

277:                                              ; preds = %273
  %278 = sext i32 %224 to i64
  br label %279

279:                                              ; preds = %277, %336
  %280 = phi i64 [ %345, %336 ], [ 0, %277 ]
  %281 = phi i32 [ %343, %336 ], [ %230, %277 ]
  %282 = phi i32 [ %344, %336 ], [ %231, %277 ]
  %283 = phi ptr [ %293, %336 ], [ null, %277 ]
  %284 = zext i32 %281 to i64
  %285 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !51
  %287 = zext i32 %282 to i64
  %288 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !51
  %290 = icmp eq ptr %283, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %279
  call void @free(ptr noundef %283)
  br label %292

292:                                              ; preds = %291, %279
  %293 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #18
  %294 = load i32, ptr %293, align 8, !tbaa !203
  %295 = add i32 %294, 1
  store i32 %295, ptr %293, align 8, !tbaa !203
  %296 = zext i32 %294 to i64
  %297 = getelementptr inbounds %struct.VEC_tree_base, ptr %293, i64 0, i32 2, i64 %296
  store ptr %286, ptr %297, align 8, !tbaa !51
  %298 = add i32 %294, 2
  store i32 %298, ptr %293, align 8, !tbaa !203
  %299 = zext i32 %295 to i64
  %300 = getelementptr inbounds %struct.VEC_tree_base, ptr %293, i64 0, i32 2, i64 %299
  store ptr %289, ptr %300, align 8, !tbaa !51
  %301 = add i32 %294, 3
  store i32 %301, ptr %293, align 8, !tbaa !203
  %302 = zext i32 %298 to i64
  %303 = getelementptr inbounds %struct.VEC_tree_base, ptr %293, i64 0, i32 2, i64 %302
  store ptr %209, ptr %303, align 8, !tbaa !51
  %304 = call ptr @gimple_build_call_vec(ptr noundef nonnull %39, ptr noundef nonnull %293) #18
  %305 = load ptr, ptr @cfun, align 8, !tbaa !51
  %306 = call ptr @make_ssa_name_fn(ptr noundef %305, ptr noundef %276, ptr noundef %304) #18
  %307 = load i32, ptr %304, align 8
  %308 = and i32 %307, 255
  %309 = add nsw i32 %308, -10
  %310 = icmp ult i32 %309, -9
  br i1 %310, label %315, label %311

311:                                              ; preds = %292
  %312 = getelementptr inbounds %struct.gimple_statement_base, ptr %304, i64 0, i32 3
  %313 = load i32, ptr %312, align 4, !tbaa !62
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %292
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1665, ptr noundef nonnull @.str.21) #18
  br label %316

316:                                              ; preds = %315, %311
  %317 = load i32, ptr %304, align 8
  %318 = and i32 %317, 255
  %319 = zext nneg i32 %318 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !66
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !127
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %316
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %327

327:                                              ; preds = %326, %316
  %328 = getelementptr inbounds i8, ptr %304, i64 %324
  store ptr %306, ptr %328, align 8, !tbaa !51
  %329 = icmp eq ptr %306, null
  br i1 %329, label %336, label %330

330:                                              ; preds = %327
  %331 = load i64, ptr %306, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 141
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.tree_ssa_name, ptr %306, i64 0, i32 2
  store ptr %304, ptr %335, align 8, !tbaa !62
  br label %336

336:                                              ; preds = %334, %330, %327
  call void @vect_finish_stmt_generation(ptr noundef nonnull %0, ptr noundef nonnull %304, ptr noundef %2) #18
  %337 = load ptr, ptr %228, align 8, !tbaa !202
  %338 = trunc i64 %280 to i32
  %339 = mul i32 %239, %338
  %340 = add i32 %339, %114
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.VEC_gimple_base, ptr %337, i64 0, i32 2, i64 %341
  store ptr %304, ptr %342, align 8, !tbaa !51
  %343 = add nsw i32 %281, %239
  %344 = add nsw i32 %282, %239
  %345 = add nuw nsw i64 %280, 1
  %346 = icmp slt i64 %345, %278
  br i1 %346, label %279, label %347, !llvm.loop !229

347:                                              ; preds = %336, %273
  %348 = phi ptr [ null, %273 ], [ %304, %336 ]
  %349 = getelementptr inbounds %struct.gimple_statement_base, ptr %236, i64 0, i32 1
  %350 = load i32, ptr %349, align 4, !tbaa !62
  %351 = icmp ne i32 %350, 0
  call void @llvm.assume(i1 %351)
  %352 = load ptr, ptr @stmt_vec_info_vec, align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %347
  %355 = load i32, ptr %352, align 8, !tbaa !97
  br label %356

356:                                              ; preds = %354, %347
  %357 = phi i32 [ %355, %354 ], [ 0, %347 ]
  %358 = icmp ugt i32 %350, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %360

360:                                              ; preds = %356, %359
  %361 = load ptr, ptr @stmt_vec_info_vec, align 8
  %362 = add i32 %350, -1
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %361, i64 0, i32 2, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !51
  %366 = getelementptr inbounds %struct._stmt_vec_info, ptr %365, i64 0, i32 6
  store ptr %348, ptr %366, align 8, !tbaa !230
  br label %367

367:                                              ; preds = %221, %360, %220
  %368 = phi i32 [ %119, %220 ], [ %119, %221 ], [ %233, %360 ]
  %369 = phi i32 [ %116, %220 ], [ %116, %221 ], [ %230, %360 ]
  %370 = phi i32 [ %115, %220 ], [ %115, %221 ], [ %231, %360 ]
  %371 = phi i32 [ %114, %220 ], [ %114, %221 ], [ %237, %360 ]
  br i1 %212, label %393, label %372

372:                                              ; preds = %188, %367
  %373 = phi i32 [ %368, %367 ], [ %119, %188 ]
  %374 = phi i32 [ 0, %367 ], [ %190, %188 ]
  %375 = phi i32 [ %369, %367 ], [ %116, %188 ]
  %376 = phi i32 [ %370, %367 ], [ %115, %188 ]
  %377 = phi i32 [ %371, %367 ], [ %114, %188 ]
  %378 = add nuw nsw i32 %117, 1
  %379 = icmp eq i32 %378, %28
  br i1 %379, label %380, label %113, !llvm.loop !231

380:                                              ; preds = %372, %101
  %381 = phi i8 [ %108, %101 ], [ %189, %372 ]
  %382 = phi i32 [ %107, %101 ], [ %373, %372 ]
  %383 = phi i32 [ %106, %101 ], [ %374, %372 ]
  %384 = phi i32 [ %104, %101 ], [ %375, %372 ]
  %385 = phi i32 [ %103, %101 ], [ %376, %372 ]
  %386 = phi i32 [ %102, %101 ], [ %377, %372 ]
  %387 = add nuw nsw i32 %105, 1
  %388 = icmp eq i32 %387, %63
  br i1 %388, label %389, label %101, !llvm.loop !232

389:                                              ; preds = %380, %81
  %390 = phi i8 [ %68, %81 ], [ %381, %380 ]
  %391 = add nuw i64 %67, 1
  br label %66, !llvm.loop !233

392:                                              ; preds = %78
  call void @free(ptr noundef %59)
  br label %393

393:                                              ; preds = %367, %177, %44, %47, %31, %34, %392
  %394 = phi i8 [ 1, %392 ], [ 0, %34 ], [ 0, %31 ], [ 0, %47 ], [ 0, %44 ], [ 0, %177 ], [ 0, %367 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret i8 %394
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_schedule_slp(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !50 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !107
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = phi i32 [ %7, %4 ], [ 1, %8 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %39, %10
  %16 = phi i32 [ 0, %10 ], [ %40, %39 ]
  %17 = phi i8 [ 0, %10 ], [ %30, %39 ]
  br i1 %14, label %25, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %13, align 8, !tbaa !139
  %20 = icmp ugt i32 %19, %16
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = zext i32 %16 to i64
  %23 = getelementptr inbounds %struct.VEC_slp_instance_base, ptr %13, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  br label %25

25:                                               ; preds = %15, %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ], [ null, %15 ]
  %27 = phi i1 [ false, %21 ], [ true, %18 ], [ true, %15 ]
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !89
  %30 = tail call fastcc zeroext i8 @vect_schedule_slp_instance(ptr noundef %29, ptr noundef nonnull %26, i32 noundef %12), !range !113
  %31 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %28
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %38 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 28, i64 1, ptr %37)
  br label %39

39:                                               ; preds = %33, %36
  %40 = add i32 %16, 1
  br label %15, !llvm.loop !234

41:                                               ; preds = %25
  ret i8 %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_schedule_slp_instance(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 !prof !50 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %6 = icmp eq ptr %0, null
  br i1 %6, label %134, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !92
  %9 = tail call fastcc zeroext i8 @vect_schedule_slp_instance(ptr noundef %8, ptr noundef %1, i32 noundef %2), !range !113
  %10 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = tail call fastcc zeroext i8 @vect_schedule_slp_instance(ptr noundef %11, ptr noundef %1, i32 noundef %2), !range !113
  %13 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = getelementptr inbounds %struct.VEC_gimple_base, ptr %14, i64 0, i32 2, i64 0
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.gimple_statement_base, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !62
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !97
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp ugt i32 %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr @stmt_vec_info_vec, align 8
  %31 = add i32 %18, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %30, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %7, %29
  %36 = phi ptr [ %34, %29 ], [ null, %7 ]
  %37 = load i32, ptr %16, align 8
  %38 = and i32 %37, 255
  %39 = add nsw i32 %38, -1
  %40 = icmp ult i32 %39, 9
  tail call void @llvm.assume(i1 %40)
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !66
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !127
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %49

49:                                               ; preds = %48, %35
  %50 = getelementptr inbounds i8, ptr %16, i64 %46
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %53) #18
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1023
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw i64 1, %58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !114
  %63 = mul i32 %62, %2
  %64 = udiv i32 %63, %60
  %65 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !120
  %67 = icmp eq ptr %66, null
  br i1 %67, label %93, label %68

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 5
  br label %70

70:                                               ; preds = %68, %91
  %71 = phi i64 [ 0, %68 ], [ %92, %91 ]
  %72 = load ptr, ptr %69, align 8, !tbaa !118
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %72, align 8, !tbaa !121
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %71, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %72, i64 0, i32 2, i64 %71
  %80 = load ptr, ptr %79, align 8, !tbaa !51
  br label %81

81:                                               ; preds = %70, %74, %78
  %82 = phi ptr [ %80, %78 ], [ null, %74 ], [ null, %70 ]
  %83 = phi i1 [ false, %78 ], [ true, %74 ], [ true, %70 ]
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct._slp_tree, ptr %82, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !202
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %64) #18
  store ptr %89, ptr %85, align 8, !tbaa !202
  %90 = getelementptr inbounds %struct._slp_tree, ptr %82, i64 0, i32 4
  store i32 %64, ptr %90, align 8, !tbaa !201
  br label %91

91:                                               ; preds = %84, %88
  %92 = add nuw i64 %71, 1
  br label %70, !llvm.loop !235

93:                                               ; preds = %81, %49
  %94 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !202
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %64) #18
  store ptr %98, ptr %94, align 8, !tbaa !202
  %99 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 4
  store i32 %64, ptr %99, align 8, !tbaa !201
  br label %100

100:                                              ; preds = %97, %93
  %101 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %105 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 43, i64 1, ptr %104)
  %106 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  tail call void @print_gimple_stmt(ptr noundef %106, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 2) #18
  br label %107

107:                                              ; preds = %103, %100
  %108 = getelementptr inbounds %struct._slp_instance, ptr %1, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !119
  %110 = icmp eq ptr %109, null
  br i1 %110, label %124, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !131
  %114 = icmp eq ptr %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %16) #18
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !66
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %108, align 8, !tbaa !119
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %123) #18
  br label %125

124:                                              ; preds = %115, %111, %107
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %16) #18
  br label %125

125:                                              ; preds = %124, %122
  %126 = call zeroext i8 @vect_transform_stmt(ptr noundef nonnull %16, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1) #18
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct._stmt_vec_info, ptr %36, i64 0, i32 17
  %130 = load ptr, ptr %129, align 8, !tbaa !131
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @vect_remove_stores(ptr noundef nonnull %130) #18
  br label %134

133:                                              ; preds = %128
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 2032, ptr noundef nonnull @.str.21) #18
  br label %134

134:                                              ; preds = %125, %132, %133, %3
  %135 = phi i8 [ 0, %3 ], [ 1, %133 ], [ 1, %132 ], [ 0, %125 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  ret i8 %135
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_slp_transform_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !50 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 2083, ptr noundef nonnull @.str.21) #18
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %11 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !72, !noalias !236
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !62, !noalias !236
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !78, !noalias !236
  br label %23

23:                                               ; preds = %21, %17, %12
  %24 = phi ptr [ %22, %21 ], [ null, %17 ], [ null, %12 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !80, !noalias !236
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi ptr [ %27, %26 ], [ null, %23 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31

31:                                               ; preds = %28, %69
  %32 = phi ptr [ %71, %69 ], [ %29, %28 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %38 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 25, i64 1, ptr %37)
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  tail call void @print_gimple_stmt(ptr noundef %39, ptr noundef %33, i32 noundef 0, i32 noundef 2) #18
  br label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !62
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @stmt_vec_info_vec, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8, !tbaa !97
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %48, %47 ], [ 0, %44 ]
  %51 = icmp ugt i32 %42, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %53

53:                                               ; preds = %52, %49
  %54 = load ptr, ptr @stmt_vec_info_vec, align 8
  %55 = add i32 %42, -1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %54, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  br label %59

59:                                               ; preds = %40, %53
  %60 = phi ptr [ %58, %53 ], [ null, %40 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 2100, ptr noundef nonnull @.str.21) #18
  br label %63

63:                                               ; preds = %59, %62
  %64 = getelementptr inbounds %struct._stmt_vec_info, ptr %60, i64 0, i32 25
  %65 = load i32, ptr %64, align 4, !tbaa !144
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call zeroext i8 @vect_schedule_slp(ptr noundef null, ptr noundef %3), !range !113
  br label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %32, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %31, !llvm.loop !239

73:                                               ; preds = %69, %28, %67
  %74 = load ptr, ptr @cfun, align 8, !tbaa !51
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !240
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 51, ptr noundef nonnull @.str.21) #18
  br label %81

81:                                               ; preds = %76, %80
  %82 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !240
  %84 = getelementptr inbounds %struct.gimple_df, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !242
  tail call void @mark_sym_for_renaming(ptr noundef %85) #18
  tail call void @update_ssa(i32 noundef 2048) #18
  %86 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %90 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 23, i64 1, ptr %89)
  br label %91

91:                                               ; preds = %88, %81
  tail call fastcc void @destroy_bb_vec_info(ptr noundef %3)
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare i32 @least_common_multiple(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #10 !prof !50 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  %24 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %3) #18
  store ptr %24, ptr %12, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %25 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %3) #18
  store ptr %25, ptr %13, align 8, !tbaa !51
  %26 = load ptr, ptr %2, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct._slp_tree, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  store i32 0, ptr %14, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #18
  store i32 0, ptr %15, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  store ptr null, ptr %16, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  store ptr null, ptr %17, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #18
  store ptr null, ptr %18, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #18
  store i8 0, ptr %19, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #18
  store i8 0, ptr %20, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #18
  %29 = icmp eq ptr %28, null
  %30 = zext i32 %10 to i64
  %31 = icmp eq ptr %1, null
  br label %32

32:                                               ; preds = %523, %11
  %33 = phi ptr [ null, %11 ], [ %268, %523 ]
  %34 = phi i8 [ 0, %11 ], [ %269, %523 ]
  %35 = phi i8 [ 0, %11 ], [ %524, %523 ]
  %36 = phi i32 [ 0, %11 ], [ %270, %523 ]
  %37 = phi i8 [ 0, %11 ], [ %525, %523 ]
  %38 = phi i32 [ 0, %11 ], [ %526, %523 ]
  br i1 %29, label %46, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %28, align 8, !tbaa !95
  %41 = icmp ugt i32 %40, %38
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = zext i32 %38 to i64
  %44 = getelementptr inbounds %struct.VEC_gimple_base, ptr %28, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  br label %46

46:                                               ; preds = %32, %39, %42
  %47 = phi ptr [ %45, %42 ], [ null, %39 ], [ null, %32 ]
  %48 = phi i1 [ false, %42 ], [ true, %39 ], [ true, %32 ]
  br i1 %48, label %527, label %49

49:                                               ; preds = %46
  %50 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %54 = call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %53)
  %55 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %55, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %56

56:                                               ; preds = %52, %49
  %57 = call ptr @gimple_get_lhs(ptr noundef %47) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %589, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %64 = call i64 @fwrite(ptr nonnull @.str.29, i64 51, i64 1, ptr %63)
  %65 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %65, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

66:                                               ; preds = %56
  %67 = call ptr @vect_get_smallest_scalar_type(ptr noundef %47, ptr noundef nonnull %21, ptr noundef nonnull %21) #18
  %68 = call ptr @get_vectype_for_scalar_type(ptr noundef %67) #18
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %589, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %75 = call i64 @fwrite(ptr nonnull @.str.25, i64 40, i64 1, ptr %74)
  %76 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_generic_expr(ptr noundef %76, ptr noundef %67, i32 noundef 2) #18
  br label %589

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 1023
  %81 = zext nneg i32 %80 to i64
  %82 = lshr i64 %30, %81
  %83 = trunc i64 %82 to i32
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %92, label %85

85:                                               ; preds = %77
  %86 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %90 = call i64 @fwrite(ptr nonnull @.str.30, i64 24, i64 1, ptr %89)
  br label %91

91:                                               ; preds = %88, %85
  br i1 %31, label %92, label %589

92:                                               ; preds = %91, %77
  %93 = load i32, ptr %7, align 4, !tbaa !66
  %94 = zext i32 %93 to i64
  %95 = load i32, ptr %78, align 4
  %96 = and i32 %95, 1023
  %97 = zext nneg i32 %96 to i64
  %98 = shl nuw i64 1, %97
  %99 = icmp ugt i64 %98, %94
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = trunc i64 %98 to i32
  store i32 %101, ptr %7, align 4, !tbaa !66
  br label %102

102:                                              ; preds = %100, %92
  %103 = load i32, ptr %47, align 8
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %137, label %106

106:                                              ; preds = %102
  %107 = trunc i32 %103 to i8
  switch i8 %107, label %110 [
    i8 6, label %108
    i8 1, label %108
    i8 8, label %111
  ]

108:                                              ; preds = %106, %106
  %109 = lshr i32 %103, 16
  br label %111

110:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1446, ptr noundef nonnull @.str.21) #18
  br label %111

111:                                              ; preds = %110, %108, %106
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ], [ 59, %106 ]
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !62
  %116 = icmp eq i8 %115, 3
  br i1 %116, label %117, label %137

117:                                              ; preds = %111
  %118 = load i32, ptr %47, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -1
  %121 = icmp ult i32 %120, 9
  call void @llvm.assume(i1 %121)
  %122 = zext nneg i32 %119 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !66
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !127
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %130

130:                                              ; preds = %129, %117
  %131 = getelementptr inbounds i8, ptr %47, i64 %127
  %132 = getelementptr inbounds ptr, ptr %131, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = load i64, ptr %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65535
  br label %137

137:                                              ; preds = %130, %111, %102
  %138 = phi i32 [ 59, %102 ], [ %136, %130 ], [ %112, %111 ]
  %139 = icmp eq i32 %38, 0
  br i1 %139, label %140, label %215

140:                                              ; preds = %137
  %141 = add nsw i32 %138, -83
  %142 = icmp ult i32 %141, 4
  br i1 %142, label %143, label %267

143:                                              ; preds = %140
  %144 = load i64, ptr %68, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = call i32 @vector_type_mode(ptr noundef nonnull %68) #18
  br label %153

149:                                              ; preds = %143
  %150 = load i32, ptr %78, align 4
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  br label %153

153:                                              ; preds = %149, %147
  %154 = phi i32 [ %148, %147 ], [ %152, %149 ]
  %155 = call ptr @optab_for_tree_code(i32 noundef %138, ptr noundef nonnull %68, i32 noundef 2) #18
  %156 = icmp eq ptr %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = sext i32 %154 to i64
  %159 = getelementptr inbounds %struct.optab_d, ptr %155, i64 0, i32 4, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !246
  %161 = icmp eq i32 %160, 2956
  br i1 %161, label %162, label %267

162:                                              ; preds = %157, %153
  %163 = call ptr @optab_for_tree_code(i32 noundef %138, ptr noundef nonnull %68, i32 noundef 1) #18
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %589, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %170 = call i64 @fwrite(ptr nonnull @.str.31, i64 27, i64 1, ptr %169)
  br label %589

171:                                              ; preds = %162
  %172 = sext i32 %154 to i64
  %173 = getelementptr inbounds %struct.optab_d, ptr %163, i64 0, i32 4, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !246
  %175 = icmp eq i32 %174, 2956
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %589, label %179

179:                                              ; preds = %176
  %180 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %181 = call i64 @fwrite(ptr nonnull @.str.32, i64 45, i64 1, ptr %180)
  br label %589

182:                                              ; preds = %171
  %183 = sext i32 %174 to i64
  %184 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %183, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !248
  %186 = getelementptr inbounds %struct.insn_operand_data, ptr %185, i64 2, i32 2
  %187 = load i16, ptr %186, align 8
  %188 = zext i16 %187 to i64
  %189 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !62
  %191 = add i8 %190, -12
  %192 = icmp ult i8 %191, 6
  br i1 %192, label %267, label %193

193:                                              ; preds = %182
  %194 = getelementptr inbounds %struct.gimple_statement_base, ptr %47, i64 0, i32 3
  %195 = load i32, ptr %194, align 4, !tbaa !62
  %196 = icmp ugt i32 %195, 2
  br i1 %196, label %197, label %267

197:                                              ; preds = %193
  %198 = load i32, ptr %47, align 8
  %199 = and i32 %198, 255
  %200 = add nsw i32 %199, -10
  %201 = icmp ult i32 %200, -9
  br i1 %201, label %267, label %202

202:                                              ; preds = %197
  %203 = zext nneg i32 %199 to i64
  %204 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !66
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !127
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %211

211:                                              ; preds = %210, %202
  %212 = getelementptr inbounds i8, ptr %47, i64 %208
  %213 = getelementptr inbounds ptr, ptr %212, i64 2
  %214 = load ptr, ptr %213, align 8, !tbaa !51
  br label %267

215:                                              ; preds = %137
  %216 = icmp eq i32 %36, %138
  br i1 %216, label %232, label %217

217:                                              ; preds = %215
  %218 = icmp ne i32 %36, 44
  %219 = icmp ne i32 %138, 43
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = icmp ne i32 %36, 43
  %223 = icmp ne i32 %138, 44
  %224 = select i1 %222, i1 true, i1 %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %589, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %230 = call i64 @fwrite(ptr nonnull @.str.33, i64 46, i64 1, ptr %229)
  %231 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %231, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

232:                                              ; preds = %221, %217, %215
  %233 = icmp eq i8 %34, 0
  br i1 %233, label %267, label %234

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.gimple_statement_base, ptr %47, i64 0, i32 3
  %236 = load i32, ptr %235, align 4, !tbaa !62
  %237 = icmp ugt i32 %236, 2
  br i1 %237, label %238, label %256

238:                                              ; preds = %234
  %239 = load i32, ptr %47, align 8
  %240 = and i32 %239, 255
  %241 = add nsw i32 %240, -10
  %242 = icmp ult i32 %241, -9
  br i1 %242, label %256, label %243

243:                                              ; preds = %238
  %244 = zext nneg i32 %240 to i64
  %245 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !66
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !127
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %252

252:                                              ; preds = %251, %243
  %253 = getelementptr inbounds i8, ptr %47, i64 %249
  %254 = getelementptr inbounds ptr, ptr %253, i64 2
  %255 = load ptr, ptr %254, align 8, !tbaa !51
  br label %256

256:                                              ; preds = %234, %238, %252
  %257 = phi ptr [ null, %234 ], [ %255, %252 ], [ null, %238 ]
  %258 = call i32 @operand_equal_p(ptr noundef %33, ptr noundef %257, i32 noundef 0) #18
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %589, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %265 = call i64 @fwrite(ptr nonnull @.str.34, i64 47, i64 1, ptr %264)
  %266 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %266, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

267:                                              ; preds = %211, %197, %193, %182, %232, %256, %140, %157
  %268 = phi ptr [ %33, %157 ], [ %33, %140 ], [ %33, %256 ], [ %33, %232 ], [ %33, %182 ], [ null, %193 ], [ %214, %211 ], [ null, %197 ]
  %269 = phi i8 [ %34, %157 ], [ %34, %140 ], [ %34, %256 ], [ %34, %232 ], [ %34, %182 ], [ 1, %193 ], [ 1, %211 ], [ 1, %197 ]
  %270 = phi i32 [ %138, %157 ], [ %138, %140 ], [ %36, %256 ], [ %36, %232 ], [ %138, %182 ], [ %138, %193 ], [ %138, %211 ], [ %138, %197 ]
  %271 = getelementptr inbounds %struct.gimple_statement_base, ptr %47, i64 0, i32 1
  %272 = load i32, ptr %271, align 4, !tbaa !62
  %273 = icmp ne i32 %272, 0
  call void @llvm.assume(i1 %273)
  %274 = load ptr, ptr @stmt_vec_info_vec, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %267
  %277 = load i32, ptr %274, align 8, !tbaa !97
  br label %278

278:                                              ; preds = %276, %267
  %279 = phi i32 [ %277, %276 ], [ 0, %267 ]
  %280 = icmp ugt i32 %272, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %282

282:                                              ; preds = %281, %278
  %283 = load ptr, ptr @stmt_vec_info_vec, align 8
  %284 = add i32 %272, -1
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %283, i64 0, i32 2, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !51
  %288 = getelementptr inbounds %struct._stmt_vec_info, ptr %287, i64 0, i32 17
  %289 = load ptr, ptr %288, align 8, !tbaa !131
  %290 = icmp eq ptr %289, null
  br i1 %290, label %499, label %291

291:                                              ; preds = %282
  %292 = load i64, ptr %57, align 8
  %293 = and i64 %292, 65535
  %294 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !66
  %296 = icmp eq i32 %295, 4
  br i1 %296, label %297, label %301

297:                                              ; preds = %291
  %298 = load ptr, ptr %2, align 8, !tbaa !51
  %299 = call fastcc zeroext i8 @vect_get_and_check_slp_defs(ptr noundef %0, ptr noundef %1, ptr noundef %298, ptr noundef %47, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18, i32 noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %20), !range !113
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %589, label %523

301:                                              ; preds = %291
  %302 = load i32, ptr %271, align 4, !tbaa !62
  %303 = icmp ne i32 %302, 0
  call void @llvm.assume(i1 %303)
  %304 = icmp eq ptr %283, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = load i32, ptr %283, align 8, !tbaa !97
  br label %307

307:                                              ; preds = %305, %301
  %308 = phi i32 [ %306, %305 ], [ 0, %301 ]
  %309 = icmp ugt i32 %302, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %311

311:                                              ; preds = %310, %307
  %312 = load ptr, ptr @stmt_vec_info_vec, align 8
  %313 = add i32 %302, -1
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %312, i64 0, i32 2, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !51
  %317 = getelementptr inbounds %struct._stmt_vec_info, ptr %316, i64 0, i32 17
  %318 = load ptr, ptr %317, align 8, !tbaa !131
  %319 = icmp eq ptr %318, %47
  br i1 %319, label %320, label %339

320:                                              ; preds = %311
  %321 = load i32, ptr %271, align 4, !tbaa !62
  %322 = icmp ne i32 %321, 0
  call void @llvm.assume(i1 %322)
  %323 = icmp eq ptr %312, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = load i32, ptr %312, align 8, !tbaa !97
  br label %326

326:                                              ; preds = %324, %320
  %327 = phi i32 [ %325, %324 ], [ 0, %320 ]
  %328 = icmp ugt i32 %321, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %330

330:                                              ; preds = %329, %326
  %331 = load ptr, ptr @stmt_vec_info_vec, align 8
  %332 = add i32 %321, -1
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %331, i64 0, i32 2, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !51
  %336 = getelementptr inbounds %struct._stmt_vec_info, ptr %335, i64 0, i32 21
  %337 = load i32, ptr %336, align 8, !tbaa !250
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %378

339:                                              ; preds = %330, %311
  %340 = load i32, ptr %271, align 4, !tbaa !62
  %341 = icmp ne i32 %340, 0
  call void @llvm.assume(i1 %341)
  %342 = load ptr, ptr @stmt_vec_info_vec, align 8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %339
  %345 = load i32, ptr %342, align 8, !tbaa !97
  br label %346

346:                                              ; preds = %344, %339
  %347 = phi i32 [ %345, %344 ], [ 0, %339 ]
  %348 = icmp ugt i32 %340, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %350

350:                                              ; preds = %349, %346
  %351 = load ptr, ptr @stmt_vec_info_vec, align 8
  %352 = add i32 %340, -1
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %351, i64 0, i32 2, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !51
  %356 = getelementptr inbounds %struct._stmt_vec_info, ptr %355, i64 0, i32 17
  %357 = load ptr, ptr %356, align 8, !tbaa !131
  %358 = icmp eq ptr %357, %47
  br i1 %358, label %385, label %359

359:                                              ; preds = %350
  %360 = load i32, ptr %271, align 4, !tbaa !62
  %361 = icmp ne i32 %360, 0
  call void @llvm.assume(i1 %361)
  %362 = icmp eq ptr %351, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %351, align 8, !tbaa !97
  br label %365

365:                                              ; preds = %363, %359
  %366 = phi i32 [ %364, %363 ], [ 0, %359 ]
  %367 = icmp ugt i32 %360, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %369

369:                                              ; preds = %368, %365
  %370 = load ptr, ptr @stmt_vec_info_vec, align 8
  %371 = add i32 %360, -1
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %370, i64 0, i32 2, i64 %372
  %374 = load ptr, ptr %373, align 8, !tbaa !51
  %375 = getelementptr inbounds %struct._stmt_vec_info, ptr %374, i64 0, i32 21
  %376 = load i32, ptr %375, align 8, !tbaa !250
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %385, label %378

378:                                              ; preds = %330, %369
  %379 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %589, label %381

381:                                              ; preds = %378
  %382 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %383 = call i64 @fwrite(ptr nonnull @.str.35, i64 42, i64 1, ptr %382)
  %384 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %384, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

385:                                              ; preds = %369, %350
  %386 = load i32, ptr %271, align 4, !tbaa !62
  %387 = icmp ne i32 %386, 0
  call void @llvm.assume(i1 %387)
  %388 = load ptr, ptr @stmt_vec_info_vec, align 8
  %389 = icmp eq ptr %388, null
  br i1 %389, label %392, label %390

390:                                              ; preds = %385
  %391 = load i32, ptr %388, align 8, !tbaa !97
  br label %392

392:                                              ; preds = %390, %385
  %393 = phi i32 [ %391, %390 ], [ 0, %385 ]
  %394 = icmp ugt i32 %386, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %396

396:                                              ; preds = %395, %392
  %397 = load ptr, ptr @stmt_vec_info_vec, align 8
  %398 = add i32 %386, -1
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %397, i64 0, i32 2, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !51
  %402 = getelementptr inbounds %struct._stmt_vec_info, ptr %401, i64 0, i32 19
  %403 = load i32, ptr %402, align 8, !tbaa !99
  %404 = mul i32 %83, %3
  %405 = icmp ugt i32 %403, %404
  br i1 %405, label %406, label %413

406:                                              ; preds = %396
  %407 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %589, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %411 = call i64 @fwrite(ptr nonnull @.str.36, i64 85, i64 1, ptr %410)
  %412 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %412, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

413:                                              ; preds = %396
  %414 = load i32, ptr %271, align 4, !tbaa !62
  %415 = icmp ne i32 %414, 0
  call void @llvm.assume(i1 %415)
  %416 = icmp eq ptr %397, null
  br i1 %416, label %419, label %417

417:                                              ; preds = %413
  %418 = load i32, ptr %397, align 8, !tbaa !97
  br label %419

419:                                              ; preds = %417, %413
  %420 = phi i32 [ %418, %417 ], [ 0, %413 ]
  %421 = icmp ugt i32 %414, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %423

423:                                              ; preds = %422, %419
  %424 = load ptr, ptr @stmt_vec_info_vec, align 8
  %425 = add i32 %414, -1
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %424, i64 0, i32 2, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !51
  %429 = getelementptr inbounds %struct._stmt_vec_info, ptr %428, i64 0, i32 17
  %430 = load ptr, ptr %429, align 8, !tbaa !131
  %431 = icmp eq ptr %430, %47
  br i1 %431, label %432, label %480

432:                                              ; preds = %423
  %433 = load i32, ptr %271, align 4, !tbaa !62
  %434 = icmp ne i32 %433, 0
  call void @llvm.assume(i1 %434)
  %435 = icmp eq ptr %424, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %432
  %437 = load i32, ptr %424, align 8, !tbaa !97
  br label %438

438:                                              ; preds = %436, %432
  %439 = phi i32 [ %437, %436 ], [ 0, %432 ]
  %440 = icmp ugt i32 %433, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %442

442:                                              ; preds = %441, %438
  %443 = load ptr, ptr @stmt_vec_info_vec, align 8
  %444 = add i32 %433, -1
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %443, i64 0, i32 2, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !51
  %448 = getelementptr inbounds %struct._stmt_vec_info, ptr %447, i64 0, i32 7
  %449 = load ptr, ptr %448, align 8, !tbaa !101
  %450 = call i32 @vect_supportable_dr_alignment(ptr noundef %449) #18
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %442
  %453 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %589, label %455

455:                                              ; preds = %452
  %456 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %457 = call i64 @fwrite(ptr nonnull @.str.37, i64 45, i64 1, ptr %456)
  %458 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %458, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

459:                                              ; preds = %442
  %460 = load i32, ptr %271, align 4, !tbaa !62
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %477, label %462

462:                                              ; preds = %459
  %463 = load ptr, ptr @stmt_vec_info_vec, align 8
  %464 = icmp eq ptr %463, null
  br i1 %464, label %467, label %465

465:                                              ; preds = %462
  %466 = load i32, ptr %463, align 8, !tbaa !97
  br label %467

467:                                              ; preds = %465, %462
  %468 = phi i32 [ %466, %465 ], [ 0, %462 ]
  %469 = icmp ugt i32 %460, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %471

471:                                              ; preds = %470, %467
  %472 = load ptr, ptr @stmt_vec_info_vec, align 8
  %473 = add i32 %460, -1
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %472, i64 0, i32 2, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !51
  br label %477

477:                                              ; preds = %459, %471
  %478 = phi ptr [ %476, %471 ], [ null, %459 ]
  %479 = load ptr, ptr %2, align 8, !tbaa !51
  call void @vect_model_load_cost(ptr noundef %478, i32 noundef %6, ptr noundef %479) #18
  br label %480

480:                                              ; preds = %477, %423
  %481 = call i32 @vect_get_place_in_interleaving_chain(ptr noundef %47, ptr noundef %430) #18
  %482 = icmp eq i32 %481, %38
  %483 = select i1 %482, i8 %37, i8 1
  %484 = load ptr, ptr %8, align 8, !tbaa !51
  %485 = icmp eq ptr %484, null
  br i1 %485, label %491, label %486

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.VEC_int_base, ptr %484, i64 0, i32 1
  %488 = load i32, ptr %487, align 4, !tbaa !251
  %489 = load i32, ptr %484, align 4, !tbaa !123
  %490 = icmp eq i32 %488, %489
  br i1 %490, label %491, label %493

491:                                              ; preds = %480, %486
  %492 = call ptr @vec_heap_o_reserve(ptr noundef %484, i32 noundef 1, i64 noundef 8, i64 noundef 4) #18
  store ptr %492, ptr %8, align 8, !tbaa !51
  br label %493

493:                                              ; preds = %486, %491
  %494 = load ptr, ptr %8, align 8, !tbaa !51
  %495 = load i32, ptr %494, align 4, !tbaa !123
  %496 = add i32 %495, 1
  store i32 %496, ptr %494, align 4, !tbaa !123
  %497 = zext i32 %495 to i64
  %498 = getelementptr inbounds %struct.VEC_int_base, ptr %494, i64 0, i32 2, i64 %497
  store i32 %481, ptr %498, align 4, !tbaa !66
  br label %523

499:                                              ; preds = %282
  %500 = zext nneg i32 %138 to i64
  %501 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !66
  switch i32 %502, label %510 [
    i32 4, label %503
    i32 7, label %519
    i32 6, label %519
  ]

503:                                              ; preds = %499
  %504 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %589, label %506

506:                                              ; preds = %503
  %507 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %508 = call i64 @fwrite(ptr nonnull @.str.38, i64 35, i64 1, ptr %507)
  %509 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %509, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

510:                                              ; preds = %499
  %511 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %589, label %513

513:                                              ; preds = %510
  %514 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %515 = call i64 @fwrite(ptr nonnull @.str.39, i64 27, i64 1, ptr %514)
  %516 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %517 = call i64 @fwrite(ptr nonnull @.str.40, i64 13, i64 1, ptr %516)
  %518 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_gimple_stmt(ptr noundef %518, ptr noundef %47, i32 noundef 0, i32 noundef 2) #18
  br label %589

519:                                              ; preds = %499, %499
  %520 = load ptr, ptr %2, align 8, !tbaa !51
  %521 = call fastcc zeroext i8 @vect_get_and_check_slp_defs(ptr noundef %0, ptr noundef %1, ptr noundef %520, ptr noundef %47, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18, i32 noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %20), !range !113
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %589, label %523

523:                                              ; preds = %297, %519, %493
  %524 = phi i8 [ %35, %297 ], [ 1, %493 ], [ %35, %519 ]
  %525 = phi i8 [ %37, %297 ], [ %483, %493 ], [ %37, %519 ]
  %526 = add i32 %38, 1
  br label %32, !llvm.loop !252

527:                                              ; preds = %46
  %528 = load ptr, ptr %2, align 8, !tbaa !51
  %529 = getelementptr inbounds %struct._slp_tree, ptr %528, i64 0, i32 5, i32 1
  %530 = load i32, ptr %529, align 4, !tbaa !253
  %531 = load i32, ptr %4, align 4, !tbaa !66
  %532 = add nsw i32 %531, %530
  store i32 %532, ptr %4, align 4, !tbaa !66
  %533 = getelementptr inbounds %struct._slp_tree, ptr %528, i64 0, i32 5
  %534 = load i32, ptr %533, align 4, !tbaa !254
  %535 = load i32, ptr %5, align 4, !tbaa !66
  %536 = add nsw i32 %535, %534
  store i32 %536, ptr %5, align 4, !tbaa !66
  %537 = icmp eq i8 %35, 0
  br i1 %537, label %558, label %538

538:                                              ; preds = %527
  %539 = icmp eq i8 %37, 0
  br i1 %539, label %589, label %540

540:                                              ; preds = %538
  %541 = load ptr, ptr %9, align 8, !tbaa !51
  %542 = icmp eq ptr %541, null
  br i1 %542, label %548, label %543

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %541, i64 0, i32 1
  %545 = load i32, ptr %544, align 4, !tbaa !133
  %546 = load i32, ptr %541, align 8, !tbaa !121
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %548, label %550

548:                                              ; preds = %540, %543
  %549 = call ptr @vec_heap_p_reserve(ptr noundef %541, i32 noundef 1) #18
  store ptr %549, ptr %9, align 8, !tbaa !51
  br label %550

550:                                              ; preds = %543, %548
  %551 = load ptr, ptr %9, align 8, !tbaa !51
  %552 = load i32, ptr %551, align 8, !tbaa !121
  %553 = add i32 %552, 1
  store i32 %553, ptr %551, align 8, !tbaa !121
  %554 = zext i32 %552 to i64
  %555 = getelementptr inbounds %struct.VEC_slp_tree_base, ptr %551, i64 0, i32 2, i64 %554
  store ptr %528, ptr %555, align 8, !tbaa !51
  %556 = load i32, ptr %4, align 4, !tbaa !66
  %557 = add i32 %556, %3
  store i32 %557, ptr %4, align 4, !tbaa !66
  br label %589

558:                                              ; preds = %527
  %559 = load i32, ptr %14, align 4, !tbaa !66
  %560 = icmp eq i32 %559, 3
  br i1 %560, label %561, label %572

561:                                              ; preds = %558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #18
  %562 = call ptr @xmalloc(i64 noundef 48) #18
  store ptr %562, ptr %22, align 8, !tbaa !51
  %563 = load ptr, ptr %12, align 8, !tbaa !51
  %564 = getelementptr inbounds %struct._slp_tree, ptr %562, i64 0, i32 2
  store ptr %563, ptr %564, align 8, !tbaa !109
  %565 = getelementptr inbounds %struct._slp_tree, ptr %562, i64 0, i32 3
  store ptr null, ptr %565, align 8, !tbaa !202
  %566 = getelementptr inbounds %struct._slp_tree, ptr %562, i64 0, i32 5
  store i32 0, ptr %566, align 4, !tbaa !254
  %567 = getelementptr inbounds %struct._slp_tree, ptr %562, i64 0, i32 5, i32 1
  store i32 0, ptr %567, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %562, i8 0, i64 16, i1 false)
  %568 = call fastcc zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10), !range !113
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %587, label %570

570:                                              ; preds = %561
  %571 = load ptr, ptr %2, align 8, !tbaa !51
  store ptr %562, ptr %571, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #18
  br label %572

572:                                              ; preds = %570, %558
  %573 = load i32, ptr %15, align 4, !tbaa !66
  %574 = icmp eq i32 %573, 3
  br i1 %574, label %575, label %589

575:                                              ; preds = %572
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #18
  %576 = call ptr @xmalloc(i64 noundef 48) #18
  store ptr %576, ptr %23, align 8, !tbaa !51
  %577 = load ptr, ptr %13, align 8, !tbaa !51
  %578 = getelementptr inbounds %struct._slp_tree, ptr %576, i64 0, i32 2
  store ptr %577, ptr %578, align 8, !tbaa !109
  %579 = getelementptr inbounds %struct._slp_tree, ptr %576, i64 0, i32 3
  store ptr null, ptr %579, align 8, !tbaa !202
  %580 = getelementptr inbounds %struct._slp_tree, ptr %576, i64 0, i32 5
  store i32 0, ptr %580, align 4, !tbaa !254
  %581 = getelementptr inbounds %struct._slp_tree, ptr %576, i64 0, i32 5, i32 1
  store i32 0, ptr %581, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %576, i8 0, i64 16, i1 false)
  %582 = call fastcc zeroext i8 @vect_build_slp_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10), !range !113
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %588, label %584

584:                                              ; preds = %575
  %585 = load ptr, ptr %2, align 8, !tbaa !51
  %586 = getelementptr inbounds %struct._slp_tree, ptr %585, i64 0, i32 1
  store ptr %576, ptr %586, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #18
  br label %589

587:                                              ; preds = %561
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #18
  br label %589

588:                                              ; preds = %575
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #18
  br label %589

589:                                              ; preds = %297, %519, %91, %572, %584, %588, %587, %538, %550, %510, %513, %503, %506, %452, %455, %406, %409, %378, %381, %260, %263, %225, %228, %176, %179, %165, %168, %70, %73, %59, %62
  %590 = phi i8 [ 0, %62 ], [ 0, %59 ], [ 0, %73 ], [ 0, %70 ], [ 0, %168 ], [ 0, %165 ], [ 0, %179 ], [ 0, %176 ], [ 0, %228 ], [ 0, %225 ], [ 0, %263 ], [ 0, %260 ], [ 0, %381 ], [ 0, %378 ], [ 0, %409 ], [ 0, %406 ], [ 0, %455 ], [ 0, %452 ], [ 0, %506 ], [ 0, %503 ], [ 0, %513 ], [ 0, %510 ], [ 1, %550 ], [ 1, %538 ], [ 0, %587 ], [ 0, %588 ], [ 1, %584 ], [ 1, %572 ], [ 0, %91 ], [ 0, %519 ], [ 0, %297 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  ret i8 %590
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_print_slp_tree(ptr noundef readonly %0) unnamed_addr #10 !prof !50 {
  br label %2

2:                                                ; preds = %29, %1
  %3 = phi ptr [ %0, %1 ], [ %33, %29 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %7 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 5, i64 1, ptr %6)
  %8 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 2
  br label %9

9:                                                ; preds = %24, %5
  %10 = phi i64 [ %28, %24 ], [ 0, %5 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !95
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.VEC_gimple_base, ptr %11, i64 0, i32 2, i64 %10
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %9, %13, %17
  %21 = phi ptr [ %19, %17 ], [ null, %13 ], [ null, %9 ]
  %22 = phi i1 [ false, %17 ], [ true, %13 ], [ true, %9 ]
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  br i1 %22, label %29, label %24

24:                                               ; preds = %20
  %25 = trunc i64 %10 to i32
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.54, i32 noundef %25)
  %27 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %21, i32 noundef 0, i32 noundef 2) #18
  %28 = add nuw i64 %10, 1
  br label %9, !llvm.loop !255

29:                                               ; preds = %20
  %30 = tail call i32 @fputc(i32 10, ptr %23)
  %31 = load ptr, ptr %3, align 8, !tbaa !92
  tail call fastcc void @vect_print_slp_tree(ptr noundef %31)
  %32 = getelementptr inbounds %struct._slp_tree, ptr %3, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  br label %2

34:                                               ; preds = %2
  ret void
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_get_and_check_slp_defs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef %9, ptr nocapture noundef %10, i32 noundef %11, ptr nocapture noundef %12, ptr nocapture noundef %13) unnamed_addr #10 !prof !50 {
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  store i64 34359738376, ptr %17, align 8
  %18 = getelementptr inbounds %struct._slp_tree, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.VEC_gimple_base, ptr %19, i64 0, i32 2, i64 0
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !62
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr @stmt_vec_info_vec, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 8, !tbaa !97
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp ugt i32 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @stmt_vec_info_vec, align 8
  %36 = add i32 %23, -1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %35, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  br label %40

40:                                               ; preds = %14, %34
  %41 = phi ptr [ %39, %34 ], [ null, %14 ]
  %42 = icmp eq ptr %0, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %0, align 8, !tbaa !256
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi ptr [ %44, %43 ], [ null, %40 ]
  %47 = load i32, ptr %3, align 8
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %51 [
    i8 6, label %49
    i8 1, label %49
    i8 8, label %52
  ]

49:                                               ; preds = %45, %45
  %50 = lshr i32 %47, 16
  br label %52

51:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1446, ptr noundef nonnull @.str.21) #18
  br label %52

52:                                               ; preds = %51, %49, %45
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ], [ 59, %45 ]
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !62
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load i32, ptr %3, align 8
  %60 = and i32 %59, 255
  %61 = add nsw i32 %60, -1
  %62 = icmp ult i32 %61, 9
  tail call void @llvm.assume(i1 %62)
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !66
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !127
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %71

71:                                               ; preds = %70, %58
  %72 = getelementptr inbounds i8, ptr %3, i64 %68
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 65535
  br label %78

78:                                               ; preds = %52, %71
  %79 = phi i32 [ %77, %71 ], [ %53, %52 ]
  %80 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !62
  %82 = add i32 %81, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %416, label %84

84:                                               ; preds = %78
  %85 = zext nneg i32 %79 to i64
  %86 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !62
  %88 = icmp ne ptr %46, null
  %89 = icmp eq i8 %87, 3
  %90 = zext i32 %82 to i64
  br label %91

91:                                               ; preds = %84, %414
  %92 = phi i64 [ 0, %84 ], [ %93, %414 ]
  %93 = add nuw nsw i64 %92, 1
  %94 = load i32, ptr %3, align 8
  %95 = and i32 %94, 255
  %96 = add nsw i32 %95, -10
  %97 = icmp ult i32 %96, -9
  br i1 %97, label %111, label %98

98:                                               ; preds = %91
  %99 = zext nneg i32 %95 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !66
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !127
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %107

107:                                              ; preds = %106, %98
  %108 = getelementptr inbounds i8, ptr %3, i64 %104
  %109 = getelementptr inbounds ptr, ptr %108, i64 %93
  %110 = load ptr, ptr %109, align 8, !tbaa !51
  br label %111

111:                                              ; preds = %91, %107
  %112 = phi ptr [ %110, %107 ], [ null, %91 ]
  %113 = getelementptr inbounds [2 x i32], ptr %17, i64 0, i64 %92
  %114 = call zeroext i8 @vect_is_simple_use(ptr noundef %112, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %113) #18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %16, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, ptr %113, align 4, !tbaa !66
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %129, label %122

122:                                              ; preds = %119, %111
  %123 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %416, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %127 = call i64 @fwrite(ptr nonnull @.str.42, i64 37, i64 1, ptr %126)
  %128 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_generic_expr(ptr noundef %128, ptr noundef %112, i32 noundef 2) #18
  br label %416

129:                                              ; preds = %119, %116
  %130 = icmp ne ptr %117, null
  %131 = and i1 %88, %130
  br i1 %131, label %132, label %288

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.gimple_statement_base, ptr %117, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !62
  %135 = icmp eq ptr %134, null
  br i1 %135, label %288, label %136

136:                                              ; preds = %132
  %137 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %46, ptr noundef nonnull %134) #18
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %288, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %16, align 8, !tbaa !51
  %141 = getelementptr inbounds %struct.gimple_statement_base, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !62
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr @stmt_vec_info_vec, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load i32, ptr %145, align 8, !tbaa !97
  br label %149

149:                                              ; preds = %147, %144
  %150 = phi i32 [ %148, %147 ], [ 0, %144 ]
  %151 = icmp ugt i32 %142, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %153

153:                                              ; preds = %152, %149
  %154 = load ptr, ptr @stmt_vec_info_vec, align 8
  %155 = add i32 %142, -1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %154, i64 0, i32 2, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !51
  br label %159

159:                                              ; preds = %139, %153
  %160 = phi ptr [ %158, %153 ], [ null, %139 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %288, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr %16, align 8, !tbaa !51
  %164 = getelementptr inbounds %struct.gimple_statement_base, ptr %163, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !62
  %166 = icmp ne i32 %165, 0
  call void @llvm.assume(i1 %166)
  %167 = load ptr, ptr @stmt_vec_info_vec, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %162
  %170 = load i32, ptr %167, align 8, !tbaa !97
  br label %171

171:                                              ; preds = %169, %162
  %172 = phi i32 [ %170, %169 ], [ 0, %162 ]
  %173 = icmp ugt i32 %165, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %175

175:                                              ; preds = %174, %171
  %176 = load ptr, ptr @stmt_vec_info_vec, align 8
  %177 = add i32 %165, -1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %176, i64 0, i32 2, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !51
  %181 = getelementptr inbounds %struct._stmt_vec_info, ptr %180, i64 0, i32 13
  %182 = load i8, ptr %181, align 8, !tbaa !257
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %288, label %184

184:                                              ; preds = %175
  %185 = load i32, ptr %6, align 4, !tbaa !66
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %208, label %187

187:                                              ; preds = %184
  %188 = icmp eq i64 %92, 1
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i32, ptr %7, align 4, !tbaa !66
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %189, %187
  %193 = icmp eq i64 %92, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i8, ptr %12, align 1, !tbaa !62
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194, %192
  br i1 %188, label %198, label %210

198:                                              ; preds = %197
  %199 = load i8, ptr %13, align 1, !tbaa !62
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %194, %198
  %202 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %416, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %206 = call i64 @fwrite(ptr nonnull @.str.43, i64 73, i64 1, ptr %205)
  %207 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  call void @print_generic_expr(ptr noundef %207, ptr noundef %112, i32 noundef 2) #18
  br label %416

208:                                              ; preds = %189, %184
  %209 = phi ptr [ %12, %184 ], [ %13, %189 ]
  store i8 1, ptr %209, align 1, !tbaa !62
  br label %210

210:                                              ; preds = %208, %198, %197
  %211 = load ptr, ptr %16, align 8, !tbaa !51
  %212 = getelementptr inbounds %struct.gimple_statement_base, ptr %211, i64 0, i32 1
  %213 = load i32, ptr %212, align 4, !tbaa !62
  %214 = icmp ne i32 %213, 0
  call void @llvm.assume(i1 %214)
  %215 = load ptr, ptr @stmt_vec_info_vec, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %210
  %218 = load i32, ptr %215, align 8, !tbaa !97
  br label %219

219:                                              ; preds = %217, %210
  %220 = phi i32 [ %218, %217 ], [ 0, %210 ]
  %221 = icmp ugt i32 %213, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %223

223:                                              ; preds = %222, %219
  %224 = load ptr, ptr @stmt_vec_info_vec, align 8
  %225 = add i32 %213, -1
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %224, i64 0, i32 2, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !51
  %229 = getelementptr inbounds %struct._stmt_vec_info, ptr %228, i64 0, i32 14
  %230 = load ptr, ptr %229, align 8, !tbaa !258
  store ptr %230, ptr %16, align 8, !tbaa !51
  %231 = getelementptr inbounds %struct.gimple_statement_base, ptr %230, i64 0, i32 1
  %232 = load i32, ptr %231, align 4, !tbaa !62
  %233 = icmp ne i32 %232, 0
  call void @llvm.assume(i1 %233)
  %234 = icmp eq ptr %224, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %223
  %236 = load i32, ptr %224, align 8, !tbaa !97
  br label %237

237:                                              ; preds = %235, %223
  %238 = phi i32 [ %236, %235 ], [ 0, %223 ]
  %239 = icmp ugt i32 %232, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %241

241:                                              ; preds = %240, %237
  %242 = load ptr, ptr @stmt_vec_info_vec, align 8
  %243 = add i32 %232, -1
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %242, i64 0, i32 2, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !51
  %247 = getelementptr inbounds %struct._stmt_vec_info, ptr %246, i64 0, i32 16
  %248 = load i32, ptr %247, align 8, !tbaa !153
  store i32 %248, ptr %113, align 4, !tbaa !66
  %249 = load i32, ptr %17, align 8, !tbaa !66
  %250 = icmp eq i32 %249, 8
  br i1 %250, label %251, label %257

251:                                              ; preds = %241
  %252 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %416, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %256 = call i64 @fwrite(ptr nonnull @.str.44, i64 20, i64 1, ptr %255)
  br label %416

257:                                              ; preds = %241
  %258 = load ptr, ptr %16, align 8, !tbaa !51
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 255
  %261 = trunc i32 %259 to i8
  switch i8 %261, label %282 [
    i8 16, label %262
    i8 6, label %265
  ]

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.gimple_statement_phi, ptr %258, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !62
  store ptr %264, ptr %15, align 8, !tbaa !51
  br label %288

265:                                              ; preds = %257
  %266 = add nsw i32 %260, -10
  %267 = icmp ult i32 %266, -9
  br i1 %267, label %280, label %268

268:                                              ; preds = %265
  %269 = zext nneg i32 %260 to i64
  %270 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !66
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %272
  %274 = load i64, ptr %273, align 8, !tbaa !127
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 1622, ptr noundef nonnull @.str.21) #18
  br label %277

277:                                              ; preds = %276, %268
  %278 = getelementptr inbounds i8, ptr %258, i64 %274
  %279 = load ptr, ptr %278, align 8, !tbaa !51
  br label %280

280:                                              ; preds = %265, %277
  %281 = phi ptr [ %279, %277 ], [ null, %265 ]
  store ptr %281, ptr %15, align 8, !tbaa !51
  br label %288

282:                                              ; preds = %257
  %283 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #18
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %416, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %287 = call i64 @fwrite(ptr nonnull @.str.45, i64 27, i64 1, ptr %286)
  br label %416

288:                                              ; preds = %262, %280, %175, %159, %136, %132, %129
  %289 = load i32, ptr %6, align 4, !tbaa !66
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %288
  %292 = load i32, ptr %113, align 4, !tbaa !66
  store i32 %292, ptr %6, align 4, !tbaa !66
  %293 = load ptr, ptr %15, align 8, !tbaa !51
  %294 = icmp eq ptr %293, null
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.tree_common, ptr %293, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !62
  store ptr %297, ptr %8, align 8, !tbaa !51
  br label %299

298:                                              ; preds = %291
  store ptr %112, ptr %10, align 8, !tbaa !51
  br label %299

299:                                              ; preds = %298, %295
  br i1 %89, label %301, label %300

300:                                              ; preds = %299
  call void @vect_model_simple_cost(ptr noundef %41, i32 noundef %11, ptr noundef nonnull %17, ptr noundef %2) #18
  br label %374

301:                                              ; preds = %299
  %302 = load i32, ptr %17, align 8, !tbaa !66
  call void @vect_model_store_cost(ptr noundef %41, i32 noundef %11, i32 noundef %302, ptr noundef %2) #18
  br label %374

303:                                              ; preds = %288
  %304 = load i32, ptr %7, align 4, !tbaa !66
  %305 = icmp eq i32 %304, 0
  %306 = icmp eq i64 %92, 1
  %307 = and i1 %306, %305
  br i1 %307, label %308, label %325

308:                                              ; preds = %303
  %309 = load i32, ptr %113, align 4, !tbaa !66
  store i32 %309, ptr %7, align 4, !tbaa !66
  %310 = load ptr, ptr %15, align 8, !tbaa !51
  %311 = icmp eq ptr %310, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.tree_common, ptr %310, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !62
  store ptr %314, ptr %9, align 8, !tbaa !51
  br label %374

315:                                              ; preds = %308
  %316 = load ptr, ptr %10, align 8, !tbaa !51
  %317 = icmp eq ptr %316, null
  br i1 %317, label %324, label %318

318:                                              ; preds = %315
  %319 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %416, label %321

321:                                              ; preds = %318
  %322 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %323 = call i64 @fwrite(ptr nonnull @.str.46, i64 45, i64 1, ptr %322)
  br label %416

324:                                              ; preds = %315
  store ptr %112, ptr %10, align 8, !tbaa !51
  br label %374

325:                                              ; preds = %303
  %326 = icmp eq i64 %92, 0
  br i1 %326, label %327, label %341

327:                                              ; preds = %325
  %328 = load i32, ptr %113, align 4, !tbaa !66
  %329 = icmp eq i32 %289, %328
  br i1 %329, label %330, label %368

330:                                              ; preds = %327
  %331 = load ptr, ptr %8, align 8, !tbaa !51
  %332 = icmp ne ptr %331, null
  %333 = load ptr, ptr %15, align 8
  %334 = icmp ne ptr %333, null
  %335 = select i1 %332, i1 %334, i1 false
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.tree_common, ptr %333, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !62
  %339 = call zeroext i8 @types_compatible_p(ptr noundef nonnull %331, ptr noundef %338) #18
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %368, label %341

341:                                              ; preds = %336, %330, %325
  br i1 %306, label %342, label %357

342:                                              ; preds = %341
  %343 = load i32, ptr %7, align 4, !tbaa !66
  %344 = load i32, ptr %113, align 4, !tbaa !66
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %368

346:                                              ; preds = %342
  %347 = load ptr, ptr %9, align 8, !tbaa !51
  %348 = icmp ne ptr %347, null
  %349 = load ptr, ptr %15, align 8
  %350 = icmp ne ptr %349, null
  %351 = select i1 %348, i1 %350, i1 false
  br i1 %351, label %352, label %357

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.tree_common, ptr %349, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !62
  %355 = call zeroext i8 @types_compatible_p(ptr noundef nonnull %347, ptr noundef %354) #18
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %368, label %357

357:                                              ; preds = %352, %346, %341
  %358 = load ptr, ptr %15, align 8, !tbaa !51
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %374

360:                                              ; preds = %357
  %361 = load ptr, ptr %10, align 8, !tbaa !51
  %362 = getelementptr inbounds %struct.tree_common, ptr %361, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !62
  %364 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !62
  %366 = call zeroext i8 @types_compatible_p(ptr noundef %363, ptr noundef %365) #18
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %352, %336, %360, %342, %327
  %369 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %416, label %371

371:                                              ; preds = %368
  %372 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %373 = call i64 @fwrite(ptr nonnull @.str.47, i64 34, i64 1, ptr %372)
  br label %416

374:                                              ; preds = %324, %312, %360, %357, %300, %301
  %375 = load i32, ptr %113, align 4, !tbaa !66
  switch i32 %375, label %399 [
    i32 1, label %414
    i32 2, label %414
    i32 3, label %376
  ]

376:                                              ; preds = %374
  %377 = icmp eq i64 %92, 0
  %378 = load ptr, ptr %16, align 8, !tbaa !51
  br i1 %377, label %379, label %389

379:                                              ; preds = %376
  %380 = load ptr, ptr %4, align 8, !tbaa !51
  %381 = icmp eq ptr %380, null
  br i1 %381, label %387, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.VEC_gimple_base, ptr %380, i64 0, i32 1
  %384 = load i32, ptr %383, align 4, !tbaa !110
  %385 = load i32, ptr %380, align 8, !tbaa !95
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %407

387:                                              ; preds = %379, %382
  %388 = call ptr @vec_heap_p_reserve(ptr noundef %380, i32 noundef 1) #18
  store ptr %388, ptr %4, align 8, !tbaa !51
  br label %407

389:                                              ; preds = %376
  %390 = load ptr, ptr %5, align 8, !tbaa !51
  %391 = icmp eq ptr %390, null
  br i1 %391, label %397, label %392

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.VEC_gimple_base, ptr %390, i64 0, i32 1
  %394 = load i32, ptr %393, align 4, !tbaa !110
  %395 = load i32, ptr %390, align 8, !tbaa !95
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %407

397:                                              ; preds = %389, %392
  %398 = call ptr @vec_heap_p_reserve(ptr noundef %390, i32 noundef 1) #18
  store ptr %398, ptr %5, align 8, !tbaa !51
  br label %407

399:                                              ; preds = %374
  %400 = call zeroext i8 @vect_print_dump_info(i32 noundef 8) #18
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %416, label %402

402:                                              ; preds = %399
  %403 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %404 = call i64 @fwrite(ptr nonnull @.str.48, i64 38, i64 1, ptr %403)
  %405 = load ptr, ptr @vect_dump, align 8, !tbaa !51
  %406 = load ptr, ptr %15, align 8, !tbaa !51
  call void @print_generic_expr(ptr noundef %405, ptr noundef %406, i32 noundef 2) #18
  br label %416

407:                                              ; preds = %397, %392, %387, %382
  %408 = phi ptr [ %4, %382 ], [ %4, %387 ], [ %5, %392 ], [ %5, %397 ]
  %409 = load ptr, ptr %408, align 8, !tbaa !51
  %410 = load i32, ptr %409, align 8, !tbaa !95
  %411 = add i32 %410, 1
  store i32 %411, ptr %409, align 8, !tbaa !95
  %412 = zext i32 %410 to i64
  %413 = getelementptr inbounds %struct.VEC_gimple_base, ptr %409, i64 0, i32 2, i64 %412
  store ptr %378, ptr %413, align 8, !tbaa !51
  br label %414

414:                                              ; preds = %407, %374, %374
  %415 = icmp eq i64 %93, %90
  br i1 %415, label %416, label %91, !llvm.loop !259

416:                                              ; preds = %414, %78, %399, %402, %368, %371, %318, %321, %282, %285, %251, %254, %201, %204, %122, %125
  %417 = phi i8 [ 0, %125 ], [ 0, %122 ], [ 0, %204 ], [ 0, %201 ], [ 0, %254 ], [ 0, %251 ], [ 0, %285 ], [ 0, %282 ], [ 0, %321 ], [ 0, %318 ], [ 0, %371 ], [ 0, %368 ], [ 0, %402 ], [ 0, %399 ], [ 1, %78 ], [ 1, %414 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  ret i8 %417
}

declare i32 @vect_supportable_dr_alignment(ptr noundef) local_unnamed_addr #3

declare void @vect_model_load_cost(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vect_get_place_in_interleaving_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_is_simple_use(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_model_simple_cost(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_model_store_cost(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !260
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #18
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #18
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !62
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !260
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !154
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !150
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !150
  %56 = load ptr, ptr %53, align 8, !tbaa !150
  store ptr %50, ptr %56, align 8, !tbaa !154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !154
  %58 = load ptr, ptr %46, align 8, !tbaa !150
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !150
  %60 = load ptr, ptr %46, align 8, !tbaa !150
  store ptr %35, ptr %60, align 8, !tbaa !154
  store ptr %35, ptr %46, align 8, !tbaa !150
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !62
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 3103, ptr noundef nonnull @.str.21) #18
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !261

77:                                               ; preds = %2
  br i1 %9, label %147, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !262
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !262
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !260
  %116 = load ptr, ptr %115, align 8, !tbaa !51
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !150
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !154
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !150
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !150
  %131 = load ptr, ptr %128, align 8, !tbaa !150
  store ptr %125, ptr %131, align 8, !tbaa !154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !154
  %133 = load ptr, ptr %121, align 8, !tbaa !150
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !150
  %135 = load ptr, ptr %121, align 8, !tbaa !150
  store ptr %110, ptr %135, align 8, !tbaa !154
  store ptr %110, ptr %121, align 8, !tbaa !150
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !262
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !264

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !62
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !265
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !260
  %168 = load ptr, ptr %167, align 8, !tbaa !51
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !150
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !154
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !150
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !150
  %183 = load ptr, ptr %180, align 8, !tbaa !150
  store ptr %177, ptr %183, align 8, !tbaa !154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !154
  %185 = load ptr, ptr %173, align 8, !tbaa !150
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !150
  %187 = load ptr, ptr %173, align 8, !tbaa !150
  store ptr %163, ptr %187, align 8, !tbaa !154
  store ptr %163, ptr %173, align 8, !tbaa !150
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !154
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !150
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !150
  %197 = load ptr, ptr %194, align 8, !tbaa !150
  store ptr %191, ptr %197, align 8, !tbaa !154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !154
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !150
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !150
  %202 = load ptr, ptr %199, align 8, !tbaa !150
  store ptr %190, ptr %202, align 8, !tbaa !154
  store ptr %190, ptr %199, align 8, !tbaa !150
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_stmt_vec_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %0) unnamed_addr #10 !prof !50 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #18
  %3 = icmp eq ptr %0, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !92
  %6 = tail call fastcc zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %5)
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = tail call fastcc zeroext i8 @vect_slp_analyze_node_operations(ptr noundef %10)
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._slp_tree, ptr %0, i64 0, i32 2
  br label %15

15:                                               ; preds = %57, %13
  %16 = phi i64 [ %60, %57 ], [ 0, %13 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !109
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 8, !tbaa !95
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.VEC_gimple_base, ptr %17, i64 0, i32 2, i64 %16
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  br label %26

26:                                               ; preds = %15, %19, %23
  %27 = phi ptr [ %25, %23 ], [ null, %19 ], [ null, %15 ]
  %28 = phi i1 [ false, %23 ], [ true, %19 ], [ true, %15 ]
  br i1 %28, label %61, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gimple_statement_base, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !62
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @stmt_vec_info_vec, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %34, align 8, !tbaa !97
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %37, %36 ], [ 0, %33 ]
  %40 = icmp ugt i32 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.52, i32 noundef 629, ptr noundef nonnull @.str.21) #18
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr @stmt_vec_info_vec, align 8
  %44 = add i32 %31, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %43, i64 0, i32 2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  br label %48

48:                                               ; preds = %29, %42
  %49 = phi ptr [ %47, %42 ], [ null, %29 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1222, ptr noundef nonnull @.str.21) #18
  br label %52

52:                                               ; preds = %48, %51
  %53 = getelementptr inbounds %struct._stmt_vec_info, ptr %49, i64 0, i32 25
  %54 = load i32, ptr %53, align 4, !tbaa !144
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1223, ptr noundef nonnull @.str.21) #18
  br label %57

57:                                               ; preds = %52, %56
  %58 = call zeroext i8 @vect_analyze_stmt(ptr noundef %27, ptr noundef nonnull %2, ptr noundef nonnull %0) #18
  %59 = icmp eq i8 %58, 0
  %60 = add nuw i64 %16, 1
  br i1 %59, label %61, label %15, !llvm.loop !266

61:                                               ; preds = %26, %57, %4, %8, %1
  %62 = phi i8 [ 1, %1 ], [ 0, %8 ], [ 0, %4 ], [ 0, %57 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  ret i8 %62
}

declare zeroext i8 @vect_analyze_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vect_init_vector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vect_create_destination_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_finish_stmt_generation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_transform_stmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_remove_stores(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @vect_slp_analyze_bb, ptr @vect_print_dump_info, i64 310790}
!36 = !{ptr @vect_slp_analyze_bb, ptr @xcalloc, i64 155395}
!37 = !{ptr @vect_slp_analyze_bb, ptr @new_stmt_vec_info, i64 338373}
!38 = !{ptr @vect_slp_analyze_bb, ptr @vec_heap_p_reserve, i64 239}
!39 = !{ptr @vect_slp_analyze_bb, ptr @vec_heap_p_reserve_exact, i64 310790}
!40 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_refs, i64 155395}
!41 = !{ptr @vect_slp_analyze_bb, ptr @free_stmt_vec_info, i64 278069}
!42 = !{ptr @vect_slp_analyze_bb, ptr @free, i64 383103}
!43 = !{ptr @vect_slp_analyze_bb, ptr @destroy_bb_vec_info, i64 27694}
!44 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_refs_alignment, i64 2026}
!45 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_ref_dependences, i64 2026}
!46 = !{ptr @vect_slp_analyze_bb, ptr @vect_analyze_data_ref_accesses, i64 2026}
!47 = !{ptr @destroy_bb_vec_info, ptr @free_stmt_vec_info, i64 60304}
!48 = !{ptr @destroy_bb_vec_info, ptr @free, i64 83082}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !52, i64 8}
!56 = !{!"_IO_FILE", !57, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !57, i64 112, !57, i64 116, !58, i64 120, !59, i64 128, !53, i64 130, !53, i64 131, !52, i64 136, !58, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !58, i64 184, !57, i64 192, !53, i64 196}
!57 = !{!"int", !53, i64 0}
!58 = !{!"long", !53, i64 0}
!59 = !{!"short", !53, i64 0}
!60 = !{!56, !52, i64 16}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!53, !53, i64 0}
!63 = !{!56, !52, i64 40}
!64 = !{!56, !52, i64 48}
!65 = !{!56, !57, i64 0}
!66 = !{!57, !57, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"function_entry_count", i64 155395}
!71 = !{!"branch_weights", i32 0, i32 155395}
!72 = !{!73, !57, i64 96}
!73 = !{!"basic_block_def", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !53, i64 32, !52, i64 48, !52, i64 56, !53, i64 64, !58, i64 72, !57, i64 80, !57, i64 84, !57, i64 88, !57, i64 92, !57, i64 96}
!74 = !{!75}
!75 = distinct !{!75, !76, !"gsi_start_bb: argument 0"}
!76 = distinct !{!76, !"gsi_start_bb"}
!77 = !{!"branch_weights", i32 155395, i32 0}
!78 = !{!79, !52, i64 0}
!79 = !{!"gimple_bb_info", !52, i64 0, !52, i64 8}
!80 = !{!81, !52, i64 0}
!81 = !{!"gimple_seq_d", !52, i64 0, !52, i64 8, !52, i64 16}
!82 = !{!"branch_weights", i32 1, i32 12982}
!83 = !{!84, !52, i64 0}
!84 = !{!"gimple_seq_node_d", !52, i64 0, !52, i64 8, !52, i64 16}
!85 = !{!"branch_weights", i32 3047, i32 142412}
!86 = !{!84, !52, i64 16}
!87 = !{!"branch_weights", i32 12982, i32 132477}
!88 = distinct !{!88, !68, !69}
!89 = !{!90, !52, i64 0}
!90 = !{!"_slp_instance", !52, i64 0, !57, i64 8, !57, i64 12, !91, i64 16, !52, i64 24, !52, i64 32, !52, i64 40}
!91 = !{!"", !57, i64 0, !57, i64 4}
!92 = !{!93, !52, i64 0}
!93 = !{!"_slp_tree", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !57, i64 32, !91, i64 36}
!94 = !{!93, !52, i64 8}
!95 = !{!96, !57, i64 0}
!96 = !{!"VEC_gimple_base", !57, i64 0, !57, i64 4, !53, i64 8}
!97 = !{!98, !57, i64 0}
!98 = !{!"VEC_vec_void_p_base", !57, i64 0, !57, i64 4, !53, i64 8}
!99 = !{!100, !57, i64 144}
!100 = !{!"_stmt_vec_info", !57, i64 0, !52, i64 8, !52, i64 16, !57, i64 24, !53, i64 28, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !53, i64 96, !52, i64 104, !52, i64 112, !57, i64 120, !52, i64 128, !52, i64 136, !57, i64 144, !57, i64 148, !57, i64 152, !52, i64 160, !53, i64 168, !91, i64 172, !57, i64 180, !52, i64 184}
!101 = !{!100, !52, i64 48}
!102 = !{!103, !52, i64 8}
!103 = !{!"data_reference", !52, i64 0, !52, i64 8, !52, i64 16, !53, i64 24, !104, i64 32, !105, i64 72, !106, i64 88, !52, i64 104}
!104 = !{!"innermost_loop_behavior", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32}
!105 = !{!"indices", !52, i64 0, !52, i64 8}
!106 = !{!"dr_alias", !52, i64 0, !52, i64 8}
!107 = !{!108, !57, i64 40}
!108 = !{!"_loop_vec_info", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !57, i64 32, !53, i64 36, !57, i64 40, !52, i64 48, !57, i64 56, !57, i64 60, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !57, i64 96, !52, i64 104, !52, i64 112, !57, i64 120}
!109 = !{!93, !52, i64 16}
!110 = !{!96, !57, i64 4}
!111 = !{!100, !52, i64 136}
!112 = distinct !{!112, !68, !69}
!113 = !{i8 0, i8 2}
!114 = !{!90, !57, i64 8}
!115 = !{!90, !57, i64 12}
!116 = !{!90, !57, i64 16}
!117 = !{!90, !57, i64 20}
!118 = !{!90, !52, i64 32}
!119 = !{!90, !52, i64 40}
!120 = !{!90, !52, i64 24}
!121 = !{!122, !57, i64 0}
!122 = !{!"VEC_slp_tree_base", !57, i64 0, !57, i64 4, !53, i64 8}
!123 = !{!124, !57, i64 0}
!124 = !{!"VEC_int_base", !57, i64 0, !57, i64 4, !53, i64 8}
!125 = distinct !{!125, !68, !69}
!126 = distinct !{!126, !68, !69}
!127 = !{!58, !58, i64 0}
!128 = !{!129, !52, i64 0}
!129 = !{!"simple_bitmap_def", !52, i64 0, !57, i64 8, !57, i64 12, !53, i64 16}
!130 = distinct !{!130, !68, !69}
!131 = !{!100, !52, i64 128}
!132 = distinct !{!132, !68, !69}
!133 = !{!122, !57, i64 4}
!134 = distinct !{!134, !68, !69}
!135 = distinct !{!135, !68, !69}
!136 = distinct !{!136, !68, !69}
!137 = !{!138, !57, i64 4}
!138 = !{!"VEC_slp_instance_base", !57, i64 0, !57, i64 4, !53, i64 8}
!139 = !{!138, !57, i64 0}
!140 = distinct !{!140, !68, !69}
!141 = !{!108, !52, i64 112}
!142 = distinct !{!142, !68, !69}
!143 = !{!108, !57, i64 120}
!144 = !{!100, !57, i64 180}
!145 = distinct !{!145, !68, !69}
!146 = distinct !{!146, !68, !69}
!147 = !{!148, !52, i64 8}
!148 = !{!"immediate_use_iterator_d", !52, i64 0, !52, i64 8, !149, i64 16, !52, i64 48}
!149 = !{!"ssa_use_operand_d", !52, i64 0, !52, i64 8, !53, i64 16, !52, i64 24}
!150 = !{!149, !52, i64 8}
!151 = !{!148, !52, i64 0}
!152 = !{!100, !57, i64 24}
!153 = !{!100, !57, i64 120}
!154 = !{!149, !52, i64 0}
!155 = distinct !{!155, !68, !69}
!156 = distinct !{!156, !68, !69}
!157 = !{!158}
!158 = distinct !{!158, !159, !"gsi_start_bb: argument 0"}
!159 = distinct !{!159, !"gsi_start_bb"}
!160 = !{!"branch_weights", i32 1, i32 155394}
!161 = !{!"branch_weights", i32 -716958324, i32 0, i32 0}
!162 = !{!"branch_weights", i32 155394, i32 182979}
!163 = distinct !{!163, !68, !69}
!164 = !{!165, !57, i64 8}
!165 = !{!"param_info", !52, i64 0, !57, i64 8, !53, i64 12, !57, i64 16, !57, i64 20, !52, i64 24}
!166 = !{!167, !52, i64 0}
!167 = !{!"_bb_vec_info", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32}
!168 = !{!169}
!169 = distinct !{!169, !170, !"gsi_start_bb: argument 0"}
!170 = distinct !{!170, !"gsi_start_bb"}
!171 = !{!"branch_weights", i32 338373, i32 0}
!172 = !{!"branch_weights", i32 0, i32 338373}
!173 = !{!98, !57, i64 4}
!174 = !{!"branch_weights", i32 239, i32 338134}
!175 = distinct !{!175, !68, !69}
!176 = !{!167, !52, i64 8}
!177 = !{!167, !52, i64 16}
!178 = !{!73, !52, i64 16}
!179 = !{!"branch_weights", i32 127701, i32 27694}
!180 = !{!"branch_weights", i32 127701, i32 0}
!181 = !{!182}
!182 = distinct !{!182, !183, !"gsi_start_bb: argument 0"}
!183 = distinct !{!183, !"gsi_start_bb"}
!184 = distinct !{!184, !68, !69}
!185 = !{!167, !52, i64 32}
!186 = !{!"branch_weights", i32 25668, i32 2026}
!187 = !{!188, !57, i64 0}
!188 = !{!"VEC_ddr_p_base", !57, i64 0, !57, i64 4, !53, i64 8}
!189 = !{!"branch_weights", i32 25668, i32 0}
!190 = !{!"branch_weights", i32 0, i32 2026}
!191 = !{!"branch_weights", i32 2026, i32 0}
!192 = distinct !{!192, !68, !69}
!193 = !{!"function_entry_count", i64 27694}
!194 = !{!"tree-vect-slp.c;destroy_bb_vec_info"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"gsi_start_bb: argument 0"}
!197 = distinct !{!197, !"gsi_start_bb"}
!198 = distinct !{!198, !68, !69}
!199 = distinct !{!199, !68, !69}
!200 = distinct !{!200, !68, !69}
!201 = !{!93, !57, i64 32}
!202 = !{!93, !52, i64 24}
!203 = !{!204, !57, i64 0}
!204 = !{!"VEC_tree_base", !57, i64 0, !57, i64 4, !53, i64 8}
!205 = distinct !{!205, !68, !69}
!206 = distinct !{!206, !68, !69}
!207 = distinct !{!207, !68, !69}
!208 = distinct !{!208, !68, !69}
!209 = distinct !{!209, !68, !69}
!210 = distinct !{!210, !68, !69}
!211 = !{!100, !52, i64 32}
!212 = !{!213, !52, i64 720}
!213 = !{!"gcc_target", !214, i64 0, !216, i64 368, !217, i64 664, !57, i64 744, !52, i64 752, !52, i64 760, !52, i64 768, !52, i64 776, !52, i64 784, !52, i64 792, !52, i64 800, !52, i64 808, !52, i64 816, !52, i64 824, !52, i64 832, !52, i64 840, !52, i64 848, !52, i64 856, !52, i64 864, !52, i64 872, !52, i64 880, !52, i64 888, !52, i64 896, !52, i64 904, !52, i64 912, !52, i64 920, !52, i64 928, !52, i64 936, !52, i64 944, !52, i64 952, !52, i64 960, !52, i64 968, !52, i64 976, !52, i64 984, !52, i64 992, !52, i64 1000, !52, i64 1008, !52, i64 1016, !52, i64 1024, !52, i64 1032, !52, i64 1040, !52, i64 1048, !52, i64 1056, !58, i64 1064, !58, i64 1072, !52, i64 1080, !52, i64 1088, !52, i64 1096, !52, i64 1104, !52, i64 1112, !52, i64 1120, !52, i64 1128, !52, i64 1136, !52, i64 1144, !52, i64 1152, !52, i64 1160, !52, i64 1168, !218, i64 1176, !52, i64 1232, !52, i64 1240, !52, i64 1248, !52, i64 1256, !52, i64 1264, !52, i64 1272, !52, i64 1280, !52, i64 1288, !52, i64 1296, !52, i64 1304, !52, i64 1312, !52, i64 1320, !52, i64 1328, !52, i64 1336, !52, i64 1344, !52, i64 1352, !52, i64 1360, !52, i64 1368, !52, i64 1376, !52, i64 1384, !52, i64 1392, !52, i64 1400, !52, i64 1408, !52, i64 1416, !52, i64 1424, !52, i64 1432, !52, i64 1440, !52, i64 1448, !52, i64 1456, !58, i64 1464, !219, i64 1472, !52, i64 1664, !52, i64 1672, !52, i64 1680, !52, i64 1688, !52, i64 1696, !52, i64 1704, !52, i64 1712, !52, i64 1720, !52, i64 1728, !52, i64 1736, !52, i64 1744, !52, i64 1752, !52, i64 1760, !52, i64 1768, !52, i64 1776, !220, i64 1784, !221, i64 1792, !222, i64 1896, !223, i64 1968, !52, i64 2016, !53, i64 2024, !53, i64 2025, !53, i64 2026, !53, i64 2027, !53, i64 2028, !53, i64 2029, !53, i64 2030, !53, i64 2031, !53, i64 2032, !53, i64 2033, !53, i64 2034, !53, i64 2035}
!214 = !{!"asm_out", !52, i64 0, !52, i64 8, !52, i64 16, !215, i64 24, !215, i64 56, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !52, i64 184, !52, i64 192, !52, i64 200, !52, i64 208, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !52, i64 312, !52, i64 320, !52, i64 328, !52, i64 336, !52, i64 344, !52, i64 352, !52, i64 360}
!215 = !{!"asm_int_op", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!216 = !{!"sched", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !52, i64 184, !52, i64 192, !52, i64 200, !52, i64 208, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288}
!217 = !{!"vectorize", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72}
!218 = !{!"addr_space", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48}
!219 = !{!"calls", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !52, i64 184}
!220 = !{!"c", !52, i64 0}
!221 = !{!"cxx", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96}
!222 = !{!"emutls", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !53, i64 64, !53, i64 65}
!223 = !{!"target_option_hooks", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40}
!224 = distinct !{!224, !68, !69}
!225 = distinct !{!225, !68, !69}
!226 = distinct !{!226, !68, !69}
!227 = !{!213, !52, i64 728}
!228 = distinct !{!228, !68, !69}
!229 = distinct !{!229, !68, !69}
!230 = !{!100, !52, i64 40}
!231 = distinct !{!231, !68, !69}
!232 = distinct !{!232, !68, !69}
!233 = distinct !{!233, !68, !69}
!234 = distinct !{!234, !68, !69}
!235 = distinct !{!235, !68, !69}
!236 = !{!237}
!237 = distinct !{!237, !238, !"gsi_start_bb: argument 0"}
!238 = distinct !{!238, !"gsi_start_bb"}
!239 = distinct !{!239, !68, !69}
!240 = !{!241, !52, i64 24}
!241 = !{!"function", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !57, i64 104, !57, i64 108, !57, i64 112, !57, i64 116, !57, i64 120, !57, i64 124, !52, i64 128, !57, i64 136, !57, i64 137, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 138, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139, !57, i64 139}
!242 = !{!243, !52, i64 24}
!243 = !{!"gimple_df", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !244, i64 32, !244, i64 48, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !57, i64 96, !245, i64 104}
!244 = !{!"pt_solution", !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !52, i64 8}
!245 = !{!"ssa_operands", !52, i64 0, !57, i64 8, !57, i64 12, !53, i64 16, !52, i64 24, !52, i64 32}
!246 = !{!247, !57, i64 0}
!247 = !{!"optab_handlers", !57, i64 0}
!248 = !{!249, !52, i64 24}
!249 = !{!"insn_data", !52, i64 0, !53, i64 8, !52, i64 16, !52, i64 24, !53, i64 32, !53, i64 33, !53, i64 34, !53, i64 35}
!250 = !{!100, !57, i64 152}
!251 = !{!124, !57, i64 4}
!252 = distinct !{!252, !68, !69}
!253 = !{!93, !57, i64 40}
!254 = !{!93, !57, i64 36}
!255 = distinct !{!255, !68, !69}
!256 = !{!108, !52, i64 0}
!257 = !{!100, !53, i64 96}
!258 = !{!100, !52, i64 104}
!259 = distinct !{!259, !68, !69}
!260 = !{!149, !52, i64 24}
!261 = distinct !{!261, !68, !69}
!262 = !{!263, !52, i64 0}
!263 = !{!"use_optype_d", !52, i64 0, !149, i64 8}
!264 = distinct !{!264, !68, !69}
!265 = !{!263, !52, i64 32}
!266 = distinct !{!266, !68, !69}
