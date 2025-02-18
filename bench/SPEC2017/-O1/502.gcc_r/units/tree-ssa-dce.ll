; ModuleID = 'tree-ssa-dce.c'
source_filename = "tree-ssa-dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmt_stats = type { i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_list = type { i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Marking result for renaming : \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@pass_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_dce, ptr @tree_ssa_dce, ptr null, ptr null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"dceloop\00", align 1
@pass_dce_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_dce, ptr @tree_ssa_dce_loop, ptr null, ptr null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"cddce\00", align 1
@pass_cd_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_dce, ptr @tree_ssa_cd_dce, ptr null, ptr null, i32 0, i32 77, i32 40, i32 0, i32 0, i32 0, i32 13 } }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@flag_tree_dce = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@visited_control_parents = internal unnamed_addr global ptr null, align 8
@longest_chain = internal unnamed_addr global i32 0, align 4
@total_chain = internal unnamed_addr global i32 0, align 4
@nr_walks = internal unnamed_addr global i32 0, align 4
@chain_ovfl = internal unnamed_addr global i1 false, align 1
@visited = internal global ptr null, align 8
@cfg_altered = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@stats = internal unnamed_addr global %struct.stmt_stats zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"PHI nodes deleted\00", align 1
@control_dependence_map = internal unnamed_addr global ptr null, align 8
@last_stmt_necessary = internal unnamed_addr global ptr null, align 8
@bb_contains_live_stmts = internal unnamed_addr global ptr null, align 8
@processed = internal unnamed_addr global ptr null, align 8
@worklist = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"tree-ssa-dce.c\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"Marking back edge of irreducible loop %i->%i\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"can not prove finiteness of loop %i\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"Marking useful stmt: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"\0AProcessing worklist:\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"processing: \00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"marking necessary through \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" stmt \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"\0AEliminating unnecessary statements:\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Deleting LHS of call: \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Deleting : \00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Redirecting edge %i->%i to %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Removed %d of %d statements (%d%%)\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Removed %d of %d PHI nodes (%d%%)\0A\00", align 1
@optimize = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !106 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !107
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !106 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !107
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !106 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !117

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !111
  %11 = load i8, ptr %3, align 1, !tbaa !118
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !106 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !117

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !111
  %11 = load i8, ptr %3, align 1, !tbaa !118
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !106 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !107
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !117

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !111
  %11 = load i8, ptr %3, align 1, !tbaa !118
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !106 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !107
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !106 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !117

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !119
  store i8 %12, ptr %4, align 1, !tbaa !118
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !106 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !117

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !119
  store i8 %12, ptr %4, align 1, !tbaa !118
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !106 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !117

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !119
  store i8 %12, ptr %4, align 1, !tbaa !118
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !106 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !106 {
  %2 = load i32, ptr %0, align 8, !tbaa !121
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !106 {
  %2 = load i32, ptr %0, align 8, !tbaa !121
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !106 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !122
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !106 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !122
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !106 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !106 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !106 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !106 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !123

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !106 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @mark_virtual_phi_result_for_renaming(ptr noundef %0) local_unnamed_addr #9 !prof !126 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !127

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef 2) #19
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 5
  %20 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !128
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 5, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  store ptr %22, ptr %2, align 8, !tbaa !132
  %23 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2
  %25 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2, i32 1
  %26 = icmp eq ptr %22, %19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, i8 0, i64 40, i1 false)
  br i1 %26, label %31, label %27, !prof !133

27:                                               ; preds = %14
  call fastcc void @link_use_stmts_after(ptr noundef %22, ptr noundef nonnull %2)
  %28 = load ptr, ptr %2, align 8, !tbaa !132
  %29 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !118
  br label %31

31:                                               ; preds = %14, %27
  %32 = phi ptr [ %30, %27 ], [ null, %14 ]
  %33 = load ptr, ptr %2, align 8, !tbaa !132
  %34 = load ptr, ptr %20, align 8, !tbaa !128
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %104, label %36, !prof !134

36:                                               ; preds = %31
  %37 = icmp eq ptr %18, null
  br label %38

38:                                               ; preds = %36, %98
  %39 = phi ptr [ %33, %36 ], [ %100, %98 ]
  %40 = phi ptr [ %32, %36 ], [ %99, %98 ]
  %41 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  store ptr %42, ptr %23, align 8, !tbaa !135
  %43 = load ptr, ptr %2, align 8, !tbaa !132
  %44 = icmp eq ptr %43, %24
  br i1 %44, label %78, label %45, !prof !134

45:                                               ; preds = %38, %74
  %46 = phi ptr [ %75, %74 ], [ %39, %38 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !136
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49, !prof !133

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !131
  %52 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %47, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !131
  %53 = load ptr, ptr %50, align 8, !tbaa !131
  store ptr %47, ptr %53, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br label %54

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  store ptr %18, ptr %56, align 8, !tbaa !107
  br i1 %37, label %61, label %57, !prof !133

57:                                               ; preds = %54
  %58 = load i64, ptr %18, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %62, label %61, !prof !133

61:                                               ; preds = %57, %54
  store ptr null, ptr %46, align 8, !tbaa !136
  br label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 5
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 5, i32 1
  store ptr %63, ptr %46, align 8, !tbaa !136
  %65 = load ptr, ptr %64, align 8, !tbaa !131
  %66 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !131
  %67 = load ptr, ptr %64, align 8, !tbaa !131
  store ptr %46, ptr %67, align 8, !tbaa !136
  store ptr %46, ptr %64, align 8, !tbaa !131
  br label %68

68:                                               ; preds = %61, %62
  %69 = load ptr, ptr %23, align 8, !tbaa !135
  store ptr %69, ptr %2, align 8, !tbaa !132
  %70 = icmp eq ptr %69, %24
  br i1 %70, label %74, label %71, !prof !127

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %69, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !131
  store ptr %73, ptr %23, align 8, !tbaa !135
  br label %74

74:                                               ; preds = %68, %71
  %75 = phi ptr [ %69, %71 ], [ null, %68 ]
  %76 = load ptr, ptr %2, align 8, !tbaa !132
  %77 = icmp eq ptr %76, %24
  br i1 %77, label %78, label %45, !prof !138, !llvm.loop !139

78:                                               ; preds = %74, %38
  %79 = load i32, ptr %40, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %84, label %83, !prof !127

83:                                               ; preds = %78
  call void @gimple_set_modified(ptr noundef nonnull %40, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %40) #19
  br label %84

84:                                               ; preds = %78, %83
  %85 = load ptr, ptr %25, align 8, !tbaa !131
  store ptr %85, ptr %2, align 8, !tbaa !132
  %86 = load ptr, ptr %20, align 8, !tbaa !128
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %94, !prof !127

88:                                               ; preds = %84
  %89 = load ptr, ptr %24, align 8, !tbaa !136
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91, !prof !133

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %89, i64 0, i32 1
  store ptr %85, ptr %92, align 8, !tbaa !131
  %93 = load ptr, ptr %25, align 8, !tbaa !131
  store ptr %89, ptr %93, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %98

94:                                               ; preds = %84
  call fastcc void @link_use_stmts_after(ptr noundef %85, ptr noundef nonnull %2)
  %95 = load ptr, ptr %2, align 8, !tbaa !132
  %96 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !118
  br label %98

98:                                               ; preds = %88, %91, %94
  %99 = phi ptr [ %97, %94 ], [ null, %91 ], [ null, %88 ]
  %100 = load ptr, ptr %2, align 8, !tbaa !132
  %101 = load ptr, ptr %20, align 8, !tbaa !128
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %38, !prof !138, !llvm.loop !140

103:                                              ; preds = %98
  call void @mark_sym_for_renaming(ptr noundef %18) #19
  br label %104

104:                                              ; preds = %31, %103
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dce() #10 !prof !141 !PGOFuncName !142 {
  %1 = load i32, ptr @flag_tree_dce, align 4, !tbaa !122
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_dce() #9 !prof !143 !PGOFuncName !144 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0), !range !145
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_dce_loop() #9 !prof !143 !PGOFuncName !146 {
  %1 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext 0), !range !145
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !147

3:                                                ; preds = %0
  tail call void @free_numbers_of_iterations_estimates() #19
  tail call void @scev_reset() #19
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_cd_dce() #9 !prof !148 !PGOFuncName !149 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !122
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  %4 = tail call fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %3), !range !145
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !150 !PGOFuncName !151 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #19
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77, !prof !152

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #19
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19, !prof !153

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !118
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25, !prof !152

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
  br i1 %29, label %32, label %188, !prof !154

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !137
  %41 = load ptr, ptr %40, align 8, !tbaa !107
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45, !prof !155

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !131
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !136
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !131
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !131
  %56 = load ptr, ptr %53, align 8, !tbaa !131
  store ptr %50, ptr %56, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !136
  %58 = load ptr, ptr %46, align 8, !tbaa !131
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !131
  %60 = load ptr, ptr %46, align 8, !tbaa !131
  store ptr %35, ptr %60, align 8, !tbaa !136
  store ptr %35, ptr %46, align 8, !tbaa !131
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72, !prof !156

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !118
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69, !prof !157

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
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
  br i1 %76, label %34, label %188, !prof !158, !llvm.loop !159

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
  %85 = load ptr, ptr %84, align 8, !tbaa !118
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
  %95 = load ptr, ptr %94, align 8, !tbaa !118
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !160
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !160
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
  %115 = load ptr, ptr %114, align 8, !tbaa !137
  %116 = load ptr, ptr %115, align 8, !tbaa !107
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !131
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !136
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !131
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !131
  %131 = load ptr, ptr %128, align 8, !tbaa !131
  store ptr %125, ptr %131, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !136
  %133 = load ptr, ptr %121, align 8, !tbaa !131
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !131
  %135 = load ptr, ptr %121, align 8, !tbaa !131
  store ptr %110, ptr %135, align 8, !tbaa !136
  store ptr %110, ptr %121, align 8, !tbaa !131
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !160
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !162

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !118
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !163
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
  %167 = load ptr, ptr %166, align 8, !tbaa !137
  %168 = load ptr, ptr %167, align 8, !tbaa !107
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !131
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !136
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !131
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !131
  %183 = load ptr, ptr %180, align 8, !tbaa !131
  store ptr %177, ptr %183, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !136
  %185 = load ptr, ptr %173, align 8, !tbaa !131
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !131
  %187 = load ptr, ptr %173, align 8, !tbaa !131
  store ptr %163, ptr %187, align 8, !tbaa !136
  store ptr %163, ptr %173, align 8, !tbaa !131
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !136
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193, !prof !152

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !131
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !131
  %197 = load ptr, ptr %194, align 8, !tbaa !131
  store ptr %191, ptr %197, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !136
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !131
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !131
  %202 = load ptr, ptr %199, align 8, !tbaa !131
  store ptr %190, ptr %202, align 8, !tbaa !136
  store ptr %190, ptr %199, align 8, !tbaa !131
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @perform_tree_ssa_dce(i8 noundef zeroext %0) unnamed_addr #9 !prof !141 !PGOFuncName !164 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.immediate_use_iterator_d, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = icmp eq i8 %0, 0
  br i1 %11, label %153, label %12, !prof !165

12:                                               ; preds = %1
  tail call void @loop_optimizer_init(i32 noundef 15) #19
  tail call fastcc void @tree_dce_init(i8 noundef zeroext %0)
  %13 = load i8, ptr @timevar_enable, align 1, !tbaa !118
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !166

15:                                               ; preds = %12
  tail call void @timevar_push_1(i32 noundef 113) #19
  br label %16

16:                                               ; preds = %15, %12
  tail call void @calculate_dominance_info(i32 noundef 2) #19
  %17 = tail call ptr @create_edge_list() #19
  %18 = getelementptr inbounds %struct.edge_list, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !167
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %141, !prof !169

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.edge_list, ptr %17, i64 0, i32 2
  br label %23

23:                                               ; preds = %21, %136
  %24 = phi i64 [ 0, %21 ], [ %137, %136 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !170
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = load ptr, ptr %27, align 8, !tbaa !171
  %29 = load ptr, ptr @cfun, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !173
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !175
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %35, label %36, !prof !177

35:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 168, ptr noundef nonnull @.str.6) #19
  br label %36

36:                                               ; preds = %35, %23
  %37 = load ptr, ptr %22, align 8, !tbaa !170
  %38 = getelementptr inbounds ptr, ptr %37, i64 %24
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  %40 = load ptr, ptr %39, align 8, !tbaa !171
  %41 = load ptr, ptr @cfun, align 8, !tbaa !107
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !173
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = icmp eq ptr %40, %44
  br i1 %45, label %46, label %59, !prof !179

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !180
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !182

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8, !tbaa !183
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %54, label %53, !prof !166

53:                                               ; preds = %50, %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.6) #19
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr %47, align 8, !tbaa !180
  %56 = getelementptr inbounds %struct.VEC_edge_base, ptr %55, i64 0, i32 2, i64 0
  %57 = load ptr, ptr %56, align 8, !tbaa !107
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  br label %71

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !175
  %62 = icmp eq ptr %61, %40
  br i1 %62, label %74, label %63, !prof !185

63:                                               ; preds = %59
  %64 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %40) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %74, !prof !185

66:                                               ; preds = %63
  %67 = load ptr, ptr @cfun, align 8, !tbaa !107
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !173
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  br label %71

71:                                               ; preds = %54, %66
  %72 = phi ptr [ %70, %66 ], [ %58, %54 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !107
  br label %74

74:                                               ; preds = %71, %63, %59
  %75 = phi ptr [ %61, %59 ], [ %64, %63 ], [ %73, %71 ]
  %76 = load ptr, ptr %22, align 8, !tbaa !170
  %77 = getelementptr inbounds ptr, ptr %76, i64 %24
  %78 = load ptr, ptr %77, align 8, !tbaa !107
  %79 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !186
  %81 = icmp eq ptr %80, %75
  br i1 %81, label %136, label %82, !prof !187

82:                                               ; preds = %74, %133
  %83 = phi ptr [ %134, %133 ], [ %80, %74 ]
  %84 = load ptr, ptr @cfun, align 8, !tbaa !107
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !173
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !175
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %136, label %90, !prof !188

90:                                               ; preds = %82
  %91 = load ptr, ptr %22, align 8, !tbaa !170
  %92 = getelementptr inbounds ptr, ptr %91, i64 %24
  %93 = load ptr, ptr %92, align 8, !tbaa !107
  %94 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !189
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110, !prof !190

98:                                               ; preds = %90
  %99 = load ptr, ptr %86, align 8, !tbaa !178
  %100 = icmp eq ptr %99, %83
  br i1 %100, label %110, label %101, !prof !188

101:                                              ; preds = %98
  %102 = trunc i64 %24 to i32
  %103 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !191
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %103, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !107
  %109 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %108, i32 noundef %102) #19
  br label %110

110:                                              ; preds = %101, %98, %90
  %111 = load ptr, ptr @cfun, align 8, !tbaa !107
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !173
  %114 = load ptr, ptr %113, align 8, !tbaa !178
  %115 = icmp eq ptr %114, %83
  br i1 %115, label %116, label %117, !prof !188

116:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 145, ptr noundef nonnull @.str.6) #19
  br label %117

117:                                              ; preds = %116, %110
  %118 = load ptr, ptr @cfun, align 8, !tbaa !107
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !173
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !175
  %123 = icmp eq ptr %122, %83
  br i1 %123, label %133, label %124, !prof !188

124:                                              ; preds = %117
  %125 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %83) #19
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %133, !prof !188

127:                                              ; preds = %124
  %128 = load ptr, ptr @cfun, align 8, !tbaa !107
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !173
  %131 = getelementptr inbounds %struct.control_flow_graph, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !175
  br label %133

133:                                              ; preds = %127, %124, %117
  %134 = phi ptr [ %122, %117 ], [ %132, %127 ], [ %125, %124 ]
  %135 = icmp eq ptr %134, %75
  br i1 %135, label %136, label %82, !prof !190, !llvm.loop !192

136:                                              ; preds = %133, %82, %74
  %137 = add nuw nsw i64 %24, 1
  %138 = load i32, ptr %18, align 4, !tbaa !167
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %23, label %141, !prof !193, !llvm.loop !194

141:                                              ; preds = %136, %16
  %142 = load i8, ptr @timevar_enable, align 1, !tbaa !118
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %145, label %144, !prof !166

144:                                              ; preds = %141
  tail call void @timevar_pop_1(i32 noundef 113) #19
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr @cfun, align 8, !tbaa !107
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !173
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 5
  %150 = load i32, ptr %149, align 8, !tbaa !195
  %151 = tail call ptr @sbitmap_alloc(i32 noundef %150) #19
  store ptr %151, ptr @visited_control_parents, align 8, !tbaa !107
  tail call void @sbitmap_zero(ptr noundef %151) #19
  %152 = tail call zeroext i8 @mark_dfs_back_edges() #19
  br label %154

153:                                              ; preds = %1
  tail call fastcc void @tree_dce_init(i8 noundef zeroext %0)
  br label %154

154:                                              ; preds = %153, %145
  %155 = phi ptr [ %17, %145 ], [ null, %153 ]
  %156 = load ptr, ptr @cfun, align 8, !tbaa !107
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !173
  %159 = load ptr, ptr %158, align 8, !tbaa !178
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !196
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !175
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %608, label %165, !prof !197

165:                                              ; preds = %154
  %166 = icmp eq ptr %155, null
  br label %176

167:                                              ; preds = %604, %204
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !196
  %170 = load ptr, ptr @cfun, align 8, !tbaa !107
  %171 = getelementptr inbounds %struct.function, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !173
  %173 = getelementptr inbounds %struct.control_flow_graph, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !175
  %175 = icmp eq ptr %169, %174
  br i1 %175, label %608, label %176, !prof !198, !llvm.loop !199

176:                                              ; preds = %165, %167
  %177 = phi ptr [ %161, %165 ], [ %169, %167 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %177) #19
  %178 = load ptr, ptr %10, align 8, !tbaa.struct !200
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  %179 = icmp eq ptr %178, null
  br i1 %179, label %188, label %180, !prof !201

180:                                              ; preds = %176, %180
  %181 = phi ptr [ %186, %180 ], [ %178, %176 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !202
  %183 = load i32, ptr %182, align 8
  %184 = and i32 %183, -2049
  store i32 %184, ptr %182, align 8
  %185 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %181, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !204
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %180, !prof !205, !llvm.loop !206

188:                                              ; preds = %180, %176
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 13
  %190 = load i32, ptr %189, align 8, !tbaa !207, !noalias !208
  %191 = and i32 %190, 512
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199, !prof !211

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 7
  %195 = load ptr, ptr %194, align 8, !tbaa !118, !noalias !208
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197, !prof !212

197:                                              ; preds = %193
  %198 = load ptr, ptr %195, align 8, !tbaa !213, !noalias !208
  br label %199

199:                                              ; preds = %197, %193, %188
  %200 = phi ptr [ %198, %197 ], [ null, %193 ], [ null, %188 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202, !prof !212

202:                                              ; preds = %199
  %203 = load ptr, ptr %200, align 8, !tbaa !215, !noalias !208
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi ptr [ %203, %202 ], [ null, %199 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %167, label %207, !prof !217

207:                                              ; preds = %204, %604
  %208 = phi ptr [ %606, %604 ], [ %205, %204 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !202
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, -2049
  store i32 %211, ptr %209, align 8
  %212 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !122
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214, !prof !218

214:                                              ; preds = %207
  %215 = call zeroext i8 @stmt_could_throw_p(ptr noundef %209) #19
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  call fastcc void @mark_stmt_necessary(ptr noundef %209, i8 noundef zeroext 1)
  br label %604

218:                                              ; preds = %214, %207
  %219 = load i32, ptr %209, align 8
  %220 = and i32 %219, 255
  %221 = trunc i32 %219 to i8
  switch i8 %221, label %588 [
    i8 33, label %222
    i8 4, label %222
    i8 7, label %279
    i8 14, label %279
    i8 9, label %279
    i8 8, label %280
    i8 6, label %392
    i8 2, label %406
    i8 3, label %499
    i8 1, label %504
    i8 5, label %514
  ], !prof !219

222:                                              ; preds = %218, %218
  %223 = icmp eq ptr %209, null
  br i1 %223, label %224, label %225, !prof !220

224:                                              ; preds = %222
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.6) #19
  br label %225

225:                                              ; preds = %224, %222
  %226 = load i32, ptr %209, align 8
  %227 = and i32 %226, 2048
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %604, !prof !221

229:                                              ; preds = %225
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %231 = icmp eq ptr %230, null
  br i1 %231, label %241, label %232, !prof !221

232:                                              ; preds = %229
  %233 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %234 = and i32 %233, 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %232
  %237 = call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %230)
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %238, ptr noundef nonnull %209, i32 noundef 0, i32 noundef 2) #19
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %240 = call i32 @fputc(i32 10, ptr %239)
  br label %241

241:                                              ; preds = %236, %232, %229
  %242 = load i32, ptr %209, align 8
  %243 = or i32 %242, 2048
  store i32 %243, ptr %209, align 8
  %244 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %245 = icmp eq ptr %244, null
  %246 = and i32 %242, 255
  %247 = icmp eq i32 %246, 2
  %248 = select i1 %245, i1 true, i1 %247, !prof !222
  br i1 %248, label %604, label %249, !prof !222

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.gimple_statement_base, ptr %209, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !118
  %252 = getelementptr inbounds %struct.basic_block_def, ptr %251, i64 0, i32 9
  %253 = load i32, ptr %252, align 8, !tbaa !191
  %254 = load ptr, ptr %244, align 8, !tbaa !223
  %255 = icmp eq ptr %254, null
  br i1 %255, label %270, label %256, !prof !225

256:                                              ; preds = %249
  %257 = lshr i32 %253, 6
  %258 = zext nneg i32 %257 to i64
  %259 = getelementptr inbounds %struct.simple_bitmap_def, ptr %244, i64 0, i32 3, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !226
  %261 = and i32 %253, 63
  %262 = zext nneg i32 %261 to i64
  %263 = shl nuw i64 1, %262
  %264 = and i64 %260, %263
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %256
  %267 = getelementptr inbounds i8, ptr %254, i64 %258
  %268 = load i8, ptr %267, align 1, !tbaa !118
  %269 = add i8 %268, 1
  store i8 %269, ptr %267, align 1, !tbaa !118
  br label %270

270:                                              ; preds = %266, %256, %249
  %271 = and i32 %253, 63
  %272 = zext nneg i32 %271 to i64
  %273 = shl nuw i64 1, %272
  %274 = lshr i32 %253, 6
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds %struct.simple_bitmap_def, ptr %244, i64 0, i32 3, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !226
  %278 = or i64 %277, %273
  store i64 %278, ptr %276, align 8, !tbaa !226
  br label %604

279:                                              ; preds = %218, %218, %218
  call fastcc void @mark_stmt_necessary(ptr noundef nonnull %209, i8 noundef zeroext 1)
  br label %604

280:                                              ; preds = %218
  %281 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %209) #19
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %356, label %283, !prof !227

283:                                              ; preds = %280
  %284 = icmp eq ptr %209, null
  br i1 %284, label %285, label %286, !prof !228

285:                                              ; preds = %283
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.6) #19
  br label %286

286:                                              ; preds = %285, %283
  %287 = load i32, ptr %209, align 8
  %288 = and i32 %287, 2048
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %604, !prof !229

290:                                              ; preds = %286
  %291 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %292 = icmp eq ptr %291, null
  br i1 %292, label %302, label %293, !prof !229

293:                                              ; preds = %290
  %294 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %295 = and i32 %294, 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %293
  %298 = call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %291)
  %299 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %299, ptr noundef nonnull %209, i32 noundef 0, i32 noundef 2) #19
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %301 = call i32 @fputc(i32 10, ptr %300)
  br label %302

302:                                              ; preds = %297, %293, %290
  %303 = load i32, ptr %209, align 8
  %304 = or i32 %303, 2048
  store i32 %304, ptr %209, align 8
  %305 = load ptr, ptr @worklist, align 8, !tbaa !107
  %306 = icmp eq ptr %305, null
  br i1 %306, label %312, label %307, !prof !228

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.VEC_gimple_base, ptr %305, i64 0, i32 1
  %309 = load i32, ptr %308, align 4, !tbaa !230
  %310 = load i32, ptr %305, align 8, !tbaa !232
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %314, !prof !233

312:                                              ; preds = %307, %302
  %313 = call ptr @vec_heap_p_reserve(ptr noundef %305, i32 noundef 1) #19
  store ptr %313, ptr @worklist, align 8, !tbaa !107
  br label %314

314:                                              ; preds = %312, %307
  %315 = load ptr, ptr @worklist, align 8, !tbaa !107
  %316 = load i32, ptr %315, align 8, !tbaa !232
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 8, !tbaa !232
  %318 = zext i32 %316 to i64
  %319 = getelementptr inbounds %struct.VEC_gimple_base, ptr %315, i64 0, i32 2, i64 %318
  store ptr %209, ptr %319, align 8, !tbaa !107
  %320 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %321 = icmp eq ptr %320, null
  br i1 %321, label %604, label %322, !prof !234

322:                                              ; preds = %314
  %323 = load i32, ptr %209, align 8
  %324 = and i32 %323, 255
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %604, label %326, !prof !235

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.gimple_statement_base, ptr %209, i64 0, i32 4
  %328 = load ptr, ptr %327, align 8, !tbaa !118
  %329 = getelementptr inbounds %struct.basic_block_def, ptr %328, i64 0, i32 9
  %330 = load i32, ptr %329, align 8, !tbaa !191
  %331 = load ptr, ptr %320, align 8, !tbaa !223
  %332 = icmp eq ptr %331, null
  br i1 %332, label %347, label %333, !prof !236

333:                                              ; preds = %326
  %334 = lshr i32 %330, 6
  %335 = zext nneg i32 %334 to i64
  %336 = getelementptr inbounds %struct.simple_bitmap_def, ptr %320, i64 0, i32 3, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !226
  %338 = and i32 %330, 63
  %339 = zext nneg i32 %338 to i64
  %340 = shl nuw i64 1, %339
  %341 = and i64 %337, %340
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %333
  %344 = getelementptr inbounds i8, ptr %331, i64 %335
  %345 = load i8, ptr %344, align 1, !tbaa !118
  %346 = add i8 %345, 1
  store i8 %346, ptr %344, align 1, !tbaa !118
  br label %347

347:                                              ; preds = %343, %333, %326
  %348 = and i32 %330, 63
  %349 = zext nneg i32 %348 to i64
  %350 = shl nuw i64 1, %349
  %351 = lshr i32 %330, 6
  %352 = zext nneg i32 %351 to i64
  %353 = getelementptr inbounds %struct.simple_bitmap_def, ptr %320, i64 0, i32 3, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !226
  %355 = or i64 %354, %350
  store i64 %355, ptr %353, align 8, !tbaa !226
  br label %604

356:                                              ; preds = %280
  %357 = load i32, ptr %209, align 8
  %358 = and i32 %357, 255
  %359 = add nsw i32 %358, -10
  %360 = icmp ult i32 %359, -9
  br i1 %360, label %604, label %361

361:                                              ; preds = %356
  %362 = zext nneg i32 %358 to i64
  %363 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !122
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !226
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %370

370:                                              ; preds = %369, %361
  %371 = getelementptr inbounds i8, ptr %209, i64 %367
  %372 = load ptr, ptr %371, align 8, !tbaa !107
  %373 = icmp eq ptr %372, null
  br i1 %373, label %604, label %374

374:                                              ; preds = %370
  %375 = load i32, ptr %209, align 8
  %376 = and i32 %375, 255
  %377 = add nsw i32 %376, -10
  %378 = icmp ult i32 %377, -9
  br i1 %378, label %392, label %379

379:                                              ; preds = %374
  %380 = zext nneg i32 %376 to i64
  %381 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !122
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %383
  %385 = load i64, ptr %384, align 8, !tbaa !226
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %379
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %388

388:                                              ; preds = %387, %379
  %389 = getelementptr inbounds i8, ptr %209, i64 %385
  %390 = load ptr, ptr %389, align 8, !tbaa !107
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %588

392:                                              ; preds = %388, %374, %218
  %393 = load i32, ptr %209, align 8
  %394 = and i32 %393, 255
  %395 = add nsw i32 %394, -10
  %396 = icmp ult i32 %395, -9
  br i1 %396, label %588, label %397, !prof !237

397:                                              ; preds = %392
  %398 = zext nneg i32 %394 to i64
  %399 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !122
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !226
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %588, !prof !237

405:                                              ; preds = %397
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %588

406:                                              ; preds = %218
  %407 = add nsw i32 %220, -10
  %408 = icmp ult i32 %407, -9
  br i1 %408, label %423, label %409

409:                                              ; preds = %406
  %410 = zext nneg i32 %220 to i64
  %411 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %410
  %412 = load i32, ptr %411, align 4, !tbaa !122
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %413
  %415 = load i64, ptr %414, align 8, !tbaa !226
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %409
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %418

418:                                              ; preds = %417, %409
  %419 = getelementptr inbounds i8, ptr %209, i64 %415
  %420 = getelementptr inbounds ptr, ptr %419, i64 1
  %421 = load ptr, ptr %420, align 8, !tbaa !107
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %442

423:                                              ; preds = %418, %406
  %424 = load i32, ptr %209, align 8
  %425 = and i32 %424, 255
  %426 = add nsw i32 %425, -1
  %427 = icmp ult i32 %426, 9
  call void @llvm.assume(i1 %427)
  %428 = zext nneg i32 %425 to i64
  %429 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !122
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %431
  %433 = load i64, ptr %432, align 8, !tbaa !226
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %423
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %436

436:                                              ; preds = %435, %423
  %437 = getelementptr inbounds i8, ptr %209, i64 %433
  %438 = load ptr, ptr %437, align 8, !tbaa !107
  %439 = load i64, ptr %438, align 8
  %440 = and i64 %439, 65535
  %441 = icmp eq i64 %440, 37
  br i1 %441, label %604, label %442

