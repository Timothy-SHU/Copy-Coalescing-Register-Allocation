; ModuleID = 'tree-ssa-loop-im.c'
source_filename = "tree-ssa-loop-im.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.real_value = type { i32, [3 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_bitmap_base = type { i32, i32, [1 x ptr] }
%struct.VEC_htab_t_base = type { i32, i32, [1 x ptr] }
%struct.mem_ref = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_mem_ref_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.VEC_mem_ref_locs_p_base = type { i32, i32, [1 x ptr] }
%struct.mem_ref_loc = type { ptr, ptr }
%struct.VEC_mem_ref_loc_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.vop_to_refs_elt = type { i32, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.lim_aux_data = type { ptr, ptr, ptr, i32, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.depend = type { ptr, ptr }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.fmt_data = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"tree-ssa-loop-im.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_unswitch_loops = external local_unnamed_addr global i32, align 4
@lsm_tmp_name_length = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_lsm\00", align 1
@lsm_tmp_name = internal global [41 x i8] zeroinitializer, align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"_I\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@lim_aux_data_map = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@memory_accesses = internal global %struct.anon zeroinitializer, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Memory reference %u: \00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @for_each_index(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  br label %4

4:                                                ; preds = %30, %3
  %5 = phi ptr [ %0, %3 ], [ %32, %30 ]
  %6 = phi ptr [ undef, %3 ], [ %32, %30 ]
  br label %7

7:                                                ; preds = %4, %53
  %8 = phi ptr [ %6, %53 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %53 [
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
    i16 32, label %54
    i16 34, label %54
    i16 28, label %54
    i16 36, label %54
    i16 27, label %54
    i16 26, label %54
    i16 23, label %54
    i16 24, label %54
    i16 25, label %54
    i16 51, label %54
    i16 121, label %33
    i16 152, label %37
  ]

12:                                               ; preds = %7
  %13 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2) #18
  br label %54

14:                                               ; preds = %7, %7, %7
  %15 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %16 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %15, ptr noundef %2) #18
  br label %54

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef %2) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %8, align 8, !tbaa !35
  br label %30

26:                                               ; preds = %7, %7
  %27 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %28 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %27, ptr noundef %2) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %7, %7, %7, %7, %26, %24
  %31 = phi ptr [ %25, %24 ], [ %9, %26 ], [ %9, %7 ], [ %9, %7 ], [ %9, %7 ], [ %9, %7 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  br label %4, !llvm.loop !54

33:                                               ; preds = %7
  %34 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %9) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #18
  br label %54

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 %1(ptr noundef nonnull %9, ptr noundef nonnull %38, ptr noundef %2) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41, %37
  %45 = load ptr, ptr %8, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = tail call zeroext i8 %1(ptr noundef %45, ptr noundef nonnull %46, ptr noundef %2) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49, %44
  br label %54

53:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #18
  br label %7, !llvm.loop !54

54:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %26, %21, %49, %41, %36, %33, %52, %14, %12
  %55 = phi i8 [ 1, %52 ], [ %16, %14 ], [ %13, %12 ], [ 1, %33 ], [ 1, %36 ], [ 0, %41 ], [ 0, %49 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %26 ], [ 0, %21 ]
  ret i8 %55
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @movement_possibility(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !50
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %75, label %8

8:                                                ; preds = %4, %1
  %9 = tail call ptr @gimple_get_lhs(ptr noundef %0) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 254
  %14 = add nsw i32 %13, -10
  %15 = icmp ult i32 %14, -4
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %11, %16
  %21 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %0) #18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %20
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 254
  %26 = add nsw i32 %25, -10
  %27 = icmp ult i32 %26, -4
  %28 = and i32 %24, 16384
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %29, %27
  br i1 %30, label %31, label %75

31:                                               ; preds = %23
  %32 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %0) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %0) #18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %34
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 255
  %40 = trunc i32 %38 to i8
  switch i8 %40, label %75 [
    i8 8, label %41
    i8 6, label %49
  ]

41:                                               ; preds = %37
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !55
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %57, label %60

49:                                               ; preds = %37
  %50 = zext nneg i32 %39 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !55
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49, %41
  %58 = phi i64 [ %47, %41 ], [ %55, %49 ]
  %59 = phi i32 [ 1, %41 ], [ 2, %49 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %60

60:                                               ; preds = %57, %49, %41
  %61 = phi i64 [ %47, %41 ], [ %55, %49 ], [ %58, %57 ]
  %62 = phi i32 [ 1, %41 ], [ 2, %49 ], [ %59, %57 ]
  %63 = getelementptr inbounds i8, ptr %0, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 4259839
  %67 = icmp eq i64 %66, 4194445
  br i1 %67, label %75, label %68

68:                                               ; preds = %60
  %69 = and i64 %65, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = tail call zeroext i8 @gimple_could_trap_p(ptr noundef nonnull %0) #18
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i32 %62, i32 1
  br label %75

75:                                               ; preds = %37, %8, %71, %68, %60, %20, %23, %31, %34, %16, %4
  %76 = phi i32 [ 2, %4 ], [ 0, %16 ], [ 0, %34 ], [ 0, %31 ], [ 0, %23 ], [ 0, %20 ], [ 0, %60 ], [ 1, %68 ], [ %74, %71 ], [ 0, %8 ], [ 0, %37 ]
  ret i32 %76
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_could_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef nonnull ptr @get_lsm_tmp_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i32 0, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %0)
  %4 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %5 = add i32 %4, 4
  %6 = icmp sgt i32 %5, 40
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %9, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i32 %5, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %2, %7
  %11 = icmp ult i32 %1, 10
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = trunc i32 %1 to i8
  %14 = or disjoint i8 %13, 48
  store i8 %14, ptr %3, align 1, !tbaa !46
  %15 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %15, align 1, !tbaa !46
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %17 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %18 = trunc i64 %16 to i32
  %19 = add i32 %17, %18
  %20 = icmp sgt i32 %19, 40
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %22
  %24 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %3)
  store i32 %19, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %25

25:                                               ; preds = %21, %12, %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret ptr @lsm_tmp_name
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gen_lsm_tmp_name(ptr noundef %0) unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %15 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %100 [
    i16 49, label %6
    i16 48, label %6
    i16 47, label %6
    i16 42, label %15
    i16 118, label %15
    i16 46, label %15
    i16 43, label %18
    i16 44, label %27
    i16 41, label %36
    i16 45, label %60
    i16 141, label %69
    i16 32, label %72
    i16 34, label %72
    i16 28, label %86
    i16 36, label %93
    i16 23, label %101
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %8)
  %9 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %10 = add i32 %9, 1
  %11 = icmp sgt i32 %10, 40
  br i1 %11, label %101, label %12

12:                                               ; preds = %6
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %13
  store i16 95, ptr %14, align 1
  store i32 %10, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

15:                                               ; preds = %2, %2, %2
  %16 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  br label %2

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %20)
  %21 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %22 = add i32 %21, 3
  %23 = icmp sgt i32 %22, 40
  br i1 %23, label %101, label %24

24:                                               ; preds = %18
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %25
  store i32 4543071, ptr %26, align 1
  store i32 %22, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %29)
  %30 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %31 = add i32 %30, 3
  %32 = icmp sgt i32 %31, 40
  br i1 %32, label %101, label %33

33:                                               ; preds = %27
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %34
  store i32 5065055, ptr %35, align 1
  store i32 %31, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %38)
  %39 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %40 = add i32 %39, 1
  %41 = icmp sgt i32 %40, 40
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %43
  store i16 95, ptr %44, align 1
  store i32 %40, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %45

45:                                               ; preds = %36, %42
  %46 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = tail call ptr @get_name(ptr noundef %47) #18
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.7, ptr %48
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50)
  %52 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %53 = trunc i64 %51 to i32
  %54 = add i32 %52, %53
  %55 = icmp sgt i32 %54, 40
  br i1 %55, label %101, label %56

56:                                               ; preds = %45
  %57 = sext i32 %52 to i64
  %58 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %57
  %59 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %50)
  store i32 %54, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  tail call fastcc void @gen_lsm_tmp_name(ptr noundef %62)
  %63 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %64 = add i32 %63, 2
  %65 = icmp sgt i32 %64, 40
  br i1 %65, label %101, label %66

66:                                               ; preds = %60
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %68, ptr noundef nonnull align 1 dereferenceable(3) @.str.8, i64 3, i1 false)
  store i32 %64, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  br label %72

72:                                               ; preds = %2, %2, %69
  %73 = phi ptr [ %3, %2 ], [ %71, %69 ], [ %3, %2 ]
  %74 = tail call ptr @get_name(ptr noundef %73) #18
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, ptr @.str.9, ptr %74
  %77 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76)
  %78 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %79 = trunc i64 %77 to i32
  %80 = add i32 %78, %79
  %81 = icmp sgt i32 %80, 40
  br i1 %81, label %101, label %82

82:                                               ; preds = %72
  %83 = sext i32 %78 to i64
  %84 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %83
  %85 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) %76)
  store i32 %80, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

86:                                               ; preds = %2
  %87 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %88 = add i32 %87, 1
  %89 = icmp sgt i32 %88, 40
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = sext i32 %87 to i64
  %92 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %91
  store i16 83, ptr %92, align 1
  store i32 %88, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

93:                                               ; preds = %2
  %94 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %95 = add i32 %94, 1
  %96 = icmp sgt i32 %95, 40
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = sext i32 %94 to i64
  %99 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %98
  store i16 82, ptr %99, align 1
  store i32 %95, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %101

100:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #18
  br label %101

101:                                              ; preds = %6, %2, %97, %93, %90, %86, %82, %72, %66, %60, %56, %45, %33, %27, %24, %18, %12, %100
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_ssa_lim() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.dom_walk_data, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #18
  tail call void @sbitmap_zero(ptr noundef %10) #18
  %11 = load ptr, ptr @cfun, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %92, label %20

20:                                               ; preds = %0, %83
  %21 = phi ptr [ %85, %83 ], [ %16, %0 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !64, !noalias !65
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !46, !noalias !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !68, !noalias !65
  br label %32

32:                                               ; preds = %30, %26, %20
  %33 = phi ptr [ %31, %30 ], [ null, %26 ], [ null, %20 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !70, !noalias !65
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %83, label %40

40:                                               ; preds = %37, %51
  %41 = phi ptr [ %53, %51 ], [ %38, %37 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %42) #18
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi i8 [ %47, %46 ], [ 0, %40 ]
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %41, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = icmp eq ptr %53, null
  br i1 %54, label %83, label %40, !llvm.loop !75

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !76
  %58 = load ptr, ptr %10, align 8, !tbaa !77
  %59 = icmp eq ptr %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  %61 = lshr i32 %57, 6
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !55
  %65 = and i32 %57, 63
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = and i64 %64, %67
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds i8, ptr %58, i64 %62
  %72 = load i8, ptr %71, align 1, !tbaa !46
  %73 = add i8 %72, 1
  store i8 %73, ptr %71, align 1, !tbaa !46
  br label %74

74:                                               ; preds = %70, %60, %55
  %75 = and i32 %57, 63
  %76 = zext nneg i32 %75 to i64
  %77 = shl nuw i64 1, %76
  %78 = lshr i32 %57, 6
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !55
  %82 = or i64 %81, %77
  store i64 %82, ptr %80, align 8, !tbaa !55
  br label %83

83:                                               ; preds = %51, %37, %74
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = load ptr, ptr @cfun, align 8, !tbaa !35
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !56
  %89 = getelementptr inbounds %struct.control_flow_graph, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = icmp eq ptr %85, %90
  br i1 %91, label %92, label %20, !llvm.loop !79

92:                                               ; preds = %83, %0
  %93 = phi ptr [ %11, %0 ], [ %86, %83 ]
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  %96 = getelementptr inbounds %struct.loops, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !81
  %98 = getelementptr inbounds %struct.loop, ptr %97, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %92, %101
  %102 = phi ptr [ %104, %101 ], [ %99, %92 ]
  tail call fastcc void @fill_always_executed_in(ptr noundef nonnull %102, ptr noundef %10)
  %103 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %101, !llvm.loop !83

106:                                              ; preds = %101, %92
  %107 = load ptr, ptr %10, align 8, !tbaa !77
  tail call void @free(ptr noundef %107)
  tail call void @free(ptr noundef %10)
  %108 = tail call ptr @pointer_map_create() #18
  store ptr %108, ptr @lim_aux_data_map, align 8, !tbaa !35
  %109 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @memref_hash, ptr noundef nonnull @memref_eq, ptr noundef nonnull @memref_free) #18
  store ptr %109, ptr @memory_accesses, align 8, !tbaa !84
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !86
  %110 = load ptr, ptr @cfun, align 8, !tbaa !35
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !80
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.loops, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !87
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %116, align 8, !tbaa !88
  br label %120

120:                                              ; preds = %118, %114, %106
  %121 = phi i32 [ 0, %106 ], [ %119, %118 ], [ 0, %114 ]
  %122 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %121) #18
  store ptr %122, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8, !tbaa !90
  %123 = load ptr, ptr @cfun, align 8, !tbaa !35
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !80
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.loops, ptr %125, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !87
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %129, align 8, !tbaa !88
  br label %133

133:                                              ; preds = %131, %127, %120
  %134 = phi i32 [ 0, %120 ], [ %132, %131 ], [ 0, %127 ]
  %135 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %134) #18
  store ptr %135, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8, !tbaa !91
  %136 = load ptr, ptr @cfun, align 8, !tbaa !35
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !80
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.loops, ptr %138, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !87
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i32, ptr %142, align 8, !tbaa !88
  br label %146

146:                                              ; preds = %144, %140, %133
  %147 = phi i32 [ 0, %133 ], [ %145, %144 ], [ 0, %140 ]
  %148 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %147) #18
  store ptr %148, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8, !tbaa !92
  %149 = load ptr, ptr @cfun, align 8, !tbaa !35
  %150 = getelementptr inbounds %struct.function, ptr %149, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !80
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.loops, ptr %151, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !87
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %155, align 8, !tbaa !88
  br label %159

159:                                              ; preds = %157, %153, %146
  %160 = phi i32 [ 0, %146 ], [ %158, %157 ], [ 0, %153 ]
  %161 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %160) #18
  store ptr %161, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !93
  br label %162

162:                                              ; preds = %177, %159
  %163 = phi i32 [ 0, %159 ], [ %202, %177 ]
  %164 = load ptr, ptr @cfun, align 8, !tbaa !35
  %165 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !80
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.loops, ptr %166, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !87
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  %173 = load i32, ptr %170, align 8, !tbaa !88
  br label %174

174:                                              ; preds = %172, %168, %162
  %175 = phi i32 [ 0, %162 ], [ %173, %172 ], [ 0, %168 ]
  %176 = icmp ult i32 %163, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  %178 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %179 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %180 = load i32, ptr %179, align 8, !tbaa !94
  %181 = add i32 %180, 1
  store i32 %181, ptr %179, align 8, !tbaa !94
  %182 = zext i32 %180 to i64
  %183 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %179, i64 0, i32 2, i64 %182
  store ptr %178, ptr %183, align 8, !tbaa !35
  %184 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %185 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %186 = load i32, ptr %185, align 8, !tbaa !94
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 8, !tbaa !94
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %185, i64 0, i32 2, i64 %188
  store ptr %184, ptr %189, align 8, !tbaa !35
  %190 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %191 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %192 = load i32, ptr %191, align 8, !tbaa !94
  %193 = add i32 %192, 1
  store i32 %193, ptr %191, align 8, !tbaa !94
  %194 = zext i32 %192 to i64
  %195 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %191, i64 0, i32 2, i64 %194
  store ptr %190, ptr %195, align 8, !tbaa !35
  %196 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @vtoe_hash, ptr noundef nonnull @vtoe_eq, ptr noundef nonnull @vtoe_free) #18
  %197 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %198 = load i32, ptr %197, align 8, !tbaa !96
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 8, !tbaa !96
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %197, i64 0, i32 2, i64 %200
  store ptr %196, ptr %201, align 8, !tbaa !35
  %202 = add nuw i32 %163, 1
  br label %162, !llvm.loop !98

203:                                              ; preds = %174
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6), align 8, !tbaa !99
  %204 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !56
  %206 = load ptr, ptr %205, align 8, !tbaa !60
  %207 = getelementptr inbounds %struct.basic_block_def, ptr %206, i64 0, i32 6
  %208 = load ptr, ptr %207, align 8, !tbaa !61
  %209 = load ptr, ptr @cfun, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct.function, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !56
  %212 = getelementptr inbounds %struct.control_flow_graph, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !63
  %214 = icmp eq ptr %208, %213
  br i1 %214, label %496, label %215

215:                                              ; preds = %203, %487
  %216 = phi ptr [ %490, %487 ], [ %209, %203 ]
  %217 = phi ptr [ %489, %487 ], [ %208, %203 ]
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !100
  %220 = getelementptr inbounds %struct.function, ptr %216, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !80
  %222 = getelementptr inbounds %struct.loops, ptr %221, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !81
  %224 = icmp eq ptr %219, %223
  br i1 %224, label %487, label %225

225:                                              ; preds = %215
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 13
  %227 = load i32, ptr %226, align 8, !tbaa !64, !noalias !101
  %228 = and i32 %227, 512
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 7
  %232 = load ptr, ptr %231, align 8, !tbaa !46, !noalias !101
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %232, align 8, !tbaa !68, !noalias !101
  br label %236

236:                                              ; preds = %234, %230, %225
  %237 = phi ptr [ %235, %234 ], [ null, %230 ], [ null, %225 ]
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %237, align 8, !tbaa !70, !noalias !101
  br label %241

241:                                              ; preds = %239, %236
  %242 = phi ptr [ %240, %239 ], [ null, %236 ]
  %243 = icmp eq ptr %242, null
  br i1 %243, label %487, label %244

244:                                              ; preds = %241, %483
  %245 = phi ptr [ %485, %483 ], [ %242, %241 ]
  %246 = load ptr, ptr %245, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  %247 = load i32, ptr %246, align 8
  %248 = and i32 %247, 254
  %249 = add nsw i32 %248, -10
  %250 = icmp ult i32 %249, -4
  br i1 %250, label %254, label %251

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %246, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !46
  br label %254

254:                                              ; preds = %251, %244
  %255 = phi ptr [ %253, %251 ], [ null, %244 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %483, label %257

257:                                              ; preds = %254
  %258 = call fastcc ptr @simple_mem_ref_in_stmt(ptr noundef nonnull %246, ptr noundef nonnull %4)
  %259 = icmp eq ptr %258, null
  br i1 %259, label %461, label %260

260:                                              ; preds = %257
  %261 = load ptr, ptr %258, align 8, !tbaa !35
  %262 = tail call i32 @iterative_hash_expr(ptr noundef %261, i32 noundef 0) #18
  %263 = load ptr, ptr @memory_accesses, align 8, !tbaa !84
  %264 = load ptr, ptr %258, align 8, !tbaa !35
  %265 = tail call ptr @htab_find_slot_with_hash(ptr noundef %263, ptr noundef %264, i32 noundef %262, i32 noundef 1) #18
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %319

268:                                              ; preds = %260
  %269 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %269, align 8, !tbaa !104
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %272, %271 ], [ 0, %268 ]
  %275 = load ptr, ptr %258, align 8, !tbaa !35
  %276 = tail call ptr @xmalloc(i64 noundef 72) #18
  store ptr %275, ptr %276, align 8, !tbaa !106
  %277 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 1
  store i32 %274, ptr %277, align 8, !tbaa !108
  %278 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 2
  store i32 %262, ptr %278, align 4, !tbaa !109
  %279 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %280 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 3
  store ptr %279, ptr %280, align 8, !tbaa !110
  %281 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %282 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 6
  store ptr %281, ptr %282, align 8, !tbaa !111
  %283 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %284 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 7
  store ptr %283, ptr %284, align 8, !tbaa !112
  %285 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %286 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 8
  store ptr %285, ptr %286, align 8, !tbaa !113
  %287 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %288 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 9
  store ptr %287, ptr %288, align 8, !tbaa !114
  %289 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 4
  store ptr null, ptr %289, align 8, !tbaa !115
  %290 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %291 = getelementptr inbounds %struct.mem_ref, ptr %276, i64 0, i32 5
  store ptr %290, ptr %291, align 8, !tbaa !116
  %292 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  %293 = icmp eq ptr %292, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %273
  %295 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %292, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !117
  %297 = load i32, ptr %292, align 8, !tbaa !104
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %294, %273
  %300 = tail call ptr @vec_heap_p_reserve(ptr noundef %292, i32 noundef 1) #18
  store ptr %300, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  br label %301

301:                                              ; preds = %299, %294
  %302 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  %303 = load i32, ptr %302, align 8, !tbaa !104
  %304 = add i32 %303, 1
  store i32 %304, ptr %302, align 8, !tbaa !104
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %302, i64 0, i32 2, i64 %305
  store ptr %276, ptr %306, align 8, !tbaa !35
  store ptr %276, ptr %265, align 8, !tbaa !35
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %308 = icmp eq ptr %307, null
  br i1 %308, label %319, label %309

309:                                              ; preds = %301
  %310 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %311 = and i32 %310, 8
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %309
  %314 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %307, ptr noundef nonnull @.str.13, i32 noundef %274)
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %316 = load ptr, ptr %276, align 8, !tbaa !106
  tail call void @print_generic_expr(ptr noundef %315, ptr noundef %316, i32 noundef 2) #18
  %317 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %318 = tail call i32 @fputc(i32 10, ptr %317)
  br label %319

319:                                              ; preds = %313, %309, %301, %260
  %320 = phi ptr [ %276, %313 ], [ %276, %309 ], [ %276, %301 ], [ %266, %260 ]
  %321 = load i8, ptr %4, align 1, !tbaa !46
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %362, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.mem_ref, ptr %320, i64 0, i32 3
  %325 = load ptr, ptr @cfun, align 8, !tbaa !35
  %326 = getelementptr inbounds %struct.function, ptr %325, i64 0, i32 4
  %327 = load ptr, ptr %326, align 8, !tbaa !80
  %328 = getelementptr inbounds %struct.loops, ptr %327, i64 0, i32 3
  %329 = load ptr, ptr %328, align 8, !tbaa !81
  %330 = icmp eq ptr %219, %329
  br i1 %330, label %362, label %331

331:                                              ; preds = %323, %354
  %332 = phi ptr [ %355, %354 ], [ %219, %323 ]
  %333 = load ptr, ptr %324, align 8, !tbaa !110
  %334 = load i32, ptr %332, align 8, !tbaa !118
  %335 = tail call i32 @bitmap_bit_p(ptr noundef %333, i32 noundef %334) #18
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %362

337:                                              ; preds = %331
  %338 = load ptr, ptr %324, align 8, !tbaa !110
  %339 = load i32, ptr %332, align 8, !tbaa !118
  %340 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %338, i32 noundef %339) #18
  %341 = getelementptr inbounds %struct.loop, ptr %332, i64 0, i32 7
  %342 = load ptr, ptr %341, align 8, !tbaa !122
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %337
  %345 = load i32, ptr %342, align 8, !tbaa !88
  br label %346

346:                                              ; preds = %344, %337
  %347 = phi i32 [ %345, %344 ], [ 0, %337 ]
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %346
  %350 = add i32 %347, -1
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %342, i64 0, i32 2, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  br label %354

354:                                              ; preds = %349, %346
  %355 = phi ptr [ %353, %349 ], [ null, %346 ]
  %356 = load ptr, ptr @cfun, align 8, !tbaa !35
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 4
  %358 = load ptr, ptr %357, align 8, !tbaa !80
  %359 = getelementptr inbounds %struct.loops, ptr %358, i64 0, i32 3
  %360 = load ptr, ptr %359, align 8, !tbaa !81
  %361 = icmp eq ptr %355, %360
  br i1 %361, label %362, label %331, !llvm.loop !123

362:                                              ; preds = %331, %354, %323, %319
  %363 = load i32, ptr %246, align 8
  %364 = and i32 %363, 254
  %365 = add nsw i32 %364, -10
  %366 = icmp ult i32 %365, -4
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %246, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !46
  br label %370

370:                                              ; preds = %367, %362
  %371 = phi ptr [ %369, %367 ], [ null, %362 ]
  %372 = icmp eq ptr %371, null
  br i1 %372, label %381, label %373

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.mem_ref, ptr %320, i64 0, i32 5
  %375 = load ptr, ptr %374, align 8, !tbaa !116
  %376 = getelementptr inbounds %struct.tree_ssa_name, ptr %371, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !46
  %378 = getelementptr inbounds %struct.tree_decl_minimal, ptr %377, i64 0, i32 2
  %379 = load i32, ptr %378, align 4, !tbaa !46
  %380 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %375, i32 noundef %379) #18
  br label %381

381:                                              ; preds = %373, %370
  %382 = tail call ptr @xmalloc(i64 noundef 16) #18
  %383 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %384 = load i32, ptr %219, align 8, !tbaa !118
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %383, i64 0, i32 2, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !35
  %388 = getelementptr inbounds %struct.mem_ref, ptr %320, i64 0, i32 4
  %389 = load ptr, ptr %388, align 8, !tbaa !35
  %390 = icmp eq ptr %389, null
  br i1 %390, label %393, label %391

391:                                              ; preds = %381
  %392 = load i32, ptr %389, align 8, !tbaa !124
  br label %393

393:                                              ; preds = %391, %381
  %394 = phi i32 [ %392, %391 ], [ 0, %381 ]
  %395 = icmp ugt i32 %394, %384
  br i1 %395, label %427, label %396

396:                                              ; preds = %393
  %397 = add nsw i32 %384, 1
  br i1 %390, label %400, label %398

398:                                              ; preds = %396
  %399 = load i32, ptr %389, align 8, !tbaa !124
  br label %400

400:                                              ; preds = %398, %396
  %401 = phi i32 [ %399, %398 ], [ 0, %396 ]
  br i1 %390, label %404, label %402

402:                                              ; preds = %400
  %403 = load i32, ptr %389, align 8, !tbaa !124
  br label %404

404:                                              ; preds = %402, %400
  %405 = phi i32 [ %403, %402 ], [ 0, %400 ]
  %406 = sub nsw i32 %397, %405
  br i1 %390, label %413, label %407

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %389, i64 0, i32 1
  %409 = load i32, ptr %408, align 4, !tbaa !126
  %410 = load i32, ptr %389, align 8, !tbaa !124
  %411 = sub i32 %409, %410
  %412 = icmp uge i32 %411, %406
  br label %415

413:                                              ; preds = %404
  %414 = icmp eq i32 %405, %397
  br label %415

415:                                              ; preds = %413, %407
  %416 = phi i1 [ %412, %407 ], [ %414, %413 ]
  br i1 %416, label %419, label %417