442:                                              ; preds = %436, %418
  %443 = icmp eq ptr %209, null
  br i1 %443, label %444, label %445

444:                                              ; preds = %442
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.6) #19
  br label %445

445:                                              ; preds = %444, %442
  %446 = load i32, ptr %209, align 8
  %447 = and i32 %446, 2048
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %604

449:                                              ; preds = %445
  %450 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %451 = icmp eq ptr %450, null
  br i1 %451, label %461, label %452

452:                                              ; preds = %449
  %453 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %454 = and i32 %453, 8
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %452
  %457 = call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %450)
  %458 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %458, ptr noundef nonnull %209, i32 noundef 0, i32 noundef 2) #19
  %459 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %460 = call i32 @fputc(i32 10, ptr %459)
  br label %461

461:                                              ; preds = %456, %452, %449
  %462 = load i32, ptr %209, align 8
  %463 = or i32 %462, 2048
  store i32 %463, ptr %209, align 8
  %464 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %465 = icmp eq ptr %464, null
  %466 = and i32 %462, 255
  %467 = icmp eq i32 %466, 2
  %468 = select i1 %465, i1 true, i1 %467
  br i1 %468, label %604, label %469

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.gimple_statement_base, ptr %209, i64 0, i32 4
  %471 = load ptr, ptr %470, align 8, !tbaa !118
  %472 = getelementptr inbounds %struct.basic_block_def, ptr %471, i64 0, i32 9
  %473 = load i32, ptr %472, align 8, !tbaa !191
  %474 = load ptr, ptr %464, align 8, !tbaa !223
  %475 = icmp eq ptr %474, null
  br i1 %475, label %490, label %476

476:                                              ; preds = %469
  %477 = lshr i32 %473, 6
  %478 = zext nneg i32 %477 to i64
  %479 = getelementptr inbounds %struct.simple_bitmap_def, ptr %464, i64 0, i32 3, i64 %478
  %480 = load i64, ptr %479, align 8, !tbaa !226
  %481 = and i32 %473, 63
  %482 = zext nneg i32 %481 to i64
  %483 = shl nuw i64 1, %482
  %484 = and i64 %480, %483
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %490

486:                                              ; preds = %476
  %487 = getelementptr inbounds i8, ptr %474, i64 %478
  %488 = load i8, ptr %487, align 1, !tbaa !118
  %489 = add i8 %488, 1
  store i8 %489, ptr %487, align 1, !tbaa !118
  br label %490

490:                                              ; preds = %486, %476, %469
  %491 = and i32 %473, 63
  %492 = zext nneg i32 %491 to i64
  %493 = shl nuw i64 1, %492
  %494 = lshr i32 %473, 6
  %495 = zext nneg i32 %494 to i64
  %496 = getelementptr inbounds %struct.simple_bitmap_def, ptr %464, i64 0, i32 3, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !226
  %498 = or i64 %497, %493
  store i64 %498, ptr %496, align 8, !tbaa !226
  br label %604

499:                                              ; preds = %218
  %500 = call zeroext i8 @simple_goto_p(ptr noundef nonnull %209) #19
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %503, label %502

502:                                              ; preds = %499
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 338, ptr noundef nonnull @.str.6) #19
  br label %503

503:                                              ; preds = %502, %499
  call fastcc void @mark_stmt_necessary(ptr noundef nonnull %209, i8 noundef zeroext 1)
  br label %604

504:                                              ; preds = %218
  %505 = getelementptr inbounds %struct.gimple_statement_base, ptr %209, i64 0, i32 4
  %506 = load ptr, ptr %505, align 8, !tbaa !118
  %507 = getelementptr inbounds %struct.basic_block_def, ptr %506, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !180
  %509 = icmp eq ptr %508, null
  br i1 %509, label %513, label %510, !prof !238

510:                                              ; preds = %504
  %511 = load i32, ptr %508, align 8, !tbaa !183
  %512 = icmp eq i32 %511, 2
  br i1 %512, label %514, label %513, !prof !239

513:                                              ; preds = %510, %504
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 343, ptr noundef nonnull @.str.6) #19
  br label %514

514:                                              ; preds = %218, %513, %510
  br i1 %166, label %515, label %588, !prof !240

515:                                              ; preds = %514
  %516 = icmp eq ptr %209, null
  br i1 %516, label %517, label %518, !prof !228

517:                                              ; preds = %515
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.6) #19
  br label %518

518:                                              ; preds = %517, %515
  %519 = load i32, ptr %209, align 8
  %520 = and i32 %519, 2048
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %588, !prof !229

522:                                              ; preds = %518
  %523 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %524 = icmp eq ptr %523, null
  br i1 %524, label %534, label %525, !prof !229

525:                                              ; preds = %522
  %526 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %527 = and i32 %526, 8
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %534, label %529

529:                                              ; preds = %525
  %530 = call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %523)
  %531 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %531, ptr noundef nonnull %209, i32 noundef 0, i32 noundef 2) #19
  %532 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %533 = call i32 @fputc(i32 10, ptr %532)
  br label %534

534:                                              ; preds = %529, %525, %522
  %535 = load i32, ptr %209, align 8
  %536 = or i32 %535, 2048
  store i32 %536, ptr %209, align 8
  %537 = load ptr, ptr @worklist, align 8, !tbaa !107
  %538 = icmp eq ptr %537, null
  br i1 %538, label %544, label %539, !prof !228

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.VEC_gimple_base, ptr %537, i64 0, i32 1
  %541 = load i32, ptr %540, align 4, !tbaa !230
  %542 = load i32, ptr %537, align 8, !tbaa !232
  %543 = icmp eq i32 %541, %542
  br i1 %543, label %544, label %546, !prof !233

544:                                              ; preds = %539, %534
  %545 = call ptr @vec_heap_p_reserve(ptr noundef %537, i32 noundef 1) #19
  store ptr %545, ptr @worklist, align 8, !tbaa !107
  br label %546

546:                                              ; preds = %544, %539
  %547 = load ptr, ptr @worklist, align 8, !tbaa !107
  %548 = load i32, ptr %547, align 8, !tbaa !232
  %549 = add i32 %548, 1
  store i32 %549, ptr %547, align 8, !tbaa !232
  %550 = zext i32 %548 to i64
  %551 = getelementptr inbounds %struct.VEC_gimple_base, ptr %547, i64 0, i32 2, i64 %550
  store ptr %209, ptr %551, align 8, !tbaa !107
  %552 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %553 = icmp eq ptr %552, null
  br i1 %553, label %588, label %554, !prof !234

554:                                              ; preds = %546
  %555 = load i32, ptr %209, align 8
  %556 = and i32 %555, 255
  %557 = icmp eq i32 %556, 2
  br i1 %557, label %588, label %558, !prof !235

558:                                              ; preds = %554
  %559 = getelementptr inbounds %struct.gimple_statement_base, ptr %209, i64 0, i32 4
  %560 = load ptr, ptr %559, align 8, !tbaa !118
  %561 = getelementptr inbounds %struct.basic_block_def, ptr %560, i64 0, i32 9
  %562 = load i32, ptr %561, align 8, !tbaa !191
  %563 = load ptr, ptr %552, align 8, !tbaa !223
  %564 = icmp eq ptr %563, null
  br i1 %564, label %579, label %565, !prof !236

565:                                              ; preds = %558
  %566 = lshr i32 %562, 6
  %567 = zext nneg i32 %566 to i64
  %568 = getelementptr inbounds %struct.simple_bitmap_def, ptr %552, i64 0, i32 3, i64 %567
  %569 = load i64, ptr %568, align 8, !tbaa !226
  %570 = and i32 %562, 63
  %571 = zext nneg i32 %570 to i64
  %572 = shl nuw i64 1, %571
  %573 = and i64 %569, %572
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %579

575:                                              ; preds = %565
  %576 = getelementptr inbounds i8, ptr %563, i64 %567
  %577 = load i8, ptr %576, align 1, !tbaa !118
  %578 = add i8 %577, 1
  store i8 %578, ptr %576, align 1, !tbaa !118
  br label %579

579:                                              ; preds = %575, %565, %558
  %580 = and i32 %562, 63
  %581 = zext nneg i32 %580 to i64
  %582 = shl nuw i64 1, %581
  %583 = lshr i32 %562, 6
  %584 = zext nneg i32 %583 to i64
  %585 = getelementptr inbounds %struct.simple_bitmap_def, ptr %552, i64 0, i32 3, i64 %584
  %586 = load i64, ptr %585, align 8, !tbaa !226
  %587 = or i64 %586, %582
  store i64 %587, ptr %585, align 8, !tbaa !226
  br label %588

588:                                              ; preds = %579, %554, %546, %518, %392, %514, %405, %397, %388, %218
  %589 = load i32, ptr %209, align 8
  %590 = and i32 %589, 254
  %591 = add nsw i32 %590, -10
  %592 = icmp ult i32 %591, -4
  %593 = and i32 %589, 16384
  %594 = icmp eq i32 %593, 0
  %595 = or i1 %594, %592
  br i1 %595, label %596, label %599, !prof !241

596:                                              ; preds = %588
  %597 = call zeroext i8 @is_ctrl_altering_stmt(ptr noundef nonnull %209) #19
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %600, label %599, !prof !241

599:                                              ; preds = %596, %588
  call fastcc void @mark_stmt_necessary(ptr noundef nonnull %209, i8 noundef zeroext 1)
  br label %604

600:                                              ; preds = %596
  %601 = call zeroext i8 @is_hidden_global_store(ptr noundef nonnull %209) #19
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %604, label %603, !prof !242

603:                                              ; preds = %600
  call fastcc void @mark_stmt_necessary(ptr noundef nonnull %209, i8 noundef zeroext 1)
  br label %604

604:                                              ; preds = %445, %347, %322, %314, %286, %603, %600, %599, %503, %490, %461, %436, %370, %356, %279, %270, %241, %225, %217
  %605 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %208, i64 0, i32 2
  %606 = load ptr, ptr %605, align 8, !tbaa !204
  %607 = icmp eq ptr %606, null
  br i1 %607, label %167, label %207, !prof !243, !llvm.loop !244

608:                                              ; preds = %167, %154
  %609 = load ptr, ptr @current_function_decl, align 8, !tbaa !107
  %610 = load i64, ptr %609, align 8
  %611 = and i64 %610, 1048576
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %618, !prof !245

613:                                              ; preds = %608
  %614 = getelementptr inbounds %struct.tree_function_decl, ptr %609, i64 0, i32 5
  %615 = load i32, ptr %614, align 8
  %616 = and i32 %615, 134217728
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %625, label %618, !prof !245

618:                                              ; preds = %613, %608
  %619 = getelementptr inbounds %struct.tree_function_decl, ptr %609, i64 0, i32 5
  %620 = load i32, ptr %619, align 8
  %621 = and i32 %620, 268435456
  %622 = icmp eq i32 %621, 0
  %623 = icmp eq ptr %155, null
  %624 = or i1 %623, %622
  br i1 %624, label %831, label %627

625:                                              ; preds = %613
  %626 = icmp eq ptr %155, null
  br i1 %626, label %831, label %627, !prof !165

627:                                              ; preds = %625, %618
  call void @scev_initialize() #19
  %628 = call zeroext i8 @mark_irreducible_loops() #19
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %698, label %630, !prof !166

630:                                              ; preds = %627
  %631 = load ptr, ptr @cfun, align 8, !tbaa !107
  %632 = getelementptr inbounds %struct.function, ptr %631, i64 0, i32 1
  %633 = load ptr, ptr %632, align 8, !tbaa !173
  %634 = load ptr, ptr %633, align 8, !tbaa !178
  %635 = getelementptr inbounds %struct.basic_block_def, ptr %634, i64 0, i32 6
  %636 = load ptr, ptr %635, align 8, !tbaa !196
  %637 = getelementptr inbounds %struct.control_flow_graph, ptr %633, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !175
  %639 = icmp eq ptr %636, %638
  br i1 %639, label %698, label %649

640:                                              ; preds = %665
  %641 = getelementptr inbounds %struct.basic_block_def, ptr %650, i64 0, i32 6
  %642 = load ptr, ptr %641, align 8, !tbaa !196
  %643 = load ptr, ptr @cfun, align 8, !tbaa !107
  %644 = getelementptr inbounds %struct.function, ptr %643, i64 0, i32 1
  %645 = load ptr, ptr %644, align 8, !tbaa !173
  %646 = getelementptr inbounds %struct.control_flow_graph, ptr %645, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !175
  %648 = icmp eq ptr %642, %647
  br i1 %648, label %698, label %649, !llvm.loop !246

649:                                              ; preds = %630, %640
  %650 = phi ptr [ %642, %640 ], [ %636, %630 ]
  %651 = getelementptr inbounds %struct.basic_block_def, ptr %650, i64 0, i32 1
  br label %652

652:                                              ; preds = %696, %649
  %653 = phi i32 [ 0, %649 ], [ %697, %696 ]
  %654 = load ptr, ptr %651, align 8, !tbaa !107
  %655 = icmp eq ptr %654, null
  br i1 %655, label %658, label %656

656:                                              ; preds = %652
  %657 = load i32, ptr %654, align 8, !tbaa !183
  br label %658

658:                                              ; preds = %656, %652
  %659 = phi i32 [ %657, %656 ], [ 0, %652 ]
  %660 = icmp eq i32 %659, %653
  br i1 %660, label %665, label %661

661:                                              ; preds = %658
  %662 = zext i32 %653 to i64
  %663 = getelementptr inbounds %struct.VEC_edge_base, ptr %654, i64 0, i32 2, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !107
  br label %665

665:                                              ; preds = %661, %658
  %666 = phi ptr [ %664, %661 ], [ null, %658 ]
  br i1 %660, label %640, label %667

667:                                              ; preds = %665
  %668 = getelementptr inbounds %struct.edge_def, ptr %666, i64 0, i32 7
  %669 = load i32, ptr %668, align 8, !tbaa !189
  %670 = and i32 %669, 160
  %671 = icmp eq i32 %670, 160
  br i1 %671, label %672, label %687

672:                                              ; preds = %667
  %673 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %674 = icmp eq ptr %673, null
  br i1 %674, label %684, label %675

675:                                              ; preds = %672
  %676 = load ptr, ptr %666, align 8, !tbaa !171
  %677 = getelementptr inbounds %struct.basic_block_def, ptr %676, i64 0, i32 9
  %678 = load i32, ptr %677, align 8, !tbaa !191
  %679 = getelementptr inbounds %struct.edge_def, ptr %666, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !186
  %681 = getelementptr inbounds %struct.basic_block_def, ptr %680, i64 0, i32 9
  %682 = load i32, ptr %681, align 8, !tbaa !191
  %683 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %673, ptr noundef nonnull @.str.12, i32 noundef %678, i32 noundef %682)
  br label %684

684:                                              ; preds = %675, %672
  %685 = getelementptr inbounds %struct.edge_def, ptr %666, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !186
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %686, ptr noundef nonnull %155)
  br label %687

687:                                              ; preds = %684, %667
  %688 = load ptr, ptr %651, align 8, !tbaa !107
  %689 = icmp eq ptr %688, null
  br i1 %689, label %692, label %690

690:                                              ; preds = %687
  %691 = load i32, ptr %688, align 8, !tbaa !183
  br label %692

692:                                              ; preds = %690, %687
  %693 = phi i32 [ %691, %690 ], [ 0, %687 ]
  %694 = icmp ult i32 %653, %693
  br i1 %694, label %696, label %695

695:                                              ; preds = %692
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.6) #19
  br label %696

696:                                              ; preds = %695, %692
  %697 = add i32 %653, 1
  br label %652, !llvm.loop !247

698:                                              ; preds = %640, %630, %627
  %699 = load ptr, ptr @cfun, align 8, !tbaa !107
  %700 = getelementptr inbounds %struct.function, ptr %699, i64 0, i32 4
  %701 = load ptr, ptr %700, align 8, !tbaa !248
  %702 = icmp eq ptr %701, null
  br i1 %702, label %778, label %703, !prof !182

703:                                              ; preds = %698
  %704 = getelementptr inbounds %struct.loops, ptr %701, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !249
  %706 = icmp eq ptr %705, null
  br i1 %706, label %709, label %707, !prof !182

707:                                              ; preds = %703
  %708 = load i32, ptr %705, align 8, !tbaa !251
  br label %709

709:                                              ; preds = %707, %703
  %710 = phi i32 [ %708, %707 ], [ 0, %703 ]
  %711 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %710, i64 noundef 8, i64 noundef 4) #19
  %712 = load ptr, ptr @cfun, align 8, !tbaa !107
  %713 = getelementptr inbounds %struct.function, ptr %712, i64 0, i32 4
  %714 = load ptr, ptr %713, align 8, !tbaa !248
  %715 = getelementptr inbounds %struct.loops, ptr %714, i64 0, i32 3
  %716 = load ptr, ptr %715, align 8, !tbaa !253
  br label %717

717:                                              ; preds = %730, %709
  %718 = phi ptr [ %716, %709 ], [ %731, %730 ]
  %719 = load i32, ptr %718, align 8, !tbaa !254
  %720 = icmp sgt i32 %719, 0
  br i1 %720, label %721, label %726, !prof !182

721:                                              ; preds = %717
  %722 = load i32, ptr %711, align 4, !tbaa !258
  %723 = add i32 %722, 1
  store i32 %723, ptr %711, align 4, !tbaa !258
  %724 = zext i32 %722 to i64
  %725 = getelementptr inbounds %struct.VEC_int_base, ptr %711, i64 0, i32 2, i64 %724
  store i32 %719, ptr %725, align 4, !tbaa !122
  br label %726

726:                                              ; preds = %721, %717
  %727 = getelementptr inbounds %struct.loop, ptr %718, i64 0, i32 8
  %728 = load ptr, ptr %727, align 8, !tbaa !260
  %729 = icmp eq ptr %728, null
  br i1 %729, label %734, label %730, !prof !166

730:                                              ; preds = %734, %726
  %731 = phi ptr [ %728, %726 ], [ %737, %734 ]
  br label %717, !llvm.loop !261

732:                                              ; preds = %753
  %733 = icmp eq ptr %711, null
  br label %756

734:                                              ; preds = %726, %753
  %735 = phi ptr [ %754, %753 ], [ %718, %726 ]
  %736 = getelementptr inbounds %struct.loop, ptr %735, i64 0, i32 9
  %737 = load ptr, ptr %736, align 8, !tbaa !262
  %738 = icmp eq ptr %737, null
  br i1 %738, label %739, label %730, !prof !166, !llvm.loop !261

739:                                              ; preds = %734
  %740 = getelementptr inbounds %struct.loop, ptr %735, i64 0, i32 7
  %741 = load ptr, ptr %740, align 8, !tbaa !263
  %742 = icmp eq ptr %741, null
  br i1 %742, label %745, label %743, !prof !166

743:                                              ; preds = %739
  %744 = load i32, ptr %741, align 8, !tbaa !251
  br label %745

745:                                              ; preds = %743, %739
  %746 = phi i32 [ %744, %743 ], [ 0, %739 ]
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %753, label %748, !prof !166

748:                                              ; preds = %745
  %749 = add i32 %746, -1
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %741, i64 0, i32 2, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !107
  br label %753

753:                                              ; preds = %748, %745
  %754 = phi ptr [ %752, %748 ], [ null, %745 ]
  %755 = icmp eq ptr %754, null
  br i1 %755, label %732, label %734, !prof !166, !llvm.loop !264

756:                                              ; preds = %732, %768
  %757 = phi i32 [ %770, %768 ], [ 0, %732 ]
  br i1 %733, label %765, label %758, !prof !182

758:                                              ; preds = %756
  %759 = load i32, ptr %711, align 4, !tbaa !258
  %760 = icmp ugt i32 %759, %757
  br i1 %760, label %761, label %765, !prof !182

761:                                              ; preds = %758
  %762 = zext i32 %757 to i64
  %763 = getelementptr inbounds %struct.VEC_int_base, ptr %711, i64 0, i32 2, i64 %762
  %764 = load i32, ptr %763, align 4, !tbaa !122
  br label %765

765:                                              ; preds = %761, %758, %756
  %766 = phi i32 [ %764, %761 ], [ 0, %758 ], [ 0, %756 ]
  %767 = phi i1 [ false, %761 ], [ true, %758 ], [ true, %756 ]
  br i1 %767, label %776, label %768, !prof !166

768:                                              ; preds = %765
  %769 = getelementptr inbounds %struct.loops, ptr %714, i64 0, i32 1
  %770 = add i32 %757, 1
  %771 = load ptr, ptr %769, align 8, !tbaa !249
  %772 = zext i32 %766 to i64
  %773 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %771, i64 0, i32 2, i64 %772
  %774 = load ptr, ptr %773, align 8, !tbaa !107
  %775 = icmp eq ptr %774, null
  br i1 %775, label %756, label %778, !llvm.loop !265

776:                                              ; preds = %765
  br i1 %733, label %778, label %777, !prof !182

777:                                              ; preds = %776
  call void @free(ptr noundef %711)
  br label %778

778:                                              ; preds = %768, %777, %776, %698
  %779 = phi i32 [ 0, %698 ], [ %757, %777 ], [ %757, %776 ], [ %770, %768 ]
  %780 = phi ptr [ null, %698 ], [ null, %777 ], [ null, %776 ], [ %711, %768 ]
  %781 = phi ptr [ null, %698 ], [ null, %777 ], [ null, %776 ], [ %774, %768 ]
  %782 = icmp eq ptr %781, null
  br i1 %782, label %830, label %783, !prof !266

783:                                              ; preds = %778, %825
  %784 = phi ptr [ %828, %825 ], [ %781, %778 ]
  %785 = phi ptr [ %827, %825 ], [ %780, %778 ]
  %786 = phi i32 [ %826, %825 ], [ %779, %778 ]
  %787 = call zeroext i8 @finite_loop_p(ptr noundef nonnull %784) #19
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %789, label %798

789:                                              ; preds = %783
  %790 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %791 = icmp eq ptr %790, null
  br i1 %791, label %795, label %792

792:                                              ; preds = %789
  %793 = load i32, ptr %784, align 8, !tbaa !254
  %794 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %790, ptr noundef nonnull @.str.13, i32 noundef %793)
  br label %795

795:                                              ; preds = %792, %789
  %796 = getelementptr inbounds %struct.loop, ptr %784, i64 0, i32 3
  %797 = load ptr, ptr %796, align 8, !tbaa !267
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %797, ptr noundef nonnull %155)
  br label %798

798:                                              ; preds = %795, %783
  %799 = icmp eq ptr %785, null
  %800 = load ptr, ptr @cfun, align 8
  %801 = getelementptr inbounds %struct.function, ptr %800, i64 0, i32 4
  br label %802

802:                                              ; preds = %814, %798
  %803 = phi i32 [ %786, %798 ], [ %815, %814 ]
  br i1 %799, label %811, label %804

804:                                              ; preds = %802
  %805 = load i32, ptr %785, align 4, !tbaa !258
  %806 = icmp ugt i32 %805, %803
  br i1 %806, label %807, label %811

807:                                              ; preds = %804
  %808 = zext i32 %803 to i64
  %809 = getelementptr inbounds %struct.VEC_int_base, ptr %785, i64 0, i32 2, i64 %808
  %810 = load i32, ptr %809, align 4, !tbaa !122
  br label %811

811:                                              ; preds = %807, %804, %802
  %812 = phi i32 [ %810, %807 ], [ 0, %804 ], [ 0, %802 ]
  %813 = phi i1 [ false, %807 ], [ true, %804 ], [ true, %802 ]
  br i1 %813, label %823, label %814

814:                                              ; preds = %811
  %815 = add i32 %803, 1
  %816 = load ptr, ptr %801, align 8, !tbaa !248
  %817 = getelementptr inbounds %struct.loops, ptr %816, i64 0, i32 1
  %818 = load ptr, ptr %817, align 8, !tbaa !249
  %819 = zext i32 %812 to i64
  %820 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %818, i64 0, i32 2, i64 %819
  %821 = load ptr, ptr %820, align 8, !tbaa !107
  %822 = icmp eq ptr %821, null
  br i1 %822, label %802, label %825, !llvm.loop !265

823:                                              ; preds = %811
  br i1 %799, label %825, label %824

824:                                              ; preds = %823
  call void @free(ptr noundef %785)
  br label %825

825:                                              ; preds = %814, %824, %823
  %826 = phi i32 [ %803, %824 ], [ %803, %823 ], [ %815, %814 ]
  %827 = phi ptr [ null, %824 ], [ null, %823 ], [ %785, %814 ]
  %828 = phi ptr [ null, %824 ], [ null, %823 ], [ %821, %814 ]
  %829 = icmp eq ptr %828, null
  br i1 %829, label %830, label %783, !prof !266, !llvm.loop !268

830:                                              ; preds = %825, %778
  call void @scev_finalize() #19
  br label %831

831:                                              ; preds = %625, %618, %830
  br i1 %11, label %833, label %832, !prof !165

832:                                              ; preds = %831
  call void @loop_optimizer_finalize() #19
  br label %833

833:                                              ; preds = %832, %831
  store i32 0, ptr @longest_chain, align 4, !tbaa !122
  store i32 0, ptr @total_chain, align 4, !tbaa !122
  store i32 0, ptr @nr_walks, align 4, !tbaa !122
  store i1 false, ptr @chain_ovfl, align 1
  %834 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %834, ptr @visited, align 8, !tbaa !107
  %835 = icmp eq ptr %155, null
  %836 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %837 = icmp eq ptr %836, null
  br i1 %837, label %844, label %838, !prof !245

838:                                              ; preds = %833
  %839 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %840 = and i32 %839, 8
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %844, label %842

842:                                              ; preds = %838
  %843 = call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %836)
  br label %844

844:                                              ; preds = %842, %838, %833
  %845 = getelementptr inbounds %struct.edge_list, ptr %155, i64 0, i32 2
  br label %846

846:                                              ; preds = %1690, %844
  %847 = load ptr, ptr @worklist, align 8
  %848 = icmp eq ptr %847, null
  br i1 %848, label %851, label %849, !prof !269

849:                                              ; preds = %846
  %850 = load i32, ptr %847, align 8, !tbaa !232
  br label %851

851:                                              ; preds = %849, %846
  %852 = phi i32 [ %850, %849 ], [ 0, %846 ]
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %1691, label %854, !prof !270

854:                                              ; preds = %851
  %855 = load i32, ptr %847, align 8, !tbaa !232
  %856 = add i32 %855, -1
  store i32 %856, ptr %847, align 8, !tbaa !232
  %857 = zext i32 %856 to i64
  %858 = getelementptr inbounds %struct.VEC_gimple_base, ptr %847, i64 0, i32 2, i64 %857
  %859 = load ptr, ptr %858, align 8, !tbaa !107
  %860 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %861 = icmp eq ptr %860, null
  br i1 %861, label %871, label %862, !prof !271

862:                                              ; preds = %854
  %863 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %864 = and i32 %863, 8
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %871, label %866

866:                                              ; preds = %862
  %867 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr nonnull %860)
  %868 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %868, ptr noundef %859, i32 noundef 0, i32 noundef 2) #19
  %869 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %870 = call i32 @fputc(i32 10, ptr %869)
  br label %871

871:                                              ; preds = %866, %862, %854
  br i1 %835, label %1127, label %872, !prof !272

872:                                              ; preds = %871
  %873 = getelementptr inbounds %struct.gimple_statement_base, ptr %859, i64 0, i32 4
  %874 = load ptr, ptr %873, align 8, !tbaa !118
  %875 = load ptr, ptr @cfun, align 8, !tbaa !107
  %876 = getelementptr inbounds %struct.function, ptr %875, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !173
  %878 = load ptr, ptr %877, align 8, !tbaa !178
  %879 = icmp eq ptr %874, %878
  br i1 %879, label %1127, label %880, !prof !273

880:                                              ; preds = %872
  %881 = load ptr, ptr @visited_control_parents, align 8, !tbaa !107
  %882 = getelementptr inbounds %struct.basic_block_def, ptr %874, i64 0, i32 9
  %883 = load i32, ptr %882, align 8, !tbaa !191
  %884 = lshr i32 %883, 6
  %885 = zext nneg i32 %884 to i64
  %886 = getelementptr inbounds %struct.simple_bitmap_def, ptr %881, i64 0, i32 3, i64 %885
  %887 = load i64, ptr %886, align 8, !tbaa !226
  %888 = and i32 %883, 63
  %889 = zext nneg i32 %888 to i64
  %890 = shl nuw i64 1, %889
  %891 = and i64 %890, %887
  %892 = icmp eq i64 %891, 0
  br i1 %892, label %893, label %1127, !prof !274

893:                                              ; preds = %880
  %894 = load ptr, ptr %881, align 8, !tbaa !223
  %895 = icmp eq ptr %894, null
  br i1 %895, label %900, label %896, !prof !275

896:                                              ; preds = %893
  %897 = getelementptr inbounds i8, ptr %894, i64 %885
  %898 = load i8, ptr %897, align 1, !tbaa !118
  %899 = add i8 %898, 1
  store i8 %899, ptr %897, align 1, !tbaa !118
  br label %900

900:                                              ; preds = %896, %893
  %901 = load i64, ptr %886, align 8, !tbaa !226
  %902 = or i64 %901, %890
  store i64 %902, ptr %886, align 8, !tbaa !226
  %903 = load ptr, ptr @cfun, align 8, !tbaa !107
  %904 = getelementptr inbounds %struct.function, ptr %903, i64 0, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !173
  %906 = getelementptr inbounds %struct.control_flow_graph, ptr %905, i64 0, i32 1
  %907 = load ptr, ptr %906, align 8, !tbaa !175
  %908 = icmp eq ptr %907, %874
  br i1 %908, label %909, label %910, !prof !276

909:                                              ; preds = %900
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 383, ptr noundef nonnull @.str.6) #19
  br label %910

910:                                              ; preds = %909, %900
  %911 = load ptr, ptr @cfun, align 8, !tbaa !107
  %912 = getelementptr inbounds %struct.function, ptr %911, i64 0, i32 1
  %913 = load ptr, ptr %912, align 8, !tbaa !173
  %914 = load ptr, ptr %913, align 8, !tbaa !178
  %915 = icmp eq ptr %914, %874
  br i1 %915, label %1127, label %916, !prof !276

916:                                              ; preds = %910
  %917 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  %918 = load i32, ptr %882, align 8, !tbaa !191
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds ptr, ptr %917, i64 %919
  %921 = load ptr, ptr %920, align 8, !tbaa !107
  %922 = load ptr, ptr %921, align 8, !tbaa !277
  %923 = icmp eq ptr %922, null
  %924 = select i1 %923, ptr @bitmap_zero_bits, ptr %922, !prof !279
  %925 = getelementptr inbounds %struct.bitmap_element_def, ptr %924, i64 0, i32 2
  %926 = load i32, ptr %925, align 8, !tbaa !280
  %927 = shl i32 %926, 7
  %928 = getelementptr inbounds %struct.bitmap_element_def, ptr %924, i64 0, i32 3
  %929 = load i64, ptr %928, align 8, !tbaa !226
  %930 = icmp eq i64 %929, 0
  %931 = zext i1 %930 to i32
  %932 = or disjoint i32 %927, %931
  br label %933

933:                                              ; preds = %1124, %916
  %934 = phi i32 [ 0, %916 ], [ %989, %1124 ]
  %935 = phi i64 [ %929, %916 ], [ %1125, %1124 ]
  %936 = phi ptr [ %924, %916 ], [ %991, %1124 ]
  %937 = phi i32 [ %932, %916 ], [ %1126, %1124 ]
  %938 = icmp eq i64 %935, 0
  br i1 %938, label %953, label %939, !prof !282

939:                                              ; preds = %967, %933
  %940 = phi i32 [ %934, %933 ], [ %968, %967 ]
  %941 = phi i64 [ %935, %933 ], [ %972, %967 ]
  %942 = phi ptr [ %936, %933 ], [ %959, %967 ]
  %943 = phi i32 [ %937, %933 ], [ %969, %967 ]
  %944 = and i64 %941, 1
  %945 = icmp eq i64 %944, 0
  br i1 %945, label %946, label %988, !prof !283

946:                                              ; preds = %939, %946
  %947 = phi i32 [ %950, %946 ], [ %943, %939 ]
  %948 = phi i64 [ %949, %946 ], [ %941, %939 ]
  %949 = lshr exact i64 %948, 1
  %950 = add i32 %947, 1
  %951 = and i64 %948, 2
  %952 = icmp eq i64 %951, 0
  br i1 %952, label %946, label %988, !prof !284, !llvm.loop !285

953:                                              ; preds = %933
  %954 = add i32 %937, 63
  %955 = and i32 %954, -64
  %956 = add i32 %934, 1
  br label %957

957:                                              ; preds = %984, %953
  %958 = phi i64 [ %935, %953 ], [ %979, %984 ]
  %959 = phi ptr [ %936, %953 ], [ %982, %984 ]
  %960 = phi i32 [ %955, %953 ], [ %987, %984 ]
  %961 = phi i32 [ %956, %953 ], [ 0, %984 ]
  %962 = icmp eq i32 %961, 2
  br i1 %962, label %978, label %963, !prof !286

963:                                              ; preds = %957
  %964 = add i32 %960, 128
  %965 = shl i32 %961, 6
  %966 = sub i32 %964, %965
  br label %967

967:                                              ; preds = %974, %963
  %968 = phi i32 [ %976, %974 ], [ %961, %963 ]
  %969 = phi i32 [ %975, %974 ], [ %960, %963 ]
  %970 = zext i32 %968 to i64
  %971 = getelementptr inbounds %struct.bitmap_element_def, ptr %959, i64 0, i32 3, i64 %970
  %972 = load i64, ptr %971, align 8, !tbaa !226
  %973 = icmp eq i64 %972, 0
  br i1 %973, label %974, label %939, !prof !287

974:                                              ; preds = %967
  %975 = add i32 %969, 64
  %976 = add i32 %968, 1
  %977 = icmp eq i32 %976, 2
  br i1 %977, label %978, label %967, !prof !288, !llvm.loop !289

978:                                              ; preds = %974, %957
  %979 = phi i64 [ %958, %957 ], [ %972, %974 ]
  %980 = phi i32 [ %960, %957 ], [ %966, %974 ]
  %981 = phi i32 [ %961, %957 ], [ 2, %974 ]
  %982 = load ptr, ptr %959, align 8, !tbaa !290
  %983 = icmp eq ptr %982, null
  br i1 %983, label %988, label %984, !prof !291

984:                                              ; preds = %978
  %985 = getelementptr inbounds %struct.bitmap_element_def, ptr %982, i64 0, i32 2
  %986 = load i32, ptr %985, align 8, !tbaa !280
  %987 = shl i32 %986, 7
  br label %957, !llvm.loop !292

988:                                              ; preds = %978, %946, %939
  %989 = phi i32 [ %940, %939 ], [ %940, %946 ], [ %981, %978 ]
  %990 = phi i64 [ %941, %939 ], [ %949, %946 ], [ %979, %978 ]
  %991 = phi ptr [ %942, %939 ], [ %942, %946 ], [ %982, %978 ]
  %992 = phi i32 [ %943, %939 ], [ %950, %946 ], [ %980, %978 ]
  %993 = phi i1 [ false, %939 ], [ false, %946 ], [ true, %978 ]
  br i1 %993, label %1127, label %994, !prof !293

994:                                              ; preds = %988
  %995 = load ptr, ptr %845, align 8, !tbaa !170
  %996 = zext i32 %992 to i64
  %997 = getelementptr inbounds ptr, ptr %995, i64 %996
  %998 = load ptr, ptr %997, align 8, !tbaa !107
  %999 = load ptr, ptr %998, align 8, !tbaa !171
  %1000 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !107
  %1001 = getelementptr inbounds %struct.basic_block_def, ptr %999, i64 0, i32 9
  %1002 = load i32, ptr %1001, align 8, !tbaa !191
  %1003 = lshr i32 %1002, 6
  %1004 = zext nneg i32 %1003 to i64
  %1005 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1000, i64 0, i32 3, i64 %1004
  %1006 = load i64, ptr %1005, align 8, !tbaa !226
  %1007 = and i32 %1002, 63
  %1008 = zext nneg i32 %1007 to i64
  %1009 = shl nuw i64 1, %1008
  %1010 = and i64 %1009, %1006
  %1011 = icmp eq i64 %1010, 0
  br i1 %1011, label %1012, label %1124, !prof !294

1012:                                             ; preds = %994
  %1013 = load ptr, ptr %1000, align 8, !tbaa !223
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1019, label %1015, !prof !295

1015:                                             ; preds = %1012
  %1016 = getelementptr inbounds i8, ptr %1013, i64 %1004
  %1017 = load i8, ptr %1016, align 1, !tbaa !118
  %1018 = add i8 %1017, 1
  store i8 %1018, ptr %1016, align 1, !tbaa !118
  br label %1019

1019:                                             ; preds = %1015, %1012
  %1020 = load i64, ptr %1005, align 8, !tbaa !226
  %1021 = or i64 %1020, %1009
  store i64 %1021, ptr %1005, align 8, !tbaa !226
  %1022 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %1023 = load i32, ptr %1001, align 8, !tbaa !191
  %1024 = load ptr, ptr %1022, align 8, !tbaa !223
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1040, label %1026, !prof !295

1026:                                             ; preds = %1019
  %1027 = lshr i32 %1023, 6
  %1028 = zext nneg i32 %1027 to i64
  %1029 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1022, i64 0, i32 3, i64 %1028
  %1030 = load i64, ptr %1029, align 8, !tbaa !226
  %1031 = and i32 %1023, 63
  %1032 = zext nneg i32 %1031 to i64
  %1033 = shl nuw i64 1, %1032
  %1034 = and i64 %1030, %1033
  %1035 = icmp eq i64 %1034, 0
  br i1 %1035, label %1036, label %1040

1036:                                             ; preds = %1026
  %1037 = getelementptr inbounds i8, ptr %1024, i64 %1028
  %1038 = load i8, ptr %1037, align 1, !tbaa !118
  %1039 = add i8 %1038, 1
  store i8 %1039, ptr %1037, align 1, !tbaa !118
  br label %1040

1040:                                             ; preds = %1036, %1026, %1019
  %1041 = and i32 %1023, 63
  %1042 = zext nneg i32 %1041 to i64
  %1043 = shl nuw i64 1, %1042
  %1044 = lshr i32 %1023, 6
  %1045 = zext nneg i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1022, i64 0, i32 3, i64 %1045
  %1047 = load i64, ptr %1046, align 8, !tbaa !226
  %1048 = or i64 %1047, %1043
  store i64 %1048, ptr %1046, align 8, !tbaa !226
  %1049 = call ptr @last_stmt(ptr noundef %999) #19
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1124, label %1051, !prof !296

1051:                                             ; preds = %1040
  %1052 = call zeroext i8 @is_ctrl_stmt(ptr noundef nonnull %1049) #19
  %1053 = icmp eq i8 %1052, 0
  br i1 %1053, label %1124, label %1054, !prof !296

1054:                                             ; preds = %1051
  %1055 = load i32, ptr %1049, align 8
  %1056 = and i32 %1055, 2048
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1058, label %1124, !prof !229

1058:                                             ; preds = %1054
  %1059 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1070, label %1061, !prof !229

1061:                                             ; preds = %1058
  %1062 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %1063 = and i32 %1062, 8
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1070, label %1065

1065:                                             ; preds = %1061
  %1066 = call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %1059)
  %1067 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %1067, ptr noundef nonnull %1049, i32 noundef 0, i32 noundef 2) #19
  %1068 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1069 = call i32 @fputc(i32 10, ptr %1068)
  br label %1070

1070:                                             ; preds = %1065, %1061, %1058
  %1071 = load i32, ptr %1049, align 8
  %1072 = or i32 %1071, 2048
  store i32 %1072, ptr %1049, align 8
  %1073 = load ptr, ptr @worklist, align 8, !tbaa !107
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1080, label %1075, !prof !228

1075:                                             ; preds = %1070
  %1076 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1073, i64 0, i32 1
  %1077 = load i32, ptr %1076, align 4, !tbaa !230
  %1078 = load i32, ptr %1073, align 8, !tbaa !232
  %1079 = icmp eq i32 %1077, %1078
  br i1 %1079, label %1080, label %1082, !prof !233

1080:                                             ; preds = %1075, %1070
  %1081 = call ptr @vec_heap_p_reserve(ptr noundef %1073, i32 noundef 1) #19
  store ptr %1081, ptr @worklist, align 8, !tbaa !107
  br label %1082

1082:                                             ; preds = %1080, %1075
  %1083 = load ptr, ptr @worklist, align 8, !tbaa !107
  %1084 = load i32, ptr %1083, align 8, !tbaa !232
  %1085 = add i32 %1084, 1
  store i32 %1085, ptr %1083, align 8, !tbaa !232
  %1086 = zext i32 %1084 to i64
  %1087 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1083, i64 0, i32 2, i64 %1086
  store ptr %1049, ptr %1087, align 8, !tbaa !107
  %1088 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1124, label %1090, !prof !234

1090:                                             ; preds = %1082
  %1091 = load i32, ptr %1049, align 8
  %1092 = and i32 %1091, 255
  %1093 = icmp eq i32 %1092, 2
  br i1 %1093, label %1124, label %1094, !prof !235

1094:                                             ; preds = %1090
  %1095 = getelementptr inbounds %struct.gimple_statement_base, ptr %1049, i64 0, i32 4
  %1096 = load ptr, ptr %1095, align 8, !tbaa !118
  %1097 = getelementptr inbounds %struct.basic_block_def, ptr %1096, i64 0, i32 9
  %1098 = load i32, ptr %1097, align 8, !tbaa !191
  %1099 = load ptr, ptr %1088, align 8, !tbaa !223
  %1100 = icmp eq ptr %1099, null
  br i1 %1100, label %1115, label %1101, !prof !236

1101:                                             ; preds = %1094
  %1102 = lshr i32 %1098, 6
  %1103 = zext nneg i32 %1102 to i64
  %1104 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1088, i64 0, i32 3, i64 %1103
  %1105 = load i64, ptr %1104, align 8, !tbaa !226
  %1106 = and i32 %1098, 63
  %1107 = zext nneg i32 %1106 to i64
  %1108 = shl nuw i64 1, %1107
  %1109 = and i64 %1105, %1108
  %1110 = icmp eq i64 %1109, 0
  br i1 %1110, label %1111, label %1115

1111:                                             ; preds = %1101
  %1112 = getelementptr inbounds i8, ptr %1099, i64 %1103
  %1113 = load i8, ptr %1112, align 1, !tbaa !118
  %1114 = add i8 %1113, 1
  store i8 %1114, ptr %1112, align 1, !tbaa !118
  br label %1115

1115:                                             ; preds = %1111, %1101, %1094
  %1116 = and i32 %1098, 63
  %1117 = zext nneg i32 %1116 to i64
  %1118 = shl nuw i64 1, %1117
  %1119 = lshr i32 %1098, 6
  %1120 = zext nneg i32 %1119 to i64
  %1121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1088, i64 0, i32 3, i64 %1120
  %1122 = load i64, ptr %1121, align 8, !tbaa !226
  %1123 = or i64 %1122, %1118
  store i64 %1123, ptr %1121, align 8, !tbaa !226
  br label %1124

1124:                                             ; preds = %1115, %1090, %1082, %1054, %1051, %1040, %994
  %1125 = lshr i64 %990, 1
  %1126 = add i32 %992, 1
  br label %933, !llvm.loop !297

1127:                                             ; preds = %988, %910, %880, %872, %871
  %1128 = load i32, ptr %859, align 8
  %1129 = and i32 %1128, 255
  %1130 = icmp eq i32 %1129, 16
  br i1 %1130, label %1131, label %1231, !prof !298

1131:                                             ; preds = %1127
  %1132 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 3
  %1133 = load ptr, ptr %1132, align 8, !tbaa !118
  %1134 = call zeroext i8 @is_gimple_reg(ptr noundef %1133) #19
  %1135 = icmp eq i8 %1134, 0
  br i1 %1135, label %1231, label %1136, !prof !299

1136:                                             ; preds = %1131
  %1137 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 2
  %1138 = load i32, ptr %1137, align 4, !tbaa !118
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1161, label %1140, !prof !300

1140:                                             ; preds = %1136
  %1141 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 1
  br label %1142

1142:                                             ; preds = %1140, %1156
  %1143 = phi i64 [ 0, %1140 ], [ %1157, %1156 ]
  %1144 = trunc i64 %1143 to i32
  %1145 = load i32, ptr %1141, align 8, !tbaa !118
  %1146 = icmp ult i32 %1145, %1144
  br i1 %1146, label %1147, label %1148, !prof !301

1147:                                             ; preds = %1142
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
  br label %1148

1148:                                             ; preds = %1147, %1142
  %1149 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 4, i64 %1143, i32 0, i32 3
  %1150 = load ptr, ptr %1149, align 8, !tbaa !137
  %1151 = load ptr, ptr %1150, align 8, !tbaa !107
  %1152 = load i64, ptr %1151, align 8
  %1153 = and i64 %1152, 65535
  %1154 = icmp eq i64 %1153, 141
  br i1 %1154, label %1155, label %1156, !prof !302

1155:                                             ; preds = %1148
  call fastcc void @mark_operand_necessary(ptr noundef nonnull %1151)
  br label %1156

1156:                                             ; preds = %1155, %1148
  %1157 = add nuw nsw i64 %1143, 1
  %1158 = load i32, ptr %1137, align 4, !tbaa !118
  %1159 = zext i32 %1158 to i64
  %1160 = icmp ult i64 %1157, %1159
  br i1 %1160, label %1142, label %1161, !prof !303, !llvm.loop !304

1161:                                             ; preds = %1156, %1136
  %1162 = phi i32 [ %1138, %1136 ], [ %1158, %1156 ]
  %1163 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 2
  br i1 %835, label %1690, label %1164, !prof !305

1164:                                             ; preds = %1161
  %1165 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 1
  %1166 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 4, i64 0, i32 0, i32 3
  %1167 = load ptr, ptr %1166, align 8, !tbaa !137
  %1168 = load ptr, ptr %1167, align 8, !tbaa !107
  %1169 = icmp ugt i32 %1162, 1
  br i1 %1169, label %1175, label %1690, !prof !306

1170:                                             ; preds = %1181
  %1171 = add nuw nsw i64 %1176, 1
  %1172 = load i32, ptr %1163, align 4, !tbaa !118
  %1173 = zext i32 %1172 to i64
  %1174 = icmp ult i64 %1171, %1173
  br i1 %1174, label %1175, label %1690, !prof !307, !llvm.loop !308

1175:                                             ; preds = %1164, %1170
  %1176 = phi i64 [ %1171, %1170 ], [ 1, %1164 ]
  %1177 = load i32, ptr %1165, align 8, !tbaa !118
  %1178 = zext i32 %1177 to i64
  %1179 = icmp ugt i64 %1176, %1178
  br i1 %1179, label %1180, label %1181, !prof !309

1180:                                             ; preds = %1175
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
  br label %1181

1181:                                             ; preds = %1180, %1175
  %1182 = getelementptr inbounds %struct.gimple_statement_phi, ptr %859, i64 0, i32 4, i64 %1176, i32 0, i32 3
  %1183 = load ptr, ptr %1182, align 8, !tbaa !137
  %1184 = load ptr, ptr %1183, align 8, !tbaa !107
  %1185 = icmp eq ptr %1184, %1168
  br i1 %1185, label %1170, label %1186, !prof !310

1186:                                             ; preds = %1181
  %1187 = load i32, ptr %1163, align 4, !tbaa !118
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1690, label %1189, !prof !311

1189:                                             ; preds = %1186
  %1190 = getelementptr inbounds %struct.gimple_statement_base, ptr %859, i64 0, i32 4
  br label %1191

1191:                                             ; preds = %1189, %1226
  %1192 = phi i64 [ 0, %1189 ], [ %1227, %1226 ]
  %1193 = load ptr, ptr %1190, align 8, !tbaa !118
  %1194 = load ptr, ptr %1193, align 8, !tbaa !312, !nonnull !313, !noundef !313
  %1195 = getelementptr inbounds %struct.VEC_edge_base, ptr %1194, i64 0, i32 2, i64 %1192
  %1196 = load ptr, ptr %1195, align 8, !tbaa !107
  %1197 = load ptr, ptr %1196, align 8, !tbaa !171
  %1198 = load ptr, ptr @cfun, align 8, !tbaa !107
  %1199 = getelementptr inbounds %struct.function, ptr %1198, i64 0, i32 1
  %1200 = load ptr, ptr %1199, align 8, !tbaa !173
  %1201 = load ptr, ptr %1200, align 8, !tbaa !178
  %1202 = icmp eq ptr %1197, %1201
  br i1 %1202, label %1226, label %1203, !prof !314

1203:                                             ; preds = %1191
  %1204 = load ptr, ptr @visited_control_parents, align 8, !tbaa !107
  %1205 = getelementptr inbounds %struct.basic_block_def, ptr %1197, i64 0, i32 9
  %1206 = load i32, ptr %1205, align 8, !tbaa !191
  %1207 = lshr i32 %1206, 6
  %1208 = zext nneg i32 %1207 to i64
  %1209 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1204, i64 0, i32 3, i64 %1208
  %1210 = load i64, ptr %1209, align 8, !tbaa !226
  %1211 = and i32 %1206, 63
  %1212 = zext nneg i32 %1211 to i64
  %1213 = shl nuw i64 1, %1212
  %1214 = and i64 %1213, %1210
  %1215 = icmp eq i64 %1214, 0
  br i1 %1215, label %1216, label %1226, !prof !315

1216:                                             ; preds = %1203
  %1217 = load ptr, ptr %1204, align 8, !tbaa !223
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1223, label %1219, !prof !316

1219:                                             ; preds = %1216
  %1220 = getelementptr inbounds i8, ptr %1217, i64 %1208
  %1221 = load i8, ptr %1220, align 1, !tbaa !118
  %1222 = add i8 %1221, 1
  store i8 %1222, ptr %1220, align 1, !tbaa !118
  br label %1223

1223:                                             ; preds = %1219, %1216
  %1224 = load i64, ptr %1209, align 8, !tbaa !226
  %1225 = or i64 %1224, %1213
  store i64 %1225, ptr %1209, align 8, !tbaa !226
  call fastcc void @mark_control_dependent_edges_necessary(ptr noundef %1197, ptr noundef nonnull %155)
  br label %1226

1226:                                             ; preds = %1223, %1203, %1191
  %1227 = add nuw nsw i64 %1192, 1
  %1228 = load i32, ptr %1163, align 4, !tbaa !118
  %1229 = zext i32 %1228 to i64
  %1230 = icmp ult i64 %1227, %1229
  br i1 %1230, label %1191, label %1690, !prof !317, !llvm.loop !318

1231:                                             ; preds = %1131, %1127
  %1232 = load i32, ptr %859, align 8
  %1233 = and i32 %1232, 255
  %1234 = add nsw i32 %1233, -10
  %1235 = icmp ult i32 %1234, -9
  br i1 %1235, label %1239, label %1236, !prof !319

1236:                                             ; preds = %1231
  %1237 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %859, i64 0, i32 2
  %1238 = load ptr, ptr %1237, align 8, !tbaa !118
  br label %1239

1239:                                             ; preds = %1236, %1231
  %1240 = phi ptr [ %1238, %1236 ], [ null, %1231 ]
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %1252, label %1242, !prof !320

1242:                                             ; preds = %1239
  %1243 = and i32 %1232, 254
  %1244 = add nsw i32 %1243, -10
  %1245 = icmp ult i32 %1244, -4
  br i1 %1245, label %1252, label %1246, !prof !321

1246:                                             ; preds = %1242
  %1247 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1248 = load ptr, ptr %1247, align 8, !tbaa !118
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1252, label %1250, !prof !322

1250:                                             ; preds = %1246
  %1251 = load ptr, ptr %1240, align 8, !tbaa !160
  br label %1252

1252:                                             ; preds = %1250, %1246, %1242, %1239
  %1253 = phi ptr [ %1240, %1239 ], [ %1240, %1242 ], [ %1240, %1246 ], [ %1251, %1250 ]
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1260, label %1255, !prof !323

1255:                                             ; preds = %1252
  %1256 = getelementptr inbounds %struct.use_optype_d, ptr %1253, i64 0, i32 1, i32 3
  %1257 = load ptr, ptr %1256, align 8, !tbaa !137
  %1258 = load ptr, ptr %1257, align 8, !tbaa !107
  %1259 = load ptr, ptr %1253, align 8, !tbaa !160
  br label %1260

1260:                                             ; preds = %1255, %1252
  %1261 = phi ptr [ %1259, %1255 ], [ %1253, %1252 ]
  %1262 = phi i8 [ 0, %1255 ], [ 1, %1252 ]
  %1263 = phi ptr [ %1258, %1255 ], [ null, %1252 ]
  br i1 %1254, label %1390, label %1264, !prof !324

1264:                                             ; preds = %1260, %1385
  %1265 = phi ptr [ %1388, %1385 ], [ %1263, %1260 ]
  %1266 = phi i8 [ %1387, %1385 ], [ %1262, %1260 ]
  %1267 = phi ptr [ %1386, %1385 ], [ %1261, %1260 ]
  %1268 = icmp eq ptr %1265, null
  br i1 %1268, label %1269, label %1270, !prof !325

1269:                                             ; preds = %1264
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 237, ptr noundef nonnull @.str.6) #19
  br label %1270

1270:                                             ; preds = %1269, %1264
  %1271 = getelementptr inbounds %struct.tree_ssa_name, ptr %1265, i64 0, i32 3
  %1272 = load i32, ptr %1271, align 8, !tbaa !118
  %1273 = load ptr, ptr @processed, align 8, !tbaa !107
  %1274 = lshr i32 %1272, 6
  %1275 = zext nneg i32 %1274 to i64
  %1276 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1273, i64 0, i32 3, i64 %1275
  %1277 = load i64, ptr %1276, align 8, !tbaa !226
  %1278 = and i32 %1272, 63
  %1279 = zext nneg i32 %1278 to i64
  %1280 = shl nuw i64 1, %1279
  %1281 = and i64 %1280, %1277
  %1282 = icmp eq i64 %1281, 0
  br i1 %1282, label %1293, label %1283, !prof !326

1283:                                             ; preds = %1270
  %1284 = getelementptr inbounds %struct.tree_ssa_name, ptr %1265, i64 0, i32 2
  %1285 = load ptr, ptr %1284, align 8, !tbaa !118
  %1286 = load i32, ptr %1285, align 8
  %1287 = and i32 %1286, 255
  %1288 = icmp ne i32 %1287, 18
  %1289 = and i32 %1286, 2048
  %1290 = icmp eq i32 %1289, 0
  %1291 = and i1 %1288, %1290
  br i1 %1291, label %1292, label %1378, !prof !327

1292:                                             ; preds = %1283
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 244, ptr noundef nonnull @.str.6) #19
  br label %1378

1293:                                             ; preds = %1270
  %1294 = load ptr, ptr %1273, align 8, !tbaa !223
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1300, label %1296, !prof !328

1296:                                             ; preds = %1293
  %1297 = getelementptr inbounds i8, ptr %1294, i64 %1275
  %1298 = load i8, ptr %1297, align 1, !tbaa !118
  %1299 = add i8 %1298, 1
  store i8 %1299, ptr %1297, align 1, !tbaa !118
  br label %1300

1300:                                             ; preds = %1296, %1293
  %1301 = load i64, ptr %1276, align 8, !tbaa !226
  %1302 = or i64 %1301, %1280
  store i64 %1302, ptr %1276, align 8, !tbaa !226
  %1303 = getelementptr inbounds %struct.tree_ssa_name, ptr %1265, i64 0, i32 2
  %1304 = load ptr, ptr %1303, align 8, !tbaa !118
  %1305 = icmp eq ptr %1304, null
  br i1 %1305, label %1306, label %1307, !prof !329

1306:                                             ; preds = %1300
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 250, ptr noundef nonnull @.str.6) #19
  br label %1307

1307:                                             ; preds = %1306, %1300
  %1308 = load i32, ptr %1304, align 8
  %1309 = and i32 %1308, 2048
  %1310 = icmp ne i32 %1309, 0
  %1311 = and i32 %1308, 255
  %1312 = icmp eq i32 %1311, 18
  %1313 = or i1 %1310, %1312
  br i1 %1313, label %1378, label %1314, !prof !330

1314:                                             ; preds = %1307
  %1315 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1327, label %1317, !prof !331

1317:                                             ; preds = %1314
  %1318 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %1319 = and i32 %1318, 8
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1327, label %1321

1321:                                             ; preds = %1317
  %1322 = call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr nonnull %1315)
  %1323 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_generic_expr(ptr noundef %1323, ptr noundef %1265, i32 noundef 0) #19
  %1324 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1325 = call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr %1324)
  %1326 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %1326, ptr noundef nonnull %1304, i32 noundef 0, i32 noundef 0) #19
  br label %1327

1327:                                             ; preds = %1321, %1317, %1314
  %1328 = load i32, ptr %1304, align 8
  %1329 = or i32 %1328, 2048
  store i32 %1329, ptr %1304, align 8
  %1330 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %1331 = icmp eq ptr %1330, null
  br i1 %1331, label %1362, label %1332, !prof !332

1332:                                             ; preds = %1327
  %1333 = getelementptr inbounds %struct.gimple_statement_base, ptr %1304, i64 0, i32 4
  %1334 = load ptr, ptr %1333, align 8, !tbaa !118
  %1335 = getelementptr inbounds %struct.basic_block_def, ptr %1334, i64 0, i32 9
  %1336 = load i32, ptr %1335, align 8, !tbaa !191
  %1337 = load ptr, ptr %1330, align 8, !tbaa !223
  %1338 = icmp eq ptr %1337, null
  br i1 %1338, label %1353, label %1339, !prof !333

1339:                                             ; preds = %1332
  %1340 = lshr i32 %1336, 6
  %1341 = zext nneg i32 %1340 to i64
  %1342 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1330, i64 0, i32 3, i64 %1341
  %1343 = load i64, ptr %1342, align 8, !tbaa !226
  %1344 = and i32 %1336, 63
  %1345 = zext nneg i32 %1344 to i64
  %1346 = shl nuw i64 1, %1345
  %1347 = and i64 %1343, %1346
  %1348 = icmp eq i64 %1347, 0
  br i1 %1348, label %1349, label %1353

1349:                                             ; preds = %1339
  %1350 = getelementptr inbounds i8, ptr %1337, i64 %1341
  %1351 = load i8, ptr %1350, align 1, !tbaa !118
  %1352 = add i8 %1351, 1
  store i8 %1352, ptr %1350, align 1, !tbaa !118
  br label %1353

1353:                                             ; preds = %1349, %1339, %1332
  %1354 = and i32 %1336, 63
  %1355 = zext nneg i32 %1354 to i64
  %1356 = shl nuw i64 1, %1355
  %1357 = lshr i32 %1336, 6
  %1358 = zext nneg i32 %1357 to i64
  %1359 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1330, i64 0, i32 3, i64 %1358
  %1360 = load i64, ptr %1359, align 8, !tbaa !226
  %1361 = or i64 %1360, %1356
  store i64 %1361, ptr %1359, align 8, !tbaa !226
  br label %1362