417:                                              ; preds = %415
  %418 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %389, i32 noundef %406) #18
  store ptr %418, ptr %388, align 8, !tbaa !35
  br label %419

419:                                              ; preds = %417, %415
  %420 = load ptr, ptr %388, align 8, !tbaa !35, !nonnull !127, !noundef !127
  store i32 %397, ptr %420, align 8, !tbaa !124
  %421 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %420, i64 0, i32 2
  %422 = sext i32 %401 to i64
  %423 = getelementptr inbounds ptr, ptr %421, i64 %422
  %424 = sub nsw i32 %397, %401
  %425 = sext i32 %424 to i64
  %426 = shl nsw i64 %425, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %423, i8 0, i64 %426, i1 false)
  br label %427

427:                                              ; preds = %419, %393
  %428 = load ptr, ptr %388, align 8, !tbaa !115
  %429 = load i32, ptr %219, align 8, !tbaa !118
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %428, i64 0, i32 2, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !35
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %440

434:                                              ; preds = %427
  %435 = tail call ptr @xmalloc(i64 noundef 8) #18
  store ptr null, ptr %435, align 8, !tbaa !128
  %436 = load ptr, ptr %388, align 8, !tbaa !115
  %437 = load i32, ptr %219, align 8, !tbaa !118
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %436, i64 0, i32 2, i64 %438
  store ptr %435, ptr %439, align 8, !tbaa !35
  br label %440

440:                                              ; preds = %434, %427
  %441 = phi ptr [ %432, %427 ], [ %435, %434 ]
  %442 = getelementptr inbounds %struct.mem_ref_loc, ptr %382, i64 0, i32 1
  store ptr %246, ptr %442, align 8, !tbaa !130
  store ptr %258, ptr %382, align 8, !tbaa !132
  %443 = load ptr, ptr %441, align 8, !tbaa !35
  %444 = icmp eq ptr %443, null
  br i1 %444, label %450, label %445

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %443, i64 0, i32 1
  %447 = load i32, ptr %446, align 4, !tbaa !133
  %448 = load i32, ptr %443, align 8, !tbaa !135
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %445, %440
  %451 = tail call ptr @vec_heap_p_reserve(ptr noundef %443, i32 noundef 1) #18
  store ptr %451, ptr %441, align 8, !tbaa !35
  br label %452

452:                                              ; preds = %450, %445
  %453 = load ptr, ptr %441, align 8, !tbaa !35
  %454 = load i32, ptr %453, align 8, !tbaa !135
  %455 = add i32 %454, 1
  store i32 %455, ptr %453, align 8, !tbaa !135
  %456 = zext i32 %454 to i64
  %457 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %453, i64 0, i32 2, i64 %456
  store ptr %382, ptr %457, align 8, !tbaa !35
  %458 = getelementptr inbounds %struct.mem_ref, ptr %320, i64 0, i32 1
  %459 = load i32, ptr %458, align 8, !tbaa !108
  %460 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %387, i32 noundef %459) #18
  br label %483

461:                                              ; preds = %257
  %462 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %463 = load i32, ptr %219, align 8, !tbaa !118
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %462, i64 0, i32 2, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !35
  %467 = load i32, ptr %246, align 8
  %468 = and i32 %467, 254
  %469 = add nsw i32 %468, -10
  %470 = icmp ult i32 %469, -4
  br i1 %470, label %474, label %471

471:                                              ; preds = %461
  %472 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %246, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !46
  br label %474

474:                                              ; preds = %471, %461
  %475 = phi ptr [ %473, %471 ], [ null, %461 ]
  %476 = icmp eq ptr %475, null
  br i1 %476, label %483, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct.tree_ssa_name, ptr %475, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !46
  %480 = getelementptr inbounds %struct.tree_decl_minimal, ptr %479, i64 0, i32 2
  %481 = load i32, ptr %480, align 4, !tbaa !46
  %482 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %466, i32 noundef %481) #18
  br label %483

483:                                              ; preds = %477, %474, %452, %254
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  %484 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %245, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !74
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %244, !llvm.loop !136

487:                                              ; preds = %483, %241, %215
  %488 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 6
  %489 = load ptr, ptr %488, align 8, !tbaa !61
  %490 = load ptr, ptr @cfun, align 8, !tbaa !35
  %491 = getelementptr inbounds %struct.function, ptr %490, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !56
  %493 = getelementptr inbounds %struct.control_flow_graph, ptr %492, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !63
  %495 = icmp eq ptr %489, %494
  br i1 %495, label %496, label %215, !llvm.loop !137

496:                                              ; preds = %487, %203
  %497 = phi ptr [ %209, %203 ], [ %490, %487 ]
  %498 = getelementptr inbounds %struct.function, ptr %497, i64 0, i32 4
  %499 = load ptr, ptr %498, align 8, !tbaa !80
  %500 = icmp eq ptr %499, null
  br i1 %500, label %592, label %501

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.loops, ptr %499, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !87
  %504 = icmp eq ptr %503, null
  br i1 %504, label %507, label %505

505:                                              ; preds = %501
  %506 = load i32, ptr %503, align 8, !tbaa !88
  br label %507

507:                                              ; preds = %505, %501
  %508 = phi i32 [ %506, %505 ], [ 0, %501 ]
  %509 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %508, i64 noundef 8, i64 noundef 4) #18
  %510 = load ptr, ptr @cfun, align 8, !tbaa !35
  %511 = getelementptr inbounds %struct.function, ptr %510, i64 0, i32 4
  %512 = load ptr, ptr %511, align 8, !tbaa !80
  %513 = getelementptr inbounds %struct.loops, ptr %512, i64 0, i32 3
  %514 = load ptr, ptr %513, align 8, !tbaa !81
  br label %515

515:                                              ; preds = %515, %507
  %516 = phi ptr [ %514, %507 ], [ %518, %515 ]
  %517 = getelementptr inbounds %struct.loop, ptr %516, i64 0, i32 8
  %518 = load ptr, ptr %517, align 8, !tbaa !138
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %515, !llvm.loop !139

520:                                              ; preds = %515, %569
  %521 = phi ptr [ %570, %569 ], [ %516, %515 ]
  %522 = load i32, ptr %521, align 8, !tbaa !118
  %523 = icmp slt i32 %522, 1
  br i1 %523, label %529, label %524

524:                                              ; preds = %520
  %525 = load i32, ptr %509, align 4, !tbaa !140
  %526 = add i32 %525, 1
  store i32 %526, ptr %509, align 4, !tbaa !140
  %527 = zext i32 %525 to i64
  %528 = getelementptr inbounds %struct.VEC_int_base, ptr %509, i64 0, i32 2, i64 %527
  store i32 %522, ptr %528, align 4, !tbaa !50
  br label %529

529:                                              ; preds = %524, %520
  %530 = getelementptr inbounds %struct.loop, ptr %521, i64 0, i32 9
  %531 = load ptr, ptr %530, align 8, !tbaa !142
  %532 = icmp eq ptr %531, null
  br i1 %532, label %538, label %533

533:                                              ; preds = %529, %533
  %534 = phi ptr [ %536, %533 ], [ %531, %529 ]
  %535 = getelementptr inbounds %struct.loop, ptr %534, i64 0, i32 8
  %536 = load ptr, ptr %535, align 8, !tbaa !138
  %537 = icmp eq ptr %536, null
  br i1 %537, label %569, label %533, !llvm.loop !143

538:                                              ; preds = %529
  %539 = getelementptr inbounds %struct.loop, ptr %521, i64 0, i32 7
  %540 = load ptr, ptr %539, align 8, !tbaa !122
  %541 = icmp eq ptr %540, null
  br i1 %541, label %544, label %542

542:                                              ; preds = %538
  %543 = load i32, ptr %540, align 8, !tbaa !88
  br label %544

544:                                              ; preds = %542, %538
  %545 = phi i32 [ %543, %542 ], [ 0, %538 ]
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %552, label %547

547:                                              ; preds = %544
  %548 = add i32 %545, -1
  %549 = zext i32 %548 to i64
  %550 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %540, i64 0, i32 2, i64 %549
  %551 = load ptr, ptr %550, align 8, !tbaa !35
  br label %552

552:                                              ; preds = %547, %544
  %553 = phi ptr [ %551, %547 ], [ null, %544 ]
  %554 = icmp eq ptr %553, null
  br i1 %554, label %555, label %558

555:                                              ; preds = %552
  %556 = icmp eq ptr %509, null
  %557 = getelementptr inbounds %struct.loops, ptr %512, i64 0, i32 1
  br label %571

558:                                              ; preds = %552
  br i1 %541, label %561, label %559

559:                                              ; preds = %558
  %560 = load i32, ptr %540, align 8, !tbaa !88
  br label %561

561:                                              ; preds = %559, %558
  %562 = phi i32 [ %560, %559 ], [ 0, %558 ]
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %569, label %564

564:                                              ; preds = %561
  %565 = add i32 %562, -1
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %540, i64 0, i32 2, i64 %566
  %568 = load ptr, ptr %567, align 8, !tbaa !35
  br label %569

569:                                              ; preds = %533, %564, %561
  %570 = phi ptr [ %568, %564 ], [ null, %561 ], [ %534, %533 ]
  br label %520, !llvm.loop !144

571:                                              ; preds = %555, %583
  %572 = phi i32 [ %584, %583 ], [ 0, %555 ]
  br i1 %556, label %580, label %573

573:                                              ; preds = %571
  %574 = load i32, ptr %509, align 4, !tbaa !140
  %575 = icmp ugt i32 %574, %572
  br i1 %575, label %576, label %580

576:                                              ; preds = %573
  %577 = zext i32 %572 to i64
  %578 = getelementptr inbounds %struct.VEC_int_base, ptr %509, i64 0, i32 2, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !50
  br label %580

580:                                              ; preds = %576, %573, %571
  %581 = phi i32 [ %579, %576 ], [ 0, %573 ], [ 0, %571 ]
  %582 = phi i1 [ false, %576 ], [ true, %573 ], [ true, %571 ]
  br i1 %582, label %590, label %583

583:                                              ; preds = %580
  %584 = add i32 %572, 1
  %585 = load ptr, ptr %557, align 8, !tbaa !87
  %586 = zext i32 %581 to i64
  %587 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %585, i64 0, i32 2, i64 %586
  %588 = load ptr, ptr %587, align 8, !tbaa !35
  %589 = icmp eq ptr %588, null
  br i1 %589, label %571, label %592, !llvm.loop !145

590:                                              ; preds = %580
  br i1 %556, label %592, label %591

591:                                              ; preds = %590
  tail call void @free(ptr noundef %509)
  br label %592

592:                                              ; preds = %583, %591, %590, %496
  %593 = phi ptr [ null, %496 ], [ null, %591 ], [ null, %590 ], [ %588, %583 ]
  %594 = phi i32 [ 0, %496 ], [ %572, %591 ], [ %572, %590 ], [ %584, %583 ]
  %595 = phi ptr [ null, %496 ], [ null, %591 ], [ null, %590 ], [ %509, %583 ]
  %596 = icmp eq ptr %593, null
  br i1 %596, label %700, label %597

597:                                              ; preds = %592, %695
  %598 = phi ptr [ %698, %695 ], [ %595, %592 ]
  %599 = phi i32 [ %697, %695 ], [ %594, %592 ]
  %600 = phi ptr [ %696, %695 ], [ %593, %592 ]
  %601 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %602 = load i32, ptr %600, align 8, !tbaa !118
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %601, i64 0, i32 2, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !35
  %606 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %607 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %606, i64 0, i32 2, i64 %603
  %608 = load ptr, ptr %607, align 8, !tbaa !35
  %609 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %608, ptr noundef %605) #18
  %610 = getelementptr inbounds %struct.loop, ptr %600, i64 0, i32 7
  %611 = load ptr, ptr %610, align 8, !tbaa !122
  %612 = icmp eq ptr %611, null
  br i1 %612, label %615, label %613

613:                                              ; preds = %597
  %614 = load i32, ptr %611, align 8, !tbaa !88
  br label %615

615:                                              ; preds = %613, %597
  %616 = phi i32 [ %614, %613 ], [ 0, %597 ]
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %623, label %618

618:                                              ; preds = %615
  %619 = add i32 %616, -1
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %611, i64 0, i32 2, i64 %620
  %622 = load ptr, ptr %621, align 8, !tbaa !35
  br label %623

623:                                              ; preds = %618, %615
  %624 = phi ptr [ %622, %618 ], [ null, %615 ]
  %625 = load ptr, ptr @cfun, align 8, !tbaa !35
  %626 = getelementptr inbounds %struct.function, ptr %625, i64 0, i32 4
  %627 = load ptr, ptr %626, align 8, !tbaa !80
  %628 = getelementptr inbounds %struct.loops, ptr %627, i64 0, i32 3
  %629 = load ptr, ptr %628, align 8, !tbaa !81
  %630 = icmp eq ptr %624, %629
  br i1 %630, label %668, label %631

631:                                              ; preds = %623
  %632 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %633 = load i32, ptr %600, align 8, !tbaa !118
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %632, i64 0, i32 2, i64 %634
  %636 = load ptr, ptr %635, align 8, !tbaa !35
  br i1 %612, label %639, label %637

637:                                              ; preds = %631
  %638 = load i32, ptr %611, align 8, !tbaa !88
  br label %639

639:                                              ; preds = %637, %631
  %640 = phi i32 [ %638, %637 ], [ 0, %631 ]
  %641 = icmp ne i32 %640, 0
  tail call void @llvm.assume(i1 %641)
  %642 = add i32 %640, -1
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %611, i64 0, i32 2, i64 %643
  %645 = load ptr, ptr %644, align 8, !tbaa !35
  %646 = load i32, ptr %645, align 8, !tbaa !118
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %632, i64 0, i32 2, i64 %647
  %649 = load ptr, ptr %648, align 8, !tbaa !35
  %650 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %649, ptr noundef %636) #18
  %651 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %652 = load ptr, ptr %610, align 8, !tbaa !122
  %653 = icmp eq ptr %652, null
  br i1 %653, label %656, label %654

654:                                              ; preds = %639
  %655 = load i32, ptr %652, align 8, !tbaa !88
  br label %656

656:                                              ; preds = %654, %639
  %657 = phi i32 [ %655, %654 ], [ 0, %639 ]
  %658 = icmp ne i32 %657, 0
  tail call void @llvm.assume(i1 %658)
  %659 = add i32 %657, -1
  %660 = zext i32 %659 to i64
  %661 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %652, i64 0, i32 2, i64 %660
  %662 = load ptr, ptr %661, align 8, !tbaa !35
  %663 = load i32, ptr %662, align 8, !tbaa !118
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %651, i64 0, i32 2, i64 %664
  %666 = load ptr, ptr %665, align 8, !tbaa !35
  %667 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %666, ptr noundef %608) #18
  br label %668

668:                                              ; preds = %656, %623
  %669 = icmp eq ptr %598, null
  %670 = load ptr, ptr @cfun, align 8
  %671 = getelementptr inbounds %struct.function, ptr %670, i64 0, i32 4
  br label %672

672:                                              ; preds = %684, %668
  %673 = phi i32 [ %599, %668 ], [ %685, %684 ]
  br i1 %669, label %681, label %674

674:                                              ; preds = %672
  %675 = load i32, ptr %598, align 4, !tbaa !140
  %676 = icmp ugt i32 %675, %673
  br i1 %676, label %677, label %681

677:                                              ; preds = %674
  %678 = zext i32 %673 to i64
  %679 = getelementptr inbounds %struct.VEC_int_base, ptr %598, i64 0, i32 2, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !50
  br label %681

681:                                              ; preds = %677, %674, %672
  %682 = phi i32 [ %680, %677 ], [ 0, %674 ], [ 0, %672 ]
  %683 = phi i1 [ false, %677 ], [ true, %674 ], [ true, %672 ]
  br i1 %683, label %693, label %684

684:                                              ; preds = %681
  %685 = add i32 %673, 1
  %686 = load ptr, ptr %671, align 8, !tbaa !80
  %687 = getelementptr inbounds %struct.loops, ptr %686, i64 0, i32 1
  %688 = load ptr, ptr %687, align 8, !tbaa !87
  %689 = zext i32 %682 to i64
  %690 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %688, i64 0, i32 2, i64 %689
  %691 = load ptr, ptr %690, align 8, !tbaa !35
  %692 = icmp eq ptr %691, null
  br i1 %692, label %672, label %695, !llvm.loop !145

693:                                              ; preds = %681
  br i1 %669, label %695, label %694

694:                                              ; preds = %693
  tail call void @free(ptr noundef %598)
  br label %695

695:                                              ; preds = %684, %694, %693
  %696 = phi ptr [ null, %694 ], [ null, %693 ], [ %691, %684 ]
  %697 = phi i32 [ %673, %694 ], [ %673, %693 ], [ %685, %684 ]
  %698 = phi ptr [ null, %694 ], [ null, %693 ], [ %598, %684 ]
  %699 = icmp eq ptr %696, null
  br i1 %699, label %700, label %597, !llvm.loop !146

700:                                              ; preds = %695, %592
  %701 = load ptr, ptr @cfun, align 8, !tbaa !35
  %702 = getelementptr inbounds %struct.function, ptr %701, i64 0, i32 4
  %703 = load ptr, ptr %702, align 8, !tbaa !80
  %704 = icmp eq ptr %703, null
  br i1 %704, label %780, label %705

705:                                              ; preds = %700
  %706 = getelementptr inbounds %struct.loops, ptr %703, i64 0, i32 1
  %707 = load ptr, ptr %706, align 8, !tbaa !87
  %708 = icmp eq ptr %707, null
  br i1 %708, label %711, label %709

709:                                              ; preds = %705
  %710 = load i32, ptr %707, align 8, !tbaa !88
  br label %711

711:                                              ; preds = %709, %705
  %712 = phi i32 [ %710, %709 ], [ 0, %705 ]
  %713 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %712, i64 noundef 8, i64 noundef 4) #18
  %714 = load ptr, ptr @cfun, align 8, !tbaa !35
  %715 = getelementptr inbounds %struct.function, ptr %714, i64 0, i32 4
  %716 = load ptr, ptr %715, align 8, !tbaa !80
  %717 = getelementptr inbounds %struct.loops, ptr %716, i64 0, i32 3
  %718 = load ptr, ptr %717, align 8, !tbaa !81
  br label %719

719:                                              ; preds = %732, %711
  %720 = phi ptr [ %718, %711 ], [ %733, %732 ]
  %721 = load i32, ptr %720, align 8, !tbaa !118
  %722 = icmp slt i32 %721, 1
  br i1 %722, label %728, label %723

723:                                              ; preds = %719
  %724 = load i32, ptr %713, align 4, !tbaa !140
  %725 = add i32 %724, 1
  store i32 %725, ptr %713, align 4, !tbaa !140
  %726 = zext i32 %724 to i64
  %727 = getelementptr inbounds %struct.VEC_int_base, ptr %713, i64 0, i32 2, i64 %726
  store i32 %721, ptr %727, align 4, !tbaa !50
  br label %728

728:                                              ; preds = %723, %719
  %729 = getelementptr inbounds %struct.loop, ptr %720, i64 0, i32 8
  %730 = load ptr, ptr %729, align 8, !tbaa !138
  %731 = icmp eq ptr %730, null
  br i1 %731, label %737, label %732

732:                                              ; preds = %737, %728
  %733 = phi ptr [ %730, %728 ], [ %740, %737 ]
  br label %719, !llvm.loop !147

734:                                              ; preds = %756
  %735 = icmp eq ptr %713, null
  %736 = getelementptr inbounds %struct.loops, ptr %716, i64 0, i32 1
  br label %759

737:                                              ; preds = %728, %756
  %738 = phi ptr [ %757, %756 ], [ %720, %728 ]
  %739 = getelementptr inbounds %struct.loop, ptr %738, i64 0, i32 9
  %740 = load ptr, ptr %739, align 8, !tbaa !142
  %741 = icmp eq ptr %740, null
  br i1 %741, label %742, label %732, !llvm.loop !147

742:                                              ; preds = %737
  %743 = getelementptr inbounds %struct.loop, ptr %738, i64 0, i32 7
  %744 = load ptr, ptr %743, align 8, !tbaa !122
  %745 = icmp eq ptr %744, null
  br i1 %745, label %748, label %746

746:                                              ; preds = %742
  %747 = load i32, ptr %744, align 8, !tbaa !88
  br label %748

748:                                              ; preds = %746, %742
  %749 = phi i32 [ %747, %746 ], [ 0, %742 ]
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %756, label %751

751:                                              ; preds = %748
  %752 = add i32 %749, -1
  %753 = zext i32 %752 to i64
  %754 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %744, i64 0, i32 2, i64 %753
  %755 = load ptr, ptr %754, align 8, !tbaa !35
  br label %756

756:                                              ; preds = %751, %748
  %757 = phi ptr [ %755, %751 ], [ null, %748 ]
  %758 = icmp eq ptr %757, null
  br i1 %758, label %734, label %737, !llvm.loop !148

759:                                              ; preds = %734, %771
  %760 = phi i32 [ %772, %771 ], [ 0, %734 ]
  br i1 %735, label %768, label %761

761:                                              ; preds = %759
  %762 = load i32, ptr %713, align 4, !tbaa !140
  %763 = icmp ugt i32 %762, %760
  br i1 %763, label %764, label %768

764:                                              ; preds = %761
  %765 = zext i32 %760 to i64
  %766 = getelementptr inbounds %struct.VEC_int_base, ptr %713, i64 0, i32 2, i64 %765
  %767 = load i32, ptr %766, align 4, !tbaa !50
  br label %768

768:                                              ; preds = %764, %761, %759
  %769 = phi i32 [ %767, %764 ], [ 0, %761 ], [ 0, %759 ]
  %770 = phi i1 [ false, %764 ], [ true, %761 ], [ true, %759 ]
  br i1 %770, label %778, label %771

771:                                              ; preds = %768
  %772 = add i32 %760, 1
  %773 = load ptr, ptr %736, align 8, !tbaa !87
  %774 = zext i32 %769 to i64
  %775 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %773, i64 0, i32 2, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !35
  %777 = icmp eq ptr %776, null
  br i1 %777, label %759, label %780, !llvm.loop !145

778:                                              ; preds = %768
  br i1 %735, label %780, label %779

779:                                              ; preds = %778
  tail call void @free(ptr noundef %713)
  br label %780

780:                                              ; preds = %771, %779, %778, %700
  %781 = phi i32 [ 0, %700 ], [ %760, %779 ], [ %760, %778 ], [ %772, %771 ]
  %782 = phi ptr [ null, %700 ], [ null, %779 ], [ null, %778 ], [ %713, %771 ]
  %783 = phi ptr [ null, %700 ], [ null, %779 ], [ null, %778 ], [ %776, %771 ]
  %784 = icmp eq ptr %783, null
  br i1 %784, label %1105, label %785

785:                                              ; preds = %780, %1100
  %786 = phi ptr [ %1103, %1100 ], [ %783, %780 ]
  %787 = phi ptr [ %1102, %1100 ], [ %782, %780 ]
  %788 = phi i32 [ %1101, %1100 ], [ %781, %780 ]
  %789 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %790 = load i32, ptr %786, align 8, !tbaa !118
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %789, i64 0, i32 2, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !35
  %794 = load ptr, ptr %793, align 8, !tbaa !149
  %795 = icmp eq ptr %794, null
  %796 = select i1 %795, ptr @bitmap_zero_bits, ptr %794
  %797 = getelementptr inbounds %struct.bitmap_element_def, ptr %796, i64 0, i32 2
  %798 = load i32, ptr %797, align 8, !tbaa !151
  %799 = shl i32 %798, 7
  %800 = getelementptr inbounds %struct.bitmap_element_def, ptr %796, i64 0, i32 3
  %801 = load i64, ptr %800, align 8, !tbaa !55
  %802 = icmp eq i64 %801, 0
  %803 = zext i1 %802 to i32
  %804 = or disjoint i32 %799, %803
  br label %805

805:                                              ; preds = %1074, %785
  %806 = phi i32 [ 0, %785 ], [ %861, %1074 ]
  %807 = phi i64 [ %801, %785 ], [ %1075, %1074 ]
  %808 = phi ptr [ %796, %785 ], [ %863, %1074 ]
  %809 = phi i32 [ %804, %785 ], [ %1076, %1074 ]
  %810 = icmp eq i64 %807, 0
  br i1 %810, label %825, label %811

811:                                              ; preds = %839, %805
  %812 = phi i32 [ %806, %805 ], [ %840, %839 ]
  %813 = phi i64 [ %807, %805 ], [ %844, %839 ]
  %814 = phi ptr [ %808, %805 ], [ %831, %839 ]
  %815 = phi i32 [ %809, %805 ], [ %841, %839 ]
  %816 = and i64 %813, 1
  %817 = icmp eq i64 %816, 0
  br i1 %817, label %818, label %860

818:                                              ; preds = %811, %818
  %819 = phi i32 [ %822, %818 ], [ %815, %811 ]
  %820 = phi i64 [ %821, %818 ], [ %813, %811 ]
  %821 = lshr exact i64 %820, 1
  %822 = add i32 %819, 1
  %823 = and i64 %820, 2
  %824 = icmp eq i64 %823, 0
  br i1 %824, label %818, label %860, !llvm.loop !153

825:                                              ; preds = %805
  %826 = add i32 %809, 63
  %827 = and i32 %826, -64
  %828 = add i32 %806, 1
  br label %829

829:                                              ; preds = %856, %825
  %830 = phi i64 [ %807, %825 ], [ %851, %856 ]
  %831 = phi ptr [ %808, %825 ], [ %854, %856 ]
  %832 = phi i32 [ %827, %825 ], [ %859, %856 ]
  %833 = phi i32 [ %828, %825 ], [ 0, %856 ]
  %834 = icmp eq i32 %833, 2
  br i1 %834, label %850, label %835

835:                                              ; preds = %829
  %836 = add i32 %832, 128
  %837 = shl i32 %833, 6
  %838 = sub i32 %836, %837
  br label %839

839:                                              ; preds = %835, %846
  %840 = phi i32 [ %848, %846 ], [ %833, %835 ]
  %841 = phi i32 [ %847, %846 ], [ %832, %835 ]
  %842 = zext i32 %840 to i64
  %843 = getelementptr inbounds %struct.bitmap_element_def, ptr %831, i64 0, i32 3, i64 %842
  %844 = load i64, ptr %843, align 8, !tbaa !55
  %845 = icmp eq i64 %844, 0
  br i1 %845, label %846, label %811

846:                                              ; preds = %839
  %847 = add i32 %841, 64
  %848 = add i32 %840, 1
  %849 = icmp eq i32 %848, 2
  br i1 %849, label %850, label %839, !llvm.loop !154