1362:                                             ; preds = %1353, %1327
  %1363 = load ptr, ptr @worklist, align 8, !tbaa !107
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %1370, label %1365, !prof !334

1365:                                             ; preds = %1362
  %1366 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1363, i64 0, i32 1
  %1367 = load i32, ptr %1366, align 4, !tbaa !230
  %1368 = load i32, ptr %1363, align 8, !tbaa !232
  %1369 = icmp eq i32 %1367, %1368
  br i1 %1369, label %1370, label %1372, !prof !335

1370:                                             ; preds = %1365, %1362
  %1371 = call ptr @vec_heap_p_reserve(ptr noundef %1363, i32 noundef 1) #19
  store ptr %1371, ptr @worklist, align 8, !tbaa !107
  br label %1372

1372:                                             ; preds = %1370, %1365
  %1373 = load ptr, ptr @worklist, align 8, !tbaa !107
  %1374 = load i32, ptr %1373, align 8, !tbaa !232
  %1375 = add i32 %1374, 1
  store i32 %1375, ptr %1373, align 8, !tbaa !232
  %1376 = zext i32 %1374 to i64
  %1377 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1373, i64 0, i32 2, i64 %1376
  store ptr %1304, ptr %1377, align 8, !tbaa !107
  br label %1378

1378:                                             ; preds = %1283, %1292, %1307, %1372
  %1379 = icmp eq ptr %1267, null
  br i1 %1379, label %1385, label %1380, !prof !336

1380:                                             ; preds = %1378
  %1381 = getelementptr inbounds %struct.use_optype_d, ptr %1267, i64 0, i32 1, i32 3
  %1382 = load ptr, ptr %1381, align 8, !tbaa !137
  %1383 = load ptr, ptr %1382, align 8, !tbaa !107
  %1384 = load ptr, ptr %1267, align 8, !tbaa !160
  br label %1385

1385:                                             ; preds = %1378, %1380
  %1386 = phi ptr [ %1384, %1380 ], [ %1267, %1378 ]
  %1387 = phi i8 [ %1266, %1380 ], [ 1, %1378 ]
  %1388 = phi ptr [ %1383, %1380 ], [ null, %1378 ]
  %1389 = icmp eq i8 %1387, 0
  br i1 %1389, label %1264, label %1390, !prof !337, !llvm.loop !338

1390:                                             ; preds = %1385, %1260
  %1391 = load i32, ptr %859, align 8
  %1392 = and i32 %1391, 254
  %1393 = add nsw i32 %1392, -10
  %1394 = icmp ult i32 %1393, -4
  br i1 %1394, label %1398, label %1395, !prof !339

1395:                                             ; preds = %1390
  %1396 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1397 = load ptr, ptr %1396, align 8, !tbaa !118
  br label %1398

1398:                                             ; preds = %1395, %1390
  %1399 = phi ptr [ %1397, %1395 ], [ null, %1390 ]
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1690, label %1401, !prof !340, !llvm.loop !341

1401:                                             ; preds = %1398
  %1402 = load i1, ptr @chain_ovfl, align 1
  br i1 %1402, label %1403, label %1410, !prof !342

1403:                                             ; preds = %1401
  br i1 %1394, label %1407, label %1404

1404:                                             ; preds = %1403
  %1405 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1406 = load ptr, ptr %1405, align 8, !tbaa !118
  br label %1407

1407:                                             ; preds = %1404, %1403
  %1408 = phi ptr [ %1406, %1404 ], [ null, %1403 ]
  %1409 = call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %1408, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #19
  br label %1690, !llvm.loop !341

1410:                                             ; preds = %1401
  %1411 = and i32 %1391, 255
  %1412 = icmp eq i32 %1411, 8
  br i1 %1412, label %1413, label %1495, !prof !343

1413:                                             ; preds = %1410
  %1414 = zext nneg i32 %1411 to i64
  %1415 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !122
  %1417 = zext i32 %1416 to i64
  %1418 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1417
  %1419 = load i64, ptr %1418, align 8, !tbaa !226
  %1420 = icmp eq i64 %1419, 0
  br i1 %1420, label %1421, label %1422, !prof !227

1421:                                             ; preds = %1413
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %1422

1422:                                             ; preds = %1421, %1413
  %1423 = getelementptr inbounds i8, ptr %859, i64 %1419
  %1424 = getelementptr inbounds ptr, ptr %1423, i64 1
  %1425 = load ptr, ptr %1424, align 8, !tbaa !107
  %1426 = load i64, ptr %1425, align 8
  %1427 = and i64 %1426, 65535
  %1428 = icmp eq i64 %1427, 121
  br i1 %1428, label %1429, label %1432, !prof !344

1429:                                             ; preds = %1422
  %1430 = getelementptr inbounds %struct.tree_exp, ptr %1425, i64 0, i32 3
  %1431 = load ptr, ptr %1430, align 8, !tbaa !118
  br label %1432

1432:                                             ; preds = %1429, %1422
  %1433 = phi ptr [ %1431, %1429 ], [ null, %1422 ]
  %1434 = icmp eq ptr %1433, null
  br i1 %1434, label %1442, label %1435, !prof !227

1435:                                             ; preds = %1432
  %1436 = getelementptr inbounds %struct.tree_function_decl, ptr %1433, i64 0, i32 5
  %1437 = load i32, ptr %1436, align 8
  %1438 = and i32 %1437, 6144
  %1439 = icmp eq i32 %1438, 6144
  br i1 %1439, label %1440, label %1442, !prof !227

1440:                                             ; preds = %1435
  %1441 = and i32 %1437, 2047
  switch i32 %1441, label %1442 [
    i32 333, label %1690
    i32 491, label %1690
    i32 455, label %1690
  ], !llvm.loop !341

1442:                                             ; preds = %1440, %1435, %1432
  %1443 = load i32, ptr %859, align 8
  %1444 = and i32 %1443, 254
  %1445 = add nsw i32 %1444, -10
  %1446 = icmp ult i32 %1445, -4
  br i1 %1446, label %1450, label %1447, !prof !227

1447:                                             ; preds = %1442
  %1448 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1449 = load ptr, ptr %1448, align 8, !tbaa !118
  br label %1450

1450:                                             ; preds = %1447, %1442
  %1451 = phi ptr [ %1449, %1447 ], [ null, %1442 ]
  %1452 = call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %1451, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #19
  %1453 = getelementptr inbounds %struct.gimple_statement_base, ptr %859, i64 0, i32 3
  %1454 = load i32, ptr %1453, align 4, !tbaa !118
  %1455 = icmp eq i32 %1454, 3
  br i1 %1455, label %1675, label %1456, !prof !345

1456:                                             ; preds = %1450, %1489
  %1457 = phi i64 [ %1490, %1489 ], [ 0, %1450 ]
  %1458 = add nuw i64 %1457, 3
  %1459 = load i32, ptr %859, align 8
  %1460 = and i32 %1459, 255
  %1461 = add nsw i32 %1460, -10
  %1462 = icmp ult i32 %1461, -9
  br i1 %1462, label %1477, label %1463, !prof !346

1463:                                             ; preds = %1456
  %1464 = zext nneg i32 %1460 to i64
  %1465 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1464
  %1466 = load i32, ptr %1465, align 4, !tbaa !122
  %1467 = zext i32 %1466 to i64
  %1468 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1467
  %1469 = load i64, ptr %1468, align 8, !tbaa !226
  %1470 = icmp eq i64 %1469, 0
  br i1 %1470, label %1471, label %1472, !prof !346

1471:                                             ; preds = %1463
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %1472

1472:                                             ; preds = %1471, %1463
  %1473 = getelementptr inbounds i8, ptr %859, i64 %1469
  %1474 = and i64 %1458, 4294967295
  %1475 = getelementptr inbounds ptr, ptr %1473, i64 %1474
  %1476 = load ptr, ptr %1475, align 8, !tbaa !107
  br label %1477

1477:                                             ; preds = %1472, %1456
  %1478 = phi ptr [ %1476, %1472 ], [ null, %1456 ]
  %1479 = load i64, ptr %1478, align 8
  %1480 = and i64 %1479, 65535
  %1481 = icmp eq i64 %1480, 141
  br i1 %1481, label %1489, label %1482, !prof !347

1482:                                             ; preds = %1477
  %1483 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1478) #19
  %1484 = icmp eq i8 %1483, 0
  br i1 %1484, label %1485, label %1489, !prof !348

1485:                                             ; preds = %1482
  %1486 = call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %1478), !range !349
  %1487 = icmp eq i8 %1486, 0
  br i1 %1487, label %1488, label %1489

1488:                                             ; preds = %1485
  call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef nonnull %859, ptr noundef nonnull %1478)
  br label %1489

1489:                                             ; preds = %1488, %1485, %1482, %1477
  %1490 = add nuw nsw i64 %1457, 1
  %1491 = load i32, ptr %1453, align 4, !tbaa !118
  %1492 = add i32 %1491, -3
  %1493 = zext i32 %1492 to i64
  %1494 = icmp ult i64 %1490, %1493
  br i1 %1494, label %1456, label %1675, !prof !350, !llvm.loop !351

1495:                                             ; preds = %1410
  %1496 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %859) #19
  %1497 = icmp eq i8 %1496, 0
  %1498 = load i32, ptr %859, align 8
  %1499 = and i32 %1498, 255
  br i1 %1497, label %1586, label %1500, !prof !352

1500:                                             ; preds = %1495
  %1501 = add nsw i32 %1499, -10
  %1502 = icmp ult i32 %1501, -9
  br i1 %1502, label %1516, label %1503, !prof !352

1503:                                             ; preds = %1500
  %1504 = zext nneg i32 %1499 to i64
  %1505 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1504
  %1506 = load i32, ptr %1505, align 4, !tbaa !122
  %1507 = zext i32 %1506 to i64
  %1508 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1507
  %1509 = load i64, ptr %1508, align 8, !tbaa !226
  %1510 = icmp eq i64 %1509, 0
  br i1 %1510, label %1511, label %1512, !prof !352

1511:                                             ; preds = %1503
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %1512

1512:                                             ; preds = %1511, %1503
  %1513 = getelementptr inbounds i8, ptr %859, i64 %1509
  %1514 = getelementptr inbounds ptr, ptr %1513, i64 1
  %1515 = load ptr, ptr %1514, align 8, !tbaa !107
  br label %1516

1516:                                             ; preds = %1512, %1500
  %1517 = phi ptr [ %1515, %1512 ], [ null, %1500 ]
  %1518 = load i64, ptr %1517, align 8
  %1519 = and i64 %1518, 65535
  %1520 = icmp eq i64 %1519, 141
  br i1 %1520, label %1675, label %1521, !prof !353

1521:                                             ; preds = %1516
  %1522 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1517) #19
  %1523 = icmp eq i8 %1522, 0
  br i1 %1523, label %1524, label %1675, !prof !354

1524:                                             ; preds = %1521, %1533
  %1525 = phi ptr [ %1535, %1533 ], [ %1517, %1521 ]
  %1526 = load i64, ptr %1525, align 8
  %1527 = trunc i64 %1526 to i16
  switch i16 %1527, label %1528 [
    i16 42, label %1533
    i16 41, label %1533
    i16 45, label %1533
    i16 46, label %1533
    i16 118, label %1533
    i16 43, label %1533
    i16 44, label %1533
  ], !prof !355

1528:                                             ; preds = %1524
  %1529 = and i64 %1526, 65535
  %1530 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1529
  %1531 = load i32, ptr %1530, align 4, !tbaa !122
  %1532 = icmp eq i32 %1531, 3
  br i1 %1532, label %1536, label %1571, !prof !356

1533:                                             ; preds = %1524, %1524, %1524, %1524, %1524, %1524, %1524
  %1534 = getelementptr inbounds %struct.tree_exp, ptr %1525, i64 0, i32 3
  %1535 = load ptr, ptr %1534, align 8, !tbaa !118
  br label %1524, !llvm.loop !357

1536:                                             ; preds = %1528
  %1537 = icmp eq i64 %1529, 33
  br i1 %1537, label %1571, label %1538, !prof !358

1538:                                             ; preds = %1536
  %1539 = and i64 %1526, 201326592
  %1540 = icmp eq i64 %1539, 0
  br i1 %1540, label %1541, label %1549, !prof !358

1541:                                             ; preds = %1538
  %1542 = getelementptr inbounds %struct.tree_decl_common, ptr %1525, i64 0, i32 2
  %1543 = load i64, ptr %1542, align 8
  %1544 = and i64 %1543, 33554432
  %1545 = icmp eq i64 %1544, 0
  %1546 = and i64 %1526, 1048576
  %1547 = icmp eq i64 %1546, 0
  %1548 = or i1 %1547, %1545
  br i1 %1548, label %1559, label %1552, !prof !359

1549:                                             ; preds = %1538
  %1550 = and i64 %1526, 1048576
  %1551 = icmp eq i64 %1550, 0
  br i1 %1551, label %1559, label %1552, !prof !360

1552:                                             ; preds = %1549, %1541
  %1553 = getelementptr inbounds %struct.tree_common, ptr %1525, i64 0, i32 2
  %1554 = load ptr, ptr %1553, align 8, !tbaa !118
  %1555 = getelementptr inbounds %struct.tree_type, ptr %1554, i64 0, i32 6
  %1556 = load i32, ptr %1555, align 4
  %1557 = and i32 %1556, 2048
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1571, label %1559

1559:                                             ; preds = %1552, %1549, %1541
  %1560 = and i64 %1526, 134217728
  %1561 = icmp eq i64 %1560, 0
  br i1 %1561, label %1562, label %1571, !prof !358

1562:                                             ; preds = %1559
  %1563 = getelementptr inbounds %struct.tree_decl_common, ptr %1525, i64 0, i32 2
  %1564 = load i64, ptr %1563, align 8
  %1565 = and i64 %1564, 33554432
  %1566 = icmp eq i64 %1565, 0
  br i1 %1566, label %1567, label %1571

1567:                                             ; preds = %1562
  %1568 = lshr i64 %1526, 18
  %1569 = trunc i64 %1568 to i8
  %1570 = and i8 %1569, 1
  br label %1571

1571:                                             ; preds = %1528, %1536, %1552, %1559, %1562, %1567
  %1572 = phi i8 [ 1, %1528 ], [ 0, %1552 ], [ 0, %1536 ], [ 1, %1562 ], [ 1, %1559 ], [ %1570, %1567 ]
  %1573 = icmp eq i8 %1572, 0
  br i1 %1573, label %1574, label %1575, !prof !361

1574:                                             ; preds = %1571
  call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef nonnull %859, ptr noundef nonnull %1517)
  br label %1675

1575:                                             ; preds = %1571
  %1576 = load i32, ptr %859, align 8
  %1577 = and i32 %1576, 254
  %1578 = add nsw i32 %1577, -10
  %1579 = icmp ult i32 %1578, -4
  br i1 %1579, label %1583, label %1580, !prof !361

1580:                                             ; preds = %1575
  %1581 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1582 = load ptr, ptr %1581, align 8, !tbaa !118
  br label %1583

1583:                                             ; preds = %1580, %1575
  %1584 = phi ptr [ %1582, %1580 ], [ null, %1575 ]
  %1585 = call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %1584, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #19
  br label %1675

1586:                                             ; preds = %1495
  %1587 = trunc i32 %1498 to i8
  switch i8 %1587, label %1674 [
    i8 9, label %1588
    i8 7, label %1626
  ]

1588:                                             ; preds = %1586
  %1589 = add nsw i32 %1499, -10
  %1590 = icmp ult i32 %1589, -9
  br i1 %1590, label %1603, label %1591

1591:                                             ; preds = %1588
  %1592 = zext nneg i32 %1499 to i64
  %1593 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1592
  %1594 = load i32, ptr %1593, align 4, !tbaa !122
  %1595 = zext i32 %1594 to i64
  %1596 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1595
  %1597 = load i64, ptr %1596, align 8, !tbaa !226
  %1598 = icmp eq i64 %1597, 0
  br i1 %1598, label %1599, label %1600

1599:                                             ; preds = %1591
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %1600

1600:                                             ; preds = %1599, %1591
  %1601 = getelementptr inbounds i8, ptr %859, i64 %1597
  %1602 = load ptr, ptr %1601, align 8, !tbaa !107
  br label %1603

1603:                                             ; preds = %1600, %1588
  %1604 = phi ptr [ %1602, %1600 ], [ null, %1588 ]
  %1605 = load i64, ptr %1604, align 8
  %1606 = and i64 %1605, 65535
  %1607 = icmp eq i64 %1606, 141
  br i1 %1607, label %1675, label %1608

1608:                                             ; preds = %1603
  %1609 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1604) #19
  %1610 = icmp eq i8 %1609, 0
  br i1 %1610, label %1611, label %1675

1611:                                             ; preds = %1608
  %1612 = call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %1604), !range !349
  %1613 = icmp eq i8 %1612, 0
  br i1 %1613, label %1614, label %1615

1614:                                             ; preds = %1611
  call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef nonnull %859, ptr noundef nonnull %1604)
  br label %1675

1615:                                             ; preds = %1611
  %1616 = load i32, ptr %859, align 8
  %1617 = and i32 %1616, 254
  %1618 = add nsw i32 %1617, -10
  %1619 = icmp ult i32 %1618, -4
  br i1 %1619, label %1623, label %1620

1620:                                             ; preds = %1615
  %1621 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1622 = load ptr, ptr %1621, align 8, !tbaa !118
  br label %1623

1623:                                             ; preds = %1620, %1615
  %1624 = phi ptr [ %1622, %1620 ], [ null, %1615 ]
  %1625 = call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %1624, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #19
  br label %1675

1626:                                             ; preds = %1586
  %1627 = and i32 %1498, 254
  %1628 = add nsw i32 %1627, -10
  %1629 = icmp ult i32 %1628, -4
  br i1 %1629, label %1633, label %1630

1630:                                             ; preds = %1626
  %1631 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %859, i64 0, i32 2
  %1632 = load ptr, ptr %1631, align 8, !tbaa !118
  br label %1633

1633:                                             ; preds = %1630, %1626
  %1634 = phi ptr [ %1632, %1630 ], [ null, %1626 ]
  %1635 = call i32 @walk_aliased_vdefs(ptr noundef null, ptr noundef %1634, ptr noundef nonnull @mark_all_reaching_defs_necessary_1, ptr noundef null, ptr noundef nonnull @visited) #19
  %1636 = getelementptr inbounds %struct.gimple_statement_asm, ptr %859, i64 0, i32 2
  %1637 = load i8, ptr %1636, align 8, !tbaa !118
  %1638 = icmp eq i8 %1637, 0
  br i1 %1638, label %1675, label %1639

1639:                                             ; preds = %1633, %1669
  %1640 = phi i64 [ %1670, %1669 ], [ 0, %1633 ]
  %1641 = load i32, ptr %859, align 8
  %1642 = and i32 %1641, 255
  %1643 = add nsw i32 %1642, -1
  %1644 = icmp ult i32 %1643, 9
  call void @llvm.assume(i1 %1644)
  %1645 = zext nneg i32 %1642 to i64
  %1646 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1645
  %1647 = load i32, ptr %1646, align 4, !tbaa !122
  %1648 = zext i32 %1647 to i64
  %1649 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1648
  %1650 = load i64, ptr %1649, align 8, !tbaa !226
  %1651 = icmp eq i64 %1650, 0
  br i1 %1651, label %1652, label %1653

1652:                                             ; preds = %1639
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %1653

1653:                                             ; preds = %1652, %1639
  %1654 = getelementptr inbounds i8, ptr %859, i64 %1650
  %1655 = getelementptr inbounds ptr, ptr %1654, i64 %1640
  %1656 = load ptr, ptr %1655, align 8, !tbaa !107
  %1657 = getelementptr inbounds %struct.tree_list, ptr %1656, i64 0, i32 2
  %1658 = load ptr, ptr %1657, align 8, !tbaa !118
  %1659 = load i64, ptr %1658, align 8
  %1660 = and i64 %1659, 65535
  %1661 = icmp eq i64 %1660, 141
  br i1 %1661, label %1669, label %1662

1662:                                             ; preds = %1653
  %1663 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1658) #19
  %1664 = icmp eq i8 %1663, 0
  br i1 %1664, label %1665, label %1669

1665:                                             ; preds = %1662
  %1666 = call fastcc zeroext i8 @ref_may_be_aliased(ptr noundef nonnull %1658), !range !349
  %1667 = icmp eq i8 %1666, 0
  br i1 %1667, label %1668, label %1669

1668:                                             ; preds = %1665
  call fastcc void @mark_aliased_reaching_defs_necessary(ptr noundef nonnull %859, ptr noundef nonnull %1658)
  br label %1669

1669:                                             ; preds = %1668, %1665, %1662, %1653
  %1670 = add nuw nsw i64 %1640, 1
  %1671 = load i8, ptr %1636, align 8, !tbaa !118
  %1672 = zext i8 %1671 to i64
  %1673 = icmp ult i64 %1670, %1672
  br i1 %1673, label %1639, label %1675, !llvm.loop !362

1674:                                             ; preds = %1586
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 805, ptr noundef nonnull @.str.6) #19
  br label %1675

1675:                                             ; preds = %1669, %1489, %1450, %1633, %1674, %1623, %1614, %1608, %1603, %1583, %1574, %1521, %1516
  %1676 = load i32, ptr @total_chain, align 4, !tbaa !122
  %1677 = icmp ugt i32 %1676, 16384
  br i1 %1677, label %1678, label %1690, !prof !342

1678:                                             ; preds = %1675
  %1679 = load i32, ptr @longest_chain, align 4, !tbaa !122
  %1680 = shl i32 %1679, 5
  %1681 = icmp ugt i32 %1676, %1680
  br i1 %1681, label %1682, label %1690

1682:                                             ; preds = %1678
  %1683 = load i32, ptr @nr_walks, align 4, !tbaa !122
  %1684 = shl i32 %1683, 5
  %1685 = icmp ugt i32 %1676, %1684
  br i1 %1685, label %1686, label %1690

1686:                                             ; preds = %1682
  store i1 true, ptr @chain_ovfl, align 1
  %1687 = load ptr, ptr @visited, align 8, !tbaa !107
  %1688 = icmp eq ptr %1687, null
  br i1 %1688, label %1690, label %1689

1689:                                             ; preds = %1686
  call void @bitmap_clear(ptr noundef nonnull %1687) #19
  br label %1690

1690:                                             ; preds = %1170, %1226, %1440, %1440, %1440, %1398, %1407, %1675, %1678, %1682, %1686, %1689, %1161, %1164, %1186
  br label %846, !llvm.loop !341

1691:                                             ; preds = %851
  %1692 = load ptr, ptr @visited, align 8, !tbaa !107
  call void @bitmap_obstack_free(ptr noundef %1692) #19
  store ptr null, ptr @visited, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %1693 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1694 = icmp eq ptr %1693, null
  br i1 %1694, label %1701, label %1695, !prof !245

1695:                                             ; preds = %1691
  %1696 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %1697 = and i32 %1696, 8
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1701, label %1699

1699:                                             ; preds = %1695
  %1700 = call i64 @fwrite(ptr nonnull @.str.19, i64 37, i64 1, ptr nonnull %1693)
  br label %1701

1701:                                             ; preds = %1699, %1695, %1691
  call void @clear_special_calls() #19
  %1702 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #19
  %1703 = icmp eq i8 %1702, 0
  br i1 %1703, label %1704, label %1705, !prof !363

1704:                                             ; preds = %1701
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1090, ptr noundef nonnull @.str.6) #19
  br label %1705

1705:                                             ; preds = %1704, %1701
  %1706 = load ptr, ptr @cfun, align 8, !tbaa !107
  %1707 = getelementptr inbounds %struct.function, ptr %1706, i64 0, i32 1
  %1708 = load ptr, ptr %1707, align 8, !tbaa !173
  %1709 = load ptr, ptr %1708, align 8, !tbaa !178
  %1710 = getelementptr inbounds %struct.basic_block_def, ptr %1709, i64 0, i32 1
  %1711 = load ptr, ptr %1710, align 8, !tbaa !180
  %1712 = icmp eq ptr %1711, null
  br i1 %1712, label %1716, label %1713, !prof !363

1713:                                             ; preds = %1705
  %1714 = load i32, ptr %1711, align 8, !tbaa !183
  %1715 = icmp eq i32 %1714, 1
  br i1 %1715, label %1717, label %1716, !prof !245

1716:                                             ; preds = %1713, %1705
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.6) #19
  br label %1717

1717:                                             ; preds = %1716, %1713
  %1718 = load ptr, ptr %1710, align 8, !tbaa !180
  %1719 = getelementptr inbounds %struct.VEC_edge_base, ptr %1718, i64 0, i32 2, i64 0
  %1720 = load ptr, ptr %1719, align 8, !tbaa !107
  %1721 = getelementptr inbounds %struct.edge_def, ptr %1720, i64 0, i32 1
  %1722 = load ptr, ptr %1721, align 8, !tbaa !186
  %1723 = call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %1722) #19
  %1724 = icmp eq ptr %1723, null
  %1725 = getelementptr inbounds i8, ptr %6, i64 8
  %1726 = getelementptr inbounds i8, ptr %6, i64 16
  br label %1729

1727:                                             ; preds = %2081, %1758
  %1728 = phi i8 [ %1730, %1758 ], [ %2082, %2081 ]
  br label %1729, !llvm.loop !364

1729:                                             ; preds = %1727, %1717
  %1730 = phi i8 [ 0, %1717 ], [ %1728, %1727 ]
  br i1 %1724, label %1733, label %1731, !prof !365

1731:                                             ; preds = %1729
  %1732 = load i32, ptr %1723, align 8, !tbaa !366
  br label %1733

1733:                                             ; preds = %1731, %1729
  %1734 = phi i32 [ %1732, %1731 ], [ 0, %1729 ]
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %2084, label %1736, !prof !368

1736:                                             ; preds = %1733
  %1737 = load i32, ptr %1723, align 8, !tbaa !366
  %1738 = add i32 %1737, -1
  store i32 %1738, ptr %1723, align 8, !tbaa !366
  %1739 = zext i32 %1738 to i64
  %1740 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1723, i64 0, i32 2, i64 %1739
  %1741 = load ptr, ptr %1740, align 8, !tbaa !107
  %1742 = getelementptr inbounds %struct.basic_block_def, ptr %1741, i64 0, i32 13
  %1743 = load i32, ptr %1742, align 8, !tbaa !207, !noalias !369
  %1744 = and i32 %1743, 512
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1746, label %1752, !prof !211

1746:                                             ; preds = %1736
  %1747 = getelementptr inbounds %struct.basic_block_def, ptr %1741, i64 0, i32 7
  %1748 = load ptr, ptr %1747, align 8, !tbaa !118, !noalias !369
  %1749 = icmp eq ptr %1748, null
  br i1 %1749, label %1752, label %1750, !prof !212

1750:                                             ; preds = %1746
  %1751 = load ptr, ptr %1748, align 8, !tbaa !213, !noalias !369
  br label %1752

1752:                                             ; preds = %1750, %1746, %1736
  %1753 = phi ptr [ %1751, %1750 ], [ null, %1746 ], [ null, %1736 ]
  %1754 = icmp eq ptr %1753, null
  br i1 %1754, label %1758, label %1755, !prof !212

1755:                                             ; preds = %1752
  %1756 = getelementptr inbounds %struct.gimple_seq_d, ptr %1753, i64 0, i32 1
  %1757 = load ptr, ptr %1756, align 8, !tbaa !372, !noalias !369
  br label %1758

1758:                                             ; preds = %1755, %1752
  %1759 = phi ptr [ %1757, %1755 ], [ null, %1752 ]
  store ptr %1759, ptr %6, align 8, !tbaa.struct !200
  store ptr %1753, ptr %1725, align 8, !tbaa.struct !373
  store ptr %1741, ptr %1726, align 8, !tbaa.struct !374
  %1760 = icmp eq ptr %1759, null
  br i1 %1760, label %1727, label %1761, !prof !217

1761:                                             ; preds = %1758, %2081
  %1762 = phi ptr [ %1766, %2081 ], [ %1759, %1758 ]
  %1763 = phi i8 [ %2082, %2081 ], [ %1730, %1758 ]
  %1764 = load ptr, ptr %1762, align 8, !tbaa !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1725, i64 16, i1 false), !tbaa.struct !373
  %1765 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1762, i64 0, i32 1
  %1766 = load ptr, ptr %1765, align 8, !tbaa !375
  %1767 = load i32, ptr @stats, align 4, !tbaa !376
  %1768 = add nsw i32 %1767, 1
  store i32 %1768, ptr @stats, align 4, !tbaa !376
  %1769 = load i32, ptr %1764, align 8
  %1770 = and i32 %1769, 2048
  %1771 = icmp eq i32 %1770, 0
  %1772 = and i32 %1769, 255
  br i1 %1771, label %1773, label %1976, !prof !378

1773:                                             ; preds = %1761
  %1774 = icmp eq i32 %1772, 2
  %1775 = select i1 %1774, i8 %1763, i8 1, !prof !379
  %1776 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1777 = icmp eq ptr %1776, null
  br i1 %1777, label %1787, label %1778, !prof !380

1778:                                             ; preds = %1773
  %1779 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %1780 = and i32 %1779, 8
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1787, label %1782

1782:                                             ; preds = %1778
  %1783 = call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %1776)
  %1784 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %1784, ptr noundef nonnull %1764, i32 noundef 0, i32 noundef 2) #19
  %1785 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1786 = call i32 @fputc(i32 10, ptr %1785)
  br label %1787

1787:                                             ; preds = %1782, %1778, %1773
  %1788 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !381
  %1789 = add nsw i32 %1788, 1
  store i32 %1789, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !381
  %1790 = call zeroext i8 @is_ctrl_stmt(ptr noundef nonnull %1764) #19
  %1791 = icmp eq i8 %1790, 0
  br i1 %1791, label %1975, label %1792, !prof !382