850:                                              ; preds = %846, %829
  %851 = phi i64 [ %830, %829 ], [ %844, %846 ]
  %852 = phi i32 [ %832, %829 ], [ %838, %846 ]
  %853 = phi i32 [ %833, %829 ], [ 2, %846 ]
  %854 = load ptr, ptr %831, align 8, !tbaa !155
  %855 = icmp eq ptr %854, null
  br i1 %855, label %860, label %856

856:                                              ; preds = %850
  %857 = getelementptr inbounds %struct.bitmap_element_def, ptr %854, i64 0, i32 2
  %858 = load i32, ptr %857, align 8, !tbaa !151
  %859 = shl i32 %858, 7
  br label %829, !llvm.loop !156

860:                                              ; preds = %850, %818, %811
  %861 = phi i32 [ %812, %811 ], [ %812, %818 ], [ %853, %850 ]
  %862 = phi i64 [ %813, %811 ], [ %821, %818 ], [ %851, %850 ]
  %863 = phi ptr [ %814, %811 ], [ %814, %818 ], [ %854, %850 ]
  %864 = phi i32 [ %815, %811 ], [ %822, %818 ], [ %852, %850 ]
  %865 = phi i1 [ false, %811 ], [ false, %818 ], [ true, %850 ]
  br i1 %865, label %866, label %870

866:                                              ; preds = %860
  %867 = icmp eq ptr %787, null
  %868 = load ptr, ptr @cfun, align 8
  %869 = getelementptr inbounds %struct.function, ptr %868, i64 0, i32 4
  br label %1077

870:                                              ; preds = %860
  %871 = load ptr, ptr @cfun, align 8, !tbaa !35
  %872 = getelementptr inbounds %struct.function, ptr %871, i64 0, i32 4
  %873 = load ptr, ptr %872, align 8, !tbaa !80
  %874 = getelementptr inbounds %struct.loops, ptr %873, i64 0, i32 3
  %875 = load ptr, ptr %874, align 8, !tbaa !81
  %876 = icmp eq ptr %786, %875
  br i1 %876, label %1074, label %877

877:                                              ; preds = %870
  %878 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %879 = zext i32 %864 to i64
  %880 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %878, i64 0, i32 2, i64 %879
  %881 = load ptr, ptr %880, align 8, !tbaa !35
  %882 = getelementptr inbounds %struct.mem_ref, ptr %881, i64 0, i32 3
  %883 = getelementptr inbounds %struct.mem_ref, ptr %881, i64 0, i32 5
  %884 = getelementptr inbounds %struct.mem_ref, ptr %881, i64 0, i32 1
  br label %885

885:                                              ; preds = %877, %1066
  %886 = phi ptr [ %786, %877 ], [ %1067, %1066 ]
  %887 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %888 = load i32, ptr %886, align 8, !tbaa !118
  %889 = zext i32 %888 to i64
  %890 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %887, i64 0, i32 2, i64 %889
  %891 = load ptr, ptr %890, align 8, !tbaa !35
  %892 = load ptr, ptr %882, align 8, !tbaa !110
  %893 = call i32 @bitmap_bit_p(ptr noundef %892, i32 noundef %888) #18
  %894 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %895 = load i32, ptr %886, align 8, !tbaa !118
  %896 = zext i32 %895 to i64
  %897 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %894, i64 0, i32 2, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !35
  %899 = load ptr, ptr %883, align 8, !tbaa !116
  %900 = load ptr, ptr %899, align 8, !tbaa !149
  %901 = icmp eq ptr %900, null
  %902 = select i1 %901, ptr @bitmap_zero_bits, ptr %900
  %903 = getelementptr inbounds %struct.bitmap_element_def, ptr %902, i64 0, i32 2
  br label %904

904:                                              ; preds = %908, %885
  %905 = phi ptr [ %898, %885 ], [ %906, %908 ]
  %906 = load ptr, ptr %905, align 8, !tbaa !35
  %907 = icmp eq ptr %906, null
  br i1 %907, label %913, label %908

908:                                              ; preds = %904
  %909 = getelementptr inbounds %struct.bitmap_element_def, ptr %906, i64 0, i32 2
  %910 = load i32, ptr %909, align 8, !tbaa !151
  %911 = load i32, ptr %903, align 8, !tbaa !151
  %912 = icmp ult i32 %910, %911
  br i1 %912, label %904, label %913, !llvm.loop !157

913:                                              ; preds = %908, %904
  %914 = getelementptr inbounds %struct.bitmap_element_def, ptr %902, i64 0, i32 2
  %915 = load i32, ptr %914, align 8, !tbaa !151
  %916 = getelementptr inbounds %struct.bitmap_element_def, ptr %902, i64 0, i32 3
  %917 = load i64, ptr %916, align 8, !tbaa !55
  br i1 %907, label %927, label %918

918:                                              ; preds = %913
  %919 = getelementptr inbounds %struct.bitmap_element_def, ptr %906, i64 0, i32 2
  %920 = load i32, ptr %919, align 8, !tbaa !151
  %921 = icmp eq i32 %915, %920
  br i1 %921, label %922, label %927

922:                                              ; preds = %918
  %923 = getelementptr inbounds %struct.bitmap_element_def, ptr %906, i64 0, i32 3, i64 0
  %924 = load i64, ptr %923, align 8, !tbaa !55
  %925 = xor i64 %924, -1
  %926 = and i64 %917, %925
  br label %927

927:                                              ; preds = %922, %918, %913
  %928 = phi i64 [ %917, %913 ], [ %926, %922 ], [ %917, %918 ]
  %929 = shl i32 %915, 7
  %930 = icmp eq i64 %928, 0
  %931 = zext i1 %930 to i32
  %932 = or disjoint i32 %929, %931
  %933 = and i32 %893, 255
  %934 = icmp eq i32 %933, 0
  br label %935

935:                                              ; preds = %1049, %927
  %936 = phi i64 [ %928, %927 ], [ %1050, %1049 ]
  %937 = phi i32 [ 0, %927 ], [ %1023, %1049 ]
  %938 = phi ptr [ %906, %927 ], [ %1024, %1049 ]
  %939 = phi ptr [ %902, %927 ], [ %1025, %1049 ]
  %940 = phi i32 [ %932, %927 ], [ %1051, %1049 ]
  %941 = icmp eq i64 %936, 0
  br i1 %941, label %957, label %942

942:                                              ; preds = %990, %935
  %943 = phi i64 [ %936, %935 ], [ %991, %990 ]
  %944 = phi i32 [ %937, %935 ], [ %976, %990 ]
  %945 = phi ptr [ %938, %935 ], [ %963, %990 ]
  %946 = phi ptr [ %939, %935 ], [ %964, %990 ]
  %947 = phi i32 [ %940, %935 ], [ %977, %990 ]
  %948 = and i64 %943, 1
  %949 = icmp eq i64 %948, 0
  br i1 %949, label %950, label %1021

950:                                              ; preds = %942, %950
  %951 = phi i32 [ %954, %950 ], [ %947, %942 ]
  %952 = phi i64 [ %953, %950 ], [ %943, %942 ]
  %953 = lshr exact i64 %952, 1
  %954 = add i32 %951, 1
  %955 = and i64 %952, 2
  %956 = icmp eq i64 %955, 0
  br i1 %956, label %950, label %1021, !llvm.loop !158

957:                                              ; preds = %935
  %958 = add i32 %940, 63
  %959 = and i32 %958, -64
  %960 = add i32 %937, 1
  br label %961

961:                                              ; preds = %1016, %957
  %962 = phi i64 [ %936, %957 ], [ %998, %1016 ]
  %963 = phi ptr [ %938, %957 ], [ %1017, %1016 ]
  %964 = phi ptr [ %939, %957 ], [ %1001, %1016 ]
  %965 = phi i32 [ %959, %957 ], [ %1020, %1016 ]
  %966 = phi i32 [ %960, %957 ], [ 0, %1016 ]
  %967 = icmp eq i32 %966, 2
  br i1 %967, label %997, label %968

968:                                              ; preds = %961
  %969 = icmp eq ptr %963, null
  %970 = getelementptr inbounds %struct.bitmap_element_def, ptr %963, i64 0, i32 2
  %971 = getelementptr inbounds %struct.bitmap_element_def, ptr %964, i64 0, i32 2
  %972 = add i32 %965, 128
  %973 = shl i32 %966, 6
  %974 = sub i32 %972, %973
  br label %975

975:                                              ; preds = %968, %993
  %976 = phi i32 [ %966, %968 ], [ %995, %993 ]
  %977 = phi i32 [ %965, %968 ], [ %994, %993 ]
  %978 = zext i32 %976 to i64
  %979 = getelementptr inbounds %struct.bitmap_element_def, ptr %964, i64 0, i32 3, i64 %978
  %980 = load i64, ptr %979, align 8, !tbaa !55
  br i1 %969, label %990, label %981

981:                                              ; preds = %975
  %982 = load i32, ptr %970, align 8, !tbaa !151
  %983 = load i32, ptr %971, align 8, !tbaa !151
  %984 = icmp eq i32 %982, %983
  br i1 %984, label %985, label %990

985:                                              ; preds = %981
  %986 = getelementptr inbounds %struct.bitmap_element_def, ptr %963, i64 0, i32 3, i64 %978
  %987 = load i64, ptr %986, align 8, !tbaa !55
  %988 = xor i64 %987, -1
  %989 = and i64 %980, %988
  br label %990

990:                                              ; preds = %985, %981, %975
  %991 = phi i64 [ %980, %975 ], [ %989, %985 ], [ %980, %981 ]
  %992 = icmp eq i64 %991, 0
  br i1 %992, label %993, label %942

993:                                              ; preds = %990
  %994 = add i32 %977, 64
  %995 = add i32 %976, 1
  %996 = icmp eq i32 %995, 2
  br i1 %996, label %997, label %975, !llvm.loop !159

997:                                              ; preds = %993, %961
  %998 = phi i64 [ %962, %961 ], [ %991, %993 ]
  %999 = phi i32 [ %965, %961 ], [ %974, %993 ]
  %1000 = phi i32 [ %966, %961 ], [ 2, %993 ]
  %1001 = load ptr, ptr %964, align 8, !tbaa !155
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1021, label %1003

1003:                                             ; preds = %997
  %1004 = icmp eq ptr %963, null
  br i1 %1004, label %1016, label %1005

1005:                                             ; preds = %1003
  %1006 = getelementptr inbounds %struct.bitmap_element_def, ptr %1001, i64 0, i32 2
  %1007 = load i32, ptr %1006, align 8, !tbaa !151
  br label %1008

1008:                                             ; preds = %1005, %1013
  %1009 = phi ptr [ %963, %1005 ], [ %1014, %1013 ]
  %1010 = getelementptr inbounds %struct.bitmap_element_def, ptr %1009, i64 0, i32 2
  %1011 = load i32, ptr %1010, align 8, !tbaa !151
  %1012 = icmp ult i32 %1011, %1007
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1008
  %1014 = load ptr, ptr %1009, align 8, !tbaa !155
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %1016, label %1008, !llvm.loop !160

1016:                                             ; preds = %1013, %1008, %1003
  %1017 = phi ptr [ %963, %1003 ], [ %1014, %1013 ], [ %1009, %1008 ]
  %1018 = getelementptr inbounds %struct.bitmap_element_def, ptr %1001, i64 0, i32 2
  %1019 = load i32, ptr %1018, align 8, !tbaa !151
  %1020 = shl i32 %1019, 7
  br label %961, !llvm.loop !161

1021:                                             ; preds = %997, %950, %942
  %1022 = phi i64 [ %943, %942 ], [ %953, %950 ], [ %998, %997 ]
  %1023 = phi i32 [ %944, %942 ], [ %944, %950 ], [ %1000, %997 ]
  %1024 = phi ptr [ %945, %942 ], [ %945, %950 ], [ %963, %997 ]
  %1025 = phi ptr [ %946, %942 ], [ %946, %950 ], [ %1001, %997 ]
  %1026 = phi i32 [ %947, %942 ], [ %954, %950 ], [ %999, %997 ]
  %1027 = phi i1 [ false, %942 ], [ false, %950 ], [ true, %997 ]
  br i1 %1027, label %1052, label %1028

1028:                                             ; preds = %1021
  %1029 = load i32, ptr %884, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %1026, ptr %3, align 4, !tbaa !50
  %1030 = call ptr @htab_find_slot_with_hash(ptr noundef %891, ptr noundef nonnull %3, i32 noundef %1026, i32 noundef 1) #18
  %1031 = load ptr, ptr %1030, align 8, !tbaa !35
  %1032 = icmp eq ptr %1031, null
  br i1 %1032, label %1033, label %1040

1033:                                             ; preds = %1028
  %1034 = call ptr @xmalloc(i64 noundef 24) #18
  %1035 = load i32, ptr %3, align 4, !tbaa !50
  store i32 %1035, ptr %1034, align 8, !tbaa !162
  %1036 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %1037 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %1034, i64 0, i32 1
  store ptr %1036, ptr %1037, align 8, !tbaa !164
  %1038 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %1039 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %1034, i64 0, i32 2
  store ptr %1038, ptr %1039, align 8, !tbaa !165
  store ptr %1034, ptr %1030, align 8, !tbaa !35
  br label %1040

1040:                                             ; preds = %1033, %1028
  %1041 = phi ptr [ %1034, %1033 ], [ %1031, %1028 ]
  %1042 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %1041, i64 0, i32 1
  %1043 = load ptr, ptr %1042, align 8, !tbaa !164
  %1044 = call zeroext i8 @bitmap_set_bit(ptr noundef %1043, i32 noundef %1029) #18
  br i1 %934, label %1049, label %1045

1045:                                             ; preds = %1040
  %1046 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %1041, i64 0, i32 2
  %1047 = load ptr, ptr %1046, align 8, !tbaa !165
  %1048 = call zeroext i8 @bitmap_set_bit(ptr noundef %1047, i32 noundef %1029) #18
  br label %1049

1049:                                             ; preds = %1045, %1040
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %1050 = lshr i64 %1022, 1
  %1051 = add i32 %1026, 1
  br label %935, !llvm.loop !166

1052:                                             ; preds = %1021
  %1053 = getelementptr inbounds %struct.loop, ptr %886, i64 0, i32 7
  %1054 = load ptr, ptr %1053, align 8, !tbaa !122
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1058, label %1056

1056:                                             ; preds = %1052
  %1057 = load i32, ptr %1054, align 8, !tbaa !88
  br label %1058

1058:                                             ; preds = %1056, %1052
  %1059 = phi i32 [ %1057, %1056 ], [ 0, %1052 ]
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1066, label %1061

1061:                                             ; preds = %1058
  %1062 = add i32 %1059, -1
  %1063 = zext i32 %1062 to i64
  %1064 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1054, i64 0, i32 2, i64 %1063
  %1065 = load ptr, ptr %1064, align 8, !tbaa !35
  br label %1066

1066:                                             ; preds = %1061, %1058
  %1067 = phi ptr [ %1065, %1061 ], [ null, %1058 ]
  %1068 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1069 = getelementptr inbounds %struct.function, ptr %1068, i64 0, i32 4
  %1070 = load ptr, ptr %1069, align 8, !tbaa !80
  %1071 = getelementptr inbounds %struct.loops, ptr %1070, i64 0, i32 3
  %1072 = load ptr, ptr %1071, align 8, !tbaa !81
  %1073 = icmp eq ptr %1067, %1072
  br i1 %1073, label %1074, label %885, !llvm.loop !167

1074:                                             ; preds = %1066, %870
  %1075 = lshr i64 %862, 1
  %1076 = add i32 %864, 1
  br label %805, !llvm.loop !168

1077:                                             ; preds = %866, %1089
  %1078 = phi i32 [ %1090, %1089 ], [ %788, %866 ]
  br i1 %867, label %1086, label %1079

1079:                                             ; preds = %1077
  %1080 = load i32, ptr %787, align 4, !tbaa !140
  %1081 = icmp ugt i32 %1080, %1078
  br i1 %1081, label %1082, label %1086

1082:                                             ; preds = %1079
  %1083 = zext i32 %1078 to i64
  %1084 = getelementptr inbounds %struct.VEC_int_base, ptr %787, i64 0, i32 2, i64 %1083
  %1085 = load i32, ptr %1084, align 4, !tbaa !50
  br label %1086

1086:                                             ; preds = %1082, %1079, %1077
  %1087 = phi i32 [ %1085, %1082 ], [ 0, %1079 ], [ 0, %1077 ]
  %1088 = phi i1 [ false, %1082 ], [ true, %1079 ], [ true, %1077 ]
  br i1 %1088, label %1098, label %1089

1089:                                             ; preds = %1086
  %1090 = add i32 %1078, 1
  %1091 = load ptr, ptr %869, align 8, !tbaa !80
  %1092 = getelementptr inbounds %struct.loops, ptr %1091, i64 0, i32 1
  %1093 = load ptr, ptr %1092, align 8, !tbaa !87
  %1094 = zext i32 %1087 to i64
  %1095 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1093, i64 0, i32 2, i64 %1094
  %1096 = load ptr, ptr %1095, align 8, !tbaa !35
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %1077, label %1100, !llvm.loop !145

1098:                                             ; preds = %1086
  br i1 %867, label %1100, label %1099

1099:                                             ; preds = %1098
  call void @free(ptr noundef %787)
  br label %1100

1100:                                             ; preds = %1089, %1099, %1098
  %1101 = phi i32 [ %1078, %1099 ], [ %1078, %1098 ], [ %1090, %1089 ]
  %1102 = phi ptr [ null, %1099 ], [ null, %1098 ], [ %787, %1089 ]
  %1103 = phi ptr [ null, %1099 ], [ null, %1098 ], [ %1096, %1089 ]
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1105, label %785, !llvm.loop !169

1105:                                             ; preds = %1100, %780
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  store i8 1, ptr %2, align 8
  %1106 = getelementptr inbounds %struct.dom_walk_data, ptr %2, i64 0, i32 2
  store ptr @determine_invariantness_stmt, ptr %1106, align 8, !tbaa !170
  call void @init_walk_dominator_tree(ptr noundef nonnull %2) #18
  %1107 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1108 = getelementptr inbounds %struct.function, ptr %1107, i64 0, i32 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !56
  %1110 = load ptr, ptr %1109, align 8, !tbaa !60
  call void @walk_dominator_tree(ptr noundef nonnull %2, ptr noundef %1110) #18
  call void @fini_walk_dominator_tree(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  %1111 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %1112 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1113 = getelementptr inbounds %struct.function, ptr %1112, i64 0, i32 4
  %1114 = load ptr, ptr %1113, align 8, !tbaa !80
  %1115 = getelementptr inbounds %struct.loops, ptr %1114, i64 0, i32 3
  %1116 = load ptr, ptr %1115, align 8, !tbaa !81
  %1117 = getelementptr inbounds %struct.loop, ptr %1116, i64 0, i32 8
  %1118 = load ptr, ptr %1117, align 8, !tbaa !35
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1125, label %1120

1120:                                             ; preds = %1105, %1120
  %1121 = phi ptr [ %1123, %1120 ], [ %1118, %1105 ]
  call fastcc void @store_motion_loop(ptr noundef nonnull %1121, ptr noundef %1111)
  %1122 = getelementptr inbounds %struct.loop, ptr %1121, i64 0, i32 9
  %1123 = load ptr, ptr %1122, align 8, !tbaa !35
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1125, label %1120, !llvm.loop !172

1125:                                             ; preds = %1120, %1105
  call void @bitmap_obstack_free(ptr noundef %1111) #18
  call void @gsi_commit_edge_inserts() #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i8 1, ptr %1, align 8
  %1126 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @move_computations_stmt, ptr %1126, align 8, !tbaa !170
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #18
  %1127 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1128 = getelementptr inbounds %struct.function, ptr %1127, i64 0, i32 1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !56
  %1130 = load ptr, ptr %1129, align 8, !tbaa !60
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %1130) #18
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #18
  call void @gsi_commit_edge_inserts() #18
  %1131 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1132 = call zeroext i8 @need_ssa_update_p(ptr noundef %1131) #18
  %1133 = icmp eq i8 %1132, 0
  br i1 %1133, label %1135, label %1134

1134:                                             ; preds = %1125
  call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #18
  br label %1135

1135:                                             ; preds = %1125, %1134
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #18
  %1136 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1137 = getelementptr inbounds %struct.function, ptr %1136, i64 0, i32 1
  %1138 = load ptr, ptr %1137, align 8, !tbaa !56
  %1139 = load ptr, ptr %1138, align 8, !tbaa !60
  %1140 = getelementptr inbounds %struct.control_flow_graph, ptr %1138, i64 0, i32 1
  %1141 = load ptr, ptr %1140, align 8, !tbaa !63
  %1142 = getelementptr inbounds %struct.basic_block_def, ptr %1139, i64 0, i32 6
  %1143 = load ptr, ptr %1142, align 8, !tbaa !61
  %1144 = icmp eq ptr %1143, %1141
  br i1 %1144, label %1151, label %1145

1145:                                             ; preds = %1135, %1145
  %1146 = phi ptr [ %1149, %1145 ], [ %1143, %1135 ]
  %1147 = getelementptr inbounds %struct.basic_block_def, ptr %1146, i64 0, i32 2
  store ptr null, ptr %1147, align 8, !tbaa !173
  %1148 = getelementptr inbounds %struct.basic_block_def, ptr %1146, i64 0, i32 6
  %1149 = load ptr, ptr %1148, align 8, !tbaa !61
  %1150 = icmp eq ptr %1149, %1141
  br i1 %1150, label %1151, label %1145, !llvm.loop !174

1151:                                             ; preds = %1145, %1135
  %1152 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  call void @pointer_map_destroy(ptr noundef %1152) #18
  %1153 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1156, label %1155

1155:                                             ; preds = %1151
  call void @free(ptr noundef %1153)
  br label %1156

1156:                                             ; preds = %1155, %1151
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8, !tbaa !35
  %1157 = load ptr, ptr @memory_accesses, align 8, !tbaa !84
  call void @htab_delete(ptr noundef %1157) #18
  br label %1158

1158:                                             ; preds = %1172, %1156
  %1159 = phi i32 [ 0, %1156 ], [ %1173, %1172 ]
  %1160 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1169, label %1162

1162:                                             ; preds = %1158
  %1163 = load i32, ptr %1160, align 8, !tbaa !94
  %1164 = icmp ugt i32 %1163, %1159
  br i1 %1164, label %1165, label %1169

1165:                                             ; preds = %1162
  %1166 = zext i32 %1159 to i64
  %1167 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %1160, i64 0, i32 2, i64 %1166
  %1168 = load ptr, ptr %1167, align 8, !tbaa !35
  br label %1169

1169:                                             ; preds = %1165, %1162, %1158
  %1170 = phi ptr [ %1168, %1165 ], [ null, %1162 ], [ null, %1158 ]
  %1171 = phi i1 [ false, %1165 ], [ true, %1162 ], [ true, %1158 ]
  br i1 %1171, label %1174, label %1172

1172:                                             ; preds = %1169
  call void @bitmap_obstack_free(ptr noundef %1170) #18
  %1173 = add i32 %1159, 1
  br label %1158, !llvm.loop !175

1174:                                             ; preds = %1169
  br i1 %1161, label %1176, label %1175

1175:                                             ; preds = %1174
  call void @free(ptr noundef %1160)
  br label %1176

1176:                                             ; preds = %1175, %1174
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 2), align 8, !tbaa !35
  br label %1177

1177:                                             ; preds = %1191, %1176
  %1178 = phi i32 [ 0, %1176 ], [ %1192, %1191 ]
  %1179 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1188, label %1181

1181:                                             ; preds = %1177
  %1182 = load i32, ptr %1179, align 8, !tbaa !94
  %1183 = icmp ugt i32 %1182, %1178
  br i1 %1183, label %1184, label %1188

1184:                                             ; preds = %1181
  %1185 = zext i32 %1178 to i64
  %1186 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %1179, i64 0, i32 2, i64 %1185
  %1187 = load ptr, ptr %1186, align 8, !tbaa !35
  br label %1188

1188:                                             ; preds = %1184, %1181, %1177
  %1189 = phi ptr [ %1187, %1184 ], [ null, %1181 ], [ null, %1177 ]
  %1190 = phi i1 [ false, %1184 ], [ true, %1181 ], [ true, %1177 ]
  br i1 %1190, label %1193, label %1191

1191:                                             ; preds = %1188
  call void @bitmap_obstack_free(ptr noundef %1189) #18
  %1192 = add i32 %1178, 1
  br label %1177, !llvm.loop !176

1193:                                             ; preds = %1188
  br i1 %1180, label %1195, label %1194

1194:                                             ; preds = %1193
  call void @free(ptr noundef %1179)
  br label %1195

1195:                                             ; preds = %1194, %1193
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8, !tbaa !35
  br label %1196

1196:                                             ; preds = %1210, %1195
  %1197 = phi i32 [ 0, %1195 ], [ %1211, %1210 ]
  %1198 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1207, label %1200

1200:                                             ; preds = %1196
  %1201 = load i32, ptr %1198, align 8, !tbaa !94
  %1202 = icmp ugt i32 %1201, %1197
  br i1 %1202, label %1203, label %1207

1203:                                             ; preds = %1200
  %1204 = zext i32 %1197 to i64
  %1205 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %1198, i64 0, i32 2, i64 %1204
  %1206 = load ptr, ptr %1205, align 8, !tbaa !35
  br label %1207

1207:                                             ; preds = %1203, %1200, %1196
  %1208 = phi ptr [ %1206, %1203 ], [ null, %1200 ], [ null, %1196 ]
  %1209 = phi i1 [ false, %1203 ], [ true, %1200 ], [ true, %1196 ]
  br i1 %1209, label %1212, label %1210

1210:                                             ; preds = %1207
  call void @bitmap_obstack_free(ptr noundef %1208) #18
  %1211 = add i32 %1197, 1
  br label %1196, !llvm.loop !177

1212:                                             ; preds = %1207
  br i1 %1199, label %1214, label %1213

1213:                                             ; preds = %1212
  call void @free(ptr noundef %1198)
  br label %1214

1214:                                             ; preds = %1213, %1212
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8, !tbaa !35
  br label %1215

1215:                                             ; preds = %1229, %1214
  %1216 = phi i32 [ 0, %1214 ], [ %1230, %1229 ]
  %1217 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1226, label %1219

1219:                                             ; preds = %1215
  %1220 = load i32, ptr %1217, align 8, !tbaa !96
  %1221 = icmp ugt i32 %1220, %1216
  br i1 %1221, label %1222, label %1226