1792:                                             ; preds = %1787
  %1793 = getelementptr inbounds %struct.basic_block_def, ptr %1741, i64 0, i32 1
  %1794 = call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %1741) #19
  %1795 = call ptr @find_edge(ptr noundef %1741, ptr noundef %1794) #19
  %1796 = icmp eq ptr %1795, null
  br i1 %1796, label %1797, label %1933, !prof !383

1797:                                             ; preds = %1792
  %1798 = icmp eq ptr %1794, null
  br i1 %1798, label %1806, label %1799

1799:                                             ; preds = %1797
  %1800 = load ptr, ptr @cfun, align 8, !tbaa !107
  %1801 = getelementptr inbounds %struct.function, ptr %1800, i64 0, i32 1
  %1802 = load ptr, ptr %1801, align 8, !tbaa !173
  %1803 = getelementptr inbounds %struct.control_flow_graph, ptr %1802, i64 0, i32 1
  %1804 = load ptr, ptr %1803, align 8, !tbaa !175
  %1805 = icmp eq ptr %1794, %1804
  br i1 %1805, label %1806, label %1811

1806:                                             ; preds = %1799, %1797
  %1807 = getelementptr inbounds %struct.basic_block_def, ptr %1741, i64 0, i32 1
  %1808 = load ptr, ptr %1807, align 8, !tbaa !180
  %1809 = getelementptr inbounds %struct.VEC_edge_base, ptr %1808, i64 0, i32 2, i64 0
  %1810 = load ptr, ptr %1809, align 8, !tbaa !107
  br label %1933

1811:                                             ; preds = %1799
  %1812 = getelementptr inbounds %struct.basic_block_def, ptr %1741, i64 0, i32 1
  %1813 = load ptr, ptr %1812, align 8, !tbaa !180
  %1814 = getelementptr inbounds %struct.VEC_edge_base, ptr %1813, i64 0, i32 2, i64 0
  %1815 = load ptr, ptr %1814, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %1816 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1833, label %1818

1818:                                             ; preds = %1811
  %1819 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %1820 = and i32 %1819, 8
  %1821 = icmp eq i32 %1820, 0
  br i1 %1821, label %1833, label %1822

1822:                                             ; preds = %1818
  %1823 = load ptr, ptr %1815, align 8, !tbaa !171
  %1824 = getelementptr inbounds %struct.basic_block_def, ptr %1823, i64 0, i32 9
  %1825 = load i32, ptr %1824, align 8, !tbaa !191
  %1826 = getelementptr inbounds %struct.edge_def, ptr %1815, i64 0, i32 1
  %1827 = load ptr, ptr %1826, align 8, !tbaa !186
  %1828 = getelementptr inbounds %struct.basic_block_def, ptr %1827, i64 0, i32 9
  %1829 = load i32, ptr %1828, align 8, !tbaa !191
  %1830 = getelementptr inbounds %struct.basic_block_def, ptr %1794, i64 0, i32 9
  %1831 = load i32, ptr %1830, align 8, !tbaa !191
  %1832 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1816, ptr noundef nonnull @.str.22, i32 noundef %1825, i32 noundef %1829, i32 noundef %1831)
  br label %1833

1833:                                             ; preds = %1822, %1818, %1811
  %1834 = call ptr @redirect_edge_and_branch(ptr noundef %1815, ptr noundef nonnull %1794) #19
  store i1 true, ptr @cfg_altered, align 1
  %1835 = icmp eq ptr %1834, %1815
  br i1 %1835, label %1836, label %1931

1836:                                             ; preds = %1833
  %1837 = getelementptr inbounds %struct.basic_block_def, ptr %1794, i64 0, i32 13
  %1838 = load i32, ptr %1837, align 8, !tbaa !207
  %1839 = and i32 %1838, 512
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1842, label %1841

1841:                                             ; preds = %1836
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.6) #19
  br label %1842

1842:                                             ; preds = %1841, %1836
  %1843 = getelementptr inbounds %struct.basic_block_def, ptr %1794, i64 0, i32 7
  %1844 = load ptr, ptr %1843, align 8, !tbaa !118
  %1845 = icmp eq ptr %1844, null
  br i1 %1845, label %1849, label %1846

1846:                                             ; preds = %1842
  %1847 = getelementptr inbounds %struct.gimple_bb_info, ptr %1844, i64 0, i32 1
  %1848 = load ptr, ptr %1847, align 8, !tbaa !384
  br label %1849

1849:                                             ; preds = %1846, %1842
  %1850 = phi ptr [ %1848, %1846 ], [ null, %1842 ]
  %1851 = icmp eq ptr %1850, null
  br i1 %1851, label %1931, label %1852

1852:                                             ; preds = %1849
  %1853 = load ptr, ptr %1850, align 8, !tbaa !215
  %1854 = icmp eq ptr %1853, null
  br i1 %1854, label %1931, label %1855

1855:                                             ; preds = %1852, %1879
  %1856 = phi i32 [ %1880, %1879 ], [ 0, %1852 ]
  %1857 = load ptr, ptr %1794, align 8, !tbaa !107
  %1858 = icmp eq ptr %1857, null
  br i1 %1858, label %1861, label %1859

1859:                                             ; preds = %1855
  %1860 = load i32, ptr %1857, align 8, !tbaa !183
  br label %1861

1861:                                             ; preds = %1859, %1855
  %1862 = phi i32 [ %1860, %1859 ], [ 0, %1855 ]
  %1863 = icmp ne i32 %1862, %1856
  br i1 %1863, label %1864, label %1868

1864:                                             ; preds = %1861
  %1865 = zext i32 %1856 to i64
  %1866 = getelementptr inbounds %struct.VEC_edge_base, ptr %1857, i64 0, i32 2, i64 %1865
  %1867 = load ptr, ptr %1866, align 8, !tbaa !107
  br label %1868

1868:                                             ; preds = %1864, %1861
  %1869 = phi ptr [ %1867, %1864 ], [ null, %1861 ]
  %1870 = icmp eq ptr %1869, %1815
  %1871 = select i1 %1863, i1 %1870, i1 false
  br i1 %1871, label %1872, label %1881

1872:                                             ; preds = %1868
  br i1 %1858, label %1875, label %1873

1873:                                             ; preds = %1872
  %1874 = load i32, ptr %1857, align 8, !tbaa !183
  br label %1875

1875:                                             ; preds = %1873, %1872
  %1876 = phi i32 [ %1874, %1873 ], [ 0, %1872 ]
  %1877 = icmp ult i32 %1856, %1876
  br i1 %1877, label %1879, label %1878

1878:                                             ; preds = %1875
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.6) #19
  br label %1879

1879:                                             ; preds = %1878, %1875
  %1880 = add i32 %1856, 1
  br label %1855, !llvm.loop !385

1881:                                             ; preds = %1868
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %1794) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %1882 = load ptr, ptr %4, align 8
  %1883 = icmp eq ptr %1882, null
  br i1 %1883, label %1931, label %1884

1884:                                             ; preds = %1881
  %1885 = getelementptr inbounds %struct.edge_def, ptr %1869, i64 0, i32 6
  br label %1886

1886:                                             ; preds = %1884, %1928
  %1887 = phi ptr [ %1882, %1884 ], [ %1929, %1928 ]
  %1888 = load ptr, ptr %1887, align 8, !tbaa !202
  %1889 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1888, i64 0, i32 3
  %1890 = load ptr, ptr %1889, align 8, !tbaa !118
  %1891 = call zeroext i8 @is_gimple_reg(ptr noundef %1890) #19
  %1892 = icmp eq i8 %1891, 0
  br i1 %1892, label %1893, label %1894

1893:                                             ; preds = %1886
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %1888)
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 1) #19
  br label %1928, !llvm.loop !386

1894:                                             ; preds = %1886
  %1895 = load i32, ptr %1888, align 8
  %1896 = and i32 %1895, 2048
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1898, label %1902

1898:                                             ; preds = %1894
  %1899 = load ptr, ptr %4, align 8, !tbaa !387
  %1900 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1899, i64 0, i32 2
  %1901 = load ptr, ptr %1900, align 8, !tbaa !204
  store ptr %1901, ptr %4, align 8, !tbaa !387
  br label %1928, !llvm.loop !386

1902:                                             ; preds = %1894
  %1903 = load i32, ptr %1885, align 4, !tbaa !389
  %1904 = zext i32 %1903 to i64
  %1905 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1888, i64 0, i32 1
  %1906 = load i32, ptr %1905, align 8, !tbaa !118
  %1907 = icmp ult i32 %1906, %1903
  br i1 %1907, label %1908, label %1909

1908:                                             ; preds = %1902
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
  br label %1909

1909:                                             ; preds = %1908, %1902
  %1910 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1888, i64 0, i32 4, i64 %1904, i32 0, i32 3
  %1911 = load ptr, ptr %1910, align 8, !tbaa !137
  %1912 = load ptr, ptr %1911, align 8, !tbaa !107
  %1913 = load i32, ptr %1885, align 4, !tbaa !389
  %1914 = zext i32 %1913 to i64
  %1915 = load i32, ptr %1905, align 8, !tbaa !118
  %1916 = icmp ult i32 %1915, %1913
  br i1 %1916, label %1917, label %1918

1917:                                             ; preds = %1909
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
  br label %1918

1918:                                             ; preds = %1917, %1909
  %1919 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1888, i64 0, i32 4, i64 %1914, i32 2
  %1920 = load i32, ptr %1919, align 8, !tbaa !390
  call void @add_phi_arg(ptr noundef nonnull %1888, ptr noundef %1912, ptr noundef %1815, i32 noundef %1920) #19
  %1921 = call fastcc zeroext i8 @degenerate_phi_p(ptr noundef nonnull %1888), !range !349
  %1922 = icmp eq i8 %1921, 0
  br i1 %1922, label %1923, label %1924

1923:                                             ; preds = %1918
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 973, ptr noundef nonnull @.str.6) #19
  br label %1924

1924:                                             ; preds = %1923, %1918
  %1925 = load ptr, ptr %4, align 8, !tbaa !387
  %1926 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1925, i64 0, i32 2
  %1927 = load ptr, ptr %1926, align 8, !tbaa !204
  store ptr %1927, ptr %4, align 8, !tbaa !387
  br label %1928

1928:                                             ; preds = %1924, %1898, %1893
  %1929 = load ptr, ptr %4, align 8
  %1930 = icmp eq ptr %1929, null
  br i1 %1930, label %1931, label %1886

1931:                                             ; preds = %1928, %1881, %1852, %1849, %1833
  %1932 = phi ptr [ %1834, %1833 ], [ %1815, %1852 ], [ %1815, %1849 ], [ %1815, %1881 ], [ %1815, %1928 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %1933

1933:                                             ; preds = %1931, %1806, %1792
  %1934 = phi ptr [ %1795, %1792 ], [ %1810, %1806 ], [ %1932, %1931 ]
  %1935 = icmp eq ptr %1934, null
  br i1 %1935, label %1936, label %1937, !prof !383

1936:                                             ; preds = %1933
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1023, ptr noundef nonnull @.str.6) #19
  br label %1937

1937:                                             ; preds = %1936, %1933
  %1938 = getelementptr inbounds %struct.basic_block_def, ptr %1741, i64 0, i32 8
  %1939 = getelementptr inbounds %struct.edge_def, ptr %1934, i64 0, i32 8
  store i32 10000, ptr %1939, align 4, !tbaa !392
  %1940 = load i64, ptr %1938, align 8, !tbaa !393
  %1941 = getelementptr inbounds %struct.edge_def, ptr %1934, i64 0, i32 9
  store i64 %1940, ptr %1941, align 8, !tbaa !394
  %1942 = getelementptr inbounds %struct.edge_def, ptr %1934, i64 0, i32 7
  %1943 = load i32, ptr %1942, align 8, !tbaa !189
  %1944 = and i32 %1943, -3074
  %1945 = or disjoint i32 %1944, 1
  store i32 %1945, ptr %1942, align 8, !tbaa !189
  br label %1946

1946:                                             ; preds = %1973, %1937
  %1947 = phi i32 [ %1974, %1973 ], [ 0, %1937 ]
  br label %1948

1948:                                             ; preds = %1946, %1965
  %1949 = load ptr, ptr %1793, align 8, !tbaa !107
  %1950 = icmp eq ptr %1949, null
  br i1 %1950, label %1953, label %1951, !prof !395

1951:                                             ; preds = %1948
  %1952 = load i32, ptr %1949, align 8, !tbaa !183
  br label %1953

1953:                                             ; preds = %1951, %1948
  %1954 = phi i32 [ %1952, %1951 ], [ 0, %1948 ]
  %1955 = icmp eq i32 %1954, %1947
  br i1 %1955, label %1960, label %1956, !prof !396

1956:                                             ; preds = %1953
  %1957 = zext i32 %1947 to i64
  %1958 = getelementptr inbounds %struct.VEC_edge_base, ptr %1949, i64 0, i32 2, i64 %1957
  %1959 = load ptr, ptr %1958, align 8, !tbaa !107
  br label %1960

1960:                                             ; preds = %1956, %1953
  %1961 = phi ptr [ %1959, %1956 ], [ null, %1953 ]
  %1962 = icmp eq ptr %1961, null
  br i1 %1962, label %1975, label %1963, !prof !396

1963:                                             ; preds = %1960
  %1964 = icmp eq ptr %1934, %1961
  br i1 %1964, label %1966, label %1965, !prof !397

1965:                                             ; preds = %1963
  store i1 true, ptr @cfg_altered, align 1
  call void @remove_edge(ptr noundef nonnull %1961) #19
  br label %1948, !llvm.loop !398

1966:                                             ; preds = %1963
  br i1 %1950, label %1969, label %1967, !prof !383

1967:                                             ; preds = %1966
  %1968 = load i32, ptr %1949, align 8, !tbaa !183
  br label %1969

1969:                                             ; preds = %1967, %1966
  %1970 = phi i32 [ %1968, %1967 ], [ 0, %1966 ]
  %1971 = icmp ult i32 %1947, %1970
  br i1 %1971, label %1973, label %1972, !prof !399

1972:                                             ; preds = %1969
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.6) #19
  br label %1973

1973:                                             ; preds = %1972, %1969
  %1974 = add i32 %1947, 1
  br label %1946, !llvm.loop !398

1975:                                             ; preds = %1960, %1787
  call void @unlink_stmt_vdef(ptr noundef nonnull %1764) #19
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #19
  call void @release_defs(ptr noundef nonnull %1764) #19
  br label %2081

1976:                                             ; preds = %1761
  %1977 = icmp eq i32 %1772, 8
  br i1 %1977, label %1978, label %2081, !prof !400

1978:                                             ; preds = %1976
  %1979 = zext nneg i32 %1772 to i64
  %1980 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1979
  %1981 = load i32, ptr %1980, align 4, !tbaa !122
  %1982 = zext i32 %1981 to i64
  %1983 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1982
  %1984 = load i64, ptr %1983, align 8, !tbaa !226
  %1985 = icmp eq i64 %1984, 0
  br i1 %1985, label %1986, label %1987, !prof !227

1986:                                             ; preds = %1978
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %1987

1987:                                             ; preds = %1986, %1978
  %1988 = getelementptr inbounds i8, ptr %1764, i64 %1984
  %1989 = getelementptr inbounds ptr, ptr %1988, i64 1
  %1990 = load ptr, ptr %1989, align 8, !tbaa !107
  %1991 = load i64, ptr %1990, align 8
  %1992 = and i64 %1991, 65535
  %1993 = icmp eq i64 %1992, 121
  br i1 %1993, label %1994, label %1997, !prof !344

1994:                                             ; preds = %1987
  %1995 = getelementptr inbounds %struct.tree_exp, ptr %1990, i64 0, i32 3
  %1996 = load ptr, ptr %1995, align 8, !tbaa !118
  br label %1997

1997:                                             ; preds = %1994, %1987
  %1998 = phi ptr [ %1996, %1994 ], [ null, %1987 ]
  %1999 = icmp eq ptr %1998, null
  br i1 %1999, label %2081, label %2000, !prof !227

2000:                                             ; preds = %1997
  %2001 = load i32, ptr %1764, align 8
  %2002 = and i32 %2001, 255
  %2003 = add nsw i32 %2002, -10
  %2004 = icmp ult i32 %2003, -9
  br i1 %2004, label %2017, label %2005, !prof !227

2005:                                             ; preds = %2000
  %2006 = zext nneg i32 %2002 to i64
  %2007 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2006
  %2008 = load i32, ptr %2007, align 4, !tbaa !122
  %2009 = zext i32 %2008 to i64
  %2010 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2009
  %2011 = load i64, ptr %2010, align 8, !tbaa !226
  %2012 = icmp eq i64 %2011, 0
  br i1 %2012, label %2013, label %2014, !prof !227

2013:                                             ; preds = %2005
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %2014

2014:                                             ; preds = %2013, %2005
  %2015 = getelementptr inbounds i8, ptr %1764, i64 %2011
  %2016 = load ptr, ptr %2015, align 8, !tbaa !107
  br label %2017

2017:                                             ; preds = %2014, %2000
  %2018 = phi ptr [ %2016, %2014 ], [ null, %2000 ]
  %2019 = icmp eq ptr %2018, null
  br i1 %2019, label %2079, label %2020, !prof !401

2020:                                             ; preds = %2017
  %2021 = load i64, ptr %2018, align 8
  %2022 = and i64 %2021, 65535
  %2023 = icmp eq i64 %2022, 141
  br i1 %2023, label %2024, label %2079, !prof !402

2024:                                             ; preds = %2020
  %2025 = load ptr, ptr @processed, align 8, !tbaa !107
  %2026 = getelementptr inbounds %struct.tree_ssa_name, ptr %2018, i64 0, i32 3
  %2027 = load i32, ptr %2026, align 8, !tbaa !118
  %2028 = lshr i32 %2027, 6
  %2029 = zext nneg i32 %2028 to i64
  %2030 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2025, i64 0, i32 3, i64 %2029
  %2031 = load i64, ptr %2030, align 8, !tbaa !226
  %2032 = and i32 %2027, 63
  %2033 = zext nneg i32 %2032 to i64
  %2034 = shl nuw i64 1, %2033
  %2035 = and i64 %2034, %2031
  %2036 = icmp eq i64 %2035, 0
  br i1 %2036, label %2037, label %2079, !prof !403

2037:                                             ; preds = %2024
  %2038 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %2039 = icmp eq ptr %2038, null
  br i1 %2039, label %2049, label %2040, !prof !404

2040:                                             ; preds = %2037
  %2041 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %2042 = and i32 %2041, 8
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2049, label %2044

2044:                                             ; preds = %2040
  %2045 = call i64 @fwrite(ptr nonnull @.str.20, i64 22, i64 1, ptr nonnull %2038)
  %2046 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %2046, ptr noundef nonnull %1764, i32 noundef 0, i32 noundef 2) #19
  %2047 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %2048 = call i32 @fputc(i32 10, ptr %2047)
  br label %2049

2049:                                             ; preds = %2044, %2040, %2037
  %2050 = load i32, ptr %1764, align 8
  %2051 = and i32 %2050, 255
  %2052 = add nsw i32 %2051, -10
  %2053 = icmp ult i32 %2052, -9
  br i1 %2053, label %2058, label %2054, !prof !405

2054:                                             ; preds = %2049
  %2055 = getelementptr inbounds %struct.gimple_statement_base, ptr %1764, i64 0, i32 3
  %2056 = load i32, ptr %2055, align 4, !tbaa !118
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %2058, label %2059, !prof !405

2058:                                             ; preds = %2054, %2049
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1665, ptr noundef nonnull @.str.6) #19
  br label %2059

2059:                                             ; preds = %2058, %2054
  %2060 = load i32, ptr %1764, align 8
  %2061 = and i32 %2060, 255
  %2062 = zext nneg i32 %2061 to i64
  %2063 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2062
  %2064 = load i32, ptr %2063, align 4, !tbaa !122
  %2065 = zext i32 %2064 to i64
  %2066 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2065
  %2067 = load i64, ptr %2066, align 8, !tbaa !226
  %2068 = icmp eq i64 %2067, 0
  br i1 %2068, label %2069, label %2070, !prof !405

2069:                                             ; preds = %2059
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %2070

2070:                                             ; preds = %2069, %2059
  %2071 = getelementptr inbounds i8, ptr %1764, i64 %2067
  store ptr null, ptr %2071, align 8, !tbaa !107
  %2072 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %1764, ptr noundef nonnull %1764) #19
  %2073 = load i32, ptr %1764, align 8
  %2074 = and i32 %2073, 255
  %2075 = add nsw i32 %2074, -10
  %2076 = icmp ult i32 %2075, -9
  br i1 %2076, label %2078, label %2077, !prof !405

2077:                                             ; preds = %2070
  call void @gimple_set_modified(ptr noundef nonnull %1764, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %1764) #19
  br label %2078

2078:                                             ; preds = %2077, %2070
  call void @release_ssa_name(ptr noundef nonnull %2018) #19
  br label %2079

2079:                                             ; preds = %2078, %2024, %2020, %2017
  %2080 = phi i8 [ %1763, %2024 ], [ 1, %2078 ], [ %1763, %2020 ], [ %1763, %2017 ]
  call void @notice_special_calls(ptr noundef nonnull %1764) #19
  br label %2081

2081:                                             ; preds = %2079, %1997, %1976, %1975
  %2082 = phi i8 [ %2080, %2079 ], [ %1763, %1997 ], [ %1763, %1976 ], [ %1775, %1975 ]
  store ptr %1766, ptr %6, align 8, !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1725, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !373
  %2083 = icmp eq ptr %1766, null
  br i1 %2083, label %1727, label %1761, !prof !243, !llvm.loop !406

2084:                                             ; preds = %1733
  br i1 %1724, label %2086, label %2085, !prof !363

2085:                                             ; preds = %2084
  call void @free(ptr noundef %1723)
  br label %2086

2086:                                             ; preds = %2085, %2084
  %2087 = load i1, ptr @cfg_altered, align 1
  br i1 %2087, label %2088, label %2249, !prof !407

2088:                                             ; preds = %2086
  call void @find_unreachable_blocks() #19
  %2089 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2090 = getelementptr inbounds %struct.function, ptr %2089, i64 0, i32 1
  %2091 = load ptr, ptr %2090, align 8, !tbaa !173
  %2092 = getelementptr inbounds %struct.control_flow_graph, ptr %2091, i64 0, i32 1
  %2093 = load ptr, ptr %2092, align 8, !tbaa !175
  %2094 = getelementptr inbounds %struct.basic_block_def, ptr %2093, i64 0, i32 5
  %2095 = load ptr, ptr %2094, align 8, !tbaa !408
  %2096 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2097 = getelementptr inbounds %struct.function, ptr %2096, i64 0, i32 1
  %2098 = load ptr, ptr %2097, align 8, !tbaa !173
  %2099 = load ptr, ptr %2098, align 8, !tbaa !178
  %2100 = icmp eq ptr %2095, %2099
  br i1 %2100, label %2249, label %2101, !prof !409

2101:                                             ; preds = %2088
  %2102 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %9, i64 0, i32 1
  %2103 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %9, i64 0, i32 2
  %2104 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %9, i64 0, i32 2, i32 1
  br label %2105

2105:                                             ; preds = %2101, %2242
  %2106 = phi ptr [ %2095, %2101 ], [ %2243, %2242 ]
  %2107 = getelementptr inbounds %struct.basic_block_def, ptr %2106, i64 0, i32 5
  %2108 = load ptr, ptr %2107, align 8, !tbaa !408
  %2109 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %2110 = getelementptr inbounds %struct.basic_block_def, ptr %2106, i64 0, i32 9
  %2111 = load i32, ptr %2110, align 8, !tbaa !191
  %2112 = lshr i32 %2111, 6
  %2113 = zext nneg i32 %2112 to i64
  %2114 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2109, i64 0, i32 3, i64 %2113
  %2115 = load i64, ptr %2114, align 8, !tbaa !226
  %2116 = and i32 %2111, 63
  %2117 = zext nneg i32 %2116 to i64
  %2118 = shl nuw i64 1, %2117
  %2119 = and i64 %2118, %2115
  %2120 = icmp eq i64 %2119, 0
  br i1 %2120, label %2126, label %2121, !prof !410

2121:                                             ; preds = %2105
  %2122 = getelementptr inbounds %struct.basic_block_def, ptr %2106, i64 0, i32 13
  %2123 = load i32, ptr %2122, align 8, !tbaa !207
  %2124 = and i32 %2123, 2
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2126, label %2242, !prof !411

2126:                                             ; preds = %2121, %2105
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %2106) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  %2127 = load ptr, ptr %6, align 8
  %2128 = icmp eq ptr %2127, null
  br i1 %2128, label %2204, label %2129, !prof !412

2129:                                             ; preds = %2126, %2199
  %2130 = phi ptr [ %2202, %2199 ], [ %2127, %2126 ]
  %2131 = load ptr, ptr %2130, align 8, !tbaa !202
  %2132 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2131, i64 0, i32 3
  %2133 = load ptr, ptr %2132, align 8, !tbaa !118
  %2134 = call zeroext i8 @is_gimple_reg(ptr noundef %2133) #19
  %2135 = icmp eq i8 %2134, 0
  br i1 %2135, label %2136, label %2199, !prof !413

2136:                                             ; preds = %2129
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #19
  %2137 = load ptr, ptr %6, align 8
  %2138 = load ptr, ptr %2137, align 8, !tbaa !202
  %2139 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2138, i64 0, i32 3
  %2140 = load ptr, ptr %2139, align 8, !tbaa !118
  %2141 = getelementptr inbounds %struct.tree_ssa_name, ptr %2140, i64 0, i32 5
  store ptr %2141, ptr %2102, align 8, !tbaa !128
  %2142 = getelementptr inbounds %struct.tree_ssa_name, ptr %2140, i64 0, i32 5, i32 1
  %2143 = load ptr, ptr %2142, align 8, !tbaa !131
  store ptr %2143, ptr %9, align 8, !tbaa !132
  %2144 = icmp eq ptr %2143, %2141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2103, i8 0, i64 40, i1 false)
  br i1 %2144, label %2149, label %2145, !prof !414

2145:                                             ; preds = %2136
  call fastcc void @link_use_stmts_after(ptr noundef %2143, ptr noundef nonnull %9)
  %2146 = load ptr, ptr %9, align 8, !tbaa !132
  %2147 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2146, i64 0, i32 2
  %2148 = load ptr, ptr %2147, align 8, !tbaa !118
  br label %2149

2149:                                             ; preds = %2145, %2136
  %2150 = phi ptr [ %2148, %2145 ], [ null, %2136 ]
  %2151 = load ptr, ptr %9, align 8, !tbaa !132
  %2152 = load ptr, ptr %2102, align 8, !tbaa !128
  %2153 = icmp eq ptr %2151, %2152
  br i1 %2153, label %2198, label %2154, !prof !415

2154:                                             ; preds = %2149, %2190
  %2155 = phi ptr [ %2193, %2190 ], [ %2152, %2149 ]
  %2156 = phi ptr [ %2191, %2190 ], [ %2150, %2149 ]
  %2157 = getelementptr inbounds %struct.gimple_statement_base, ptr %2156, i64 0, i32 4
  %2158 = load ptr, ptr %2157, align 8, !tbaa !118
  %2159 = getelementptr inbounds %struct.basic_block_def, ptr %2158, i64 0, i32 13
  %2160 = load i32, ptr %2159, align 8, !tbaa !207
  %2161 = and i32 %2160, 2
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2177, label %2163, !prof !133

2163:                                             ; preds = %2154
  %2164 = load i32, ptr %2156, align 8
  %2165 = and i32 %2164, 255
  %2166 = icmp ne i32 %2165, 16
  %2167 = and i32 %2164, 2048
  %2168 = icmp eq i32 %2167, 0
  %2169 = and i1 %2166, %2168
  br i1 %2169, label %2177, label %2170, !prof !133

2170:                                             ; preds = %2163
  %2171 = load ptr, ptr %2103, align 8, !tbaa !136
  %2172 = icmp eq ptr %2171, null
  br i1 %2172, label %2195, label %2173, !prof !133

2173:                                             ; preds = %2170
  %2174 = load ptr, ptr %2104, align 8, !tbaa !131
  %2175 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2171, i64 0, i32 1
  store ptr %2174, ptr %2175, align 8, !tbaa !131
  %2176 = load ptr, ptr %2104, align 8, !tbaa !131
  store ptr %2171, ptr %2176, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2103, i8 0, i64 16, i1 false)
  br label %2195

2177:                                             ; preds = %2163, %2154
  %2178 = load ptr, ptr %2104, align 8, !tbaa !131
  store ptr %2178, ptr %9, align 8, !tbaa !132
  %2179 = icmp eq ptr %2178, %2155
  br i1 %2179, label %2180, label %2186

2180:                                             ; preds = %2177
  %2181 = load ptr, ptr %2103, align 8, !tbaa !136
  %2182 = icmp eq ptr %2181, null
  br i1 %2182, label %2190, label %2183

2183:                                             ; preds = %2180
  %2184 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2181, i64 0, i32 1
  store ptr %2178, ptr %2184, align 8, !tbaa !131
  %2185 = load ptr, ptr %2104, align 8, !tbaa !131
  store ptr %2181, ptr %2185, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2103, i8 0, i64 16, i1 false)
  br label %2190

2186:                                             ; preds = %2177
  call fastcc void @link_use_stmts_after(ptr noundef %2178, ptr noundef nonnull %9)
  %2187 = load ptr, ptr %9, align 8, !tbaa !132
  %2188 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2187, i64 0, i32 2
  %2189 = load ptr, ptr %2188, align 8, !tbaa !118
  br label %2190