1222:                                             ; preds = %1219
  %1223 = zext i32 %1216 to i64
  %1224 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %1217, i64 0, i32 2, i64 %1223
  %1225 = load ptr, ptr %1224, align 8, !tbaa !35
  br label %1226

1226:                                             ; preds = %1222, %1219, %1215
  %1227 = phi ptr [ %1225, %1222 ], [ null, %1219 ], [ null, %1215 ]
  %1228 = phi i1 [ false, %1222 ], [ true, %1219 ], [ true, %1215 ]
  br i1 %1228, label %1231, label %1229

1229:                                             ; preds = %1226
  call void @htab_delete(ptr noundef %1227) #18
  %1230 = add i32 %1216, 1
  br label %1215, !llvm.loop !178

1231:                                             ; preds = %1226
  br i1 %1218, label %1233, label %1232

1232:                                             ; preds = %1231
  call void @free(ptr noundef %1217)
  br label %1233

1233:                                             ; preds = %1232, %1231
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8, !tbaa !35
  %1234 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6), align 8, !tbaa !99
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1237, label %1236

1236:                                             ; preds = %1233
  call void @pointer_map_destroy(ptr noundef nonnull %1234) #18
  br label %1237

1237:                                             ; preds = %1233, %1236
  ret void
}

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fill_always_executed_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %111

8:                                                ; preds = %2
  %9 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !180
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %99, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %20

15:                                               ; preds = %96
  %16 = add nuw nsw i64 %21, 1
  %17 = load i32, ptr %10, align 4, !tbaa !180
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %99, !llvm.loop !181

20:                                               ; preds = %13, %15
  %21 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %22 = phi ptr [ null, %13 ], [ %29, %15 ]
  %23 = phi ptr [ %0, %13 ], [ %97, %15 ]
  %24 = getelementptr inbounds ptr, ptr %9, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = load ptr, ptr %14, align 8, !tbaa !182
  %27 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %26, ptr noundef %25) #18
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr %22, ptr %25
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !76
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !55
  %36 = and i32 %31, 63
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  br label %43

43:                                               ; preds = %72, %41
  %44 = phi i32 [ 0, %41 ], [ %73, %72 ]
  %45 = load ptr, ptr %42, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !183
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = icmp eq i32 %50, %44
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = zext i32 %44 to i64
  %54 = getelementptr inbounds %struct.VEC_edge_base, ptr %45, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %55, %52 ], [ null, %49 ]
  br i1 %51, label %74, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !185
  %61 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %60) #18
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %42, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %64, align 8, !tbaa !183
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %67, %66 ], [ 0, %63 ]
  %70 = icmp ult i32 %44, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %72

72:                                               ; preds = %68, %71
  %73 = add i32 %44, 1
  br label %43, !llvm.loop !187

74:                                               ; preds = %58, %56
  %75 = icmp eq ptr %57, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 13
  %78 = load i32, ptr %77, align 8, !tbaa !64
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %23, ptr noundef %25) #18
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !179
  %89 = icmp eq ptr %88, %25
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load ptr, ptr %14, align 8, !tbaa !182
  %92 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %91, ptr noundef %25) #18
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %85, align 8, !tbaa !100
  br label %96

96:                                               ; preds = %84, %94, %90, %81, %76, %74, %20
  %97 = phi ptr [ %23, %20 ], [ %23, %74 ], [ %23, %76 ], [ %23, %81 ], [ %23, %90 ], [ %95, %94 ], [ %23, %84 ]
  %98 = phi i1 [ false, %20 ], [ false, %74 ], [ false, %76 ], [ false, %81 ], [ false, %90 ], [ true, %94 ], [ true, %84 ]
  br i1 %98, label %15, label %99

99:                                               ; preds = %15, %96, %8
  %100 = phi ptr [ null, %8 ], [ %29, %96 ], [ %29, %15 ]
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 2
  store ptr %0, ptr %101, align 8, !tbaa !173
  %102 = load ptr, ptr %3, align 8, !tbaa !179
  %103 = icmp eq ptr %100, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %106, %104 ], [ %100, %99 ]
  %106 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %105) #18
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 2
  store ptr %0, ptr %107, align 8, !tbaa !173
  %108 = load ptr, ptr %3, align 8, !tbaa !179
  %109 = icmp eq ptr %106, %108
  br i1 %109, label %110, label %104, !llvm.loop !188

110:                                              ; preds = %104, %99
  tail call void @free(ptr noundef %9)
  br label %111

111:                                              ; preds = %110, %2
  %112 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %111, %115
  %116 = phi ptr [ %118, %115 ], [ %113, %111 ]
  tail call fastcc void @fill_always_executed_in(ptr noundef nonnull %116, ptr noundef %1)
  %117 = getelementptr inbounds %struct.loop, ptr %116, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %115, !llvm.loop !189

120:                                              ; preds = %115, %111
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @memref_hash(ptr nocapture noundef readonly %0) #14 !prof !34 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define internal i32 @memref_eq(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !106
  %4 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %1, i32 noundef 0) #18
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define internal void @memref_free(ptr nocapture noundef %0) #9 !prof !34 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  tail call void @bitmap_obstack_free(ptr noundef %3) #18
  store ptr null, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  tail call void @bitmap_obstack_free(ptr noundef %5) #18
  store ptr null, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  tail call void @bitmap_obstack_free(ptr noundef %7) #18
  store ptr null, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  tail call void @bitmap_obstack_free(ptr noundef %9) #18
  store ptr null, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  tail call void @bitmap_obstack_free(ptr noundef %11) #18
  store ptr null, ptr %10, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  br label %13

13:                                               ; preds = %48, %1
  %14 = phi i32 [ 0, %1 ], [ %49, %48 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !124
  %19 = icmp ugt i32 %18, %14
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = zext i32 %14 to i64
  %22 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %15, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %13, %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ], [ null, %13 ]
  %26 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %13 ]
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %27, %43
  %30 = phi i32 [ %44, %43 ], [ 0, %27 ]
  %31 = load ptr, ptr %25, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %31, align 8, !tbaa !135
  %35 = icmp ugt i32 %34, %30
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = zext i32 %30 to i64
  %38 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %31, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  br label %40

40:                                               ; preds = %36, %33, %29
  %41 = phi ptr [ %39, %36 ], [ null, %33 ], [ null, %29 ]
  %42 = phi i1 [ false, %36 ], [ true, %33 ], [ true, %29 ]
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  tail call void @free(ptr noundef %41)
  %44 = add i32 %30, 1
  br label %29, !llvm.loop !190

45:                                               ; preds = %40
  br i1 %32, label %47, label %46

46:                                               ; preds = %45
  tail call void @free(ptr noundef %31)
  br label %47

47:                                               ; preds = %46, %45
  store ptr null, ptr %25, align 8, !tbaa !35
  tail call void @free(ptr noundef %25)
  br label %48

48:                                               ; preds = %27, %47
  %49 = add i32 %14, 1
  br label %13, !llvm.loop !191

50:                                               ; preds = %24
  br i1 %16, label %52, label %51

51:                                               ; preds = %50
  tail call void @free(ptr noundef %15)
  br label %52

52:                                               ; preds = %50, %51
  %53 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  store ptr null, ptr %53, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !116
  tail call void @bitmap_obstack_free(ptr noundef %55) #18
  store ptr null, ptr %54, align 8, !tbaa !116
  tail call void @free(ptr noundef %0)
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vtoe_hash(ptr nocapture noundef readonly %0) #14 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !162
  ret i32 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vtoe_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !162
  %4 = load i32, ptr %1, align 4, !tbaa !50
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define internal void @vtoe_free(ptr nocapture noundef %0) #9 !prof !34 {
  %2 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  tail call void @bitmap_obstack_free(ptr noundef %3) #18
  store ptr null, ptr %2, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  tail call void @bitmap_obstack_free(ptr noundef %5) #18
  store ptr null, ptr %4, align 8, !tbaa !165
  tail call void @free(ptr noundef %0)
  ret void
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simple_mem_ref_in_stmt(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %122

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !46
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !55
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %0, i64 %18
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %6, %21
  %29 = phi i32 [ %27, %21 ], [ %7, %6 ]
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -1
  %33 = icmp ult i32 %32, 9
  tail call void @llvm.assume(i1 %33)
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !55
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %42

42:                                               ; preds = %41, %28
  %43 = getelementptr inbounds i8, ptr %0, i64 %39
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %92

48:                                               ; preds = %42
  %49 = zext nneg i32 %29 to i64
  %50 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !46
  %52 = icmp eq i8 %51, 3
  br i1 %52, label %53, label %122

53:                                               ; preds = %48
  %54 = load i32, ptr %0, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !55
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %53, %67
  %72 = phi ptr [ %70, %67 ], [ null, %53 ]
  %73 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %72) #18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %122, label %75

75:                                               ; preds = %71
  store i8 0, ptr %1, align 1, !tbaa !46
  %76 = load i32, ptr %0, align 8
  %77 = and i32 %76, 255
  %78 = add nsw i32 %77, -10
  %79 = icmp ult i32 %78, -9
  br i1 %79, label %122, label %80

80:                                               ; preds = %75
  %81 = zext nneg i32 %77 to i64
  %82 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !55
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %89

89:                                               ; preds = %88, %80
  %90 = getelementptr inbounds i8, ptr %0, i64 %86
  %91 = getelementptr inbounds ptr, ptr %90, i64 1
  br label %122

92:                                               ; preds = %42
  %93 = icmp eq i32 %29, 141
  br i1 %93, label %121, label %94

94:                                               ; preds = %92
  %95 = zext nneg i32 %29 to i64
  %96 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !46
  %98 = icmp eq i8 %97, 3
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load i32, ptr %0, align 8
  %101 = and i32 %100, 255
  %102 = add nsw i32 %101, -10
  %103 = icmp ult i32 %102, -9
  br i1 %103, label %117, label %104

104:                                              ; preds = %99
  %105 = zext nneg i32 %101 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !50
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !55
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %113

113:                                              ; preds = %112, %104
  %114 = getelementptr inbounds i8, ptr %0, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  br label %117

117:                                              ; preds = %99, %113
  %118 = phi ptr [ %116, %113 ], [ null, %99 ]
  %119 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %118) #18
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117, %92
  store i8 1, ptr %1, align 1, !tbaa !46
  br label %122

122:                                              ; preds = %89, %75, %94, %117, %48, %71, %2, %121
  %123 = phi ptr [ %43, %121 ], [ null, %2 ], [ null, %71 ], [ null, %48 ], [ null, %117 ], [ null, %94 ], [ %91, %89 ], [ null, %75 ]
  ret ptr %123
}

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_addressable(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @determine_invariantness_stmt(ptr nocapture readnone %0, ptr noundef %1) #9 !prof !34 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = icmp eq ptr %10, null
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, ptr %16, align 8, !tbaa !88
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %1176, label %23

23:                                               ; preds = %20
  %24 = add i32 %21, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %16, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %1176, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !76
  %39 = load i32, ptr %14, align 8, !tbaa !118
  br i1 %17, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %16, align 8, !tbaa !88
  br label %42

42:                                               ; preds = %36, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %36 ]
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.15, i32 noundef %38, i32 noundef %39, i32 noundef %43)
  br label %45

45:                                               ; preds = %42, %32, %29
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !64, !noalias !192
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !46, !noalias !192
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !68, !noalias !192
  br label %56

56:                                               ; preds = %54, %50, %45
  %57 = phi ptr [ %55, %54 ], [ null, %50 ], [ null, %45 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %57, align 8, !tbaa !70, !noalias !192
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ null, %56 ]
  store ptr %62, ptr %8, align 8, !tbaa.struct !195
  %63 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %57, ptr %63, align 8, !tbaa.struct !196
  %64 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr %1, ptr %64, align 8, !tbaa.struct !197
  %65 = icmp eq ptr %62, null
  br i1 %65, label %1176, label %66

66:                                               ; preds = %61, %1169
  %67 = phi ptr [ %1174, %1169 ], [ %62, %61 ]
  %68 = phi i8 [ %1171, %1169 ], [ %12, %61 ]
  %69 = phi ptr [ %1170, %1169 ], [ %10, %61 ]
  %70 = load ptr, ptr %67, align 8, !tbaa !72
  %71 = call i32 @movement_possibility(ptr noundef %70), !range !198
  %72 = icmp eq i32 %71, 0
  %73 = load i32, ptr %70, align 8
  %74 = and i32 %73, 255
  br i1 %72, label %75, label %90

75:                                               ; preds = %66
  %76 = icmp eq i32 %74, 8
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %70) #18
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi i8 [ %78, %77 ], [ 0, %75 ]
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %1169

82:                                               ; preds = %79
  %83 = call zeroext i8 @stmt_makes_single_store(ptr noundef nonnull %70) #18
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %1169, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %87 = call ptr @pointer_map_insert(ptr noundef %86, ptr noundef nonnull %70) #18
  %88 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  store ptr %88, ptr %87, align 8, !tbaa !35
  %89 = getelementptr inbounds %struct.lim_aux_data, ptr %88, i64 0, i32 2
  store ptr %69, ptr %89, align 8, !tbaa !199
  br label %1169

90:                                               ; preds = %66
  %91 = icmp eq i32 %74, 6
  br i1 %91, label %92, label %891

92:                                               ; preds = %90
  %93 = lshr i32 %73, 16
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !46
  %97 = icmp eq i8 %96, 3
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = zext nneg i32 %74 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !50
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !55
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %107

107:                                              ; preds = %106, %98
  %108 = getelementptr inbounds i8, ptr %70, i64 %104
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = load i64, ptr %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = and i32 %112, 65535
  br label %114

114:                                              ; preds = %92, %107
  %115 = phi i32 [ %113, %107 ], [ %93, %92 ]
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !46
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %891

120:                                              ; preds = %114
  %121 = load i32, ptr %70, align 8
  %122 = and i32 %121, 255
  %123 = add nsw i32 %122, -10
  %124 = icmp ult i32 %123, -9
  br i1 %124, label %138, label %125

125:                                              ; preds = %120
  %126 = zext nneg i32 %122 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !50
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !55
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %134

134:                                              ; preds = %133, %125
  %135 = getelementptr inbounds i8, ptr %70, i64 %131
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !35
  br label %138

138:                                              ; preds = %120, %134
  %139 = phi ptr [ %137, %134 ], [ null, %120 ]
  %140 = getelementptr inbounds %struct.gimple_statement_base, ptr %70, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !46
  %142 = icmp ugt i32 %141, 2
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load i32, ptr %70, align 8
  %145 = and i32 %144, 255
  %146 = add nsw i32 %145, -10
  %147 = icmp ult i32 %146, -9
  br i1 %147, label %161, label %148

148:                                              ; preds = %143
  %149 = zext nneg i32 %145 to i64
  %150 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !50
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !55
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %157

157:                                              ; preds = %156, %148
  %158 = getelementptr inbounds i8, ptr %70, i64 %154
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !35
  br label %161

161:                                              ; preds = %138, %143, %157
  %162 = phi ptr [ null, %138 ], [ %160, %157 ], [ null, %143 ]
  %163 = getelementptr inbounds %struct.gimple_statement_base, ptr %70, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !100
  br label %169

169:                                              ; preds = %161, %166
  %170 = phi ptr [ %168, %166 ], [ null, %161 ]
  %171 = call fastcc ptr @outermost_invariant_loop(ptr noundef %162, ptr noundef %170)
  %172 = icmp eq i32 %71, 2
  br i1 %172, label %173, label %350

173:                                              ; preds = %169
  %174 = load i32, ptr %70, align 8
  %175 = trunc i32 %174 to i8
  switch i8 %175, label %178 [
    i8 6, label %176
    i8 1, label %176
    i8 8, label %179
  ]

176:                                              ; preds = %173, %173
  %177 = lshr i32 %174, 16
  br label %179

178:                                              ; preds = %173
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %179

179:                                              ; preds = %178, %176, %173
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ], [ 59, %173 ]
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !46
  %184 = icmp eq i8 %183, 3
  br i1 %184, label %185, label %205

185:                                              ; preds = %179
  %186 = load i32, ptr %70, align 8
  %187 = and i32 %186, 255
  %188 = add nsw i32 %187, -1
  %189 = icmp ult i32 %188, 9
  call void @llvm.assume(i1 %189)
  %190 = zext nneg i32 %187 to i64
  %191 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !50
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %193
  %195 = load i64, ptr %194, align 8, !tbaa !55
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %198

198:                                              ; preds = %197, %185
  %199 = getelementptr inbounds i8, ptr %70, i64 %195
  %200 = getelementptr inbounds ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !35
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = and i32 %203, 65535
  br label %205

205:                                              ; preds = %179, %198
  %206 = phi i32 [ %204, %198 ], [ %180, %179 ]
  %207 = icmp eq i32 %206, 75
  %208 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %207, i1 %209, i1 false
  %211 = load i32, ptr @flag_trapping_math, align 4
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  %214 = icmp ne ptr %171, null
  %215 = select i1 %213, i1 %214, i1 false
  br i1 %215, label %216, label %350

216:                                              ; preds = %205
  %217 = call fastcc ptr @outermost_invariant_loop(ptr noundef %139, ptr noundef nonnull %171)
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %350

219:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %220 = load ptr, ptr %8, align 8
  %221 = load ptr, ptr %220, align 8, !tbaa !72
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 255
  %224 = add nsw i32 %223, -10
  %225 = icmp ult i32 %224, -9
  br i1 %225, label %238, label %226

226:                                              ; preds = %219
  %227 = zext nneg i32 %223 to i64
  %228 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !50
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !55
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %235

235:                                              ; preds = %234, %226
  %236 = getelementptr inbounds i8, ptr %221, i64 %232
  %237 = load ptr, ptr %236, align 8, !tbaa !35
  br label %238

238:                                              ; preds = %235, %219
  %239 = phi ptr [ %237, %235 ], [ null, %219 ]
  %240 = getelementptr inbounds %struct.tree_common, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  %242 = call ptr @create_tmp_var(ptr noundef %241, ptr noundef nonnull @.str.17) #18
  %243 = call zeroext i8 @add_referenced_var(ptr noundef %242) #18
  %244 = getelementptr inbounds %struct.tree_decl_common, ptr %242, i64 0, i32 2
  %245 = load i64, ptr %244, align 8
  %246 = or i64 %245, 134217728
  store i64 %246, ptr %244, align 8
  %247 = load i64, ptr %241, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 14
  br i1 %249, label %250, label %270

250:                                              ; preds = %238
  %251 = getelementptr inbounds %struct.tree_common, ptr %241, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !46
  %253 = call ptr @build_real(ptr noundef %252, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #18
  %254 = getelementptr inbounds %struct.tree_type, ptr %241, i64 0, i32 6
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, 1023
  %257 = zext nneg i32 %256 to i64
  %258 = shl nuw i64 1, %257
  %259 = trunc i64 %258 to i32
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %250, %261
  %262 = phi ptr [ %264, %261 ], [ null, %250 ]
  %263 = phi i32 [ %265, %261 ], [ 0, %250 ]
  %264 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %253, ptr noundef %262) #18
  %265 = add nuw nsw i32 %263, 1
  %266 = icmp eq i32 %265, %259
  br i1 %266, label %267, label %261, !llvm.loop !201

267:                                              ; preds = %261, %250
  %268 = phi ptr [ null, %250 ], [ %264, %261 ]
  %269 = call ptr @build_vector(ptr noundef nonnull %241, ptr noundef %268) #18
  br label %272

270:                                              ; preds = %238
  %271 = call ptr @build_real(ptr noundef nonnull %241, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #18
  br label %272

272:                                              ; preds = %270, %267
  %273 = phi ptr [ %269, %267 ], [ %271, %270 ]
  %274 = getelementptr inbounds %struct.gimple_statement_base, ptr %221, i64 0, i32 3
  %275 = load i32, ptr %274, align 4, !tbaa !46
  %276 = icmp ugt i32 %275, 2
  br i1 %276, label %277, label %295

277:                                              ; preds = %272
  %278 = load i32, ptr %221, align 8
  %279 = and i32 %278, 255
  %280 = add nsw i32 %279, -10
  %281 = icmp ult i32 %280, -9
  br i1 %281, label %295, label %282

282:                                              ; preds = %277
  %283 = zext nneg i32 %279 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !50
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !55
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %282
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %291

291:                                              ; preds = %290, %282
  %292 = getelementptr inbounds i8, ptr %221, i64 %288
  %293 = getelementptr inbounds ptr, ptr %292, i64 2
  %294 = load ptr, ptr %293, align 8, !tbaa !35
  br label %295

295:                                              ; preds = %291, %277, %272
  %296 = phi ptr [ null, %272 ], [ %294, %291 ], [ null, %277 ]
  %297 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 75, ptr noundef %242, ptr noundef %273, ptr noundef %296) #18
  %298 = load ptr, ptr @cfun, align 8, !tbaa !35
  %299 = call ptr @make_ssa_name_fn(ptr noundef %298, ptr noundef %242, ptr noundef %297) #18
  %300 = load i32, ptr %297, align 8
  %301 = and i32 %300, 255
  %302 = add nsw i32 %301, -10
  %303 = icmp ult i32 %302, -9
  br i1 %303, label %308, label %304

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.gimple_statement_base, ptr %297, i64 0, i32 3
  %306 = load i32, ptr %305, align 4, !tbaa !46
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %304, %295
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %309

309:                                              ; preds = %308, %304
  %310 = load i32, ptr %297, align 8
  %311 = and i32 %310, 255
  %312 = zext nneg i32 %311 to i64
  %313 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !50
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %315
  %317 = load i64, ptr %316, align 8, !tbaa !55
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %309
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %320

320:                                              ; preds = %319, %309
  %321 = getelementptr inbounds i8, ptr %297, i64 %317
  store ptr %299, ptr %321, align 8, !tbaa !35
  %322 = icmp eq ptr %299, null
  br i1 %322, label %329, label %323

323:                                              ; preds = %320
  %324 = load i64, ptr %299, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 141
  br i1 %326, label %327, label %329

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.tree_ssa_name, ptr %299, i64 0, i32 2
  store ptr %297, ptr %328, align 8, !tbaa !46
  br label %329

329:                                              ; preds = %327, %323, %320
  %330 = load i32, ptr %221, align 8
  %331 = and i32 %330, 255
  %332 = add nsw i32 %331, -10
  %333 = icmp ult i32 %332, -9
  br i1 %333, label %347, label %334

334:                                              ; preds = %329
  %335 = zext nneg i32 %331 to i64
  %336 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !50
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %338
  %340 = load i64, ptr %339, align 8, !tbaa !55
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %334
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %343

343:                                              ; preds = %342, %334
  %344 = getelementptr inbounds i8, ptr %221, i64 %340
  %345 = getelementptr inbounds ptr, ptr %344, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !35
  br label %347

347:                                              ; preds = %329, %343
  %348 = phi ptr [ %346, %343 ], [ null, %329 ]
  %349 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 65, ptr noundef %239, ptr noundef %299, ptr noundef %348) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !195
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %297, i32 noundef 0) #18
  call void @gsi_replace(ptr noundef nonnull %7, ptr noundef %349, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  br label %350

350:                                              ; preds = %347, %216, %205, %169
  %351 = phi ptr [ %297, %347 ], [ %70, %216 ], [ %70, %205 ], [ %70, %169 ]
  br i1 %172, label %352, label %891

352:                                              ; preds = %350
  %353 = load i32, ptr %351, align 8
  %354 = trunc i32 %353 to i8
  switch i8 %354, label %357 [
    i8 6, label %355
    i8 1, label %355
    i8 8, label %358
  ]

355:                                              ; preds = %352, %352
  %356 = lshr i32 %353, 16
  br label %358

357:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %358

358:                                              ; preds = %357, %355, %352
  %359 = phi i32 [ %356, %355 ], [ 0, %357 ], [ 59, %352 ]
  %360 = zext nneg i32 %359 to i64
  %361 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !46
  %363 = icmp eq i8 %362, 3
  br i1 %363, label %364, label %384

364:                                              ; preds = %358
  %365 = load i32, ptr %351, align 8
  %366 = and i32 %365, 255
  %367 = add nsw i32 %366, -1
  %368 = icmp ult i32 %367, 9
  call void @llvm.assume(i1 %368)
  %369 = zext nneg i32 %366 to i64
  %370 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !50
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !55
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %364
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %377

377:                                              ; preds = %376, %364
  %378 = getelementptr inbounds i8, ptr %351, i64 %374
  %379 = getelementptr inbounds ptr, ptr %378, i64 1
  %380 = load ptr, ptr %379, align 8, !tbaa !35
  %381 = load i64, ptr %380, align 8
  %382 = trunc i64 %381 to i32
  %383 = and i32 %382, 65535
  br label %384

384:                                              ; preds = %358, %377
  %385 = phi i32 [ %383, %377 ], [ %359, %358 ]
  %386 = icmp eq i32 %385, 89
  br i1 %386, label %387, label %891

387:                                              ; preds = %384
  %388 = call i32 @integer_onep(ptr noundef %162) #18
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %891, label %390

390:                                              ; preds = %387
  %391 = load i64, ptr %139, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 141
  br i1 %393, label %394, label %891

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.tree_ssa_name, ptr %139, i64 0, i32 5
  %396 = getelementptr inbounds %struct.tree_ssa_name, ptr %139, i64 0, i32 5, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !202
  %398 = icmp eq ptr %395, %397
  br i1 %398, label %415, label %399

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %397, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !202
  %402 = icmp eq ptr %395, %401
  br i1 %402, label %403, label %410

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %397, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !46
  %406 = load i32, ptr %405, align 8
  %407 = and i32 %406, 255
  %408 = icmp ne i32 %407, 2
  %409 = zext i1 %408 to i8
  br label %415

410:                                              ; preds = %399
  %411 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %410
  %414 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %395, ptr noundef null, ptr noundef null) #18
  br label %415

415:                                              ; preds = %394, %403, %410, %413
  %416 = phi i8 [ %409, %403 ], [ %414, %413 ], [ 0, %394 ], [ 0, %410 ]
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %891, label %418

418:                                              ; preds = %415
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %419 = load ptr, ptr %8, align 8
  %420 = load ptr, ptr %419, align 8, !tbaa !72
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 255
  %423 = add nsw i32 %422, -10
  %424 = icmp ult i32 %423, -9
  br i1 %424, label %437, label %425

425:                                              ; preds = %418
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !50
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !55
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %434

434:                                              ; preds = %433, %425
  %435 = getelementptr inbounds i8, ptr %420, i64 %431
  %436 = load ptr, ptr %435, align 8, !tbaa !35
  br label %437