2190:                                             ; preds = %2186, %2183, %2180
  %2191 = phi ptr [ %2189, %2186 ], [ null, %2183 ], [ null, %2180 ]
  %2192 = load ptr, ptr %9, align 8, !tbaa !132
  %2193 = load ptr, ptr %2102, align 8, !tbaa !128
  %2194 = icmp eq ptr %2192, %2193
  br i1 %2194, label %2198, label %2154, !prof !416, !llvm.loop !417

2195:                                             ; preds = %2173, %2170
  %2196 = load ptr, ptr %6, align 8
  %2197 = load ptr, ptr %2196, align 8, !tbaa !202
  call void @mark_virtual_phi_result_for_renaming(ptr noundef %2197)
  br label %2198

2198:                                             ; preds = %2190, %2149, %2195
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #19
  br label %2199

2199:                                             ; preds = %2198, %2129
  %2200 = load ptr, ptr %6, align 8, !tbaa !387
  %2201 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2200, i64 0, i32 2
  %2202 = load ptr, ptr %2201, align 8, !tbaa !204
  store ptr %2202, ptr %6, align 8, !tbaa !387
  %2203 = icmp eq ptr %2202, null
  br i1 %2203, label %2204, label %2129, !prof !418, !llvm.loop !419

2204:                                             ; preds = %2199, %2126
  %2205 = getelementptr inbounds %struct.basic_block_def, ptr %2106, i64 0, i32 13
  %2206 = load i32, ptr %2205, align 8, !tbaa !207
  %2207 = and i32 %2206, 2
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2209, label %2242, !prof !420

2209:                                             ; preds = %2204
  %2210 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !122
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2215, label %2212, !prof !399

2212:                                             ; preds = %2209
  %2213 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %2106) #19
  %2214 = icmp eq ptr %2213, null
  br i1 %2214, label %2215, label %2216

2215:                                             ; preds = %2212, %2209
  call void @delete_basic_block(ptr noundef %2106) #19
  br label %2242

2216:                                             ; preds = %2212
  %2217 = call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %2106) #19
  %2218 = icmp eq ptr %2217, null
  br label %2219

2219:                                             ; preds = %2238, %2216
  %2220 = phi ptr [ %2108, %2216 ], [ %2233, %2238 ]
  br i1 %2218, label %2223, label %2221

2221:                                             ; preds = %2219
  %2222 = load i32, ptr %2217, align 8, !tbaa !366
  br label %2223

2223:                                             ; preds = %2221, %2219
  %2224 = phi i32 [ %2222, %2221 ], [ 0, %2219 ]
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2240, label %2226

2226:                                             ; preds = %2223
  %2227 = load i32, ptr %2217, align 8, !tbaa !366
  %2228 = add i32 %2227, -1
  store i32 %2228, ptr %2217, align 8, !tbaa !366
  %2229 = zext i32 %2228 to i64
  %2230 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2217, i64 0, i32 2, i64 %2229
  %2231 = load ptr, ptr %2230, align 8, !tbaa !107
  %2232 = getelementptr inbounds %struct.basic_block_def, ptr %2231, i64 0, i32 5
  %2233 = load ptr, ptr %2232, align 8, !tbaa !408
  %2234 = getelementptr inbounds %struct.basic_block_def, ptr %2231, i64 0, i32 13
  %2235 = load i32, ptr %2234, align 8, !tbaa !207
  %2236 = and i32 %2235, 2
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2239, label %2238

2238:                                             ; preds = %2226, %2239
  br label %2219, !llvm.loop !421

2239:                                             ; preds = %2226
  call void @delete_basic_block(ptr noundef %2231) #19
  br label %2238

2240:                                             ; preds = %2223
  br i1 %2218, label %2242, label %2241

2241:                                             ; preds = %2240
  call void @free(ptr noundef %2217)
  br label %2242

2242:                                             ; preds = %2241, %2240, %2215, %2204, %2121
  %2243 = phi ptr [ %2108, %2121 ], [ %2108, %2204 ], [ %2108, %2215 ], [ %2220, %2240 ], [ %2220, %2241 ]
  %2244 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2245 = getelementptr inbounds %struct.function, ptr %2244, i64 0, i32 1
  %2246 = load ptr, ptr %2245, align 8, !tbaa !173
  %2247 = load ptr, ptr %2246, align 8, !tbaa !178
  %2248 = icmp eq ptr %2243, %2247
  br i1 %2248, label %2249, label %2105, !prof !422, !llvm.loop !423

2249:                                             ; preds = %2242, %2088, %2086
  %2250 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2251 = getelementptr inbounds %struct.function, ptr %2250, i64 0, i32 1
  %2252 = load ptr, ptr %2251, align 8, !tbaa !173
  %2253 = load ptr, ptr %2252, align 8, !tbaa !178
  %2254 = getelementptr inbounds %struct.basic_block_def, ptr %2253, i64 0, i32 6
  %2255 = load ptr, ptr %2254, align 8, !tbaa !196
  %2256 = getelementptr inbounds %struct.control_flow_graph, ptr %2252, i64 0, i32 1
  %2257 = load ptr, ptr %2256, align 8, !tbaa !175
  %2258 = icmp eq ptr %2255, %2257
  br i1 %2258, label %2454, label %2259, !prof !197

2259:                                             ; preds = %2249
  %2260 = getelementptr inbounds i8, ptr %2, i64 8
  %2261 = getelementptr inbounds i8, ptr %2, i64 16
  %2262 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  %2263 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 3
  %2264 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %2265 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  br label %2266

2266:                                             ; preds = %2259, %2443
  %2267 = phi ptr [ %2255, %2259 ], [ %2447, %2443 ]
  %2268 = phi i8 [ %1730, %2259 ], [ %2445, %2443 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %2269 = getelementptr inbounds %struct.basic_block_def, ptr %2267, i64 0, i32 13
  %2270 = load i32, ptr %2269, align 8, !tbaa !207
  %2271 = and i32 %2270, 512
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2274, label %2273, !prof !424

2273:                                             ; preds = %2266
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.6) #19
  br label %2274

2274:                                             ; preds = %2273, %2266
  %2275 = getelementptr inbounds %struct.basic_block_def, ptr %2267, i64 0, i32 7
  %2276 = load ptr, ptr %2275, align 8, !tbaa !118
  %2277 = icmp eq ptr %2276, null
  br i1 %2277, label %2281, label %2278, !prof !425

2278:                                             ; preds = %2274
  %2279 = getelementptr inbounds %struct.gimple_bb_info, ptr %2276, i64 0, i32 1
  %2280 = load ptr, ptr %2279, align 8, !tbaa !384
  br label %2281

2281:                                             ; preds = %2278, %2274
  %2282 = phi ptr [ %2280, %2278 ], [ null, %2274 ]
  %2283 = icmp eq ptr %2282, null
  br i1 %2283, label %2286, label %2284, !prof !426

2284:                                             ; preds = %2281
  %2285 = load ptr, ptr %2282, align 8, !tbaa !215, !noalias !427
  br label %2286

2286:                                             ; preds = %2284, %2281
  %2287 = phi ptr [ %2285, %2284 ], [ null, %2281 ]
  %2288 = icmp eq ptr %2287, null
  br i1 %2288, label %2295, label %2289, !prof !430

2289:                                             ; preds = %2286
  %2290 = load ptr, ptr %2287, align 8, !tbaa !202, !noalias !427
  %2291 = icmp eq ptr %2290, null
  br i1 %2291, label %2295, label %2292, !prof !431

2292:                                             ; preds = %2289
  %2293 = getelementptr inbounds %struct.gimple_statement_base, ptr %2290, i64 0, i32 4
  %2294 = load ptr, ptr %2293, align 8, !tbaa !118, !noalias !427
  br label %2295

2295:                                             ; preds = %2292, %2289, %2286
  %2296 = phi ptr [ %2294, %2292 ], [ null, %2289 ], [ null, %2286 ]
  store ptr %2287, ptr %2, align 8, !tbaa.struct !200
  store ptr %2282, ptr %2260, align 8, !tbaa.struct !373
  store ptr %2296, ptr %2261, align 8, !tbaa.struct !374
  %2297 = icmp eq ptr %2287, null
  br i1 %2297, label %2443, label %2298, !prof !432

2298:                                             ; preds = %2295, %2433
  %2299 = phi ptr [ %2436, %2433 ], [ %2287, %2295 ]
  %2300 = phi i8 [ 1, %2433 ], [ 0, %2295 ]
  br label %2301

2301:                                             ; preds = %2298, %2438
  %2302 = phi ptr [ %2299, %2298 ], [ %2441, %2438 ]
  %2303 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !433
  %2304 = add nsw i32 %2303, 1
  store i32 %2304, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !433
  %2305 = load ptr, ptr %2302, align 8, !tbaa !202
  %2306 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2305, i64 0, i32 3
  %2307 = load ptr, ptr %2306, align 8, !tbaa !118
  %2308 = call zeroext i8 @is_gimple_reg(ptr noundef %2307) #19
  %2309 = icmp eq i8 %2308, 0
  br i1 %2309, label %2310, label %2417, !prof !434

2310:                                             ; preds = %2301
  %2311 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2305, i64 0, i32 1
  %2312 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2305, i64 0, i32 4, i64 0, i32 0, i32 3
  %2313 = load ptr, ptr %2312, align 8, !tbaa !137
  %2314 = load ptr, ptr %2313, align 8, !tbaa !107
  %2315 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2305, i64 0, i32 2
  %2316 = load i32, ptr %2315, align 4, !tbaa !118
  %2317 = icmp ugt i32 %2316, 1
  br i1 %2317, label %2323, label %2334, !prof !306

2318:                                             ; preds = %2329
  %2319 = add nuw nsw i64 %2324, 1
  %2320 = load i32, ptr %2315, align 4, !tbaa !118
  %2321 = zext i32 %2320 to i64
  %2322 = icmp ult i64 %2319, %2321
  br i1 %2322, label %2323, label %2334, !prof !307, !llvm.loop !308

2323:                                             ; preds = %2310, %2318
  %2324 = phi i64 [ %2319, %2318 ], [ 1, %2310 ]
  %2325 = load i32, ptr %2311, align 8, !tbaa !118
  %2326 = zext i32 %2325 to i64
  %2327 = icmp ugt i64 %2324, %2326
  br i1 %2327, label %2328, label %2329, !prof !309

2328:                                             ; preds = %2323
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
  br label %2329

2329:                                             ; preds = %2328, %2323
  %2330 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2305, i64 0, i32 4, i64 %2324, i32 0, i32 3
  %2331 = load ptr, ptr %2330, align 8, !tbaa !137
  %2332 = load ptr, ptr %2331, align 8, !tbaa !107
  %2333 = icmp eq ptr %2332, %2314
  br i1 %2333, label %2318, label %2414, !prof !310

2334:                                             ; preds = %2318, %2310
  %2335 = load ptr, ptr %2306, align 8, !tbaa !118
  %2336 = load ptr, ptr %2312, align 8, !tbaa !137
  %2337 = load ptr, ptr %2336, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  %2338 = getelementptr inbounds %struct.tree_ssa_name, ptr %2335, i64 0, i32 5
  store ptr %2338, ptr %2262, align 8, !tbaa !128
  %2339 = getelementptr inbounds %struct.tree_ssa_name, ptr %2335, i64 0, i32 5, i32 1
  %2340 = load ptr, ptr %2339, align 8, !tbaa !131
  store ptr %2340, ptr %3, align 8, !tbaa !132
  %2341 = icmp eq ptr %2340, %2338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2264, i8 0, i64 40, i1 false)
  br i1 %2341, label %2343, label %2342, !prof !435

2342:                                             ; preds = %2334
  call fastcc void @link_use_stmts_after(ptr noundef %2340, ptr noundef nonnull %3)
  br label %2343

2343:                                             ; preds = %2342, %2334
  %2344 = load ptr, ptr %3, align 8, !tbaa !132
  %2345 = load ptr, ptr %2262, align 8, !tbaa !128
  %2346 = icmp eq ptr %2344, %2345
  br i1 %2346, label %2403, label %2347, !prof !436

2347:                                             ; preds = %2343
  %2348 = icmp eq ptr %2337, null
  %2349 = getelementptr inbounds %struct.tree_ssa_name, ptr %2337, i64 0, i32 5
  %2350 = getelementptr inbounds %struct.tree_ssa_name, ptr %2337, i64 0, i32 5, i32 1
  br label %2351

2351:                                             ; preds = %2347, %2399
  %2352 = phi ptr [ %2344, %2347 ], [ %2400, %2399 ]
  %2353 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2352, i64 0, i32 1
  %2354 = load ptr, ptr %2353, align 8, !tbaa !131
  store ptr %2354, ptr %2263, align 8, !tbaa !135
  %2355 = load ptr, ptr %3, align 8, !tbaa !132
  %2356 = icmp eq ptr %2355, %2264
  br i1 %2356, label %2388, label %2357, !prof !436

2357:                                             ; preds = %2351, %2384
  %2358 = phi ptr [ %2385, %2384 ], [ %2352, %2351 ]
  %2359 = load ptr, ptr %2358, align 8, !tbaa !136
  %2360 = icmp eq ptr %2359, null
  br i1 %2360, label %2366, label %2361, !prof !435

2361:                                             ; preds = %2357
  %2362 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2358, i64 0, i32 1
  %2363 = load ptr, ptr %2362, align 8, !tbaa !131
  %2364 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2359, i64 0, i32 1
  store ptr %2363, ptr %2364, align 8, !tbaa !131
  %2365 = load ptr, ptr %2362, align 8, !tbaa !131
  store ptr %2359, ptr %2365, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2358, i8 0, i64 16, i1 false)
  br label %2366

2366:                                             ; preds = %2361, %2357
  %2367 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2358, i64 0, i32 3
  %2368 = load ptr, ptr %2367, align 8, !tbaa !137
  store ptr %2337, ptr %2368, align 8, !tbaa !107
  br i1 %2348, label %2373, label %2369, !prof !435

2369:                                             ; preds = %2366
  %2370 = load i64, ptr %2337, align 8
  %2371 = and i64 %2370, 65535
  %2372 = icmp eq i64 %2371, 141
  br i1 %2372, label %2374, label %2373, !prof !437

2373:                                             ; preds = %2369, %2366
  store ptr null, ptr %2358, align 8, !tbaa !136
  br label %2378

2374:                                             ; preds = %2369
  store ptr %2349, ptr %2358, align 8, !tbaa !136
  %2375 = load ptr, ptr %2350, align 8, !tbaa !131
  %2376 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2358, i64 0, i32 1
  store ptr %2375, ptr %2376, align 8, !tbaa !131
  %2377 = load ptr, ptr %2350, align 8, !tbaa !131
  store ptr %2358, ptr %2377, align 8, !tbaa !136
  store ptr %2358, ptr %2350, align 8, !tbaa !131
  br label %2378

2378:                                             ; preds = %2374, %2373
  %2379 = load ptr, ptr %2263, align 8, !tbaa !135
  store ptr %2379, ptr %3, align 8, !tbaa !132
  %2380 = icmp eq ptr %2379, %2264
  br i1 %2380, label %2384, label %2381, !prof !437

2381:                                             ; preds = %2378
  %2382 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2379, i64 0, i32 1
  %2383 = load ptr, ptr %2382, align 8, !tbaa !131
  store ptr %2383, ptr %2263, align 8, !tbaa !135
  br label %2384

2384:                                             ; preds = %2381, %2378
  %2385 = phi ptr [ %2379, %2381 ], [ null, %2378 ]
  %2386 = load ptr, ptr %3, align 8, !tbaa !132
  %2387 = icmp eq ptr %2386, %2264
  br i1 %2387, label %2388, label %2357, !prof !306, !llvm.loop !438

2388:                                             ; preds = %2384, %2351
  %2389 = load ptr, ptr %2265, align 8, !tbaa !131
  store ptr %2389, ptr %3, align 8, !tbaa !132
  %2390 = load ptr, ptr %2262, align 8, !tbaa !128
  %2391 = icmp eq ptr %2389, %2390
  br i1 %2391, label %2392, label %2398, !prof !437

2392:                                             ; preds = %2388
  %2393 = load ptr, ptr %2264, align 8, !tbaa !136
  %2394 = icmp eq ptr %2393, null
  br i1 %2394, label %2399, label %2395, !prof !435

2395:                                             ; preds = %2392
  %2396 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2393, i64 0, i32 1
  store ptr %2389, ptr %2396, align 8, !tbaa !131
  %2397 = load ptr, ptr %2265, align 8, !tbaa !131
  store ptr %2393, ptr %2397, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2264, i8 0, i64 16, i1 false)
  br label %2399

2398:                                             ; preds = %2388
  call fastcc void @link_use_stmts_after(ptr noundef %2389, ptr noundef nonnull %3)
  br label %2399

2399:                                             ; preds = %2398, %2395, %2392
  %2400 = load ptr, ptr %3, align 8, !tbaa !132
  %2401 = load ptr, ptr %2262, align 8, !tbaa !128
  %2402 = icmp eq ptr %2400, %2401
  br i1 %2402, label %2403, label %2351, !prof !306, !llvm.loop !439

2403:                                             ; preds = %2399, %2343
  %2404 = load i64, ptr %2335, align 8
  %2405 = and i64 %2404, 4194304
  %2406 = icmp eq i64 %2405, 0
  br i1 %2406, label %2413, label %2407, !prof !437

2407:                                             ; preds = %2403
  %2408 = load i64, ptr %2337, align 8
  %2409 = and i64 %2408, 65535
  %2410 = icmp eq i64 %2409, 141
  br i1 %2410, label %2411, label %2413

2411:                                             ; preds = %2407
  %2412 = or i64 %2408, 4194304
  store i64 %2412, ptr %2337, align 8
  br label %2413

2413:                                             ; preds = %2411, %2407, %2403
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  br label %2417

2414:                                             ; preds = %2329
  %2415 = load i32, ptr %2305, align 8
  %2416 = or i32 %2415, 2048
  store i32 %2416, ptr %2305, align 8
  br label %2417

2417:                                             ; preds = %2414, %2413, %2301
  %2418 = load i32, ptr %2305, align 8
  %2419 = and i32 %2418, 2048
  %2420 = icmp eq i32 %2419, 0
  br i1 %2420, label %2421, label %2438, !prof !440

2421:                                             ; preds = %2417
  %2422 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %2423 = icmp eq ptr %2422, null
  br i1 %2423, label %2433, label %2424, !prof !441

2424:                                             ; preds = %2421
  %2425 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %2426 = and i32 %2425, 8
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2433, label %2428

2428:                                             ; preds = %2424
  %2429 = call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %2422)
  %2430 = load ptr, ptr @dump_file, align 8, !tbaa !107
  call void @print_gimple_stmt(ptr noundef %2430, ptr noundef nonnull %2305, i32 noundef 0, i32 noundef 2) #19
  %2431 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %2432 = call i32 @fputc(i32 10, ptr %2431)
  br label %2433

2433:                                             ; preds = %2428, %2424, %2421
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #19
  %2434 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !442
  %2435 = add nsw i32 %2434, 1
  store i32 %2435, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !442
  %2436 = load ptr, ptr %2, align 8
  %2437 = icmp eq ptr %2436, null
  br i1 %2437, label %2443, label %2298, !prof !205, !llvm.loop !443

2438:                                             ; preds = %2417
  %2439 = load ptr, ptr %2, align 8, !tbaa !387
  %2440 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2439, i64 0, i32 2
  %2441 = load ptr, ptr %2440, align 8, !tbaa !204
  store ptr %2441, ptr %2, align 8, !tbaa !387
  %2442 = icmp eq ptr %2441, null
  br i1 %2442, label %2443, label %2301, !prof !205, !llvm.loop !443

2443:                                             ; preds = %2433, %2438, %2295
  %2444 = phi i8 [ 0, %2295 ], [ %2300, %2438 ], [ 1, %2433 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %2445 = or i8 %2444, %2268
  %2446 = getelementptr inbounds %struct.basic_block_def, ptr %2267, i64 0, i32 6
  %2447 = load ptr, ptr %2446, align 8, !tbaa !196
  %2448 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2449 = getelementptr inbounds %struct.function, ptr %2448, i64 0, i32 1
  %2450 = load ptr, ptr %2449, align 8, !tbaa !173
  %2451 = getelementptr inbounds %struct.control_flow_graph, ptr %2450, i64 0, i32 1
  %2452 = load ptr, ptr %2451, align 8, !tbaa !175
  %2453 = icmp eq ptr %2447, %2452
  br i1 %2453, label %2454, label %2266, !prof !444, !llvm.loop !445

2454:                                             ; preds = %2443, %2249
  %2455 = phi i8 [ %1730, %2249 ], [ %2445, %2443 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %2456 = load i1, ptr @cfg_altered, align 1
  call void @free_dominance_info(i32 noundef 2) #19
  %2457 = load i1, ptr @cfg_altered, align 1
  br i1 %2457, label %2458, label %2459, !prof !407

2458:                                             ; preds = %2454
  call void @free_dominance_info(i32 noundef 1) #19
  br label %2459

2459:                                             ; preds = %2458, %2454
  %2460 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2461 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !381
  call void @statistics_counter_event(ptr noundef %2460, ptr noundef nonnull @.str.8, i32 noundef %2461) #19
  %2462 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2463 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !442
  call void @statistics_counter_event(ptr noundef %2462, ptr noundef nonnull @.str.9, i32 noundef %2463) #19
  %2464 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %2465 = icmp eq ptr %2464, null
  br i1 %2465, label %2493, label %2466, !prof !245

2466:                                             ; preds = %2459
  %2467 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %2468 = and i32 %2467, 24
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2493, label %2470

2470:                                             ; preds = %2466
  %2471 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !381
  %2472 = sitofp i32 %2471 to float
  %2473 = load i32, ptr @stats, align 4, !tbaa !376
  %2474 = sitofp i32 %2473 to float
  %2475 = fdiv float %2472, %2474
  %2476 = fmul float %2475, 1.000000e+02
  %2477 = fptosi float %2476 to i32
  %2478 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2464, ptr noundef nonnull @.str.23, i32 noundef %2471, i32 noundef %2473, i32 noundef %2477)
  %2479 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !433
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2488, label %2481

2481:                                             ; preds = %2470
  %2482 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !442
  %2483 = sitofp i32 %2482 to float
  %2484 = sitofp i32 %2479 to float
  %2485 = fdiv float %2483, %2484
  %2486 = fmul float %2485, 1.000000e+02
  %2487 = fptosi float %2486 to i32
  br label %2488

2488:                                             ; preds = %2470, %2481
  %2489 = phi i32 [ %2487, %2481 ], [ 0, %2470 ]
  %2490 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %2491 = load i32, ptr getelementptr inbounds (%struct.stmt_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !442
  %2492 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2490, ptr noundef nonnull @.str.24, i32 noundef %2491, i32 noundef %2479, i32 noundef %2489)
  br label %2493

2493:                                             ; preds = %2488, %2466, %2459
  br i1 %11, label %2524, label %2494, !prof !165

2494:                                             ; preds = %2493
  %2495 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2496 = getelementptr inbounds %struct.function, ptr %2495, i64 0, i32 1
  %2497 = load ptr, ptr %2496, align 8, !tbaa !173
  %2498 = getelementptr inbounds %struct.control_flow_graph, ptr %2497, i64 0, i32 5
  %2499 = load i32, ptr %2498, align 8, !tbaa !195
  %2500 = icmp sgt i32 %2499, 0
  br i1 %2500, label %2501, label %2516, !prof !169

2501:                                             ; preds = %2494, %2501
  %2502 = phi i64 [ %2508, %2501 ], [ 0, %2494 ]
  %2503 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  %2504 = getelementptr inbounds ptr, ptr %2503, i64 %2502
  %2505 = load ptr, ptr %2504, align 8, !tbaa !107
  call void @bitmap_obstack_free(ptr noundef %2505) #19
  %2506 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  %2507 = getelementptr inbounds ptr, ptr %2506, i64 %2502
  store ptr null, ptr %2507, align 8, !tbaa !107
  %2508 = add nuw nsw i64 %2502, 1
  %2509 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2510 = getelementptr inbounds %struct.function, ptr %2509, i64 0, i32 1
  %2511 = load ptr, ptr %2510, align 8, !tbaa !173
  %2512 = getelementptr inbounds %struct.control_flow_graph, ptr %2511, i64 0, i32 5
  %2513 = load i32, ptr %2512, align 8, !tbaa !195
  %2514 = sext i32 %2513 to i64
  %2515 = icmp slt i64 %2508, %2514
  br i1 %2515, label %2501, label %2516, !prof !446, !llvm.loop !447

2516:                                             ; preds = %2501, %2494
  %2517 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  call void @free(ptr noundef %2517)
  %2518 = load ptr, ptr @visited_control_parents, align 8, !tbaa !107
  %2519 = load ptr, ptr %2518, align 8, !tbaa !223
  call void @free(ptr noundef %2519)
  call void @free(ptr noundef %2518)
  %2520 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !107
  %2521 = load ptr, ptr %2520, align 8, !tbaa !223
  call void @free(ptr noundef %2521)
  call void @free(ptr noundef %2520)
  %2522 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %2523 = load ptr, ptr %2522, align 8, !tbaa !223
  call void @free(ptr noundef %2523)
  call void @free(ptr noundef %2522)
  store ptr null, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  br label %2524

2524:                                             ; preds = %2516, %2493
  %2525 = load ptr, ptr @processed, align 8, !tbaa !107
  %2526 = load ptr, ptr %2525, align 8, !tbaa !223
  call void @free(ptr noundef %2526)
  call void @free(ptr noundef %2525)
  %2527 = load ptr, ptr @worklist, align 8, !tbaa !107
  %2528 = icmp eq ptr %2527, null
  br i1 %2528, label %2530, label %2529, !prof !363

2529:                                             ; preds = %2524
  call void @free(ptr noundef %2527)
  br label %2530

2530:                                             ; preds = %2524, %2529
  %2531 = zext i1 %2456 to i8
  %2532 = or i8 %2455, %2531
  store ptr null, ptr @worklist, align 8, !tbaa !107
  call void @free_edge_list(ptr noundef %155) #19
  %2533 = icmp eq i8 %2532, 0
  %2534 = select i1 %2533, i32 0, i32 34850, !prof !448
  ret i32 %2534
}

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_dce_init(i8 noundef zeroext %0) unnamed_addr #9 !prof !141 !PGOFuncName !449 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @stats, i8 0, i64 16, i1 false)
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %40, label %3, !prof !165

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !195
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #19
  store ptr %11, ptr @control_dependence_map, align 8, !tbaa !107
  %12 = load ptr, ptr @cfun, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !173
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !195
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31, !prof !169

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %3 ]
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %21 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !107
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr @cfun, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !195
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %18, label %31, !prof !446, !llvm.loop !450

31:                                               ; preds = %18, %3
  %32 = phi i32 [ %16, %3 ], [ %28, %18 ]
  %33 = tail call ptr @sbitmap_alloc(i32 noundef %32) #19
  store ptr %33, ptr @last_stmt_necessary, align 8, !tbaa !107
  tail call void @sbitmap_zero(ptr noundef %33) #19
  %34 = load ptr, ptr @cfun, align 8, !tbaa !107
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !173
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !195
  %39 = tail call ptr @sbitmap_alloc(i32 noundef %38) #19
  store ptr %39, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  tail call void @sbitmap_zero(ptr noundef %39) #19
  br label %40

40:                                               ; preds = %31, %1
  %41 = load ptr, ptr @cfun, align 8, !tbaa !107
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !451
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !452
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47, !prof !363

47:                                               ; preds = %40
  %48 = load i32, ptr %45, align 8, !tbaa !456
  %49 = add i32 %48, 1
  br label %50

50:                                               ; preds = %40, %47
  %51 = phi i32 [ %49, %47 ], [ 1, %40 ]
  %52 = tail call ptr @sbitmap_alloc(i32 noundef %51) #19
  store ptr %52, ptr @processed, align 8, !tbaa !107
  tail call void @sbitmap_zero(ptr noundef %52) #19
  %53 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #19
  store ptr %53, ptr @worklist, align 8, !tbaa !107
  store i1 false, ptr @cfg_altered, align 1
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @create_edge_list() local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare void @scev_initialize() local_unnamed_addr #3

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_control_dependent_edges_necessary(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !458 !PGOFuncName !459 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %10, !prof !276

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 383, ptr noundef nonnull @.str.6) #19
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr @cfun, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %229, label %16, !prof !276

16:                                               ; preds = %10
  %17 = load ptr, ptr @control_dependence_map, align 8, !tbaa !107
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !191
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !107
  %23 = load ptr, ptr %22, align 8, !tbaa !277
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @bitmap_zero_bits, ptr %23, !prof !279
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !280
  %28 = shl i32 %27, 7
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %25, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !226
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %35

35:                                               ; preds = %226, %16
  %36 = phi i32 [ 0, %16 ], [ %91, %226 ]
  %37 = phi i64 [ %30, %16 ], [ %227, %226 ]
  %38 = phi ptr [ %25, %16 ], [ %93, %226 ]
  %39 = phi i32 [ %33, %16 ], [ %228, %226 ]
  %40 = icmp eq i64 %37, 0
  br i1 %40, label %55, label %41, !prof !282

41:                                               ; preds = %69, %35
  %42 = phi i32 [ %36, %35 ], [ %70, %69 ]
  %43 = phi i64 [ %37, %35 ], [ %74, %69 ]
  %44 = phi ptr [ %38, %35 ], [ %61, %69 ]
  %45 = phi i32 [ %39, %35 ], [ %71, %69 ]
  %46 = and i64 %43, 1
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %90, !prof !283