437:                                              ; preds = %434, %418
  %438 = phi ptr [ %436, %434 ], [ null, %418 ]
  %439 = load i64, ptr %438, align 8
  %440 = and i64 %439, 65535
  %441 = icmp eq i64 %440, 141
  br i1 %441, label %442, label %889

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 5
  %444 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 5, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !202
  %446 = icmp eq ptr %443, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %459, %452, %442
  store ptr null, ptr %5, align 8, !tbaa !35
  store ptr null, ptr %4, align 8, !tbaa !35
  br label %464

448:                                              ; preds = %442
  %449 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %445, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !202
  %451 = icmp eq ptr %443, %450
  br i1 %451, label %452, label %459

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %445, i64 0, i32 2
  %454 = load ptr, ptr %453, align 8, !tbaa !46
  %455 = load i32, ptr %454, align 8
  %456 = and i32 %455, 255
  %457 = icmp eq i32 %456, 2
  br i1 %457, label %447, label %458

458:                                              ; preds = %452
  store ptr %445, ptr %5, align 8, !tbaa !35
  store ptr %454, ptr %4, align 8, !tbaa !35
  br label %464

459:                                              ; preds = %448
  %460 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %447, label %462

462:                                              ; preds = %459
  %463 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %443, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  br label %464

464:                                              ; preds = %462, %458, %447
  %465 = phi i8 [ 0, %447 ], [ 1, %458 ], [ %463, %462 ]
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %889, label %467

467:                                              ; preds = %464
  %468 = load ptr, ptr %4, align 8, !tbaa !35
  %469 = load i32, ptr %468, align 8
  %470 = and i32 %469, 255
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %472, label %889

472:                                              ; preds = %467
  %473 = zext nneg i32 %470 to i64
  %474 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !50
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %476
  %478 = load i64, ptr %477, align 8, !tbaa !55
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %472
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %481

481:                                              ; preds = %480, %472
  %482 = getelementptr inbounds i8, ptr %468, i64 %478
  %483 = load ptr, ptr %482, align 8, !tbaa !35
  %484 = icmp eq ptr %483, %438
  br i1 %484, label %485, label %889

485:                                              ; preds = %481
  %486 = load ptr, ptr %4, align 8, !tbaa !35
  %487 = load i32, ptr %486, align 8
  %488 = lshr i32 %487, 16
  %489 = add nsw i32 %488, -101
  %490 = icmp ult i32 %489, 2
  br i1 %490, label %491, label %889

491:                                              ; preds = %485
  %492 = and i32 %487, 255
  %493 = add nsw i32 %492, -10
  %494 = icmp ult i32 %493, -9
  br i1 %494, label %508, label %495

495:                                              ; preds = %491
  %496 = zext nneg i32 %492 to i64
  %497 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !50
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %499
  %501 = load i64, ptr %500, align 8, !tbaa !55
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %495
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %504

504:                                              ; preds = %503, %495
  %505 = getelementptr inbounds i8, ptr %486, i64 %501
  %506 = getelementptr inbounds ptr, ptr %505, i64 1
  %507 = load ptr, ptr %506, align 8, !tbaa !35
  br label %508

508:                                              ; preds = %504, %491
  %509 = phi ptr [ %507, %504 ], [ null, %491 ]
  %510 = call i32 @integer_zerop(ptr noundef %509) #18
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %889, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %420, align 8
  %514 = and i32 %513, 255
  %515 = add nsw i32 %514, -1
  %516 = icmp ult i32 %515, 9
  call void @llvm.assume(i1 %516)
  %517 = zext nneg i32 %514 to i64
  %518 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !50
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %520
  %522 = load i64, ptr %521, align 8, !tbaa !55
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %524, label %525

524:                                              ; preds = %512
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %525

525:                                              ; preds = %524, %512
  %526 = getelementptr inbounds i8, ptr %420, i64 %522
  %527 = getelementptr inbounds ptr, ptr %526, i64 1
  %528 = load ptr, ptr %527, align 8, !tbaa !35
  %529 = getelementptr inbounds %struct.tree_ssa_name, ptr %528, i64 0, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !46
  %531 = load i32, ptr %530, align 8
  %532 = and i32 %531, 255
  %533 = icmp eq i32 %532, 6
  br i1 %533, label %534, label %889

534:                                              ; preds = %525
  %535 = lshr i32 %531, 16
  %536 = zext nneg i32 %535 to i64
  %537 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %536
  %538 = load i8, ptr %537, align 1, !tbaa !46
  %539 = icmp eq i8 %538, 3
  br i1 %539, label %540, label %556

540:                                              ; preds = %534
  %541 = zext nneg i32 %532 to i64
  %542 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %541
  %543 = load i32, ptr %542, align 4, !tbaa !50
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %544
  %546 = load i64, ptr %545, align 8, !tbaa !55
  %547 = icmp eq i64 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %540
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %549

549:                                              ; preds = %548, %540
  %550 = getelementptr inbounds i8, ptr %530, i64 %546
  %551 = getelementptr inbounds ptr, ptr %550, i64 1
  %552 = load ptr, ptr %551, align 8, !tbaa !35
  %553 = load i64, ptr %552, align 8
  %554 = trunc i64 %553 to i32
  %555 = and i32 %554, 65535
  br label %556

556:                                              ; preds = %549, %534
  %557 = phi i32 [ %555, %549 ], [ %535, %534 ]
  %558 = icmp eq i32 %557, 116
  br i1 %558, label %594, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %530, align 8
  %561 = trunc i32 %560 to i8
  switch i8 %561, label %564 [
    i8 6, label %562
    i8 1, label %562
    i8 8, label %565
  ]

562:                                              ; preds = %559, %559
  %563 = lshr i32 %560, 16
  br label %565

564:                                              ; preds = %559
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %565

565:                                              ; preds = %564, %562, %559
  %566 = phi i32 [ %563, %562 ], [ 0, %564 ], [ 59, %559 ]
  %567 = zext nneg i32 %566 to i64
  %568 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %567
  %569 = load i8, ptr %568, align 1, !tbaa !46
  %570 = icmp eq i8 %569, 3
  br i1 %570, label %571, label %591

571:                                              ; preds = %565
  %572 = load i32, ptr %530, align 8
  %573 = and i32 %572, 255
  %574 = add nsw i32 %573, -1
  %575 = icmp ult i32 %574, 9
  call void @llvm.assume(i1 %575)
  %576 = zext nneg i32 %573 to i64
  %577 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %576
  %578 = load i32, ptr %577, align 4, !tbaa !50
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %579
  %581 = load i64, ptr %580, align 8, !tbaa !55
  %582 = icmp eq i64 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %571
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %584

584:                                              ; preds = %583, %571
  %585 = getelementptr inbounds i8, ptr %530, i64 %581
  %586 = getelementptr inbounds ptr, ptr %585, i64 1
  %587 = load ptr, ptr %586, align 8, !tbaa !35
  %588 = load i64, ptr %587, align 8
  %589 = trunc i64 %588 to i32
  %590 = and i32 %589, 65535
  br label %591

591:                                              ; preds = %584, %565
  %592 = phi i32 [ %590, %584 ], [ %566, %565 ]
  %593 = icmp eq i32 %592, 113
  br i1 %593, label %594, label %647

594:                                              ; preds = %591, %556
  %595 = load i32, ptr %530, align 8
  %596 = and i32 %595, 255
  %597 = add nsw i32 %596, -10
  %598 = icmp ult i32 %597, -9
  br i1 %598, label %612, label %599

599:                                              ; preds = %594
  %600 = zext nneg i32 %596 to i64
  %601 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %600
  %602 = load i32, ptr %601, align 4, !tbaa !50
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %603
  %605 = load i64, ptr %604, align 8, !tbaa !55
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %599
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %608

608:                                              ; preds = %607, %599
  %609 = getelementptr inbounds i8, ptr %530, i64 %605
  %610 = getelementptr inbounds ptr, ptr %609, i64 1
  %611 = load ptr, ptr %610, align 8, !tbaa !35
  br label %612

612:                                              ; preds = %608, %594
  %613 = phi ptr [ %611, %608 ], [ null, %594 ]
  %614 = load i64, ptr %613, align 8
  %615 = and i64 %614, 65535
  %616 = icmp eq i64 %615, 141
  br i1 %616, label %617, label %889

617:                                              ; preds = %612
  %618 = getelementptr inbounds %struct.tree_ssa_name, ptr %613, i64 0, i32 5
  %619 = getelementptr inbounds %struct.tree_ssa_name, ptr %613, i64 0, i32 5, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !202
  %621 = icmp eq ptr %618, %620
  br i1 %621, label %638, label %622

622:                                              ; preds = %617
  %623 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %620, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !202
  %625 = icmp eq ptr %618, %624
  br i1 %625, label %626, label %633

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %620, i64 0, i32 2
  %628 = load ptr, ptr %627, align 8, !tbaa !46
  %629 = load i32, ptr %628, align 8
  %630 = and i32 %629, 255
  %631 = icmp ne i32 %630, 2
  %632 = zext i1 %631 to i8
  br label %638

633:                                              ; preds = %622
  %634 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %638, label %636

636:                                              ; preds = %633
  %637 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %618, ptr noundef null, ptr noundef null) #18
  br label %638

638:                                              ; preds = %636, %633, %626, %617
  %639 = phi i8 [ %632, %626 ], [ %637, %636 ], [ 0, %617 ], [ 0, %633 ]
  %640 = icmp eq i8 %639, 0
  br i1 %640, label %889, label %641

641:                                              ; preds = %638
  %642 = getelementptr inbounds %struct.tree_ssa_name, ptr %613, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !46
  %644 = load i32, ptr %643, align 8
  %645 = and i32 %644, 255
  %646 = icmp eq i32 %645, 6
  br i1 %646, label %647, label %889

647:                                              ; preds = %641, %591
  %648 = phi ptr [ %643, %641 ], [ %530, %591 ]
  %649 = load i32, ptr %648, align 8
  %650 = trunc i32 %649 to i8
  switch i8 %650, label %653 [
    i8 6, label %651
    i8 1, label %651
    i8 8, label %654
  ]

651:                                              ; preds = %647, %647
  %652 = lshr i32 %649, 16
  br label %654

653:                                              ; preds = %647
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %654

654:                                              ; preds = %647, %653, %651
  %655 = phi i32 [ %652, %651 ], [ 0, %653 ], [ 59, %647 ]
  %656 = zext nneg i32 %655 to i64
  %657 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !46
  %659 = icmp eq i8 %658, 3
  br i1 %659, label %660, label %680

660:                                              ; preds = %654
  %661 = load i32, ptr %648, align 8
  %662 = and i32 %661, 255
  %663 = add nsw i32 %662, -1
  %664 = icmp ult i32 %663, 9
  call void @llvm.assume(i1 %664)
  %665 = zext nneg i32 %662 to i64
  %666 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !50
  %668 = zext i32 %667 to i64
  %669 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %668
  %670 = load i64, ptr %669, align 8, !tbaa !55
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %672, label %673

672:                                              ; preds = %660
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %673

673:                                              ; preds = %672, %660
  %674 = getelementptr inbounds i8, ptr %648, i64 %670
  %675 = getelementptr inbounds ptr, ptr %674, i64 1
  %676 = load ptr, ptr %675, align 8, !tbaa !35
  %677 = load i64, ptr %676, align 8
  %678 = trunc i64 %677 to i32
  %679 = and i32 %678, 65535
  br label %680

680:                                              ; preds = %673, %654
  %681 = phi i32 [ %679, %673 ], [ %655, %654 ]
  %682 = icmp eq i32 %681, 84
  br i1 %682, label %683, label %889

683:                                              ; preds = %680
  %684 = getelementptr inbounds %struct.gimple_statement_base, ptr %648, i64 0, i32 4
  %685 = load ptr, ptr %684, align 8, !tbaa !46
  %686 = icmp eq ptr %685, null
  br i1 %686, label %690, label %687

687:                                              ; preds = %683
  %688 = getelementptr inbounds %struct.basic_block_def, ptr %685, i64 0, i32 3
  %689 = load ptr, ptr %688, align 8, !tbaa !100
  br label %690

690:                                              ; preds = %687, %683
  %691 = phi ptr [ %689, %687 ], [ null, %683 ]
  %692 = getelementptr inbounds %struct.gimple_statement_base, ptr %420, i64 0, i32 4
  %693 = load ptr, ptr %692, align 8, !tbaa !46
  %694 = icmp eq ptr %693, null
  br i1 %694, label %698, label %695

695:                                              ; preds = %690
  %696 = getelementptr inbounds %struct.basic_block_def, ptr %693, i64 0, i32 3
  %697 = load ptr, ptr %696, align 8, !tbaa !100
  br label %698

698:                                              ; preds = %695, %690
  %699 = phi ptr [ %697, %695 ], [ null, %690 ]
  %700 = icmp eq ptr %691, %699
  br i1 %700, label %701, label %889

701:                                              ; preds = %698
  %702 = load i32, ptr %648, align 8
  %703 = and i32 %702, 255
  %704 = add nsw i32 %703, -10
  %705 = icmp ult i32 %704, -9
  br i1 %705, label %719, label %706

706:                                              ; preds = %701
  %707 = zext nneg i32 %703 to i64
  %708 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !50
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %710
  %712 = load i64, ptr %711, align 8, !tbaa !55
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %714, label %715

714:                                              ; preds = %706
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %715

715:                                              ; preds = %714, %706
  %716 = getelementptr inbounds i8, ptr %648, i64 %712
  %717 = getelementptr inbounds ptr, ptr %716, i64 1
  %718 = load ptr, ptr %717, align 8, !tbaa !35
  br label %719

719:                                              ; preds = %715, %701
  %720 = phi ptr [ %718, %715 ], [ null, %701 ]
  %721 = getelementptr inbounds %struct.gimple_statement_base, ptr %648, i64 0, i32 3
  %722 = load i32, ptr %721, align 4, !tbaa !46
  %723 = icmp ugt i32 %722, 2
  br i1 %723, label %724, label %742

724:                                              ; preds = %719
  %725 = load i32, ptr %648, align 8
  %726 = and i32 %725, 255
  %727 = add nsw i32 %726, -10
  %728 = icmp ult i32 %727, -9
  br i1 %728, label %742, label %729

729:                                              ; preds = %724
  %730 = zext nneg i32 %726 to i64
  %731 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %730
  %732 = load i32, ptr %731, align 4, !tbaa !50
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %733
  %735 = load i64, ptr %734, align 8, !tbaa !55
  %736 = icmp eq i64 %735, 0
  br i1 %736, label %737, label %738

737:                                              ; preds = %729
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %738

738:                                              ; preds = %737, %729
  %739 = getelementptr inbounds i8, ptr %648, i64 %735
  %740 = getelementptr inbounds ptr, ptr %739, i64 2
  %741 = load ptr, ptr %740, align 8, !tbaa !35
  br label %742

742:                                              ; preds = %738, %724, %719
  %743 = phi ptr [ null, %719 ], [ %741, %738 ], [ null, %724 ]
  %744 = load ptr, ptr %684, align 8, !tbaa !46
  %745 = icmp eq ptr %744, null
  br i1 %745, label %749, label %746

746:                                              ; preds = %742
  %747 = getelementptr inbounds %struct.basic_block_def, ptr %744, i64 0, i32 3
  %748 = load ptr, ptr %747, align 8, !tbaa !100
  br label %749

749:                                              ; preds = %746, %742
  %750 = phi ptr [ %748, %746 ], [ null, %742 ]
  %751 = call fastcc ptr @outermost_invariant_loop(ptr noundef %743, ptr noundef %750)
  %752 = icmp eq ptr %751, null
  br i1 %752, label %889, label %753

753:                                              ; preds = %749
  %754 = load ptr, ptr %684, align 8, !tbaa !46
  %755 = icmp eq ptr %754, null
  br i1 %755, label %759, label %756

756:                                              ; preds = %753
  %757 = getelementptr inbounds %struct.basic_block_def, ptr %754, i64 0, i32 3
  %758 = load ptr, ptr %757, align 8, !tbaa !100
  br label %759

759:                                              ; preds = %756, %753
  %760 = phi ptr [ %758, %756 ], [ null, %753 ]
  %761 = call fastcc ptr @outermost_invariant_loop(ptr noundef %720, ptr noundef %760)
  %762 = icmp eq ptr %761, null
  br i1 %762, label %763, label %889

763:                                              ; preds = %759
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %764 = getelementptr inbounds %struct.tree_common, ptr %720, i64 0, i32 2
  %765 = load ptr, ptr %764, align 8, !tbaa !46
  %766 = call ptr @create_tmp_var(ptr noundef %765, ptr noundef nonnull @.str.18) #18
  %767 = call zeroext i8 @add_referenced_var(ptr noundef %766) #18
  %768 = load ptr, ptr %764, align 8, !tbaa !46
  %769 = call ptr @build_int_cst(ptr noundef %768, i64 noundef 1) #18
  %770 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %768, ptr noundef %769, ptr noundef %743) #18
  %771 = call ptr @gimple_build_assign_stat(ptr noundef %766, ptr noundef %770) #18
  %772 = load ptr, ptr @cfun, align 8, !tbaa !35
  %773 = call ptr @make_ssa_name_fn(ptr noundef %772, ptr noundef %766, ptr noundef %771) #18
  %774 = load i32, ptr %771, align 8
  %775 = and i32 %774, 255
  %776 = add nsw i32 %775, -10
  %777 = icmp ult i32 %776, -9
  br i1 %777, label %782, label %778

778:                                              ; preds = %763
  %779 = getelementptr inbounds %struct.gimple_statement_base, ptr %771, i64 0, i32 3
  %780 = load i32, ptr %779, align 4, !tbaa !46
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %778, %763
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %783

783:                                              ; preds = %782, %778
  %784 = load i32, ptr %771, align 8
  %785 = and i32 %784, 255
  %786 = zext nneg i32 %785 to i64
  %787 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %786
  %788 = load i32, ptr %787, align 4, !tbaa !50
  %789 = zext i32 %788 to i64
  %790 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %789
  %791 = load i64, ptr %790, align 8, !tbaa !55
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %793, label %794

793:                                              ; preds = %783
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %794

794:                                              ; preds = %793, %783
  %795 = getelementptr inbounds i8, ptr %771, i64 %791
  store ptr %773, ptr %795, align 8, !tbaa !35
  %796 = icmp eq ptr %773, null
  br i1 %796, label %803, label %797

797:                                              ; preds = %794
  %798 = load i64, ptr %773, align 8
  %799 = and i64 %798, 65535
  %800 = icmp eq i64 %799, 141
  br i1 %800, label %801, label %803

801:                                              ; preds = %797
  %802 = getelementptr inbounds %struct.tree_ssa_name, ptr %773, i64 0, i32 2
  store ptr %771, ptr %802, align 8, !tbaa !46
  br label %803

803:                                              ; preds = %801, %797, %794
  %804 = load ptr, ptr %764, align 8, !tbaa !46
  %805 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %804, ptr noundef %720, ptr noundef %773) #18
  %806 = call ptr @gimple_build_assign_stat(ptr noundef %766, ptr noundef %805) #18
  %807 = load ptr, ptr @cfun, align 8, !tbaa !35
  %808 = call ptr @make_ssa_name_fn(ptr noundef %807, ptr noundef %766, ptr noundef %806) #18
  %809 = load i32, ptr %806, align 8
  %810 = and i32 %809, 255
  %811 = add nsw i32 %810, -10
  %812 = icmp ult i32 %811, -9
  br i1 %812, label %817, label %813

813:                                              ; preds = %803
  %814 = getelementptr inbounds %struct.gimple_statement_base, ptr %806, i64 0, i32 3
  %815 = load i32, ptr %814, align 4, !tbaa !46
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %818

817:                                              ; preds = %813, %803
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %818

818:                                              ; preds = %817, %813
  %819 = load i32, ptr %806, align 8
  %820 = and i32 %819, 255
  %821 = zext nneg i32 %820 to i64
  %822 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %821
  %823 = load i32, ptr %822, align 4, !tbaa !50
  %824 = zext i32 %823 to i64
  %825 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %824
  %826 = load i64, ptr %825, align 8, !tbaa !55
  %827 = icmp eq i64 %826, 0
  br i1 %827, label %828, label %829

828:                                              ; preds = %818
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %829

829:                                              ; preds = %828, %818
  %830 = getelementptr inbounds i8, ptr %806, i64 %826
  store ptr %808, ptr %830, align 8, !tbaa !35
  %831 = icmp eq ptr %808, null
  br i1 %831, label %838, label %832

832:                                              ; preds = %829
  %833 = load i64, ptr %808, align 8
  %834 = and i64 %833, 65535
  %835 = icmp eq i64 %834, 141
  br i1 %835, label %836, label %838

836:                                              ; preds = %832
  %837 = getelementptr inbounds %struct.tree_ssa_name, ptr %808, i64 0, i32 2
  store ptr %806, ptr %837, align 8, !tbaa !46
  br label %838

838:                                              ; preds = %836, %832, %829
  %839 = load ptr, ptr %5, align 8, !tbaa !35
  %840 = load ptr, ptr %839, align 8, !tbaa !204
  %841 = icmp eq ptr %840, null
  br i1 %841, label %847, label %842

842:                                              ; preds = %838
  %843 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %839, i64 0, i32 1
  %844 = load ptr, ptr %843, align 8, !tbaa !202
  %845 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %840, i64 0, i32 1
  store ptr %844, ptr %845, align 8, !tbaa !202
  %846 = load ptr, ptr %843, align 8, !tbaa !202
  store ptr %840, ptr %846, align 8, !tbaa !204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %839, i8 0, i64 16, i1 false)
  br label %847

847:                                              ; preds = %842, %838
  %848 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %839, i64 0, i32 3
  %849 = load ptr, ptr %848, align 8, !tbaa !205
  store ptr %808, ptr %849, align 8, !tbaa !35
  br i1 %831, label %854, label %850

850:                                              ; preds = %847
  %851 = load i64, ptr %808, align 8
  %852 = and i64 %851, 65535
  %853 = icmp eq i64 %852, 141
  br i1 %853, label %855, label %854

854:                                              ; preds = %850, %847
  store ptr null, ptr %839, align 8, !tbaa !204
  br label %861

855:                                              ; preds = %850
  %856 = getelementptr inbounds %struct.tree_ssa_name, ptr %808, i64 0, i32 5
  store ptr %856, ptr %839, align 8, !tbaa !204
  %857 = getelementptr inbounds %struct.tree_ssa_name, ptr %808, i64 0, i32 5, i32 1
  %858 = load ptr, ptr %857, align 8, !tbaa !202
  %859 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %839, i64 0, i32 1
  store ptr %858, ptr %859, align 8, !tbaa !202
  %860 = load ptr, ptr %857, align 8, !tbaa !202
  store ptr %839, ptr %860, align 8, !tbaa !204
  store ptr %839, ptr %857, align 8, !tbaa !202
  br label %861

861:                                              ; preds = %855, %854
  %862 = load ptr, ptr %4, align 8, !tbaa !35
  %863 = getelementptr inbounds %struct.tree_common, ptr %808, i64 0, i32 2
  %864 = load ptr, ptr %863, align 8, !tbaa !46
  %865 = call ptr @build_int_cst_type(ptr noundef %864, i64 noundef 0) #18
  %866 = load i32, ptr %862, align 8
  %867 = and i32 %866, 255
  %868 = add nsw i32 %867, -10
  %869 = icmp ult i32 %868, -9
  br i1 %869, label %874, label %870

870:                                              ; preds = %861
  %871 = getelementptr inbounds %struct.gimple_statement_base, ptr %862, i64 0, i32 3
  %872 = load i32, ptr %871, align 4, !tbaa !46
  %873 = icmp ugt i32 %872, 1
  br i1 %873, label %875, label %874

874:                                              ; preds = %870, %861
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %875

875:                                              ; preds = %874, %870
  %876 = load i32, ptr %862, align 8
  %877 = and i32 %876, 255
  %878 = zext nneg i32 %877 to i64
  %879 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %878
  %880 = load i32, ptr %879, align 4, !tbaa !50
  %881 = zext i32 %880 to i64
  %882 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %881
  %883 = load i64, ptr %882, align 8, !tbaa !55
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %875
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %886

886:                                              ; preds = %885, %875
  %887 = getelementptr inbounds i8, ptr %862, i64 %883
  %888 = getelementptr inbounds ptr, ptr %887, i64 1
  store ptr %865, ptr %888, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !195
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef nonnull %771, i32 noundef 0) #18
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef nonnull %806, i32 noundef 1) #18
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br label %889

889:                                              ; preds = %641, %437, %464, %467, %481, %485, %508, %525, %612, %638, %680, %698, %749, %759, %886
  %890 = phi ptr [ %771, %886 ], [ %420, %467 ], [ %420, %464 ], [ %420, %437 ], [ %420, %508 ], [ %420, %481 ], [ %420, %525 ], [ %420, %638 ], [ %420, %612 ], [ %420, %698 ], [ %420, %680 ], [ %420, %759 ], [ %420, %749 ], [ %420, %485 ], [ %420, %641 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %891

891:                                              ; preds = %350, %384, %387, %390, %415, %889, %114, %90
  %892 = phi ptr [ %70, %114 ], [ %70, %90 ], [ %890, %889 ], [ %351, %415 ], [ %351, %390 ], [ %351, %387 ], [ %351, %384 ], [ %351, %350 ]
  %893 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %894 = call ptr @pointer_map_insert(ptr noundef %893, ptr noundef %892) #18
  %895 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  store ptr %895, ptr %894, align 8, !tbaa !35
  %896 = getelementptr inbounds %struct.lim_aux_data, ptr %895, i64 0, i32 2
  store ptr %69, ptr %896, align 8, !tbaa !199
  %897 = icmp ne i8 %68, 0
  %898 = icmp eq i32 %71, 1
  %899 = and i1 %897, %898
  br i1 %899, label %1169, label %900

900:                                              ; preds = %891
  %901 = getelementptr inbounds %struct.gimple_statement_base, ptr %892, i64 0, i32 4
  %902 = load ptr, ptr %901, align 8, !tbaa !46
  %903 = getelementptr inbounds %struct.basic_block_def, ptr %902, i64 0, i32 3
  %904 = load ptr, ptr %903, align 8, !tbaa !100
  %905 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %906 = call ptr @pointer_map_contains(ptr noundef %905, ptr noundef %892) #18
  %907 = icmp eq ptr %906, null
  br i1 %907, label %910, label %908

908:                                              ; preds = %900
  %909 = load ptr, ptr %906, align 8, !tbaa !35
  br label %910

910:                                              ; preds = %908, %900
  %911 = phi ptr [ %909, %908 ], [ null, %900 ]
  br i1 %898, label %912, label %915

912:                                              ; preds = %910
  %913 = getelementptr inbounds %struct.basic_block_def, ptr %902, i64 0, i32 2
  %914 = load ptr, ptr %913, align 8, !tbaa !173
  br label %917

915:                                              ; preds = %910
  %916 = call ptr @superloop_at_depth(ptr noundef %904, i32 noundef 1) #18
  br label %917

917:                                              ; preds = %915, %912
  %918 = phi ptr [ %914, %912 ], [ %916, %915 ]
  store ptr %918, ptr %911, align 8, !tbaa !206
  %919 = load i32, ptr %892, align 8
  %920 = and i32 %919, 255
  %921 = add nsw i32 %920, -10
  %922 = icmp ult i32 %921, -9
  br i1 %922, label %926, label %923

923:                                              ; preds = %917
  %924 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %892, i64 0, i32 2
  %925 = load ptr, ptr %924, align 8, !tbaa !46
  br label %926

926:                                              ; preds = %923, %917
  %927 = phi ptr [ %925, %923 ], [ null, %917 ]
  %928 = icmp eq ptr %927, null
  br i1 %928, label %939, label %929

929:                                              ; preds = %926
  %930 = and i32 %919, 254
  %931 = add nsw i32 %930, -10
  %932 = icmp ult i32 %931, -4
  br i1 %932, label %939, label %933

933:                                              ; preds = %929
  %934 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %892, i64 0, i32 2
  %935 = load ptr, ptr %934, align 8, !tbaa !46
  %936 = icmp eq ptr %935, null
  br i1 %936, label %939, label %937

937:                                              ; preds = %933
  %938 = load ptr, ptr %927, align 8, !tbaa !207
  br label %939

939:                                              ; preds = %937, %933, %929, %926
  %940 = phi ptr [ %927, %926 ], [ %927, %929 ], [ %927, %933 ], [ %938, %937 ]
  %941 = icmp eq ptr %940, null
  br i1 %941, label %947, label %942

942:                                              ; preds = %939
  %943 = getelementptr inbounds %struct.use_optype_d, ptr %940, i64 0, i32 1, i32 3
  %944 = load ptr, ptr %943, align 8, !tbaa !205
  %945 = load ptr, ptr %944, align 8, !tbaa !35
  %946 = load ptr, ptr %940, align 8, !tbaa !207
  br label %947

947:                                              ; preds = %942, %939
  %948 = phi ptr [ %946, %942 ], [ %940, %939 ]
  %949 = phi i8 [ 0, %942 ], [ 1, %939 ]
  %950 = phi ptr [ %945, %942 ], [ null, %939 ]
  br i1 %941, label %969, label %951

951:                                              ; preds = %947, %964
  %952 = phi ptr [ %967, %964 ], [ %950, %947 ]
  %953 = phi i8 [ %966, %964 ], [ %949, %947 ]
  %954 = phi ptr [ %965, %964 ], [ %948, %947 ]
  %955 = call fastcc zeroext i8 @add_dependency(ptr noundef %952, ptr noundef nonnull %911, ptr noundef %904, i8 noundef zeroext 1), !range !209
  %956 = icmp eq i8 %955, 0
  br i1 %956, label %1135, label %957

957:                                              ; preds = %951
  %958 = icmp eq ptr %954, null
  br i1 %958, label %964, label %959

959:                                              ; preds = %957
  %960 = getelementptr inbounds %struct.use_optype_d, ptr %954, i64 0, i32 1, i32 3
  %961 = load ptr, ptr %960, align 8, !tbaa !205
  %962 = load ptr, ptr %961, align 8, !tbaa !35
  %963 = load ptr, ptr %954, align 8, !tbaa !207
  br label %964

964:                                              ; preds = %957, %959
  %965 = phi ptr [ %963, %959 ], [ %954, %957 ]
  %966 = phi i8 [ %953, %959 ], [ 1, %957 ]
  %967 = phi ptr [ %962, %959 ], [ null, %957 ]
  %968 = icmp eq i8 %966, 0
  br i1 %968, label %951, label %969, !llvm.loop !210

969:                                              ; preds = %964, %947
  %970 = load i32, ptr %892, align 8
  %971 = and i32 %970, 254
  %972 = add nsw i32 %971, -10
  %973 = icmp ult i32 %972, -4
  br i1 %973, label %977, label %974

974:                                              ; preds = %969
  %975 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %892, i64 0, i32 2
  %976 = load ptr, ptr %975, align 8, !tbaa !46
  br label %977

977:                                              ; preds = %974, %969
  %978 = phi ptr [ %976, %974 ], [ null, %969 ]
  %979 = icmp eq ptr %978, null
  br i1 %979, label %1048, label %980

980:                                              ; preds = %977
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  %981 = call fastcc ptr @simple_mem_ref_in_stmt(ptr noundef nonnull %892, ptr noundef nonnull %3)
  %982 = icmp eq ptr %981, null
  br i1 %982, label %995, label %983

983:                                              ; preds = %980
  %984 = load i8, ptr %3, align 1, !tbaa !46
  %985 = icmp eq i8 %984, 0
  br i1 %985, label %987, label %986

986:                                              ; preds = %983
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %987

987:                                              ; preds = %986, %983
  %988 = load ptr, ptr %981, align 8, !tbaa !35
  %989 = call i32 @iterative_hash_expr(ptr noundef %988, i32 noundef 0) #18
  %990 = load ptr, ptr @memory_accesses, align 8, !tbaa !84
  %991 = load ptr, ptr %981, align 8, !tbaa !35
  %992 = call ptr @htab_find_with_hash(ptr noundef %990, ptr noundef %991, i32 noundef %989) #18
  %993 = icmp eq ptr %992, null
  br i1 %993, label %994, label %995

994:                                              ; preds = %987
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.1) #18
  br label %995

995:                                              ; preds = %994, %987, %980
  %996 = phi ptr [ null, %980 ], [ %992, %987 ], [ %992, %994 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %997 = icmp eq ptr %996, null
  br i1 %997, label %1034, label %998

998:                                              ; preds = %995
  %999 = load ptr, ptr %911, align 8, !tbaa !206
  %1000 = getelementptr inbounds %struct.mem_ref, ptr %996, i64 0, i32 3
  %1001 = load ptr, ptr %1000, align 8, !tbaa !110
  %1002 = load i32, ptr %904, align 8, !tbaa !118
  %1003 = call i32 @bitmap_bit_p(ptr noundef %1001, i32 noundef %1002) #18
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1031

1005:                                             ; preds = %998
  %1006 = icmp eq ptr %999, %904
  br i1 %1006, label %1027, label %1007

1007:                                             ; preds = %1005, %1022
  %1008 = phi ptr [ %1025, %1022 ], [ %999, %1005 ]
  %1009 = load ptr, ptr %1000, align 8, !tbaa !110
  %1010 = load i32, ptr %1008, align 8, !tbaa !118
  %1011 = call i32 @bitmap_bit_p(ptr noundef %1009, i32 noundef %1010) #18
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1007
  %1014 = call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %1008, ptr noundef nonnull %996), !range !209
  %1015 = icmp eq i8 %1014, 0
  br i1 %1015, label %1016, label %1031

1016:                                             ; preds = %1013, %1007
  %1017 = getelementptr inbounds %struct.loop, ptr %1008, i64 0, i32 7
  %1018 = load ptr, ptr %1017, align 8, !tbaa !122
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1022, label %1020

1020:                                             ; preds = %1016
  %1021 = load i32, ptr %1018, align 8, !tbaa !88
  br label %1022

1022:                                             ; preds = %1020, %1016
  %1023 = phi i32 [ %1021, %1020 ], [ 0, %1016 ]
  %1024 = add i32 %1023, 1
  %1025 = call ptr @superloop_at_depth(ptr noundef nonnull %904, i32 noundef %1024) #18
  %1026 = icmp eq ptr %1025, %904
  br i1 %1026, label %1027, label %1007, !llvm.loop !211

1027:                                             ; preds = %1022, %1005
  %1028 = call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %904, ptr noundef nonnull %996), !range !209
  %1029 = icmp eq i8 %1028, 0
  %1030 = select i1 %1029, ptr null, ptr %904
  br label %1031

1031:                                             ; preds = %1013, %1027, %998
  %1032 = phi ptr [ null, %998 ], [ %1030, %1027 ], [ %1008, %1013 ]
  store ptr %1032, ptr %911, align 8, !tbaa !206
  %1033 = icmp eq ptr %1032, null
  br i1 %1033, label %1135, label %1048

1034:                                             ; preds = %995
  %1035 = load i32, ptr %892, align 8
  %1036 = and i32 %1035, 254
  %1037 = add nsw i32 %1036, -10
  %1038 = icmp ult i32 %1037, -4
  br i1 %1038, label %1042, label %1039

1039:                                             ; preds = %1034
  %1040 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %892, i64 0, i32 2
  %1041 = load ptr, ptr %1040, align 8, !tbaa !46
  br label %1042

1042:                                             ; preds = %1039, %1034
  %1043 = phi ptr [ %1041, %1039 ], [ null, %1034 ]
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1048, label %1045

1045:                                             ; preds = %1042
  %1046 = call fastcc zeroext i8 @add_dependency(ptr noundef nonnull %1043, ptr noundef nonnull %911, ptr noundef %904, i8 noundef zeroext 0), !range !209
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1135, label %1048

1048:                                             ; preds = %1045, %1042, %1031, %977
  %1049 = load i32, ptr %892, align 8
  %1050 = and i32 %1049, 255
  %1051 = icmp eq i32 %1050, 1
  br i1 %1051, label %1052, label %1056

1052:                                             ; preds = %1048
  %1053 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1054 = getelementptr inbounds %struct.param_info, ptr %1053, i64 59, i32 1
  %1055 = load i32, ptr %1054, align 8, !tbaa !212
  br label %1128

1056:                                             ; preds = %1048
  %1057 = and i32 %1049, 254
  %1058 = add nsw i32 %1057, -10
  %1059 = icmp ult i32 %1058, -4
  br i1 %1059, label %1065, label %1060

1060:                                             ; preds = %1056
  %1061 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %892, i64 0, i32 2
  %1062 = load ptr, ptr %1061, align 8, !tbaa !46
  %1063 = icmp eq ptr %1062, null
  %1064 = select i1 %1063, i32 1, i32 21
  br label %1065

1065:                                             ; preds = %1060, %1056
  %1066 = phi i32 [ 1, %1056 ], [ %1064, %1060 ]
  %1067 = trunc i32 %1049 to i8
  switch i8 %1067, label %1128 [
    i8 8, label %1068
    i8 6, label %1097
  ]

1068:                                             ; preds = %1065
  %1069 = zext nneg i32 %1050 to i64
  %1070 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1069
  %1071 = load i32, ptr %1070, align 4, !tbaa !50
  %1072 = zext i32 %1071 to i64
  %1073 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1072
  %1074 = load i64, ptr %1073, align 8, !tbaa !55
  %1075 = icmp eq i64 %1074, 0
  br i1 %1075, label %1076, label %1077

1076:                                             ; preds = %1068
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %1077

1077:                                             ; preds = %1076, %1068
  %1078 = getelementptr inbounds i8, ptr %892, i64 %1074
  %1079 = getelementptr inbounds ptr, ptr %1078, i64 1
  %1080 = load ptr, ptr %1079, align 8, !tbaa !35
  %1081 = load i64, ptr %1080, align 8
  %1082 = and i64 %1081, 65535
  %1083 = icmp eq i64 %1082, 121
  br i1 %1083, label %1084, label %1087

1084:                                             ; preds = %1077
  %1085 = getelementptr inbounds %struct.tree_exp, ptr %1080, i64 0, i32 3
  %1086 = load ptr, ptr %1085, align 8, !tbaa !46
  br label %1087

1087:                                             ; preds = %1084, %1077
  %1088 = phi ptr [ %1086, %1084 ], [ null, %1077 ]
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1095, label %1090

1090:                                             ; preds = %1087
  %1091 = getelementptr inbounds %struct.tree_function_decl, ptr %1088, i64 0, i32 5
  %1092 = load i32, ptr %1091, align 8
  %1093 = and i32 %1092, 8191
  %1094 = icmp eq i32 %1093, 6572
  br i1 %1094, label %1128, label %1095

1095:                                             ; preds = %1090, %1087
  %1096 = add nuw nsw i32 %1066, 20
  br label %1128

1097:                                             ; preds = %1065
  %1098 = lshr i32 %1049, 16
  %1099 = zext nneg i32 %1098 to i64
  %1100 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1099
  %1101 = load i8, ptr %1100, align 1, !tbaa !46
  %1102 = icmp eq i8 %1101, 3
  br i1 %1102, label %1103, label %1121

1103:                                             ; preds = %1097
  %1104 = add nsw i32 %1050, -1
  %1105 = icmp ult i32 %1104, 9
  call void @llvm.assume(i1 %1105)
  %1106 = zext nneg i32 %1050 to i64
  %1107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !50
  %1109 = zext i32 %1108 to i64
  %1110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1109
  %1111 = load i64, ptr %1110, align 8, !tbaa !55
  %1112 = icmp eq i64 %1111, 0
  br i1 %1112, label %1113, label %1114

1113:                                             ; preds = %1103
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %1114

1114:                                             ; preds = %1113, %1103
  %1115 = getelementptr inbounds i8, ptr %892, i64 %1111
  %1116 = getelementptr inbounds ptr, ptr %1115, i64 1
  %1117 = load ptr, ptr %1116, align 8, !tbaa !35
  %1118 = load i64, ptr %1117, align 8
  %1119 = trunc i64 %1118 to i32
  %1120 = and i32 %1119, 65535
  br label %1121

1121:                                             ; preds = %1114, %1097
  %1122 = phi i32 [ %1120, %1114 ], [ %1098, %1097 ]
  %1123 = trunc i32 %1122 to i16
  switch i16 %1123, label %1128 [
    i16 65, label %1124
    i16 67, label %1124
    i16 68, label %1124
    i16 69, label %1124
    i16 70, label %1124
    i16 76, label %1124
    i16 72, label %1124
    i16 73, label %1124
    i16 74, label %1124
    i16 71, label %1124
    i16 75, label %1124
    i16 83, label %1126
    i16 84, label %1126
  ]

1124:                                             ; preds = %1121, %1121, %1121, %1121, %1121, %1121, %1121, %1121, %1121, %1121, %1121
  %1125 = add nuw nsw i32 %1066, 20
  br label %1128

1126:                                             ; preds = %1121, %1121
  %1127 = add nuw nsw i32 %1066, 20
  br label %1128

1128:                                             ; preds = %1126, %1124, %1121, %1095, %1090, %1065, %1052
  %1129 = phi i32 [ %1055, %1052 ], [ %1096, %1095 ], [ 0, %1090 ], [ %1066, %1121 ], [ %1127, %1126 ], [ %1125, %1124 ], [ %1066, %1065 ]
  %1130 = getelementptr inbounds %struct.lim_aux_data, ptr %911, i64 0, i32 3
  %1131 = load i32, ptr %1130, align 8, !tbaa !214
  %1132 = add i32 %1131, %1129
  store i32 %1132, ptr %1130, align 8, !tbaa !214
  %1133 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1153, label %1136

1135:                                             ; preds = %951, %1031, %1045
  store ptr null, ptr %895, align 8, !tbaa !206
  br label %1169

1136:                                             ; preds = %1128
  %1137 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1138 = and i32 %1137, 8
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1153, label %1140

1140:                                             ; preds = %1136
  call void @print_gimple_stmt(ptr noundef nonnull %1133, ptr noundef nonnull %892, i32 noundef 2, i32 noundef 0) #18
  %1141 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1142 = load ptr, ptr %895, align 8, !tbaa !206
  %1143 = getelementptr inbounds %struct.loop, ptr %1142, i64 0, i32 7
  %1144 = load ptr, ptr %1143, align 8, !tbaa !122
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1148, label %1146

1146:                                             ; preds = %1140
  %1147 = load i32, ptr %1144, align 8, !tbaa !88
  br label %1148

1148:                                             ; preds = %1140, %1146
  %1149 = phi i32 [ %1147, %1146 ], [ 0, %1140 ]
  %1150 = getelementptr inbounds %struct.lim_aux_data, ptr %895, i64 0, i32 3
  %1151 = load i32, ptr %1150, align 8, !tbaa !214
  %1152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1141, ptr noundef nonnull @.str.16, i32 noundef %1149, i32 noundef %1151)
  br label %1153

1153:                                             ; preds = %1148, %1136, %1128
  %1154 = getelementptr inbounds %struct.lim_aux_data, ptr %895, i64 0, i32 3
  %1155 = load i32, ptr %1154, align 8, !tbaa !214
  %1156 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1157 = getelementptr inbounds %struct.param_info, ptr %1156, i64 59, i32 1
  %1158 = load i32, ptr %1157, align 8, !tbaa !212
  %1159 = icmp ult i32 %1155, %1158
  br i1 %1159, label %1169, label %1160

1160:                                             ; preds = %1153
  %1161 = load ptr, ptr %901, align 8, !tbaa !46
  %1162 = getelementptr inbounds %struct.basic_block_def, ptr %1161, i64 0, i32 3
  %1163 = load ptr, ptr %1162, align 8, !tbaa !100
  %1164 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %1165 = call ptr @pointer_map_contains(ptr noundef %1164, ptr noundef nonnull %892) #18
  %1166 = icmp ne ptr %1165, null
  call void @llvm.assume(i1 %1166)
  %1167 = load ptr, ptr %1165, align 8, !tbaa !35
  %1168 = load ptr, ptr %1167, align 8, !tbaa !206
  call fastcc void @set_level(ptr noundef nonnull %892, ptr noundef %1163, ptr noundef %1168)
  br label %1169

1169:                                             ; preds = %79, %1153, %1160, %891, %85, %82, %1135
  %1170 = phi ptr [ %69, %85 ], [ %69, %82 ], [ %69, %891 ], [ %69, %1160 ], [ %69, %1153 ], [ %69, %1135 ], [ null, %79 ]
  %1171 = phi i8 [ %68, %85 ], [ %68, %82 ], [ %68, %891 ], [ %68, %1160 ], [ %68, %1153 ], [ %68, %1135 ], [ 1, %79 ]
  %1172 = load ptr, ptr %8, align 8, !tbaa !215
  %1173 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1172, i64 0, i32 2
  %1174 = load ptr, ptr %1173, align 8, !tbaa !74
  store ptr %1174, ptr %8, align 8, !tbaa !215
  %1175 = icmp eq ptr %1174, null
  br i1 %1175, label %1176, label %66, !llvm.loop !217

1176:                                             ; preds = %1169, %20, %61, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret void
}

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_makes_single_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @outermost_invariant_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 431, ptr noundef nonnull @.str.1) #18
  br label %60

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %20) #18
  %22 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %23 = tail call ptr @pointer_map_contains(ptr noundef %22, ptr noundef %14) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %18, %25
  %28 = phi ptr [ %26, %25 ], [ null, %18 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !206
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !88
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ 0, %33 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = add i32 %40, -1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %35, i64 0, i32 2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  br label %47

47:                                               ; preds = %39, %42
  %48 = phi ptr [ %46, %42 ], [ null, %39 ]
  %49 = tail call ptr @find_common_loop(ptr noundef %21, ptr noundef %48) #18
  br label %50

50:                                               ; preds = %47, %30, %27
  %51 = phi ptr [ %49, %47 ], [ %21, %30 ], [ %21, %27 ]
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !122
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8, !tbaa !88
  %59 = add i32 %58, 1
  br label %60

60:                                               ; preds = %57, %53, %12, %11, %8, %2
  %61 = phi i32 [ 1, %2 ], [ 1, %8 ], [ 1, %11 ], [ 1, %12 ], [ %59, %57 ], [ 1, %53 ]
  %62 = tail call ptr @superloop_at_depth(ptr noundef %1, i32 noundef %61) #18
  br label %63

63:                                               ; preds = %60, %50
  %64 = phi ptr [ null, %50 ], [ %62, %60 ]
  ret ptr %64
}

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @add_dependency(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %0, ptr noundef %2)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !206
  %15 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %14, ptr noundef nonnull %11) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store ptr %11, ptr %1, align 8, !tbaa !206
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %20 = tail call ptr @pointer_map_contains(ptr noundef %19, ptr noundef %6) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %23, %22 ], [ null, %18 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = icmp eq i8 %3, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.lim_aux_data, ptr %25, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !214
  %36 = getelementptr inbounds %struct.lim_aux_data, ptr %1, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !214
  %38 = add i32 %37, %35
  store i32 %38, ptr %36, align 8, !tbaa !214
  br label %39

39:                                               ; preds = %33, %29, %27
  %40 = tail call ptr @xmalloc(i64 noundef 16) #18
  store ptr %6, ptr %40, align 8, !tbaa !218
  %41 = getelementptr inbounds %struct.lim_aux_data, ptr %1, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !220
  %43 = getelementptr inbounds %struct.depend, ptr %40, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !221
  store ptr %40, ptr %41, align 8, !tbaa !220
  br label %44

44:                                               ; preds = %24, %10, %4, %39
  %45 = phi i8 [ 1, %39 ], [ 1, %4 ], [ 0, %10 ], [ 1, %24 ]
  ret i8 %45
}

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @ref_indep_loop_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.double_int, align 8
  %4 = alloca %struct.double_int, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.affine_tree_combination, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = load i32, ptr %0, align 8, !tbaa !118
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %395

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = load i32, ptr %0, align 8, !tbaa !118
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %16, i32 noundef %17) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %395

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = load i32, ptr %0, align 8, !tbaa !118
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %23) #18
  %25 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 4), align 8
  %26 = load i32, ptr %0, align 8, !tbaa !118
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %25, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  %32 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %31, ptr noundef %29) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %374

34:                                               ; preds = %20
  %35 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %36 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 5), align 8
  %37 = load i32, ptr %0, align 8, !tbaa !118
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.VEC_htab_t_base, ptr %36, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = load ptr, ptr %30, align 8, !tbaa !116
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr @bitmap_zero_bits, ptr %42
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  br label %46