48:                                               ; preds = %41, %48
  %49 = phi i32 [ %52, %48 ], [ %45, %41 ]
  %50 = phi i64 [ %51, %48 ], [ %43, %41 ]
  %51 = lshr exact i64 %50, 1
  %52 = add i32 %49, 1
  %53 = and i64 %50, 2
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %48, label %90, !prof !284, !llvm.loop !285

55:                                               ; preds = %35
  %56 = add i32 %39, 63
  %57 = and i32 %56, -64
  %58 = add i32 %36, 1
  br label %59

59:                                               ; preds = %86, %55
  %60 = phi i64 [ %37, %55 ], [ %81, %86 ]
  %61 = phi ptr [ %38, %55 ], [ %84, %86 ]
  %62 = phi i32 [ %57, %55 ], [ %89, %86 ]
  %63 = phi i32 [ %58, %55 ], [ 0, %86 ]
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %80, label %65, !prof !286

65:                                               ; preds = %59
  %66 = add i32 %62, 128
  %67 = shl i32 %63, 6
  %68 = sub i32 %66, %67
  br label %69

69:                                               ; preds = %65, %76
  %70 = phi i32 [ %78, %76 ], [ %63, %65 ]
  %71 = phi i32 [ %77, %76 ], [ %62, %65 ]
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %61, i64 0, i32 3, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !226
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %41, !prof !287

76:                                               ; preds = %69
  %77 = add i32 %71, 64
  %78 = add i32 %70, 1
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %69, !prof !288, !llvm.loop !289

80:                                               ; preds = %76, %59
  %81 = phi i64 [ %60, %59 ], [ %74, %76 ]
  %82 = phi i32 [ %62, %59 ], [ %68, %76 ]
  %83 = phi i32 [ %63, %59 ], [ 2, %76 ]
  %84 = load ptr, ptr %61, align 8, !tbaa !290
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86, !prof !291

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.bitmap_element_def, ptr %84, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !280
  %89 = shl i32 %88, 7
  br label %59, !llvm.loop !292

90:                                               ; preds = %80, %48, %41
  %91 = phi i32 [ %42, %41 ], [ %42, %48 ], [ %83, %80 ]
  %92 = phi i64 [ %43, %41 ], [ %51, %48 ], [ %81, %80 ]
  %93 = phi ptr [ %44, %41 ], [ %44, %48 ], [ %84, %80 ]
  %94 = phi i32 [ %45, %41 ], [ %52, %48 ], [ %82, %80 ]
  %95 = phi i1 [ false, %41 ], [ false, %48 ], [ true, %80 ]
  br i1 %95, label %229, label %96, !prof !293

96:                                               ; preds = %90
  %97 = load ptr, ptr %34, align 8, !tbaa !170
  %98 = zext i32 %94 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !107
  %101 = load ptr, ptr %100, align 8, !tbaa !171
  %102 = load ptr, ptr @last_stmt_necessary, align 8, !tbaa !107
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !191
  %105 = lshr i32 %104, 6
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct.simple_bitmap_def, ptr %102, i64 0, i32 3, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !226
  %109 = and i32 %104, 63
  %110 = zext nneg i32 %109 to i64
  %111 = shl nuw i64 1, %110
  %112 = and i64 %111, %108
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %226, !prof !294

114:                                              ; preds = %96
  %115 = load ptr, ptr %102, align 8, !tbaa !223
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117, !prof !295

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %115, i64 %106
  %119 = load i8, ptr %118, align 1, !tbaa !118
  %120 = add i8 %119, 1
  store i8 %120, ptr %118, align 1, !tbaa !118
  br label %121

121:                                              ; preds = %114, %117
  %122 = load i64, ptr %107, align 8, !tbaa !226
  %123 = or i64 %122, %111
  store i64 %123, ptr %107, align 8, !tbaa !226
  %124 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %125 = load i32, ptr %103, align 8, !tbaa !191
  %126 = load ptr, ptr %124, align 8, !tbaa !223
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128, !prof !295

128:                                              ; preds = %121
  %129 = lshr i32 %125, 6
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds %struct.simple_bitmap_def, ptr %124, i64 0, i32 3, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !226
  %133 = and i32 %125, 63
  %134 = zext nneg i32 %133 to i64
  %135 = shl nuw i64 1, %134
  %136 = and i64 %132, %135
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = getelementptr inbounds i8, ptr %126, i64 %130
  %140 = load i8, ptr %139, align 1, !tbaa !118
  %141 = add i8 %140, 1
  store i8 %141, ptr %139, align 1, !tbaa !118
  br label %142

142:                                              ; preds = %121, %128, %138
  %143 = and i32 %125, 63
  %144 = zext nneg i32 %143 to i64
  %145 = shl nuw i64 1, %144
  %146 = lshr i32 %125, 6
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds %struct.simple_bitmap_def, ptr %124, i64 0, i32 3, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !226
  %150 = or i64 %149, %145
  store i64 %150, ptr %148, align 8, !tbaa !226
  %151 = tail call ptr @last_stmt(ptr noundef %101) #19
  %152 = icmp eq ptr %151, null
  br i1 %152, label %226, label %153, !prof !296

153:                                              ; preds = %142
  %154 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef nonnull %151) #19
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %226, label %156, !prof !296

156:                                              ; preds = %153
  %157 = load i32, ptr %151, align 8
  %158 = and i32 %157, 2048
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %226, !prof !229

160:                                              ; preds = %156
  %161 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %162 = icmp eq ptr %161, null
  br i1 %162, label %172, label %163, !prof !229

163:                                              ; preds = %160
  %164 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %165 = and i32 %164, 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %163
  %168 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %161)
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %169, ptr noundef nonnull %151, i32 noundef 0, i32 noundef 2) #19
  %170 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %171 = tail call i32 @fputc(i32 10, ptr %170)
  br label %172

172:                                              ; preds = %167, %163, %160
  %173 = load i32, ptr %151, align 8
  %174 = or i32 %173, 2048
  store i32 %174, ptr %151, align 8
  %175 = load ptr, ptr @worklist, align 8, !tbaa !107
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177, !prof !228

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.VEC_gimple_base, ptr %175, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !230
  %180 = load i32, ptr %175, align 8, !tbaa !232
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184, !prof !233

182:                                              ; preds = %177, %172
  %183 = tail call ptr @vec_heap_p_reserve(ptr noundef %175, i32 noundef 1) #19
  store ptr %183, ptr @worklist, align 8, !tbaa !107
  br label %184

184:                                              ; preds = %182, %177
  %185 = load ptr, ptr @worklist, align 8, !tbaa !107
  %186 = load i32, ptr %185, align 8, !tbaa !232
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 8, !tbaa !232
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds %struct.VEC_gimple_base, ptr %185, i64 0, i32 2, i64 %188
  store ptr %151, ptr %189, align 8, !tbaa !107
  %190 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %191 = icmp eq ptr %190, null
  br i1 %191, label %226, label %192, !prof !234

192:                                              ; preds = %184
  %193 = load i32, ptr %151, align 8
  %194 = and i32 %193, 255
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %226, label %196, !prof !235

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.gimple_statement_base, ptr %151, i64 0, i32 4
  %198 = load ptr, ptr %197, align 8, !tbaa !118
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %198, i64 0, i32 9
  %200 = load i32, ptr %199, align 8, !tbaa !191
  %201 = load ptr, ptr %190, align 8, !tbaa !223
  %202 = icmp eq ptr %201, null
  br i1 %202, label %217, label %203, !prof !236

203:                                              ; preds = %196
  %204 = lshr i32 %200, 6
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds %struct.simple_bitmap_def, ptr %190, i64 0, i32 3, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !226
  %208 = and i32 %200, 63
  %209 = zext nneg i32 %208 to i64
  %210 = shl nuw i64 1, %209
  %211 = and i64 %207, %210
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %203
  %214 = getelementptr inbounds i8, ptr %201, i64 %205
  %215 = load i8, ptr %214, align 1, !tbaa !118
  %216 = add i8 %215, 1
  store i8 %216, ptr %214, align 1, !tbaa !118
  br label %217

217:                                              ; preds = %213, %203, %196
  %218 = and i32 %200, 63
  %219 = zext nneg i32 %218 to i64
  %220 = shl nuw i64 1, %219
  %221 = lshr i32 %200, 6
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds %struct.simple_bitmap_def, ptr %190, i64 0, i32 3, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !226
  %225 = or i64 %224, %220
  store i64 %225, ptr %223, align 8, !tbaa !226
  br label %226

226:                                              ; preds = %217, %192, %184, %156, %142, %153, %96
  %227 = lshr i64 %92, 1
  %228 = add i32 %94, 1
  br label %35, !llvm.loop !297

229:                                              ; preds = %90, %10
  ret void
}

declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

declare void @scev_finalize() local_unnamed_addr #3

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_stmt_necessary(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !prof !460 !PGOFuncName !461 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !228

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 209, ptr noundef nonnull @.str.6) #19
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %78, !prof !229

9:                                                ; preds = %5
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12, !prof !229

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2) #19
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %16, %12, %9
  %22 = load i32, ptr %0, align 8
  %23 = or i32 %22, 2048
  store i32 %23, ptr %0, align 8
  %24 = icmp eq i8 %1, 0
  br i1 %24, label %41, label %25, !prof !228

25:                                               ; preds = %21
  %26 = load ptr, ptr @worklist, align 8, !tbaa !107
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28, !prof !228

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.VEC_gimple_base, ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !230
  %31 = load i32, ptr %26, align 8, !tbaa !232
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35, !prof !233

33:                                               ; preds = %25, %28
  %34 = tail call ptr @vec_heap_p_reserve(ptr noundef %26, i32 noundef 1) #19
  store ptr %34, ptr @worklist, align 8, !tbaa !107
  br label %35

35:                                               ; preds = %28, %33
  %36 = load ptr, ptr @worklist, align 8, !tbaa !107
  %37 = load i32, ptr %36, align 8, !tbaa !232
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !232
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds %struct.VEC_gimple_base, ptr %36, i64 0, i32 2, i64 %39
  store ptr %0, ptr %40, align 8, !tbaa !107
  br label %41

41:                                               ; preds = %35, %21
  %42 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %43 = icmp eq ptr %42, null
  br i1 %43, label %78, label %44, !prof !234

44:                                               ; preds = %41
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %78, label %48, !prof !235

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !118
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !191
  %53 = load ptr, ptr %42, align 8, !tbaa !223
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55, !prof !236

55:                                               ; preds = %48
  %56 = lshr i32 %52, 6
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !226
  %60 = and i32 %52, 63
  %61 = zext nneg i32 %60 to i64
  %62 = shl nuw i64 1, %61
  %63 = and i64 %59, %62
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = getelementptr inbounds i8, ptr %53, i64 %57
  %67 = load i8, ptr %66, align 1, !tbaa !118
  %68 = add i8 %67, 1
  store i8 %68, ptr %66, align 1, !tbaa !118
  br label %69

69:                                               ; preds = %48, %55, %65
  %70 = and i32 %52, 63
  %71 = zext nneg i32 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = lshr i32 %52, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !226
  %77 = or i64 %76, %72
  store i64 %77, ptr %75, align 8, !tbaa !226
  br label %78

78:                                               ; preds = %5, %69, %44, %41
  ret void
}

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_goto_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_ctrl_altering_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_hidden_global_store(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_operand_necessary(ptr noundef %0) unnamed_addr #11 !prof !462 !PGOFuncName !463 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !325

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 237, ptr noundef nonnull @.str.6) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !118
  %7 = load ptr, ptr @processed, align 8, !tbaa !107
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !226
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %27, label %17, !prof !326

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 255
  %22 = icmp ne i32 %21, 18
  %23 = and i32 %20, 2048
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %22, %24
  br i1 %25, label %26, label %112, !prof !327

26:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 244, ptr noundef nonnull @.str.6) #19
  br label %112

27:                                               ; preds = %4
  %28 = load ptr, ptr %7, align 8, !tbaa !223
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !328

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %28, i64 %9
  %32 = load i8, ptr %31, align 1, !tbaa !118
  %33 = add i8 %32, 1
  store i8 %33, ptr %31, align 1, !tbaa !118
  br label %34

34:                                               ; preds = %27, %30
  %35 = load i64, ptr %10, align 8, !tbaa !226
  %36 = or i64 %35, %14
  store i64 %36, ptr %10, align 8, !tbaa !226
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !118
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !329

40:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 250, ptr noundef nonnull @.str.6) #19
  br label %41

41:                                               ; preds = %34, %40
  %42 = load i32, ptr %38, align 8
  %43 = and i32 %42, 2048
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %45, 18
  %47 = or i1 %44, %46
  br i1 %47, label %112, label %48, !prof !330

48:                                               ; preds = %41
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51, !prof !331

51:                                               ; preds = %48
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr nonnull %49)
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %0, i32 noundef 0) #19
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %59 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr %58)
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %60, ptr noundef nonnull %38, i32 noundef 0, i32 noundef 0) #19
  br label %61

61:                                               ; preds = %55, %51, %48
  %62 = load i32, ptr %38, align 8
  %63 = or i32 %62, 2048
  store i32 %63, ptr %38, align 8
  %64 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %66, !prof !332

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !118
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !191
  %71 = load ptr, ptr %64, align 8, !tbaa !223
  %72 = icmp eq ptr %71, null
  br i1 %72, label %87, label %73, !prof !333

73:                                               ; preds = %66
  %74 = lshr i32 %70, 6
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %64, i64 0, i32 3, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !226
  %78 = and i32 %70, 63
  %79 = zext nneg i32 %78 to i64
  %80 = shl nuw i64 1, %79
  %81 = and i64 %77, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = getelementptr inbounds i8, ptr %71, i64 %75
  %85 = load i8, ptr %84, align 1, !tbaa !118
  %86 = add i8 %85, 1
  store i8 %86, ptr %84, align 1, !tbaa !118
  br label %87

87:                                               ; preds = %66, %73, %83
  %88 = and i32 %70, 63
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = lshr i32 %70, 6
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.simple_bitmap_def, ptr %64, i64 0, i32 3, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !226
  %95 = or i64 %94, %90
  store i64 %95, ptr %93, align 8, !tbaa !226
  br label %96

96:                                               ; preds = %87, %61
  %97 = load ptr, ptr @worklist, align 8, !tbaa !107
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99, !prof !334

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.VEC_gimple_base, ptr %97, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !230
  %102 = load i32, ptr %97, align 8, !tbaa !232
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106, !prof !335

104:                                              ; preds = %96, %99
  %105 = tail call ptr @vec_heap_p_reserve(ptr noundef %97, i32 noundef 1) #19
  store ptr %105, ptr @worklist, align 8, !tbaa !107
  br label %106

106:                                              ; preds = %99, %104
  %107 = load ptr, ptr @worklist, align 8, !tbaa !107
  %108 = load i32, ptr %107, align 8, !tbaa !232
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 8, !tbaa !232
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.VEC_gimple_base, ptr %107, i64 0, i32 2, i64 %110
  store ptr %38, ptr %111, align 8, !tbaa !107
  br label %112

112:                                              ; preds = %41, %26, %17, %106
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @degenerate_phi_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !106 !PGOFuncName !464 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !118
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %13, label %24, !prof !306

9:                                                ; preds = %19
  %10 = add nuw i32 %14, 1
  %11 = load i32, ptr %6, align 4, !tbaa !118
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %24, !prof !307, !llvm.loop !308

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %10, %9 ], [ 1, %1 ]
  %15 = zext i32 %14 to i64
  %16 = load i32, ptr %2, align 8, !tbaa !118
  %17 = icmp ult i32 %16, %14
  br i1 %17, label %18, label %19, !prof !309

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3103, ptr noundef nonnull @.str.6) #19
  br label %19

19:                                               ; preds = %13, %18
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %15, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = load ptr, ptr %21, align 8, !tbaa !107
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %9, label %24, !prof !310

24:                                               ; preds = %19, %9, %1
  %25 = phi i8 [ 1, %1 ], [ 0, %19 ], [ 1, %9 ]
  ret i8 %25
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ref_may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #15 !prof !465 !PGOFuncName !466 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %11 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 42, label %11
    i16 41, label %11
    i16 45, label %11
    i16 46, label %11
    i16 118, label %11
    i16 43, label %11
    i16 44, label %11
  ], !prof !355

6:                                                ; preds = %2
  %7 = and i64 %4, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !122
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %14, label %49, !prof !356

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  br label %2, !llvm.loop !357

14:                                               ; preds = %6
  %15 = icmp eq i64 %7, 33
  br i1 %15, label %49, label %16, !prof !358

16:                                               ; preds = %14
  %17 = and i64 %4, 201326592
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27, !prof !358

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 33554432
  %23 = icmp eq i64 %22, 0
  %24 = and i64 %4, 1048576
  %25 = icmp eq i64 %24, 0
  %26 = or i1 %25, %23
  br i1 %26, label %37, label %30, !prof !359

27:                                               ; preds = %16
  %28 = and i64 %4, 1048576
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30, !prof !360

30:                                               ; preds = %19, %27
  %31 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %30, %27, %19
  %38 = and i64 %4, 134217728
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49, !prof !358

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 33554432
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = lshr i64 %4, 18
  %47 = trunc i64 %46 to i8
  %48 = and i8 %47, 1
  br label %49

49:                                               ; preds = %45, %40, %37, %30, %14, %6
  %50 = phi i8 [ 1, %6 ], [ 0, %30 ], [ 0, %14 ], [ 1, %40 ], [ 1, %37 ], [ %48, %45 ]
  ret i8 %50
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_aliased_reaching_defs_necessary(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #16 !prof !106 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #19
  %4 = load i1, ptr @chain_ovfl, align 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 553, ptr noundef nonnull @.str.6) #19
  br label %6

6:                                                ; preds = %2, %5
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #19
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 254
  %9 = add nsw i32 %8, -10
  %10 = icmp ult i32 %9, -4
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %13, %11 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = call i32 @walk_aliased_vdefs(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull @mark_aliased_reaching_defs_necessary_1, ptr noundef %17, ptr noundef null) #19
  %19 = load i32, ptr @longest_chain, align 4, !tbaa !122
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 %18, ptr @longest_chain, align 4, !tbaa !122
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, ptr @total_chain, align 4, !tbaa !122
  %24 = add i32 %23, %18
  store i32 %24, ptr @total_chain, align 4, !tbaa !122
  %25 = load i32, ptr @nr_walks, align 4, !tbaa !122
  %26 = add i32 %25, 1
  store i32 %26, ptr @nr_walks, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #19
  ret void
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @walk_aliased_vdefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef zeroext i8 @mark_all_reaching_defs_necessary_1(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #11 !prof !467 !PGOFuncName !468 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = load i1, ptr @chain_ovfl, align 1
  br i1 %6, label %7, label %29, !prof !469

7:                                                ; preds = %3
  %8 = load ptr, ptr @processed, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !118
  %11 = lshr i32 %10, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !226
  %15 = and i32 %10, 63
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %14
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %7
  %21 = load i32, ptr %5, align 8
  %22 = and i32 %21, 255
  %23 = icmp ne i32 %22, 18
  %24 = and i32 %21, 2048
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %204

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 582, ptr noundef nonnull @.str.6) #19
  br label %204

28:                                               ; preds = %7
  br i1 %6, label %95, label %29, !prof !469

29:                                               ; preds = %3, %28
  %30 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %95, label %32, !prof !470

32:                                               ; preds = %29
  %33 = load i32, ptr %5, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -10
  %36 = icmp ult i32 %35, -9
  br i1 %36, label %51, label %37, !prof !471

37:                                               ; preds = %32
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !122
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !226
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46, !prof !471

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %46

46:                                               ; preds = %45, %37
  %47 = getelementptr inbounds i8, ptr %5, i64 %43
  br label %48

48:                                               ; preds = %60, %46
  %49 = phi ptr [ %47, %46 ], [ %61, %60 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !118
  br label %51

51:                                               ; preds = %48, %32
  %52 = phi ptr [ null, %32 ], [ %50, %48 ]
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %55 [
    i16 42, label %60
    i16 41, label %60
    i16 45, label %60
    i16 46, label %60
    i16 118, label %60
    i16 43, label %60
    i16 44, label %60
  ], !prof !355

55:                                               ; preds = %51
  %56 = and i64 %53, 65535
  %57 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !122
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %62, label %95, !prof !356

60:                                               ; preds = %51, %51, %51, %51, %51, %51, %51
  %61 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 0, i32 3
  br label %48, !llvm.loop !357

62:                                               ; preds = %55
  %63 = icmp eq i64 %56, 33
  br i1 %63, label %204, label %64, !prof !358

64:                                               ; preds = %62
  %65 = and i64 %53, 201326592
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75, !prof !358

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tree_decl_common, ptr %52, i64 0, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 33554432
  %71 = icmp eq i64 %70, 0
  %72 = and i64 %53, 1048576
  %73 = icmp eq i64 %72, 0
  %74 = or i1 %73, %71
  br i1 %74, label %85, label %78, !prof !359

75:                                               ; preds = %64
  %76 = and i64 %53, 1048576
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %85, label %78, !prof !360

78:                                               ; preds = %75, %67
  %79 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !118
  %81 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2048
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %204, label %85

85:                                               ; preds = %78, %75, %67
  %86 = and i64 %53, 134217728
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %95, !prof !358

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %52, i64 0, i32 2
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 33554432
  %92 = and i64 %53, 262144
  %93 = or disjoint i64 %92, %91
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %204, label %95, !prof !472

95:                                               ; preds = %55, %88, %85, %29, %28
  %96 = icmp eq ptr %1, null
  br i1 %96, label %97, label %98, !prof !325

97:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 237, ptr noundef nonnull @.str.6) #19
  br label %98

98:                                               ; preds = %97, %95
  %99 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !118
  %101 = load ptr, ptr @processed, align 8, !tbaa !107
  %102 = lshr i32 %100, 6
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds %struct.simple_bitmap_def, ptr %101, i64 0, i32 3, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !226
  %106 = and i32 %100, 63
  %107 = zext nneg i32 %106 to i64
  %108 = shl nuw i64 1, %107
  %109 = and i64 %108, %105
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %120, label %111, !prof !326

111:                                              ; preds = %98
  %112 = load ptr, ptr %4, align 8, !tbaa !118
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 255
  %115 = icmp ne i32 %114, 18
  %116 = and i32 %113, 2048
  %117 = icmp eq i32 %116, 0
  %118 = and i1 %115, %117
  br i1 %118, label %119, label %204, !prof !327

119:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 244, ptr noundef nonnull @.str.6) #19
  br label %204

120:                                              ; preds = %98
  %121 = load ptr, ptr %101, align 8, !tbaa !223
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123, !prof !328

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, ptr %121, i64 %103
  %125 = load i8, ptr %124, align 1, !tbaa !118
  %126 = add i8 %125, 1
  store i8 %126, ptr %124, align 1, !tbaa !118
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i64, ptr %104, align 8, !tbaa !226
  %129 = or i64 %128, %108
  store i64 %129, ptr %104, align 8, !tbaa !226
  %130 = load ptr, ptr %4, align 8, !tbaa !118
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133, !prof !329

132:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 250, ptr noundef nonnull @.str.6) #19
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i32, ptr %130, align 8
  %135 = and i32 %134, 2048
  %136 = icmp ne i32 %135, 0
  %137 = and i32 %134, 255
  %138 = icmp eq i32 %137, 18
  %139 = or i1 %136, %138
  br i1 %139, label %204, label %140, !prof !330

140:                                              ; preds = %133
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %142 = icmp eq ptr %141, null
  br i1 %142, label %153, label %143, !prof !331

143:                                              ; preds = %140
  %144 = load i32, ptr @dump_flags, align 4, !tbaa !122
  %145 = and i32 %144, 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr nonnull %141)
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_generic_expr(ptr noundef %149, ptr noundef %1, i32 noundef 0) #19
  %150 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %151 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr %150)
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %152, ptr noundef nonnull %130, i32 noundef 0, i32 noundef 0) #19
  br label %153

153:                                              ; preds = %147, %143, %140
  %154 = load i32, ptr %130, align 8
  %155 = or i32 %154, 2048
  store i32 %155, ptr %130, align 8
  %156 = load ptr, ptr @bb_contains_live_stmts, align 8, !tbaa !107
  %157 = icmp eq ptr %156, null
  br i1 %157, label %188, label %158, !prof !332

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.gimple_statement_base, ptr %130, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !118
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 9
  %162 = load i32, ptr %161, align 8, !tbaa !191
  %163 = load ptr, ptr %156, align 8, !tbaa !223
  %164 = icmp eq ptr %163, null
  br i1 %164, label %179, label %165, !prof !333

165:                                              ; preds = %158
  %166 = lshr i32 %162, 6
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds %struct.simple_bitmap_def, ptr %156, i64 0, i32 3, i64 %167
  %169 = load i64, ptr %168, align 8, !tbaa !226
  %170 = and i32 %162, 63
  %171 = zext nneg i32 %170 to i64
  %172 = shl nuw i64 1, %171
  %173 = and i64 %169, %172
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = getelementptr inbounds i8, ptr %163, i64 %167
  %177 = load i8, ptr %176, align 1, !tbaa !118
  %178 = add i8 %177, 1
  store i8 %178, ptr %176, align 1, !tbaa !118
  br label %179

179:                                              ; preds = %175, %165, %158
  %180 = and i32 %162, 63
  %181 = zext nneg i32 %180 to i64
  %182 = shl nuw i64 1, %181
  %183 = lshr i32 %162, 6
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds %struct.simple_bitmap_def, ptr %156, i64 0, i32 3, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !226
  %187 = or i64 %186, %182
  store i64 %187, ptr %185, align 8, !tbaa !226
  br label %188

188:                                              ; preds = %179, %153
  %189 = load ptr, ptr @worklist, align 8, !tbaa !107
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191, !prof !334

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.VEC_gimple_base, ptr %189, i64 0, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !230
  %194 = load i32, ptr %189, align 8, !tbaa !232
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198, !prof !335

196:                                              ; preds = %191, %188
  %197 = tail call ptr @vec_heap_p_reserve(ptr noundef %189, i32 noundef 1) #19
  store ptr %197, ptr @worklist, align 8, !tbaa !107
  br label %198

198:                                              ; preds = %196, %191
  %199 = load ptr, ptr @worklist, align 8, !tbaa !107
  %200 = load i32, ptr %199, align 8, !tbaa !232
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 8, !tbaa !232
  %202 = zext i32 %200 to i64
  %203 = getelementptr inbounds %struct.VEC_gimple_base, ptr %199, i64 0, i32 2, i64 %202
  store ptr %130, ptr %203, align 8, !tbaa !107
  br label %204

204:                                              ; preds = %88, %78, %62, %198, %133, %119, %111, %27, %20
  ret i8 0
}

declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @mark_aliased_reaching_defs_necessary_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 !prof !106 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  tail call fastcc void @mark_operand_necessary(ptr noundef %1)
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %70 [
    i8 6, label %25
    i8 8, label %11
  ]

11:                                               ; preds = %3
  %12 = and i32 %9, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !122
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !226
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #19
  br label %21

21:                                               ; preds = %20, %11
  %22 = getelementptr inbounds i8, ptr %8, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25

25:                                               ; preds = %3, %21
  %26 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %8) #19
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 141
  br i1 %29, label %70, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %32 = tail call ptr @ao_ref_base(ptr noundef %0) #19
  %33 = call ptr @get_ref_base_and_extent(ptr noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #19
  %34 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !473
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %30
  %38 = load i64, ptr %4, align 8, !tbaa !226
  %39 = icmp ne i64 %38, -1
  %40 = load i64, ptr %6, align 8
  %41 = icmp eq i64 %38, %40
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !475
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %5, align 8, !tbaa !226
  %49 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !476
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %47
  %53 = add nsw i64 %48, %38
  %54 = add nsw i64 %50, %45
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %68, label %69

56:                                               ; preds = %43, %37
  %57 = load ptr, ptr %0, align 8, !tbaa !477
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !118
  %62 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %61) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %0, align 8, !tbaa !477
  %66 = call i32 @operand_equal_p(ptr noundef %65, ptr noundef %31, i32 noundef 0) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52, %47, %64, %59, %56, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %70

69:                                               ; preds = %52, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %70

70:                                               ; preds = %3, %21, %25, %68, %69
  %71 = phi i8 [ 1, %69 ], [ 0, %68 ], [ 0, %25 ], [ 0, %21 ], [ 0, %3 ]
  ret i8 %71
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare ptr @ao_ref_base(ptr noundef) local_unnamed_addr #3

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @clear_special_calls() local_unnamed_addr #3

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

declare void @notice_special_calls(ptr noundef) local_unnamed_addr #3

declare void @find_unreachable_blocks() local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_numbers_of_iterations_estimates() local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!105}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!35 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @link_use_stmts_after, i64 8927}
!36 = !{ptr @mark_virtual_phi_result_for_renaming, ptr @mark_sym_for_renaming, i64 8926}
!37 = !{ptr @tree_ssa_dce, ptr @perform_tree_ssa_dce, i64 76}
!38 = !{ptr @tree_ssa_dce_loop, ptr @perform_tree_ssa_dce, i64 76}
!39 = !{ptr @tree_ssa_dce_loop, ptr @free_numbers_of_iterations_estimates, i64 5}
!40 = !{ptr @tree_ssa_dce_loop, ptr @scev_reset, i64 5}
!41 = !{ptr @tree_ssa_cd_dce, ptr @perform_tree_ssa_dce, i64 78}
!42 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 35730}
!43 = !{ptr @perform_tree_ssa_dce, ptr @loop_optimizer_init, i64 78}
!44 = !{ptr @perform_tree_ssa_dce, ptr @tree_dce_init, i64 230}
!45 = !{ptr @perform_tree_ssa_dce, ptr @calculate_dominance_info, i64 78}
!46 = !{ptr @perform_tree_ssa_dce, ptr @create_edge_list, i64 78}
!47 = !{ptr @perform_tree_ssa_dce, ptr @get_immediate_dominator, i64 1110907}
!48 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_set_bit, i64 514463}
!49 = !{ptr @perform_tree_ssa_dce, ptr @sbitmap_alloc, i64 78}
!50 = !{ptr @perform_tree_ssa_dce, ptr @sbitmap_zero, i64 78}
!51 = !{ptr @perform_tree_ssa_dce, ptr @mark_dfs_back_edges, i64 78}
!52 = !{ptr @perform_tree_ssa_dce, ptr @gsi_start_phis, i64 952764}
!53 = !{ptr @perform_tree_ssa_dce, ptr @mark_stmt_necessary, i64 431}
!54 = !{ptr @perform_tree_ssa_dce, ptr @gimple_has_side_effects, i64 414602}
!55 = !{ptr @perform_tree_ssa_dce, ptr @vec_heap_p_reserve, i64 946}
!56 = !{ptr @perform_tree_ssa_dce, ptr @is_ctrl_altering_stmt, i64 1669054}
!57 = !{ptr @perform_tree_ssa_dce, ptr @is_hidden_global_store, i64 1669054}
!58 = !{ptr @perform_tree_ssa_dce, ptr @scev_initialize, i64 78}
!59 = !{ptr @perform_tree_ssa_dce, ptr @mark_irreducible_loops, i64 78}
!60 = !{ptr @perform_tree_ssa_dce, ptr @vec_heap_o_reserve_exact, i64 78}
!61 = !{ptr @perform_tree_ssa_dce, ptr @free, i64 1544}
!62 = !{ptr @perform_tree_ssa_dce, ptr @scev_finalize, i64 78}
!63 = !{ptr @perform_tree_ssa_dce, ptr @loop_optimizer_finalize, i64 78}
!64 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_obstack_alloc_stat, i64 230}
!65 = !{ptr @perform_tree_ssa_dce, ptr @last_stmt, i64 156682}
!66 = !{ptr @perform_tree_ssa_dce, ptr @is_ctrl_stmt, i64 207407}
!67 = !{ptr @perform_tree_ssa_dce, ptr @is_gimple_reg, i64 429494}
!68 = !{ptr @perform_tree_ssa_dce, ptr @mark_operand_necessary, i64 26628}
!69 = !{ptr @perform_tree_ssa_dce, ptr @mark_control_dependent_edges_necessary, i64 130328}
!70 = !{ptr @perform_tree_ssa_dce, ptr @walk_aliased_vdefs, i64 896764}
!71 = !{ptr @perform_tree_ssa_dce, ptr @is_gimple_min_invariant, i64 558280}
!72 = !{ptr @perform_tree_ssa_dce, ptr @gimple_assign_single_p, i64 482364}
!73 = !{ptr @perform_tree_ssa_dce, ptr @bitmap_obstack_free, i64 307321}
!74 = !{ptr @perform_tree_ssa_dce, ptr @clear_special_calls, i64 230}
!75 = !{ptr @perform_tree_ssa_dce, ptr @dom_info_available_p, i64 230}
!76 = !{ptr @perform_tree_ssa_dce, ptr @get_all_dominated_blocks, i64 230}
!77 = !{ptr @perform_tree_ssa_dce, ptr @find_edge, i64 14}
!78 = !{ptr @perform_tree_ssa_dce, ptr @remove_edge, i64 14}
!79 = !{ptr @perform_tree_ssa_dce, ptr @unlink_stmt_vdef, i64 50725}
!80 = !{ptr @perform_tree_ssa_dce, ptr @gsi_remove, i64 50725}
!81 = !{ptr @perform_tree_ssa_dce, ptr @release_defs, i64 50725}
!82 = !{ptr @perform_tree_ssa_dce, ptr @maybe_clean_or_replace_eh_stmt, i64 74}
!83 = !{ptr @perform_tree_ssa_dce, ptr @gimple_set_modified, i64 74}
!84 = !{ptr @perform_tree_ssa_dce, ptr @update_stmt_operands, i64 74}
!85 = !{ptr @perform_tree_ssa_dce, ptr @release_ssa_name, i64 74}
!86 = !{ptr @perform_tree_ssa_dce, ptr @notice_special_calls, i64 414602}
!87 = !{ptr @perform_tree_ssa_dce, ptr @find_unreachable_blocks, i64 7}
!88 = !{ptr @perform_tree_ssa_dce, ptr @link_use_stmts_after, i64 11160}
!89 = !{ptr @perform_tree_ssa_dce, ptr @mark_virtual_phi_result_for_renaming, i64 9195}
!90 = !{ptr @perform_tree_ssa_dce, ptr @delete_basic_block, i64 14}
!91 = !{ptr @perform_tree_ssa_dce, ptr @remove_phi_node, i64 358}
!92 = !{ptr @perform_tree_ssa_dce, ptr @free_dominance_info, i64 237}
!93 = !{ptr @perform_tree_ssa_dce, ptr @statistics_counter_event, i64 460}
!94 = !{ptr @perform_tree_ssa_dce, ptr @free_edge_list, i64 230}
!95 = !{ptr @tree_dce_init, ptr @xmalloc, i64 78}
!96 = !{ptr @tree_dce_init, ptr @bitmap_obstack_alloc_stat, i64 307091}
!97 = !{ptr @tree_dce_init, ptr @sbitmap_alloc, i64 386}
!98 = !{ptr @tree_dce_init, ptr @sbitmap_zero, i64 386}
!99 = !{ptr @tree_dce_init, ptr @vec_heap_p_reserve_exact, i64 230}
!100 = !{ptr @mark_control_dependent_edges_necessary, ptr @last_stmt, i64 127207}
!101 = !{ptr @mark_control_dependent_edges_necessary, ptr @is_ctrl_stmt, i64 127207}
!102 = !{ptr @mark_control_dependent_edges_necessary, ptr @vec_heap_p_reserve, i64 104}
!103 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @gimple_assign_single_p, i64 404103}
!104 = !{ptr @mark_all_reaching_defs_necessary_1, ptr @vec_heap_p_reserve, i64 4}
!105 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!106 = !{!"function_entry_count", i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"any pointer", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !108, i64 8}
!112 = !{!"_IO_FILE", !113, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96, !108, i64 104, !113, i64 112, !113, i64 116, !114, i64 120, !115, i64 128, !109, i64 130, !109, i64 131, !108, i64 136, !114, i64 144, !108, i64 152, !108, i64 160, !108, i64 168, !108, i64 176, !114, i64 184, !113, i64 192, !109, i64 196}
!113 = !{!"int", !109, i64 0}
!114 = !{!"long", !109, i64 0}
!115 = !{!"short", !109, i64 0}
!116 = !{!112, !108, i64 16}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{!109, !109, i64 0}
!119 = !{!112, !108, i64 40}
!120 = !{!112, !108, i64 48}
!121 = !{!112, !113, i64 0}
!122 = !{!113, !113, i64 0}
!123 = distinct !{!123, !124, !125}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !{!"llvm.loop.unroll.disable"}
!126 = !{!"function_entry_count", i64 8927}
!127 = !{!"branch_weights", i32 8927, i32 0}
!128 = !{!129, !108, i64 8}
!129 = !{!"immediate_use_iterator_d", !108, i64 0, !108, i64 8, !130, i64 16, !108, i64 48}
!130 = !{!"ssa_use_operand_d", !108, i64 0, !108, i64 8, !109, i64 16, !108, i64 24}
!131 = !{!130, !108, i64 8}
!132 = !{!129, !108, i64 0}
!133 = !{!"branch_weights", i32 0, i32 8927}
!134 = !{!"branch_weights", i32 1, i32 8926}
!135 = !{!129, !108, i64 48}
!136 = !{!130, !108, i64 0}
!137 = !{!130, !108, i64 24}
!138 = !{!"branch_weights", i32 8926, i32 1}
!139 = distinct !{!139, !124, !125}
!140 = distinct !{!140, !124, !125}
!141 = !{!"function_entry_count", i64 230}
!142 = !{!"tree-ssa-dce.c;gate_dce"}
!143 = !{!"function_entry_count", i64 76}
!144 = !{!"tree-ssa-dce.c;tree_ssa_dce"}
!145 = !{i32 0, i32 34851}
!146 = !{!"tree-ssa-dce.c;tree_ssa_dce_loop"}
!147 = !{!"branch_weights", i32 71, i32 5}
!148 = !{!"function_entry_count", i64 78}
!149 = !{!"tree-ssa-dce.c;tree_ssa_cd_dce"}
!150 = !{!"function_entry_count", i64 17865}
!151 = !{!"tree-ssa-dce.c;link_use_stmts_after"}
!152 = !{!"branch_weights", i32 17865, i32 0}
!153 = !{!"branch_weights", i32 0, i32 17865}
!154 = !{!"branch_weights", i32 17864, i32 1}
!155 = !{!"branch_weights", i32 45879, i32 0}
!156 = !{!"branch_weights", i32 28014, i32 17865}
!157 = !{!"branch_weights", i32 0, i32 28014}
!158 = !{!"branch_weights", i32 28015, i32 17864}
!159 = distinct !{!159, !124, !125}
!160 = !{!161, !108, i64 0}
!161 = !{!"use_optype_d", !108, i64 0, !130, i64 8}
!162 = distinct !{!162, !124, !125}
!163 = !{!161, !108, i64 32}
!164 = !{!"tree-ssa-dce.c;perform_tree_ssa_dce"}
!165 = !{!"branch_weights", i32 152, i32 78}
!166 = !{!"branch_weights", i32 78, i32 0}
!167 = !{!168, !113, i64 4}
!168 = !{!"edge_list", !113, i64 0, !113, i64 4, !108, i64 8}
!169 = !{!"branch_weights", i32 155, i32 1}
!170 = !{!168, !108, i64 8}
!171 = !{!172, !108, i64 0}
!172 = !{!"edge_def", !108, i64 0, !108, i64 8, !109, i64 16, !108, i64 24, !108, i64 32, !113, i64 40, !113, i64 44, !113, i64 48, !113, i64 52, !114, i64 56}
!173 = !{!174, !108, i64 8}
!174 = !{!"function", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96, !113, i64 104, !113, i64 108, !113, i64 112, !113, i64 116, !113, i64 120, !113, i64 124, !108, i64 128, !113, i64 136, !113, i64 137, !113, i64 138, !113, i64 138, !113, i64 138, !113, i64 138, !113, i64 138, !113, i64 138, !113, i64 138, !113, i64 139, !113, i64 139, !113, i64 139, !113, i64 139, !113, i64 139, !113, i64 139, !113, i64 139}
!175 = !{!176, !108, i64 8}
!176 = !{!"control_flow_graph", !108, i64 0, !108, i64 8, !108, i64 16, !113, i64 24, !113, i64 28, !113, i64 32, !108, i64 40, !113, i64 48, !109, i64 52, !109, i64 60, !113, i64 68, !113, i64 72}
!177 = !{!"branch_weights", i32 0, i32 596508}
!178 = !{!176, !108, i64 0}
!179 = !{!"branch_weights", i32 78, i32 596430}
!180 = !{!181, !108, i64 8}
!181 = !{!"basic_block_def", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !109, i64 32, !108, i64 48, !108, i64 56, !109, i64 64, !114, i64 72, !113, i64 80, !113, i64 84, !113, i64 88, !113, i64 92, !113, i64 96}
!182 = !{!"branch_weights", i32 0, i32 78}
!183 = !{!184, !113, i64 0}
!184 = !{!"VEC_edge_base", !113, i64 0, !113, i64 4, !109, i64 8}
!185 = !{!"branch_weights", i32 0, i32 596430}
!186 = !{!172, !108, i64 8}
!187 = !{!"branch_weights", i32 82045, i32 514463}
!188 = !{!"branch_weights", i32 0, i32 514463}
!189 = !{!172, !113, i64 48}
!190 = !{!"branch_weights", i32 514463, i32 0}
!191 = !{!181, !113, i64 80}
!192 = distinct !{!192, !124, !125}
!193 = !{!"branch_weights", i32 1192861, i32 155}
!194 = distinct !{!194, !124, !125}
!195 = !{!176, !113, i64 32}
!196 = !{!181, !108, i64 56}
!197 = !{!"branch_weights", i32 1, i32 229}
!198 = !{!"branch_weights", i32 229, i32 935155}
!199 = distinct !{!199, !124, !125}
!200 = !{i64 0, i64 8, !107, i64 8, i64 8, !107, i64 16, i64 8, !107}
!201 = !{!"branch_weights", i32 650777, i32 284607}
!202 = !{!203, !108, i64 0}
!203 = !{!"gimple_seq_node_d", !108, i64 0, !108, i64 8, !108, i64 16}
!204 = !{!203, !108, i64 16}
!205 = !{!"branch_weights", i32 284607, i32 0}
!206 = distinct !{!206, !124, !125}
!207 = !{!181, !113, i64 96}
!208 = !{!209}
!209 = distinct !{!209, !210, !"gsi_start_bb: argument 0"}
!210 = distinct !{!210, !"gsi_start_bb"}
!211 = !{!"branch_weights", i32 935384, i32 0}
!212 = !{!"branch_weights", i32 0, i32 935384}
!213 = !{!214, !108, i64 0}
!214 = !{!"gimple_bb_info", !108, i64 0, !108, i64 8}
!215 = !{!216, !108, i64 0}
!216 = !{!"gimple_seq_d", !108, i64 0, !108, i64 8, !108, i64 16}
!217 = !{!"branch_weights", i32 1, i32 935383}
!218 = !{!"branch_weights", i32 2101539, i32 0}
!219 = !{!"branch_weights", i32 0, i32 0, i32 17654, i32 0, i32 0, i32 230, i32 414602, i32 819563, i32 0, i32 0, i32 849252, i32 238}
!220 = !{!"branch_weights", i32 0, i32 17654}
!221 = !{!"branch_weights", i32 17654, i32 0}
!222 = !{!"branch_weights", i32 11772, i32 5882}
!223 = !{!224, !108, i64 0}
!224 = !{!"simple_bitmap_def", !108, i64 0, !113, i64 8, !113, i64 12, !109, i64 16}
!225 = !{!"branch_weights", i32 5882, i32 0}
!226 = !{!114, !114, i64 0}
!227 = !{!"branch_weights", i32 0, i32 414602}
!228 = !{!"branch_weights", i32 0, i32 1264509}
!229 = !{!"branch_weights", i32 1264509, i32 0}
!230 = !{!231, !113, i64 4}
!231 = !{!"VEC_gimple_base", !113, i64 0, !113, i64 4, !109, i64 8}
!232 = !{!231, !113, i64 0}
!233 = !{!"branch_weights", i32 1037, i32 1263472}
!234 = !{!"branch_weights", i32 842414, i32 422095}
!235 = !{!"branch_weights", i32 0, i32 422095}
!236 = !{!"branch_weights", i32 422095, i32 0}
!237 = !{!"branch_weights", i32 0, i32 819563}
!238 = !{!"branch_weights", i32 0, i32 849252}
!239 = !{!"branch_weights", i32 849252, i32 0}
!240 = !{!"branch_weights", i32 565586, i32 283904}
!241 = !{!"branch_weights", i32 1669053, i32 0}
!242 = !{!"branch_weights", i32 1668852, i32 201}
!243 = !{!"branch_weights", i32 935383, i32 1166156}
!244 = distinct !{!244, !124, !125}
!245 = !{!"branch_weights", i32 230, i32 0}
!246 = distinct !{!246, !124, !125}
!247 = distinct !{!247, !124, !125}
!248 = !{!174, !108, i64 32}
!249 = !{!250, !108, i64 8}
!250 = !{!"loops", !113, i64 0, !108, i64 8, !108, i64 16, !108, i64 24}
!251 = !{!252, !113, i64 0}
!252 = !{!"VEC_loop_p_base", !113, i64 0, !113, i64 4, !109, i64 8}
!253 = !{!250, !108, i64 24}
!254 = !{!255, !113, i64 0}
!255 = !{!"loop", !113, i64 0, !113, i64 4, !108, i64 8, !108, i64 16, !256, i64 24, !113, i64 32, !113, i64 36, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !257, i64 80, !257, i64 96, !109, i64 112, !109, i64 113, !113, i64 116, !108, i64 120, !108, i64 128, !109, i64 136, !108, i64 144}
!256 = !{!"lpt_decision", !113, i64 0, !113, i64 4}
!257 = !{!"", !114, i64 0, !114, i64 8}
!258 = !{!259, !113, i64 0}
!259 = !{!"VEC_int_base", !113, i64 0, !113, i64 4, !109, i64 8}
!260 = !{!255, !108, i64 48}
!261 = distinct !{!261, !125}
!262 = !{!255, !108, i64 56}
!263 = !{!255, !108, i64 40}
!264 = distinct !{!264, !124, !125}
!265 = distinct !{!265, !124, !125}
!266 = !{!"branch_weights", i32 1, i32 0}
!267 = !{!255, !108, i64 16}
!268 = distinct !{!268, !124, !125}
!269 = !{!"branch_weights", i32 0, i32 2044566}
!270 = !{!"branch_weights", i32 230, i32 2044336}
!271 = !{!"branch_weights", i32 2044336, i32 0}
!272 = !{!"branch_weights", i32 1354868, i32 689468}
!273 = !{!"branch_weights", i32 0, i32 689468}
!274 = !{!"branch_weights", i32 161445, i32 528023}
!275 = !{!"branch_weights", i32 161445, i32 0}
!276 = !{!"branch_weights", i32 0, i32 292519}
!277 = !{!278, !108, i64 0}
!278 = !{!"bitmap_head_def", !108, i64 0, !108, i64 8, !113, i64 16, !108, i64 24}
!279 = !{!"branch_weights", i32 118, i32 292401}
!280 = !{!281, !113, i64 16}
!281 = !{!"bitmap_element_def", !108, i64 0, !108, i64 8, !113, i64 16, !109, i64 24}
!282 = !{!"branch_weights", i32 446527, i32 306587}
!283 = !{!"branch_weights", i32 460594, i32 1}
!284 = !{!"branch_weights", i32 9095924, i32 460594}
!285 = distinct !{!285, !124, !125}
!286 = !{!"branch_weights", i32 1, i32 296856}
!287 = !{!"branch_weights", i32 147187, i32 154008}
!288 = !{!"branch_weights", i32 296856, i32 4339}
!289 = distinct !{!289, !124, !125}
!290 = !{!281, !108, i64 0}
!291 = !{!"branch_weights", i32 292519, i32 4338}
!292 = distinct !{!292, !125}
!293 = !{!"branch_weights", i32 292519, i32 460595}
!294 = !{!"branch_weights", i32 283890, i32 176705}
!295 = !{!"branch_weights", i32 283890, i32 0}
!296 = !{!"branch_weights", i32 0, i32 283890}
!297 = distinct !{!297, !124, !125}
!298 = !{!"branch_weights", i32 11176, i32 2033160}
!299 = !{!"branch_weights", i32 0, i32 11176}
!300 = !{!"branch_weights", i32 1, i32 11175}
!301 = !{!"branch_weights", i32 0, i32 403491}
!302 = !{!"branch_weights", i32 26628, i32 376863}
!303 = !{!"branch_weights", i32 392316, i32 11175}
!304 = distinct !{!304, !124, !125}
!305 = !{!"branch_weights", i32 8732, i32 2444}
!306 = !{!"branch_weights", i32 175, i32 1}
!307 = !{!"branch_weights", i32 5080913, i32 175}
!308 = distinct !{!308, !124, !125}
!309 = !{!"branch_weights", i32 0, i32 317568}
!310 = !{!"branch_weights", i32 41942, i32 275626}
!311 = !{!"branch_weights", i32 1, i32 2443}
!312 = !{!181, !108, i64 0}
!313 = !{}
!314 = !{!"branch_weights", i32 0, i32 132826}
!315 = !{!"branch_weights", i32 131074, i32 1752}
!316 = !{!"branch_weights", i32 131074, i32 0}
!317 = !{!"branch_weights", i32 130383, i32 2443}
!318 = distinct !{!318, !124, !125}
!319 = !{!"branch_weights", i32 0, i32 2033160}
!320 = !{!"branch_weights", i32 6, i32 2033154}
!321 = !{!"branch_weights", i32 849476, i32 1183678}
!322 = !{!"branch_weights", i32 286711, i32 896967}
!323 = !{!"branch_weights", i32 480928, i32 1552232}
!324 = !{!"branch_weights", i32 419214, i32 1613946}
!325 = !{!"branch_weights", i32 0, i32 2044677}
!326 = !{!"branch_weights", i32 1585121, i32 459556}
!327 = !{!"branch_weights", i32 0, i32 -609529232}
!328 = !{!"branch_weights", i32 1585121, i32 0}
!329 = !{!"branch_weights", i32 0, i32 1585121}
!330 = !{!"branch_weights", i32 -1841157837, i32 -1918758273}
!331 = !{!"branch_weights", i32 779827, i32 0}
!332 = !{!"branch_weights", i32 512454, i32 267373}
!333 = !{!"branch_weights", i32 267373, i32 0}
!334 = !{!"branch_weights", i32 0, i32 779827}
!335 = !{!"branch_weights", i32 18, i32 779809}
!336 = !{!"branch_weights", i32 1552232, i32 61714}
!337 = !{!"branch_weights", i32 0, i32 1613946}
!338 = distinct !{!338, !124, !125}
!339 = !{!"branch_weights", i32 849476, i32 1183684}
!340 = !{!"branch_weights", i32 1136193, i32 896967}
!341 = distinct !{!341, !124, !125}
!342 = !{!"branch_weights", i32 0, i32 896967}
!343 = !{!"branch_weights", i32 414602, i32 482365}
!344 = !{!"branch_weights", i32 414602, i32 0}
!345 = !{!"branch_weights", i32 1, i32 414601}
!346 = !{!"branch_weights", i32 0, i32 490782}
!347 = !{!"branch_weights", i32 414665, i32 76117}
!348 = !{!"branch_weights", i32 0, i32 76117}
!349 = !{i8 0, i8 2}
!350 = !{!"branch_weights", i32 76181, i32 414601}
!351 = distinct !{!351, !124, !125}
!352 = !{!"branch_weights", i32 0, i32 482365}
!353 = !{!"branch_weights", i32 201, i32 482164}
!354 = !{!"branch_weights", i32 482164, i32 0}
!355 = !{!"branch_weights", i32 482365, i32 0, i32 77759, i32 88357, i32 0, i32 0, i32 0, i32 0}
!356 = !{!"branch_weights", i32 480784, i32 1581}
!357 = distinct !{!357, !124, !125}
!358 = !{!"branch_weights", i32 0, i32 480784}
!359 = !{!"branch_weights", i32 961568, i32 0}
!360 = !{!"branch_weights", i32 480784, i32 0}
!361 = !{!"branch_weights", i32 0, i32 482164}
!362 = distinct !{!362, !124, !125}
!363 = !{!"branch_weights", i32 0, i32 230}
!364 = distinct !{!364, !124, !125}
!365 = !{!"branch_weights", i32 0, i32 935614}
!366 = !{!367, !113, i64 0}
!367 = !{!"VEC_basic_block_base", !113, i64 0, !113, i64 4, !109, i64 8}
!368 = !{!"branch_weights", i32 230, i32 935384}
!369 = !{!370}
!370 = distinct !{!370, !371, !"gsi_last_bb: argument 0"}
!371 = distinct !{!371, !"gsi_last_bb"}
!372 = !{!216, !108, i64 8}
!373 = !{i64 0, i64 8, !107, i64 8, i64 8, !107}
!374 = !{i64 0, i64 8, !107}
!375 = !{!203, !108, i64 8}
!376 = !{!377, !113, i64 0}
!377 = !{!"stmt_stats", !113, i64 0, !113, i64 4, !113, i64 8, !113, i64 12}
!378 = !{!"branch_weights", i32 50725, i32 2050814}
!379 = !{!"branch_weights", i32 0, i32 50725}
!380 = !{!"branch_weights", i32 50725, i32 0}
!381 = !{!377, !113, i64 8}
!382 = !{!"branch_weights", i32 50711, i32 14}
!383 = !{!"branch_weights", i32 0, i32 14}
!384 = !{!214, !108, i64 8}
!385 = distinct !{!385, !124, !125}
!386 = distinct !{!386, !124, !125}
!387 = !{!388, !108, i64 0}
!388 = !{!"", !108, i64 0, !108, i64 8, !108, i64 16}
!389 = !{!172, !113, i64 44}
!390 = !{!391, !113, i64 40}
!391 = !{!"phi_arg_d", !130, i64 0, !108, i64 32, !113, i64 40}
!392 = !{!172, !113, i64 52}
!393 = !{!181, !114, i64 72}
!394 = !{!172, !114, i64 56}
!395 = !{!"branch_weights", i32 0, i32 42}
!396 = !{!"branch_weights", i32 14, i32 28}
!397 = !{!"branch_weights", i32 14, i32 14}
!398 = distinct !{!398, !124, !125}
!399 = !{!"branch_weights", i32 14, i32 0}
!400 = !{!"branch_weights", i32 414602, i32 1636212}
!401 = !{!"branch_weights", i32 13567, i32 401035}
!402 = !{!"branch_weights", i32 401035, i32 0}
!403 = !{!"branch_weights", i32 74, i32 400961}
!404 = !{!"branch_weights", i32 74, i32 0}
!405 = !{!"branch_weights", i32 0, i32 74}
!406 = distinct !{!406, !124, !125}
!407 = !{!"branch_weights", i32 7, i32 223}
!408 = !{!181, !108, i64 48}
!409 = !{!"branch_weights", i32 1, i32 223}
!410 = !{!"branch_weights", i32 17379, i32 139156}
!411 = !{!"branch_weights", i32 0, i32 139156}
!412 = !{!"branch_weights", i32 8139, i32 9240}
!413 = !{!"branch_weights", i32 9226, i32 14}
!414 = !{!"branch_weights", i32 299, i32 8927}
!415 = !{!"branch_weights", i32 1, i32 298}
!416 = !{!"branch_weights", i32 298, i32 8629}
!417 = distinct !{!417, !124, !125}
!418 = !{!"branch_weights", i32 9240, i32 0}
!419 = distinct !{!419, !124, !125}
!420 = !{!"branch_weights", i32 14, i32 17365}
!421 = distinct !{!421, !124, !125}
!422 = !{!"branch_weights", i32 223, i32 5008897}
!423 = distinct !{!423, !124, !125}
!424 = !{!"branch_weights", i32 935370, i32 0}
!425 = !{!"branch_weights", i32 0, i32 935370}
!426 = !{!"branch_weights", i32 589449, i32 345921}
!427 = !{!428}
!428 = distinct !{!428, !429, !"gsi_start: argument 0"}
!429 = distinct !{!429, !"gsi_start"}
!430 = !{!"branch_weights", i32 660891, i32 274479}
!431 = !{!"branch_weights", i32 0, i32 274479}
!432 = !{!"branch_weights", i32 366156, i32 284607}
!433 = !{!377, !113, i64 4}
!434 = !{!"branch_weights", i32 273193, i32 11414}
!435 = !{!"branch_weights", i32 0, i32 11}
!436 = !{!"branch_weights", i32 1, i32 175}
!437 = !{!"branch_weights", i32 11, i32 0}
!438 = distinct !{!438, !124, !125}
!439 = distinct !{!439, !124, !125}
!440 = !{!"branch_weights", i32 249, i32 284358}
!441 = !{!"branch_weights", i32 249, i32 0}
!442 = !{!377, !113, i64 12}
!443 = distinct !{!443, !124, !125}
!444 = !{!"branch_weights", i32 229, i32 935141}
!445 = distinct !{!445, !124, !125}
!446 = !{!"branch_weights", i32 614027, i32 155}
!447 = distinct !{!447, !124, !125}
!448 = !{!"branch_weights", i32 169, i32 61}
!449 = !{!"tree-ssa-dce.c;tree_dce_init"}
!450 = distinct !{!450, !124, !125}
!451 = !{!174, !108, i64 24}
!452 = !{!453, !108, i64 16}
!453 = !{!"gimple_df", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !454, i64 32, !454, i64 48, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !113, i64 96, !455, i64 104}
!454 = !{!"pt_solution", !113, i64 0, !113, i64 0, !113, i64 0, !113, i64 0, !113, i64 0, !113, i64 0, !108, i64 8}
!455 = !{!"ssa_operands", !108, i64 0, !113, i64 8, !113, i64 12, !109, i64 16, !108, i64 24, !108, i64 32}
!456 = !{!457, !113, i64 0}
!457 = !{!"VEC_tree_base", !113, i64 0, !113, i64 4, !109, i64 8}
!458 = !{!"function_entry_count", i64 131074}
!459 = !{!"tree-ssa-dce.c;mark_control_dependent_edges_necessary"}
!460 = !{!"function_entry_count", i64 431}
!461 = !{!"tree-ssa-dce.c;mark_stmt_necessary"}
!462 = !{!"function_entry_count", i64 26631}
!463 = !{!"tree-ssa-dce.c;mark_operand_necessary"}
!464 = !{!"tree-ssa-dce.c;degenerate_phi_p"}
!465 = !{!"function_entry_count", i64 1}
!466 = !{!"tree-ssa-dce.c;ref_may_be_aliased"}
!467 = !{!"function_entry_count", i64 404103}
!468 = !{!"tree-ssa-dce.c;mark_all_reaching_defs_necessary_1"}
!469 = !{!"branch_weights", i32 0, i32 404103}
!470 = !{!"branch_weights", i32 403902, i32 201}
!471 = !{!"branch_weights", i32 0, i32 201}
!472 = !{!"branch_weights", i32 0, i32 402}
!473 = !{!474, !108, i64 8}
!474 = !{!"ao_ref_s", !108, i64 0, !108, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !113, i64 40, !113, i64 44}
!475 = !{!474, !114, i64 32}
!476 = !{!474, !114, i64 16}
!477 = !{!474, !108, i64 0}