46:                                               ; preds = %50, %34
  %47 = phi ptr [ %29, %34 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !151
  %53 = load i32, ptr %45, align 8, !tbaa !151
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %46, label %55, !llvm.loop !157

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !151
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !55
  br i1 %49, label %69, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !151
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3, i64 0
  %66 = load i64, ptr %65, align 8, !tbaa !55
  %67 = xor i64 %66, -1
  %68 = and i64 %59, %67
  br label %69

69:                                               ; preds = %64, %60, %55
  %70 = phi i64 [ %59, %55 ], [ %68, %64 ], [ %59, %60 ]
  %71 = shl i32 %57, 7
  %72 = icmp eq i64 %70, 0
  %73 = zext i1 %72 to i32
  %74 = or disjoint i32 %71, %73
  %75 = and i32 %24, 255
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %179, %69
  %78 = phi i64 [ %70, %69 ], [ %182, %179 ]
  %79 = phi i32 [ %74, %69 ], [ %183, %179 ]
  %80 = phi i32 [ 0, %69 ], [ %166, %179 ]
  %81 = phi ptr [ %48, %69 ], [ %167, %179 ]
  %82 = phi ptr [ %44, %69 ], [ %168, %179 ]
  %83 = icmp eq i64 %78, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %132, %77
  %85 = phi i64 [ %78, %77 ], [ %133, %132 ]
  %86 = phi i32 [ %79, %77 ], [ %119, %132 ]
  %87 = phi i32 [ %80, %77 ], [ %118, %132 ]
  %88 = phi ptr [ %81, %77 ], [ %106, %132 ]
  %89 = phi ptr [ %82, %77 ], [ %107, %132 ]
  %90 = and i64 %85, 1
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %163

92:                                               ; preds = %84, %92
  %93 = phi i32 [ %96, %92 ], [ %86, %84 ]
  %94 = phi i64 [ %95, %92 ], [ %85, %84 ]
  %95 = lshr exact i64 %94, 1
  %96 = add i32 %93, 1
  %97 = and i64 %94, 2
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %92, label %163, !llvm.loop !158

99:                                               ; preds = %77
  %100 = add i32 %79, 63
  %101 = and i32 %100, -64
  %102 = add i32 %80, 1
  br label %103

103:                                              ; preds = %158, %99
  %104 = phi i64 [ %78, %99 ], [ %140, %158 ]
  %105 = phi i32 [ %101, %99 ], [ %162, %158 ]
  %106 = phi ptr [ %81, %99 ], [ %159, %158 ]
  %107 = phi ptr [ %82, %99 ], [ %143, %158 ]
  %108 = phi i32 [ %102, %99 ], [ 0, %158 ]
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %139, label %110

110:                                              ; preds = %103
  %111 = icmp eq ptr %106, null
  %112 = getelementptr inbounds %struct.bitmap_element_def, ptr %106, i64 0, i32 2
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %107, i64 0, i32 2
  %114 = add i32 %105, 128
  %115 = shl i32 %108, 6
  %116 = sub i32 %114, %115
  br label %117

117:                                              ; preds = %110, %135
  %118 = phi i32 [ %108, %110 ], [ %137, %135 ]
  %119 = phi i32 [ %105, %110 ], [ %136, %135 ]
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds %struct.bitmap_element_def, ptr %107, i64 0, i32 3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !55
  br i1 %111, label %132, label %123

123:                                              ; preds = %117
  %124 = load i32, ptr %112, align 8, !tbaa !151
  %125 = load i32, ptr %113, align 8, !tbaa !151
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bitmap_element_def, ptr %106, i64 0, i32 3, i64 %120
  %129 = load i64, ptr %128, align 8, !tbaa !55
  %130 = xor i64 %129, -1
  %131 = and i64 %122, %130
  br label %132

132:                                              ; preds = %127, %123, %117
  %133 = phi i64 [ %122, %117 ], [ %131, %127 ], [ %122, %123 ]
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %84

135:                                              ; preds = %132
  %136 = add i32 %119, 64
  %137 = add i32 %118, 1
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %117, !llvm.loop !159

139:                                              ; preds = %135, %103
  %140 = phi i64 [ %104, %103 ], [ %133, %135 ]
  %141 = phi i32 [ %105, %103 ], [ %116, %135 ]
  %142 = phi i32 [ %108, %103 ], [ 2, %135 ]
  %143 = load ptr, ptr %107, align 8, !tbaa !155
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %139
  %146 = icmp eq ptr %106, null
  br i1 %146, label %158, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.bitmap_element_def, ptr %143, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !151
  br label %150

150:                                              ; preds = %147, %155
  %151 = phi ptr [ %106, %147 ], [ %156, %155 ]
  %152 = getelementptr inbounds %struct.bitmap_element_def, ptr %151, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !151
  %154 = icmp ult i32 %153, %149
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load ptr, ptr %151, align 8, !tbaa !155
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %150, !llvm.loop !160

158:                                              ; preds = %155, %150, %145
  %159 = phi ptr [ %106, %145 ], [ %156, %155 ], [ %151, %150 ]
  %160 = getelementptr inbounds %struct.bitmap_element_def, ptr %143, i64 0, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !151
  %162 = shl i32 %161, 7
  br label %103, !llvm.loop !161

163:                                              ; preds = %139, %92, %84
  %164 = phi i64 [ %85, %84 ], [ %95, %92 ], [ %140, %139 ]
  %165 = phi i32 [ %86, %84 ], [ %96, %92 ], [ %141, %139 ]
  %166 = phi i32 [ %87, %84 ], [ %87, %92 ], [ %142, %139 ]
  %167 = phi ptr [ %88, %84 ], [ %88, %92 ], [ %106, %139 ]
  %168 = phi ptr [ %89, %84 ], [ %89, %92 ], [ %143, %139 ]
  %169 = phi i1 [ false, %84 ], [ false, %92 ], [ true, %139 ]
  br i1 %169, label %184, label %170

170:                                              ; preds = %163
  br i1 %76, label %175, label %171

171:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 %165, ptr %8, align 4, !tbaa !50
  %172 = call ptr @htab_find_with_hash(ptr noundef %40, ptr noundef nonnull %8, i32 noundef %165) #18
  %173 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br label %179

175:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %165, ptr %7, align 4, !tbaa !50
  %176 = call ptr @htab_find_with_hash(ptr noundef %40, ptr noundef nonnull %7, i32 noundef %165) #18
  %177 = getelementptr inbounds %struct.vop_to_refs_elt, ptr %176, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi ptr [ %174, %171 ], [ %178, %175 ]
  %181 = call zeroext i8 @bitmap_ior_into(ptr noundef %35, ptr noundef %180) #18
  %182 = lshr i64 %164, 1
  %183 = add i32 %165, 1
  br label %77, !llvm.loop !222

184:                                              ; preds = %163
  %185 = load ptr, ptr %35, align 8, !tbaa !149
  %186 = icmp eq ptr %185, null
  %187 = select i1 %186, ptr @bitmap_zero_bits, ptr %185
  %188 = getelementptr inbounds %struct.bitmap_element_def, ptr %187, i64 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !151
  %190 = shl i32 %189, 7
  %191 = getelementptr inbounds %struct.bitmap_element_def, ptr %187, i64 0, i32 3
  %192 = load i64, ptr %191, align 8, !tbaa !55
  %193 = icmp eq i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = or disjoint i32 %190, %194
  %196 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 8
  %197 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 9
  %198 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %199 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %200 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %201 = getelementptr inbounds %struct.affine_tree_combination, ptr %6, i64 0, i32 2
  %202 = getelementptr inbounds %struct.affine_tree_combination, ptr %6, i64 0, i32 1
  %203 = getelementptr inbounds %struct.affine_tree_combination, ptr %6, i64 0, i32 1, i32 1
  %204 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  br label %205

205:                                              ; preds = %369, %184
  %206 = phi i64 [ %192, %184 ], [ %370, %369 ]
  %207 = phi i32 [ %195, %184 ], [ %371, %369 ]
  %208 = phi i32 [ 0, %184 ], [ %263, %369 ]
  %209 = phi ptr [ %187, %184 ], [ %264, %369 ]
  %210 = icmp eq i64 %206, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %239, %205
  %212 = phi i64 [ %206, %205 ], [ %244, %239 ]
  %213 = phi i32 [ %207, %205 ], [ %241, %239 ]
  %214 = phi i32 [ %208, %205 ], [ %240, %239 ]
  %215 = phi ptr [ %209, %205 ], [ %232, %239 ]
  %216 = and i64 %212, 1
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %260

218:                                              ; preds = %211, %218
  %219 = phi i32 [ %222, %218 ], [ %213, %211 ]
  %220 = phi i64 [ %221, %218 ], [ %212, %211 ]
  %221 = lshr exact i64 %220, 1
  %222 = add i32 %219, 1
  %223 = and i64 %220, 2
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %218, label %260, !llvm.loop !153

225:                                              ; preds = %205
  %226 = add i32 %207, 63
  %227 = and i32 %226, -64
  %228 = add i32 %208, 1
  br label %229

229:                                              ; preds = %256, %225
  %230 = phi i64 [ %206, %225 ], [ %251, %256 ]
  %231 = phi i32 [ %227, %225 ], [ %259, %256 ]
  %232 = phi ptr [ %209, %225 ], [ %254, %256 ]
  %233 = phi i32 [ %228, %225 ], [ 0, %256 ]
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %250, label %235

235:                                              ; preds = %229
  %236 = add i32 %231, 128
  %237 = shl i32 %233, 6
  %238 = sub i32 %236, %237
  br label %239

239:                                              ; preds = %235, %246
  %240 = phi i32 [ %248, %246 ], [ %233, %235 ]
  %241 = phi i32 [ %247, %246 ], [ %231, %235 ]
  %242 = zext i32 %240 to i64
  %243 = getelementptr inbounds %struct.bitmap_element_def, ptr %232, i64 0, i32 3, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !55
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %211

246:                                              ; preds = %239
  %247 = add i32 %241, 64
  %248 = add i32 %240, 1
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %250, label %239, !llvm.loop !154

250:                                              ; preds = %246, %229
  %251 = phi i64 [ %230, %229 ], [ %244, %246 ]
  %252 = phi i32 [ %231, %229 ], [ %238, %246 ]
  %253 = phi i32 [ %233, %229 ], [ 2, %246 ]
  %254 = load ptr, ptr %232, align 8, !tbaa !155
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.bitmap_element_def, ptr %254, i64 0, i32 2
  %258 = load i32, ptr %257, align 8, !tbaa !151
  %259 = shl i32 %258, 7
  br label %229, !llvm.loop !156

260:                                              ; preds = %250, %218, %211
  %261 = phi i64 [ %212, %211 ], [ %221, %218 ], [ %251, %250 ]
  %262 = phi i32 [ %213, %211 ], [ %222, %218 ], [ %252, %250 ]
  %263 = phi i32 [ %214, %211 ], [ %214, %218 ], [ %253, %250 ]
  %264 = phi ptr [ %215, %211 ], [ %215, %218 ], [ %254, %250 ]
  %265 = phi i1 [ false, %211 ], [ false, %218 ], [ true, %250 ]
  br i1 %265, label %372, label %266

266:                                              ; preds = %260
  %267 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %268 = zext i32 %262 to i64
  %269 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %267, i64 0, i32 2, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = icmp eq ptr %270, %1
  br i1 %271, label %369, label %272

272:                                              ; preds = %266
  %273 = load ptr, ptr %196, align 8, !tbaa !113
  %274 = getelementptr inbounds %struct.mem_ref, ptr %270, i64 0, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !108
  %276 = call i32 @bitmap_bit_p(ptr noundef %273, i32 noundef %275) #18
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %369

278:                                              ; preds = %272
  %279 = load ptr, ptr %197, align 8, !tbaa !114
  %280 = load i32, ptr %274, align 8, !tbaa !108
  %281 = call i32 @bitmap_bit_p(ptr noundef %279, i32 noundef %280) #18
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %364

283:                                              ; preds = %278
  %284 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %285 = icmp eq ptr %284, null
  br i1 %285, label %294, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %288 = and i32 %287, 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %198, align 8, !tbaa !108
  %292 = load i32, ptr %274, align 8, !tbaa !108
  %293 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %284, ptr noundef nonnull @.str.23, i32 noundef %291, i32 noundef %292)
  br label %294

294:                                              ; preds = %290, %286, %283
  %295 = load ptr, ptr %1, align 8, !tbaa !106
  %296 = load ptr, ptr %270, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #18
  %297 = call zeroext i8 @refs_may_alias_p(ptr noundef %295, ptr noundef %296) #18
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %347, label %299

299:                                              ; preds = %294
  %300 = load i32, ptr @optimize, align 4, !tbaa !50
  %301 = icmp slt i32 %300, 2
  br i1 %301, label %328, label %302

302:                                              ; preds = %299
  call void @get_inner_reference_aff(ptr noundef %295, ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  call void @get_inner_reference_aff(ptr noundef %296, ptr noundef nonnull %6, ptr noundef nonnull %4) #18
  call void @aff_combination_expand(ptr noundef nonnull %5, ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6)) #18
  call void @aff_combination_expand(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 6)) #18
  call void @aff_combination_scale(ptr noundef nonnull %5, i64 -1, i64 -1) #18
  call void @aff_combination_add(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %303 = load i64, ptr %3, align 8
  %304 = load i64, ptr %199, align 8
  %305 = load i64, ptr %4, align 8
  %306 = load i64, ptr %200, align 8
  %307 = load i32, ptr %201, align 8, !tbaa !223
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %302
  %310 = load i64, ptr %202, align 8, !tbaa.struct !225
  %311 = load i64, ptr %203, align 8, !tbaa.struct !226
  %312 = call zeroext i8 @double_int_negative_p(i64 %310, i64 %311) #18
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %323, label %314

314:                                              ; preds = %309
  %315 = call { i64, i64 } @double_int_add(i64 %305, i64 %306, i64 -1, i64 -1) #18
  %316 = extractvalue { i64, i64 } %315, 0
  %317 = extractvalue { i64, i64 } %315, 1
  %318 = call { i64, i64 } @double_int_add(i64 %310, i64 %311, i64 %316, i64 %317) #18
  %319 = extractvalue { i64, i64 } %318, 0
  %320 = extractvalue { i64, i64 } %318, 1
  %321 = call zeroext i8 @double_int_negative_p(i64 %319, i64 %320) #18
  %322 = icmp ne i8 %321, 0
  br label %326

323:                                              ; preds = %309
  %324 = call i32 @double_int_scmp(i64 %303, i64 %304, i64 %310, i64 %311) #18
  %325 = icmp slt i32 %324, 1
  br label %326

326:                                              ; preds = %323, %314
  %327 = phi i1 [ %322, %314 ], [ %325, %323 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br i1 %327, label %348, label %329

328:                                              ; preds = %302, %299
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %329

329:                                              ; preds = %326, %328
  %330 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 9
  %331 = load ptr, ptr %330, align 8, !tbaa !114
  %332 = load i32, ptr %274, align 8, !tbaa !108
  %333 = call zeroext i8 @bitmap_set_bit(ptr noundef %331, i32 noundef %332) #18
  %334 = getelementptr inbounds %struct.mem_ref, ptr %270, i64 0, i32 9
  %335 = load ptr, ptr %334, align 8, !tbaa !114
  %336 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %337 = load i32, ptr %336, align 8, !tbaa !108
  %338 = call zeroext i8 @bitmap_set_bit(ptr noundef %335, i32 noundef %337) #18
  %339 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %340 = icmp eq ptr %339, null
  br i1 %340, label %364, label %341

341:                                              ; preds = %329
  %342 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %343 = and i32 %342, 8
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %364, label %345

345:                                              ; preds = %341
  %346 = call i64 @fwrite(ptr nonnull @.str.24, i64 11, i64 1, ptr nonnull %339)
  br label %364

347:                                              ; preds = %294
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %348

348:                                              ; preds = %347, %326
  %349 = load ptr, ptr %196, align 8, !tbaa !113
  %350 = load i32, ptr %274, align 8, !tbaa !108
  %351 = call zeroext i8 @bitmap_set_bit(ptr noundef %349, i32 noundef %350) #18
  %352 = getelementptr inbounds %struct.mem_ref, ptr %270, i64 0, i32 8
  %353 = load ptr, ptr %352, align 8, !tbaa !113
  %354 = load i32, ptr %204, align 8, !tbaa !108
  %355 = call zeroext i8 @bitmap_set_bit(ptr noundef %353, i32 noundef %354) #18
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %357 = icmp eq ptr %356, null
  br i1 %357, label %369, label %358

358:                                              ; preds = %348
  %359 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %360 = and i32 %359, 8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %358
  %363 = call i64 @fwrite(ptr nonnull @.str.25, i64 13, i64 1, ptr nonnull %356)
  br label %369

364:                                              ; preds = %278, %329, %341, %345
  %365 = getelementptr inbounds %struct.mem_ref, ptr %270, i64 0, i32 7
  %366 = load ptr, ptr %365, align 8, !tbaa !112
  %367 = load i32, ptr %0, align 8, !tbaa !118
  %368 = call zeroext i8 @bitmap_set_bit(ptr noundef %366, i32 noundef %367) #18
  br label %372

369:                                              ; preds = %272, %266, %362, %358, %348
  %370 = lshr i64 %261, 1
  %371 = add i32 %262, 1
  br label %205, !llvm.loop !227

372:                                              ; preds = %260, %364
  %373 = phi i8 [ 0, %364 ], [ 1, %260 ]
  call void @bitmap_obstack_free(ptr noundef nonnull %35) #18
  br label %374

374:                                              ; preds = %20, %372
  %375 = phi i8 [ %373, %372 ], [ 0, %20 ]
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %377 = icmp eq ptr %376, null
  br i1 %377, label %389, label %378

378:                                              ; preds = %374
  %379 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %380 = and i32 %379, 8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %389, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %384 = load i32, ptr %383, align 8, !tbaa !108
  %385 = load i32, ptr %0, align 8, !tbaa !118
  %386 = icmp eq i8 %375, 0
  %387 = select i1 %386, ptr @.str.22, ptr @.str.21
  %388 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %376, ptr noundef nonnull @.str.20, i32 noundef %384, i32 noundef %385, ptr noundef nonnull %387)
  br label %389

389:                                              ; preds = %382, %378, %374
  %390 = icmp eq i8 %375, 0
  %391 = load i32, ptr %0, align 8, !tbaa !118
  %392 = select i1 %390, ptr %15, ptr %9
  %393 = load ptr, ptr %392, align 8, !tbaa !35
  %394 = call zeroext i8 @bitmap_set_bit(ptr noundef %393, i32 noundef %391) #18
  br label %395

395:                                              ; preds = %389, %14, %2
  %396 = phi i8 [ 1, %2 ], [ 0, %14 ], [ %375, %389 ]
  ret i8 %396
}

declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @get_inner_reference_aff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @aff_combination_expand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @aff_combination_scale(ptr noundef, i64, i64) local_unnamed_addr #3

declare void @aff_combination_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare i32 @double_int_scmp(i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_level(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = tail call ptr @find_common_loop(ptr noundef %1, ptr noundef %7) #18
  %9 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %0) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %10, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %3, %12
  %15 = phi ptr [ %13, %12 ], [ null, %3 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.lim_aux_data, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !228
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8, !tbaa !88
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = add i32 %28, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %23, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %27, %30
  %36 = phi ptr [ %34, %30 ], [ null, %27 ]
  %37 = tail call ptr @find_common_loop(ptr noundef %8, ptr noundef %36) #18
  br label %38

38:                                               ; preds = %35, %17, %14
  %39 = phi ptr [ %37, %35 ], [ %8, %17 ], [ %8, %14 ]
  %40 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %39, ptr noundef %2) #18
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load ptr, ptr %15, align 8, !tbaa !206
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %43, ptr noundef %2) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 731, ptr noundef nonnull @.str.1) #18
  br label %49

49:                                               ; preds = %42, %45, %48
  %50 = getelementptr inbounds %struct.lim_aux_data, ptr %15, i64 0, i32 1
  store ptr %2, ptr %50, align 8, !tbaa !228
  %51 = getelementptr inbounds %struct.lim_aux_data, ptr %15, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %49, %54
  %55 = phi ptr [ %58, %54 ], [ %52, %49 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !218
  tail call fastcc void @set_level(ptr noundef %56, ptr noundef %1, ptr noundef %2)
  %57 = getelementptr inbounds %struct.depend, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %54, !llvm.loop !229

60:                                               ; preds = %54, %49, %38
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @store_motion_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.fmt_data, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #18
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %8 = icmp eq ptr %6, null
  br label %9

9:                                                ; preds = %21, %2
  %10 = phi i32 [ 0, %2 ], [ %26, %21 ]
  br i1 %8, label %18, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %6, align 8, !tbaa !183
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %14, %11, %9
  %19 = phi ptr [ %17, %14 ], [ null, %11 ], [ null, %9 ]
  %20 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %9 ]
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !230
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %10, 1
  br i1 %25, label %9, label %27, !llvm.loop !231

27:                                               ; preds = %21
  br i1 %20, label %28, label %449

28:                                               ; preds = %18, %27
  %29 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %30 = load i32, ptr %0, align 8, !tbaa !118
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %29, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = load ptr, ptr %33, align 8, !tbaa !149
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr @bitmap_zero_bits, ptr %34
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  br label %38

38:                                               ; preds = %42, %28
  %39 = phi ptr [ %1, %28 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !151
  %45 = load i32, ptr %37, align 8, !tbaa !151
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %38, label %47, !llvm.loop !157

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !151
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %36, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !55
  br i1 %41, label %61, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !151
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 0
  %58 = load i64, ptr %57, align 8, !tbaa !55
  %59 = xor i64 %58, -1
  %60 = and i64 %51, %59
  br label %61

61:                                               ; preds = %56, %52, %47
  %62 = phi i64 [ %51, %47 ], [ %60, %56 ], [ %51, %52 ]
  %63 = shl i32 %49, 7
  %64 = icmp eq i64 %62, 0
  %65 = zext i1 %64 to i32
  %66 = or disjoint i32 %63, %65
  br label %67

67:                                               ; preds = %284, %61
  %68 = phi i64 [ %62, %61 ], [ %285, %284 ]
  %69 = phi i32 [ %66, %61 ], [ %286, %284 ]
  %70 = phi i32 [ 0, %61 ], [ %156, %284 ]
  %71 = phi ptr [ %40, %61 ], [ %157, %284 ]
  %72 = phi ptr [ %36, %61 ], [ %158, %284 ]
  %73 = icmp eq i64 %68, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %122, %67
  %75 = phi i64 [ %68, %67 ], [ %123, %122 ]
  %76 = phi i32 [ %69, %67 ], [ %109, %122 ]
  %77 = phi i32 [ %70, %67 ], [ %108, %122 ]
  %78 = phi ptr [ %71, %67 ], [ %96, %122 ]
  %79 = phi ptr [ %72, %67 ], [ %97, %122 ]
  %80 = and i64 %75, 1
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %153

82:                                               ; preds = %74, %82
  %83 = phi i32 [ %86, %82 ], [ %76, %74 ]
  %84 = phi i64 [ %85, %82 ], [ %75, %74 ]
  %85 = lshr exact i64 %84, 1
  %86 = add i32 %83, 1
  %87 = and i64 %84, 2
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %82, label %153, !llvm.loop !158

89:                                               ; preds = %67
  %90 = add i32 %69, 63
  %91 = and i32 %90, -64
  %92 = add i32 %70, 1
  br label %93

93:                                               ; preds = %148, %89
  %94 = phi i64 [ %68, %89 ], [ %130, %148 ]
  %95 = phi i32 [ %91, %89 ], [ %152, %148 ]
  %96 = phi ptr [ %71, %89 ], [ %149, %148 ]
  %97 = phi ptr [ %72, %89 ], [ %133, %148 ]
  %98 = phi i32 [ %92, %89 ], [ 0, %148 ]
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %129, label %100

100:                                              ; preds = %93
  %101 = icmp eq ptr %96, null
  %102 = getelementptr inbounds %struct.bitmap_element_def, ptr %96, i64 0, i32 2
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 2
  %104 = add i32 %95, 128
  %105 = shl i32 %98, 6
  %106 = sub i32 %104, %105
  br label %107

107:                                              ; preds = %100, %125
  %108 = phi i32 [ %98, %100 ], [ %127, %125 ]
  %109 = phi i32 [ %95, %100 ], [ %126, %125 ]
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 3, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !55
  br i1 %101, label %122, label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %102, align 8, !tbaa !151
  %115 = load i32, ptr %103, align 8, !tbaa !151
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.bitmap_element_def, ptr %96, i64 0, i32 3, i64 %110
  %119 = load i64, ptr %118, align 8, !tbaa !55
  %120 = xor i64 %119, -1
  %121 = and i64 %112, %120
  br label %122

122:                                              ; preds = %117, %113, %107
  %123 = phi i64 [ %112, %107 ], [ %121, %117 ], [ %112, %113 ]
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %74

125:                                              ; preds = %122
  %126 = add i32 %109, 64
  %127 = add i32 %108, 1
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %107, !llvm.loop !159

129:                                              ; preds = %125, %93
  %130 = phi i64 [ %94, %93 ], [ %123, %125 ]
  %131 = phi i32 [ %95, %93 ], [ %106, %125 ]
  %132 = phi i32 [ %98, %93 ], [ 2, %125 ]
  %133 = load ptr, ptr %97, align 8, !tbaa !155
  %134 = icmp eq ptr %133, null
  br i1 %134, label %153, label %135

135:                                              ; preds = %129
  %136 = icmp eq ptr %96, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.bitmap_element_def, ptr %133, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !151
  br label %140

140:                                              ; preds = %137, %145
  %141 = phi ptr [ %96, %137 ], [ %146, %145 ]
  %142 = getelementptr inbounds %struct.bitmap_element_def, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !151
  %144 = icmp ult i32 %143, %139
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load ptr, ptr %141, align 8, !tbaa !155
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %140, !llvm.loop !160

148:                                              ; preds = %145, %140, %135
  %149 = phi ptr [ %96, %135 ], [ %146, %145 ], [ %141, %140 ]
  %150 = getelementptr inbounds %struct.bitmap_element_def, ptr %133, i64 0, i32 2
  %151 = load i32, ptr %150, align 8, !tbaa !151
  %152 = shl i32 %151, 7
  br label %93, !llvm.loop !161

153:                                              ; preds = %129, %82, %74
  %154 = phi i64 [ %75, %74 ], [ %85, %82 ], [ %130, %129 ]
  %155 = phi i32 [ %76, %74 ], [ %86, %82 ], [ %131, %129 ]
  %156 = phi i32 [ %77, %74 ], [ %77, %82 ], [ %132, %129 ]
  %157 = phi ptr [ %78, %74 ], [ %78, %82 ], [ %96, %129 ]
  %158 = phi ptr [ %79, %74 ], [ %79, %82 ], [ %133, %129 ]
  %159 = phi i1 [ false, %74 ], [ false, %82 ], [ true, %129 ]
  br i1 %159, label %287, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %162 = zext i32 %155 to i64
  %163 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %161, i64 0, i32 2, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !35
  %165 = getelementptr inbounds %struct.mem_ref, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !110
  %167 = load i32, ptr %0, align 8, !tbaa !118
  %168 = tail call i32 @bitmap_bit_p(ptr noundef %166, i32 noundef %167) #18
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %279, label %170

170:                                              ; preds = %160
  %171 = load ptr, ptr %164, align 8, !tbaa !106
  %172 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %173) #18
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %279, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr %164, align 8, !tbaa !106
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 524288
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %279

181:                                              ; preds = %176
  %182 = tail call zeroext i8 @for_each_index(ptr noundef nonnull %164, ptr noundef nonnull @may_move_till, ptr noundef nonnull %0)
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %279, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %164, align 8, !tbaa !106
  %186 = tail call ptr @get_base_address(ptr noundef %185) #18
  %187 = load ptr, ptr %164, align 8, !tbaa !106
  %188 = tail call zeroext i8 @tree_could_trap_p(ptr noundef %187) #18
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load i64, ptr %186, align 8
  %192 = and i64 %191, 65535
  %193 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !50
  %195 = icmp ne i32 %194, 3
  %196 = and i64 %191, 1048576
  %197 = icmp eq i64 %196, 0
  %198 = or i1 %195, %197
  br i1 %198, label %277, label %199

199:                                              ; preds = %190, %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !35
  %200 = load ptr, ptr %164, align 8, !tbaa !106
  %201 = tail call ptr @get_base_address(ptr noundef %200) #18
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = and i32 %203, 65535
  %205 = add nsw i32 %204, -47
  %206 = icmp ult i32 %205, 3
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.tree_exp, ptr %201, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  br label %210

210:                                              ; preds = %207, %199
  %211 = phi ptr [ %209, %207 ], [ %201, %199 ]
  call fastcc void @get_all_locs_in_loop(ptr noundef nonnull %0, ptr noundef nonnull %164, ptr noundef nonnull %5)
  %212 = load ptr, ptr %5, align 8
  %213 = icmp eq ptr %212, null
  br label %214

214:                                              ; preds = %272, %210
  %215 = phi i32 [ 0, %210 ], [ %273, %272 ]
  br i1 %213, label %223, label %216

216:                                              ; preds = %214
  %217 = load i32, ptr %212, align 8, !tbaa !135
  %218 = icmp ugt i32 %217, %215
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = zext i32 %215 to i64
  %221 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %212, i64 0, i32 2, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !35
  br label %223

223:                                              ; preds = %219, %216, %214
  %224 = phi ptr [ %222, %219 ], [ null, %216 ], [ null, %214 ]
  %225 = phi i1 [ false, %219 ], [ true, %216 ], [ true, %214 ]
  br i1 %225, label %274, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.mem_ref_loc, ptr %224, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !130
  %229 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %230 = tail call ptr @pointer_map_contains(ptr noundef %229, ptr noundef %228) #18
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %226
  %233 = load ptr, ptr %230, align 8, !tbaa !35
  br label %234

234:                                              ; preds = %232, %226
  %235 = phi ptr [ %233, %232 ], [ null, %226 ]
  %236 = icmp eq ptr %235, null
  br i1 %236, label %272, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %227, align 8, !tbaa !130
  %239 = tail call ptr @gimple_get_lhs(ptr noundef %238) #18
  %240 = icmp eq ptr %239, null
  br i1 %240, label %272, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr %227, align 8, !tbaa !130
  %243 = tail call ptr @gimple_get_lhs(ptr noundef %242) #18
  %244 = tail call ptr @get_base_address(ptr noundef %243) #18
  %245 = icmp eq ptr %244, null
  br i1 %245, label %272, label %246

246:                                              ; preds = %241
  %247 = load i64, ptr %244, align 8
  %248 = trunc i64 %247 to i32
  %249 = and i32 %248, 65535
  %250 = add nsw i32 %249, -47
  %251 = icmp ult i32 %250, 3
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.tree_exp, ptr %244, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  br label %255

255:                                              ; preds = %252, %246
  %256 = phi ptr [ %254, %252 ], [ %244, %246 ]
  %257 = icmp eq ptr %256, %211
  br i1 %257, label %258, label %272

258:                                              ; preds = %255
  %259 = load ptr, ptr %227, align 8, !tbaa !130
  %260 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %261 = tail call ptr @pointer_map_contains(ptr noundef %260, ptr noundef %259) #18
  %262 = icmp ne ptr %261, null
  tail call void @llvm.assume(i1 %262)
  %263 = load ptr, ptr %261, align 8, !tbaa !35
  %264 = getelementptr inbounds %struct.lim_aux_data, ptr %263, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !199
  %266 = icmp eq ptr %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %258
  %268 = icmp eq ptr %265, %0
  br i1 %268, label %274, label %269

269:                                              ; preds = %267
  %270 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef nonnull %265, ptr noundef nonnull %0) #18
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269, %258, %255, %241, %237, %234
  %273 = add i32 %215, 1
  br label %214, !llvm.loop !232

274:                                              ; preds = %269, %267, %223
  br i1 %213, label %276, label %275

275:                                              ; preds = %274
  tail call void @free(ptr noundef %212)
  br label %276

276:                                              ; preds = %275, %274
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br i1 %225, label %279, label %277

277:                                              ; preds = %276, %190
  %278 = tail call fastcc zeroext i8 @ref_indep_loop_p(ptr noundef nonnull %0, ptr noundef nonnull %164), !range !209
  br label %279

279:                                              ; preds = %277, %276, %181, %176, %170, %160
  %280 = phi i8 [ 0, %160 ], [ 0, %181 ], [ 0, %176 ], [ 0, %170 ], [ 0, %276 ], [ %278, %277 ]
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %155) #18
  br label %284

284:                                              ; preds = %282, %279
  %285 = lshr i64 %154, 1
  %286 = add i32 %155, 1
  br label %67, !llvm.loop !233

287:                                              ; preds = %153
  %288 = load ptr, ptr %7, align 8, !tbaa !149
  %289 = icmp eq ptr %288, null
  %290 = select i1 %289, ptr @bitmap_zero_bits, ptr %288
  %291 = getelementptr inbounds %struct.bitmap_element_def, ptr %290, i64 0, i32 2
  %292 = load i32, ptr %291, align 8, !tbaa !151
  %293 = shl i32 %292, 7
  %294 = getelementptr inbounds %struct.bitmap_element_def, ptr %290, i64 0, i32 3
  %295 = load i64, ptr %294, align 8, !tbaa !55
  %296 = icmp eq i64 %295, 0
  %297 = zext i1 %296 to i32
  %298 = or disjoint i32 %293, %297
  %299 = getelementptr inbounds %struct.fmt_data, ptr %4, i64 0, i32 1
  br label %300

300:                                              ; preds = %446, %287
  %301 = phi i64 [ %295, %287 ], [ %447, %446 ]
  %302 = phi i32 [ 0, %287 ], [ %357, %446 ]
  %303 = phi i32 [ %298, %287 ], [ %448, %446 ]
  %304 = phi ptr [ %290, %287 ], [ %359, %446 ]
  %305 = icmp eq i64 %301, 0
  br i1 %305, label %320, label %306

306:                                              ; preds = %334, %300
  %307 = phi i64 [ %301, %300 ], [ %339, %334 ]
  %308 = phi i32 [ %302, %300 ], [ %335, %334 ]
  %309 = phi i32 [ %303, %300 ], [ %336, %334 ]
  %310 = phi ptr [ %304, %300 ], [ %327, %334 ]
  %311 = and i64 %307, 1
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %355

313:                                              ; preds = %306, %313
  %314 = phi i32 [ %317, %313 ], [ %309, %306 ]
  %315 = phi i64 [ %316, %313 ], [ %307, %306 ]
  %316 = lshr exact i64 %315, 1
  %317 = add i32 %314, 1
  %318 = and i64 %315, 2
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %313, label %355, !llvm.loop !153

320:                                              ; preds = %300
  %321 = add i32 %303, 63
  %322 = and i32 %321, -64
  %323 = add i32 %302, 1
  br label %324

324:                                              ; preds = %351, %320
  %325 = phi i64 [ %301, %320 ], [ %346, %351 ]
  %326 = phi i32 [ %322, %320 ], [ %354, %351 ]
  %327 = phi ptr [ %304, %320 ], [ %349, %351 ]
  %328 = phi i32 [ %323, %320 ], [ 0, %351 ]
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %345, label %330

330:                                              ; preds = %324
  %331 = add i32 %326, 128
  %332 = shl i32 %328, 6
  %333 = sub i32 %331, %332
  br label %334

334:                                              ; preds = %330, %341
  %335 = phi i32 [ %343, %341 ], [ %328, %330 ]
  %336 = phi i32 [ %342, %341 ], [ %326, %330 ]
  %337 = zext i32 %335 to i64
  %338 = getelementptr inbounds %struct.bitmap_element_def, ptr %327, i64 0, i32 3, i64 %337
  %339 = load i64, ptr %338, align 8, !tbaa !55
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %306

341:                                              ; preds = %334
  %342 = add i32 %336, 64
  %343 = add i32 %335, 1
  %344 = icmp eq i32 %343, 2
  br i1 %344, label %345, label %334, !llvm.loop !154

345:                                              ; preds = %341, %324
  %346 = phi i64 [ %325, %324 ], [ %339, %341 ]
  %347 = phi i32 [ %326, %324 ], [ %333, %341 ]
  %348 = phi i32 [ %328, %324 ], [ 2, %341 ]
  %349 = load ptr, ptr %327, align 8, !tbaa !155
  %350 = icmp eq ptr %349, null
  br i1 %350, label %355, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.bitmap_element_def, ptr %349, i64 0, i32 2
  %353 = load i32, ptr %352, align 8, !tbaa !151
  %354 = shl i32 %353, 7
  br label %324, !llvm.loop !156

355:                                              ; preds = %345, %313, %306
  %356 = phi i64 [ %307, %306 ], [ %316, %313 ], [ %346, %345 ]
  %357 = phi i32 [ %308, %306 ], [ %308, %313 ], [ %348, %345 ]
  %358 = phi i32 [ %309, %306 ], [ %317, %313 ], [ %347, %345 ]
  %359 = phi ptr [ %310, %306 ], [ %310, %313 ], [ %349, %345 ]
  %360 = phi i1 [ false, %306 ], [ false, %313 ], [ true, %345 ]
  br i1 %360, label %449, label %361

361:                                              ; preds = %355
  %362 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 1), align 8
  %363 = zext i32 %358 to i64
  %364 = getelementptr inbounds %struct.VEC_mem_ref_p_base, ptr %362, i64 0, i32 2, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %366 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %367 = icmp eq ptr %366, null
  br i1 %367, label %379, label %368

368:                                              ; preds = %361
  %369 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %370 = and i32 %369, 8
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %379, label %372

372:                                              ; preds = %368
  %373 = call i64 @fwrite(ptr nonnull @.str.26, i64 26, i64 1, ptr nonnull %366)
  %374 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %375 = load ptr, ptr %365, align 8, !tbaa !106
  call void @print_generic_expr(ptr noundef %374, ptr noundef %375, i32 noundef 0) #18
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %377 = load i32, ptr %0, align 8, !tbaa !118
  %378 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %376, ptr noundef nonnull @.str.27, i32 noundef %377)
  br label %379

379:                                              ; preds = %372, %368, %361
  %380 = load ptr, ptr %365, align 8, !tbaa !106
  %381 = getelementptr inbounds %struct.tree_common, ptr %380, i64 0, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !46
  store i32 0, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  call fastcc void @gen_lsm_tmp_name(ptr noundef %380)
  %383 = load i32, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  %384 = add i32 %383, 4
  %385 = icmp sgt i32 %384, 40
  br i1 %385, label %389, label %386

386:                                              ; preds = %379
  %387 = sext i32 %383 to i64
  %388 = getelementptr inbounds i8, ptr @lsm_tmp_name, i64 %387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %388, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i32 %384, ptr @lsm_tmp_name_length, align 4, !tbaa !50
  br label %389

389:                                              ; preds = %386, %379
  %390 = call ptr @make_rename_temp(ptr noundef %382, ptr noundef nonnull @lsm_tmp_name) #18
  store ptr %0, ptr %4, align 8, !tbaa !234
  store ptr %0, ptr %299, align 8, !tbaa !236
  %391 = call zeroext i8 @for_each_index(ptr noundef nonnull %365, ptr noundef nonnull @force_move_till, ptr noundef nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !35
  call fastcc void @get_all_locs_in_loop(ptr noundef nonnull %0, ptr noundef nonnull %365, ptr noundef nonnull %3)
  %392 = load ptr, ptr %3, align 8
  %393 = icmp eq ptr %392, null
  br label %394

394:                                              ; preds = %416, %389
  %395 = phi i32 [ 0, %389 ], [ %417, %416 ]
  br i1 %393, label %403, label %396

396:                                              ; preds = %394
  %397 = load i32, ptr %392, align 8, !tbaa !135
  %398 = icmp ugt i32 %397, %395
  br i1 %398, label %399, label %403

399:                                              ; preds = %396
  %400 = zext i32 %395 to i64
  %401 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %392, i64 0, i32 2, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  br label %403

403:                                              ; preds = %399, %396, %394
  %404 = phi ptr [ %402, %399 ], [ null, %396 ], [ null, %394 ]
  %405 = phi i1 [ false, %399 ], [ true, %396 ], [ true, %394 ]
  br i1 %405, label %418, label %406

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct.mem_ref_loc, ptr %404, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !130
  call void @mark_virtual_ops_for_renaming(ptr noundef %408) #18
  %409 = load ptr, ptr %404, align 8, !tbaa !132
  store ptr %390, ptr %409, align 8, !tbaa !35
  %410 = load ptr, ptr %407, align 8, !tbaa !130
  %411 = load i32, ptr %410, align 8
  %412 = and i32 %411, 255
  %413 = add nsw i32 %412, -10
  %414 = icmp ult i32 %413, -9
  br i1 %414, label %416, label %415

415:                                              ; preds = %406
  call void @gimple_set_modified(ptr noundef nonnull %410, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %410) #18
  br label %416

416:                                              ; preds = %415, %406
  %417 = add i32 %395, 1
  br label %394, !llvm.loop !237

418:                                              ; preds = %403
  br i1 %393, label %420, label %419

419:                                              ; preds = %418
  call void @free(ptr noundef %392)
  br label %420

420:                                              ; preds = %419, %418
  store ptr null, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %421 = load ptr, ptr %365, align 8, !tbaa !106
  %422 = call ptr @unshare_expr(ptr noundef %421) #18
  %423 = call ptr @gimple_build_assign_stat(ptr noundef %390, ptr noundef %422) #18
  %424 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %425 = call ptr @pointer_map_insert(ptr noundef %424, ptr noundef %423) #18
  %426 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  store ptr %426, ptr %425, align 8, !tbaa !35
  store ptr %0, ptr %426, align 8, !tbaa !206
  %427 = getelementptr inbounds %struct.lim_aux_data, ptr %426, i64 0, i32 1
  store ptr %0, ptr %427, align 8, !tbaa !228
  %428 = call ptr @loop_latch_edge(ptr noundef nonnull %0) #18
  call void @gsi_insert_on_edge(ptr noundef %428, ptr noundef %423) #18
  br label %429

429:                                              ; preds = %441, %420
  %430 = phi i32 [ 0, %420 ], [ %445, %441 ]
  br i1 %8, label %438, label %431

431:                                              ; preds = %429
  %432 = load i32, ptr %6, align 8, !tbaa !183
  %433 = icmp ugt i32 %432, %430
  br i1 %433, label %434, label %438

434:                                              ; preds = %431
  %435 = zext i32 %430 to i64
  %436 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !35
  br label %438

438:                                              ; preds = %434, %431, %429
  %439 = phi ptr [ %437, %434 ], [ null, %431 ], [ null, %429 ]
  %440 = phi i1 [ false, %434 ], [ true, %431 ], [ true, %429 ]
  br i1 %440, label %446, label %441

441:                                              ; preds = %438
  %442 = load ptr, ptr %365, align 8, !tbaa !106
  %443 = call ptr @unshare_expr(ptr noundef %442) #18
  %444 = call ptr @gimple_build_assign_stat(ptr noundef %443, ptr noundef %390) #18
  call void @gsi_insert_on_edge(ptr noundef %439, ptr noundef %444) #18
  %445 = add i32 %430, 1
  br label %429, !llvm.loop !238

446:                                              ; preds = %438
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  %447 = lshr i64 %356, 1
  %448 = add i32 %358, 1
  br label %300, !llvm.loop !239

449:                                              ; preds = %355, %27
  br i1 %8, label %451, label %450

450:                                              ; preds = %449
  call void @free(ptr noundef %6)
  br label %451

451:                                              ; preds = %449, %450
  %452 = call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %7) #18
  %453 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %454 = load ptr, ptr %453, align 8, !tbaa !35
  %455 = icmp eq ptr %454, null
  br i1 %455, label %461, label %456

456:                                              ; preds = %451, %456
  %457 = phi ptr [ %459, %456 ], [ %454, %451 ]
  call fastcc void @store_motion_loop(ptr noundef nonnull %457, ptr noundef %1)
  %458 = getelementptr inbounds %struct.loop, ptr %457, i64 0, i32 9
  %459 = load ptr, ptr %458, align 8, !tbaa !35
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %456, !llvm.loop !240

461:                                              ; preds = %456, %451
  %462 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %7) #18
  call void @bitmap_obstack_free(ptr noundef %7) #18
  ret void
}

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @may_move_till(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 45
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %9, ptr noundef %2)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %11, ptr noundef %2)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %3
  %18 = load ptr, ptr %1, align 8, !tbaa !35
  %19 = tail call fastcc ptr @outermost_invariant_loop(ptr noundef %18, ptr noundef %2)
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %7, %17, %14
  %23 = phi i8 [ 0, %14 ], [ %21, %17 ], [ 0, %7 ]
  ret i8 %23
}

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @get_all_locs_in_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @memory_accesses, i64 0, i32 3), align 8
  %5 = load i32, ptr %0, align 8, !tbaa !118
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %4, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !108
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %68, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !124
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %13 ]
  %21 = load i32, ptr %0, align 8, !tbaa !118
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %struct.VEC_mem_ref_locs_p_base, ptr %15, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %59, label %28

28:                                               ; preds = %23, %52
  %29 = phi i32 [ %58, %52 ], [ 0, %23 ]
  %30 = load ptr, ptr %26, align 8, !tbaa !128
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !135
  %34 = icmp ugt i32 %33, %29
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = zext i32 %29 to i64
  %37 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %30, i64 0, i32 2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  br label %39

39:                                               ; preds = %28, %32, %35
  %40 = phi ptr [ %38, %35 ], [ null, %32 ], [ null, %28 ]
  %41 = phi i1 [ false, %35 ], [ true, %32 ], [ true, %28 ]
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !133
  %48 = load i32, ptr %43, align 8, !tbaa !135
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %45
  %51 = tail call ptr @vec_heap_p_reserve(ptr noundef %43, i32 noundef 1) #18
  store ptr %51, ptr %2, align 8, !tbaa !35
  br label %52

52:                                               ; preds = %45, %50
  %53 = load ptr, ptr %2, align 8, !tbaa !35
  %54 = load i32, ptr %53, align 8, !tbaa !135
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !135
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds %struct.VEC_mem_ref_loc_p_base, ptr %53, i64 0, i32 2, i64 %56
  store ptr %40, ptr %57, align 8, !tbaa !35
  %58 = add i32 %29, 1
  br label %28, !llvm.loop !241

59:                                               ; preds = %39, %23, %19
  %60 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %66, %63 ], [ %61, %59 ]
  tail call fastcc void @get_all_locs_in_loop(ptr noundef nonnull %64, ptr noundef %1, ptr noundef %2)
  %65 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %63, !llvm.loop !242

68:                                               ; preds = %63, %59, %3
  ret void
}

declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @force_move_till(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 45
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.fmt_data, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !236
  %14 = load ptr, ptr %2, align 8, !tbaa !234
  tail call fastcc void @force_move_till_op(ptr noundef %9, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %12, align 8, !tbaa !236
  %16 = load ptr, ptr %2, align 8, !tbaa !234
  tail call fastcc void @force_move_till_op(ptr noundef %11, ptr noundef %15, ptr noundef %16)
  br label %17

17:                                               ; preds = %7, %3
  %18 = load ptr, ptr %1, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.fmt_data, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !236
  %21 = load ptr, ptr %2, align 8, !tbaa !234
  tail call fastcc void @force_move_till_op(ptr noundef %18, ptr noundef %20, ptr noundef %21)
  ret i8 1
}

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @force_move_till_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1140, ptr noundef nonnull @.str.1) #18
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 18
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call fastcc void @set_level(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %2)
  br label %20

20:                                               ; preds = %13, %3, %5, %19
  ret void
}

declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @move_computations_stmt(ptr nocapture readnone %0, ptr noundef %1) #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 8, !tbaa !88
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ 0, %2 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %103, label %14

14:                                               ; preds = %11
  %15 = add i32 %12, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %7, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %103, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !64, !noalias !243
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !46, !noalias !243
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !68, !noalias !243
  br label %31

31:                                               ; preds = %29, %25, %20
  %32 = phi ptr [ %30, %29 ], [ null, %25 ], [ null, %20 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !70, !noalias !243
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  store ptr %37, ptr %3, align 8, !tbaa.struct !195
  %38 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %32, ptr %38, align 8, !tbaa.struct !196
  %39 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %1, ptr %39, align 8, !tbaa.struct !197
  %40 = icmp eq ptr %37, null
  br i1 %40, label %103, label %41

41:                                               ; preds = %36, %56
  %42 = phi ptr [ %57, %56 ], [ %37, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !72
  %44 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %45 = call ptr @pointer_map_contains(ptr noundef %44, ptr noundef %43) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %45, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %41, %47
  %50 = phi ptr [ %48, %47 ], [ null, %41 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8, !tbaa !215
  %54 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  store ptr %55, ptr %3, align 8, !tbaa !215
  br label %56

56:                                               ; preds = %52, %80, %101, %84
  %57 = load ptr, ptr %3, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %103, label %41, !llvm.loop !246

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.lim_aux_data, ptr %50, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !214
  %62 = getelementptr inbounds %struct.lim_aux_data, ptr %50, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !228
  %64 = load ptr, ptr @lim_aux_data_map, align 8, !tbaa !35
  %65 = call ptr @pointer_map_contains(ptr noundef %64, ptr noundef %43) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr %65, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.lim_aux_data, ptr %68, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !220
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %75, %72 ], [ %70, %67 ]
  %74 = getelementptr inbounds %struct.depend, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !221
  call void @free(ptr noundef %73)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %72, !llvm.loop !247

77:                                               ; preds = %72, %67
  call void @free(ptr noundef %68)
  store ptr null, ptr %65, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %59, %77
  %79 = icmp eq ptr %63, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = load ptr, ptr %3, align 8, !tbaa !215
  %82 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !74
  store ptr %83, ptr %3, align 8, !tbaa !215
  br label %56

84:                                               ; preds = %78
  %85 = load i32, ptr %43, align 8
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %56, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr nonnull %89)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %97, ptr noundef nonnull %43, i32 noundef 0, i32 noundef 0) #18
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %99 = load i32, ptr %63, align 8, !tbaa !118
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.29, i32 noundef %61, i32 noundef %99)
  br label %101

101:                                              ; preds = %95, %91, %88
  call void @mark_virtual_ops_for_renaming(ptr noundef nonnull %43) #18
  %102 = call ptr @loop_preheader_edge(ptr noundef nonnull %63) #18
  call void @gsi_insert_on_edge(ptr noundef %102, ptr noundef nonnull %43) #18
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  br label %56

103:                                              ; preds = %56, %36, %11, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #3

declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !53}
!55 = !{!42, !42, i64 0}
!56 = !{!57, !36, i64 8}
!57 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!58 = !{!59, !41, i64 32}
!59 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!60 = !{!59, !36, i64 0}
!61 = !{!62, !36, i64 56}
!62 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!63 = !{!59, !36, i64 8}
!64 = !{!62, !41, i64 96}
!65 = !{!66}
!66 = distinct !{!66, !67, !"gsi_start_bb: argument 0"}
!67 = distinct !{!67, !"gsi_start_bb"}
!68 = !{!69, !36, i64 0}
!69 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!70 = !{!71, !36, i64 0}
!71 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{!73, !36, i64 0}
!73 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!74 = !{!73, !36, i64 16}
!75 = distinct !{!75, !52, !53}
!76 = !{!62, !41, i64 80}
!77 = !{!78, !36, i64 0}
!78 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!79 = distinct !{!79, !52, !53}
!80 = !{!57, !36, i64 32}
!81 = !{!82, !36, i64 24}
!82 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!83 = distinct !{!83, !52, !53}
!84 = !{!85, !36, i64 0}
!85 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!86 = !{!85, !36, i64 8}
!87 = !{!82, !36, i64 8}
!88 = !{!89, !41, i64 0}
!89 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!90 = !{!85, !36, i64 16}
!91 = !{!85, !36, i64 24}
!92 = !{!85, !36, i64 32}
!93 = !{!85, !36, i64 40}
!94 = !{!95, !41, i64 0}
!95 = !{!"VEC_bitmap_base", !41, i64 0, !41, i64 4, !37, i64 8}
!96 = !{!97, !41, i64 0}
!97 = !{!"VEC_htab_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!98 = distinct !{!98, !52, !53}
!99 = !{!85, !36, i64 48}
!100 = !{!62, !36, i64 24}
!101 = !{!102}
!102 = distinct !{!102, !103, !"gsi_start_bb: argument 0"}
!103 = distinct !{!103, !"gsi_start_bb"}
!104 = !{!105, !41, i64 0}
!105 = !{!"VEC_mem_ref_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!106 = !{!107, !36, i64 0}
!107 = !{!"mem_ref", !36, i64 0, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!108 = !{!107, !41, i64 8}
!109 = !{!107, !41, i64 12}
!110 = !{!107, !36, i64 16}
!111 = !{!107, !36, i64 40}
!112 = !{!107, !36, i64 48}
!113 = !{!107, !36, i64 56}
!114 = !{!107, !36, i64 64}
!115 = !{!107, !36, i64 24}
!116 = !{!107, !36, i64 32}
!117 = !{!105, !41, i64 4}
!118 = !{!119, !41, i64 0}
!119 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !120, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !121, i64 80, !121, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!120 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!121 = !{!"", !42, i64 0, !42, i64 8}
!122 = !{!119, !36, i64 40}
!123 = distinct !{!123, !52, !53}
!124 = !{!125, !41, i64 0}
!125 = !{!"VEC_mem_ref_locs_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!126 = !{!125, !41, i64 4}
!127 = !{}
!128 = !{!129, !36, i64 0}
!129 = !{!"mem_ref_locs", !36, i64 0}
!130 = !{!131, !36, i64 8}
!131 = !{!"mem_ref_loc", !36, i64 0, !36, i64 8}
!132 = !{!131, !36, i64 0}
!133 = !{!134, !41, i64 4}
!134 = !{!"VEC_mem_ref_loc_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!135 = !{!134, !41, i64 0}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = !{!119, !36, i64 48}
!139 = distinct !{!139, !52, !53}
!140 = !{!141, !41, i64 0}
!141 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!142 = !{!119, !36, i64 56}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !53}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = distinct !{!147, !53}
!148 = distinct !{!148, !52, !53}
!149 = !{!150, !36, i64 0}
!150 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!151 = !{!152, !41, i64 16}
!152 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = !{!152, !36, i64 0}
!156 = distinct !{!156, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = distinct !{!161, !53}
!162 = !{!163, !41, i64 0}
!163 = !{!"vop_to_refs_elt", !41, i64 0, !36, i64 8, !36, i64 16}
!164 = !{!163, !36, i64 8}
!165 = !{!163, !36, i64 16}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = !{!171, !36, i64 16}
!171 = !{!"dom_walk_data", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !42, i64 48, !36, i64 56}
!172 = distinct !{!172, !52, !53}
!173 = !{!62, !36, i64 16}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = !{!119, !36, i64 8}
!180 = !{!119, !41, i64 36}
!181 = distinct !{!181, !52, !53}
!182 = !{!119, !36, i64 16}
!183 = !{!184, !41, i64 0}
!184 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!185 = !{!186, !36, i64 8}
!186 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = !{!193}
!193 = distinct !{!193, !194, !"gsi_start_bb: argument 0"}
!194 = distinct !{!194, !"gsi_start_bb"}
!195 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!196 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!197 = !{i64 0, i64 8, !35}
!198 = !{i32 0, i32 3}
!199 = !{!200, !36, i64 16}
!200 = !{!"lim_aux_data", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !36, i64 32}
!201 = distinct !{!201, !52, !53}
!202 = !{!203, !36, i64 8}
!203 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!204 = !{!203, !36, i64 0}
!205 = !{!203, !36, i64 24}
!206 = !{!200, !36, i64 0}
!207 = !{!208, !36, i64 0}
!208 = !{!"use_optype_d", !36, i64 0, !203, i64 8}
!209 = !{i8 0, i8 2}
!210 = distinct !{!210, !52, !53}
!211 = distinct !{!211, !52, !53}
!212 = !{!213, !41, i64 8}
!213 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!214 = !{!200, !41, i64 24}
!215 = !{!216, !36, i64 0}
!216 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!217 = distinct !{!217, !52, !53}
!218 = !{!219, !36, i64 0}
!219 = !{!"depend", !36, i64 0, !36, i64 8}
!220 = !{!200, !36, i64 32}
!221 = !{!219, !36, i64 8}
!222 = distinct !{!222, !52, !53}
!223 = !{!224, !41, i64 24}
!224 = !{!"affine_tree_combination", !36, i64 0, !121, i64 8, !41, i64 24, !37, i64 32, !36, i64 224}
!225 = !{i64 0, i64 8, !55, i64 8, i64 8, !55}
!226 = !{i64 0, i64 8, !55}
!227 = distinct !{!227, !52, !53}
!228 = !{!200, !36, i64 8}
!229 = distinct !{!229, !52, !53}
!230 = !{!186, !41, i64 48}
!231 = distinct !{!231, !52, !53}
!232 = distinct !{!232, !52, !53}
!233 = distinct !{!233, !52, !53}
!234 = !{!235, !36, i64 0}
!235 = !{!"fmt_data", !36, i64 0, !36, i64 8}
!236 = !{!235, !36, i64 8}
!237 = distinct !{!237, !52, !53}
!238 = distinct !{!238, !52, !53}
!239 = distinct !{!239, !52, !53}
!240 = distinct !{!240, !52, !53}
!241 = distinct !{!241, !52, !53}
!242 = distinct !{!242, !52, !53}
!243 = !{!244}
!244 = distinct !{!244, !245, !"gsi_start_bb: argument 0"}
!245 = distinct !{!245, !"gsi_start_bb"}
!246 = distinct !{!246, !52, !53}
!247 = distinct !{!247, !52, !53}
