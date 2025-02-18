; ModuleID = 'tree-ssa-propagate.c'
source_filename = "tree-ssa-propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prop_stats_d = type { i64, i64, i64, i64 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.prop_value_d = type { i32, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"tree-ssa-propagate.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ssa_prop_visit_stmt = internal unnamed_addr global ptr null, align 8
@ssa_prop_visit_phi = internal unnamed_addr global ptr null, align 8
@interesting_ssa_edges = internal global ptr null, align 8
@varying_ssa_edges = internal global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\0ASubstituting values and folding statements\0A\0A\00", align 1
@prop_stats = internal unnamed_addr global %struct.prop_stats_d zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Removing dead stmt \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Folding statement: \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Folded into: \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Not folded\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Constants propagated\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Copies propagated\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Statements folded\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@gt_ggc_r_gt_tree_ssa_propagate_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @varying_ssa_edges, i64 1, i64 8, ptr @gt_ggc_mx_VEC_gimple_gc, ptr @gt_pch_nx_VEC_gimple_gc }, %struct.ggc_root_tab { ptr @interesting_ssa_edges, i64 1, i64 8, ptr @gt_ggc_mx_VEC_gimple_gc, ptr @gt_pch_nx_VEC_gimple_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@executable_blocks = internal unnamed_addr global ptr null, align 8
@bb_in_list = internal unnamed_addr global ptr null, align 8
@cfg_blocks = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Adding Destination of edge (%d -> %d) to worklist\0A\0A\00", align 1
@cfg_blocks_head = internal unnamed_addr global i32 0, align 4
@cfg_blocks_tail = internal unnamed_addr global i32 0, align 4
@cfg_blocks_num = internal unnamed_addr global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"\0ASimulating block %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\0ASimulating statement (from ssa_edges): \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Folding PHI node: \00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"No folding possible\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !65 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !66
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !66
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !65 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !76

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !70
  %11 = load i8, ptr %3, align 1, !tbaa !77
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !65 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !76

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !70
  %11 = load i8, ptr %3, align 1, !tbaa !77
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !65 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !76

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !70
  %11 = load i8, ptr %3, align 1, !tbaa !77
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !65 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !66
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !65 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !76

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !78
  store i8 %12, ptr %4, align 1, !tbaa !77
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !65 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !76

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !78
  store i8 %12, ptr %4, align 1, !tbaa !77
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !65 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !76

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !78
  store i8 %12, ptr %4, align 1, !tbaa !77
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !65 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !65 {
  %2 = load i32, ptr %0, align 8, !tbaa !80
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !65 {
  %2 = load i32, ptr %0, align 8, !tbaa !80
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !65 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !81
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !65 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !81
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !65 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !65 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !65 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !65 {
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
  br i1 %23, label %7, label %24, !llvm.loop !82

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !65 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @valid_gimple_rhs_p(ptr noundef %0) local_unnamed_addr #9 !prof !85 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !81
  switch i32 %5, label %70 [
    i32 3, label %6
    i32 1, label %69
    i32 7, label %9
    i32 5, label %9
    i32 6, label %19
    i32 10, label %24
    i32 0, label %67
  ], !prof !86

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @is_gimple_variable(ptr noundef nonnull %0) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %70, label %69

9:                                                ; preds = %1, %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = tail call zeroext i8 @is_gimple_val(ptr noundef %11) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %70, label %14, !prof !87

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = tail call zeroext i8 @is_gimple_val(ptr noundef %16) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %70, label %69, !prof !87

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = tail call zeroext i8 @is_gimple_val(ptr noundef %21) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %70, label %69, !prof !88

24:                                               ; preds = %1
  %25 = trunc i64 %2 to i16
  switch i16 %25, label %70 [
    i16 121, label %26
    i16 96, label %52
    i16 93, label %57
    i16 95, label %57
    i16 94, label %57
  ]

26:                                               ; preds = %24
  %27 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26, %43
  %30 = phi ptr [ %32, %43 ], [ %0, %26 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %35 [
    i16 42, label %38
    i16 41, label %38
    i16 45, label %38
    i16 46, label %38
    i16 118, label %38
    i16 43, label %38
    i16 44, label %38
  ]

35:                                               ; preds = %29
  %36 = tail call zeroext i8 @is_gimple_id(ptr noundef nonnull %32) #19
  %37 = icmp ne i8 %36, 0
  br label %49

38:                                               ; preds = %29, %29, %29, %29, %29, %29, %29
  %39 = trunc i64 %33 to i32
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -45
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %44
  br label %29, !llvm.loop !89

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !77
  %47 = tail call zeroext i8 @is_gimple_val(ptr noundef %46) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %43

49:                                               ; preds = %44, %35, %26
  %50 = phi i8 [ 1, %26 ], [ 0, %35 ], [ 0, %44 ]
  %51 = phi i1 [ false, %26 ], [ %37, %35 ], [ false, %44 ]
  br i1 %51, label %69, label %70

52:                                               ; preds = %24
  %53 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = tail call zeroext i8 @is_gimple_val(ptr noundef %54) #19
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %70, label %69

57:                                               ; preds = %24, %24, %24
  %58 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !77
  %60 = tail call zeroext i8 @is_gimple_val(ptr noundef %59) #19
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !77
  %65 = tail call zeroext i8 @is_gimple_val(ptr noundef %64) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %69

67:                                               ; preds = %1
  %68 = icmp eq i64 %3, 141
  br i1 %68, label %69, label %70, !prof !90

69:                                               ; preds = %67, %49, %52, %62, %19, %14, %6, %1
  br label %70

70:                                               ; preds = %67, %62, %52, %49, %24, %19, %14, %9, %6, %1, %57, %69
  %71 = phi i8 [ 1, %69 ], [ 0, %57 ], [ 0, %1 ], [ 0, %6 ], [ 0, %9 ], [ 0, %14 ], [ 0, %19 ], [ 0, %24 ], [ %50, %49 ], [ 0, %52 ], [ 0, %62 ], [ 0, %67 ]
  ret i8 %71
}

declare zeroext i8 @is_gimple_variable(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @valid_gimple_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !65 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !77
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, -3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %26, label %18, !llvm.loop !91

18:                                               ; preds = %13, %15
  %19 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %20 = add nuw i64 %19, 3
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = tail call zeroext i8 @is_gimple_operand(ptr noundef %23) #19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15

26:                                               ; preds = %18, %15, %5, %1
  %27 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 1, %15 ], [ 0, %18 ]
  ret i8 %27
}

declare zeroext i8 @is_gimple_operand(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @move_ssa_defining_stmt_for_defs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !65 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 10
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, 255
  %17 = add nsw i32 %16, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi ptr [ %21, %19 ], [ null, %14 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.def_optype_d, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = load ptr, ptr %23, align 8, !tbaa !96
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi ptr [ %29, %25 ], [ %23, %22 ]
  %32 = phi i8 [ 0, %25 ], [ 1, %22 ]
  %33 = phi ptr [ %28, %25 ], [ null, %22 ]
  br i1 %24, label %55, label %34

34:                                               ; preds = %30, %50
  %35 = phi ptr [ %53, %50 ], [ %33, %30 ]
  %36 = phi i8 [ %52, %50 ], [ %32, %30 ]
  %37 = phi ptr [ %51, %50 ], [ %31, %30 ]
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %0, ptr %42, align 8, !tbaa !77
  br label %43

43:                                               ; preds = %41, %34
  %44 = icmp eq ptr %37, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.def_optype_d, ptr %37, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  %49 = load ptr, ptr %37, align 8, !tbaa !96
  br label %50

50:                                               ; preds = %43, %45
  %51 = phi ptr [ %49, %45 ], [ %37, %43 ]
  %52 = phi i8 [ %36, %45 ], [ 1, %43 ]
  %53 = phi ptr [ %48, %45 ], [ null, %43 ]
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %34, label %55, !llvm.loop !97

55:                                               ; preds = %50, %30, %5, %2, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !65 {
  %3 = load ptr, ptr %0, align 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 703, ptr noundef nonnull @.str.1) #19
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -10
  %13 = icmp ult i32 %12, -9
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = zext nneg i32 %11 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !100
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %4, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  br label %26

26:                                               ; preds = %9, %23
  %27 = phi ptr [ %25, %23 ], [ null, %9 ]
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 59
  br i1 %30, label %31, label %166

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !77
  %36 = trunc i64 %35 to i32
  %37 = add nsw i32 %36, -3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %31
  %40 = zext i32 %37 to i64
  br label %44

41:                                               ; preds = %44
  %42 = add nuw nsw i64 %45, 1
  %43 = icmp eq i64 %42, %40
  br i1 %43, label %52, label %44, !llvm.loop !91

44:                                               ; preds = %39, %41
  %45 = phi i64 [ 0, %39 ], [ %42, %41 ]
  %46 = add nuw i64 %45, 3
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  %50 = tail call zeroext i8 @is_gimple_operand(ptr noundef %49) #19
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %166, label %41

52:                                               ; preds = %41, %31
  %53 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !77
  %56 = load ptr, ptr %53, align 8, !tbaa !77
  %57 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !77
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %59, -3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %96, label %62

62:                                               ; preds = %52
  %63 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %60) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %63, align 8, !tbaa !101
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %66, %65 ], [ 0, %62 ]
  %69 = sub nsw i32 %60, %68
  br i1 %64, label %76, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.VEC_tree_base, ptr %63, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !103
  %73 = load i32, ptr %63, align 8, !tbaa !101
  %74 = sub i32 %72, %73
  %75 = icmp uge i32 %74, %69
  br label %78

76:                                               ; preds = %67
  %77 = icmp eq i32 %68, %60
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi i1 [ %75, %70 ], [ %77, %76 ]
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  %81 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %63, i32 noundef %69) #19
  br label %82

82:                                               ; preds = %78, %80
  %83 = phi ptr [ %63, %78 ], [ %81, %80 ]
  %84 = icmp ne ptr %83, null
  tail call void @llvm.assume(i1 %84)
  store i32 %60, ptr %83, align 8, !tbaa !101
  %85 = tail call i32 @llvm.umax.i32(i32 %60, i32 1)
  %86 = zext i32 %85 to i64
  br label %87

87:                                               ; preds = %82, %87
  %88 = phi i64 [ 0, %82 ], [ %94, %87 ]
  %89 = add nuw i64 %88, 3
  %90 = and i64 %89, 4294967295
  %91 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !77
  %93 = getelementptr inbounds %struct.VEC_tree_base, ptr %83, i64 0, i32 2, i64 %88
  store ptr %92, ptr %93, align 8, !tbaa !66
  %94 = add nuw nsw i64 %88, 1
  %95 = icmp eq i64 %94, %86
  br i1 %95, label %96, label %87, !llvm.loop !104

96:                                               ; preds = %87, %52
  %97 = phi ptr [ null, %52 ], [ %83, %87 ]
  %98 = tail call ptr @gimple_build_call_vec(ptr noundef %55, ptr noundef %97) #19
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 255
  %101 = add nsw i32 %100, -10
  %102 = icmp ult i32 %101, -9
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.gimple_statement_base, ptr %98, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !77
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i32, ptr %98, align 8
  %110 = and i32 %109, 255
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !81
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !100
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %119

119:                                              ; preds = %118, %108
  %120 = getelementptr inbounds i8, ptr %98, i64 %116
  store ptr %27, ptr %120, align 8, !tbaa !66
  %121 = icmp eq ptr %27, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i64, ptr %27, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 141
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 2
  store ptr %98, ptr %127, align 8, !tbaa !77
  br label %128

128:                                              ; preds = %119, %122, %126
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef nonnull %98, ptr noundef nonnull %4)
  %129 = load i32, ptr %4, align 8
  %130 = and i32 %129, 254
  %131 = add nsw i32 %130, -10
  %132 = icmp ult i32 %131, -4
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !77
  br label %136

136:                                              ; preds = %128, %133
  %137 = phi ptr [ %135, %133 ], [ null, %128 ]
  %138 = load i32, ptr %98, align 8
  %139 = and i32 %138, 254
  %140 = add nsw i32 %139, -10
  %141 = icmp ult i32 %140, -4
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1407, ptr noundef nonnull @.str.1) #19
  br label %143

143:                                              ; preds = %136, %142
  %144 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %98, i64 0, i32 2
  store ptr %137, ptr %144, align 8, !tbaa !77
  %145 = load i32, ptr %4, align 8
  %146 = and i32 %145, 254
  %147 = add nsw i32 %146, -10
  %148 = icmp ult i32 %147, -4
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !77
  br label %152

152:                                              ; preds = %143, %149
  %153 = phi ptr [ %151, %149 ], [ null, %143 ]
  %154 = load i32, ptr %98, align 8
  %155 = and i32 %154, 254
  %156 = add nsw i32 %155, -10
  %157 = icmp ult i32 %156, -4
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1416, ptr noundef nonnull @.str.1) #19
  br label %159

159:                                              ; preds = %152, %158
  %160 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %98, i64 0, i32 1
  store ptr %153, ptr %160, align 8, !tbaa !77
  %161 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !77
  %163 = getelementptr inbounds %struct.gimple_statement_base, ptr %98, i64 0, i32 2
  store i32 %162, ptr %163, align 8, !tbaa !77
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef nonnull %98, i8 noundef zeroext 0) #19
  %164 = icmp eq ptr %97, null
  br i1 %164, label %288, label %165

165:                                              ; preds = %159
  tail call void @free(ptr noundef %97)
  br label %288

166:                                              ; preds = %44, %26
  %167 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %1)
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %288, label %169

169:                                              ; preds = %166
  %170 = icmp eq ptr %27, null
  br i1 %170, label %206, label %171

171:                                              ; preds = %169
  %172 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %1) #19
  %173 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %27, ptr noundef %172) #19
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef %173, ptr noundef nonnull %4)
  %174 = load i32, ptr %4, align 8
  %175 = and i32 %174, 254
  %176 = add nsw i32 %175, -10
  %177 = icmp ult i32 %176, -4
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !77
  br label %181

181:                                              ; preds = %171, %178
  %182 = phi ptr [ %180, %178 ], [ null, %171 ]
  %183 = load i32, ptr %173, align 8
  %184 = and i32 %183, 254
  %185 = add nsw i32 %184, -10
  %186 = icmp ult i32 %185, -4
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1407, ptr noundef nonnull @.str.1) #19
  br label %188

188:                                              ; preds = %181, %187
  %189 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %173, i64 0, i32 2
  store ptr %182, ptr %189, align 8, !tbaa !77
  %190 = load i32, ptr %4, align 8
  %191 = and i32 %190, 254
  %192 = add nsw i32 %191, -10
  %193 = icmp ult i32 %192, -4
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !77
  br label %197

197:                                              ; preds = %188, %194
  %198 = phi ptr [ %196, %194 ], [ null, %188 ]
  %199 = load i32, ptr %173, align 8
  %200 = and i32 %199, 254
  %201 = add nsw i32 %200, -10
  %202 = icmp ult i32 %201, -4
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1416, ptr noundef nonnull @.str.1) #19
  br label %204

204:                                              ; preds = %197, %203
  %205 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %173, i64 0, i32 1
  store ptr %198, ptr %205, align 8, !tbaa !77
  br label %283

206:                                              ; preds = %169
  %207 = load i64, ptr %1, align 8
  %208 = and i64 %207, 65536
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = tail call ptr @gimple_build_nop() #19
  tail call void @unlink_stmt_vdef(ptr noundef nonnull %4) #19
  tail call void @release_defs(ptr noundef nonnull %4) #19
  br label %283

212:                                              ; preds = %206
  %213 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %1) #19
  %214 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !77
  %216 = tail call ptr @create_tmp_var(ptr noundef %215, ptr noundef null) #19
  %217 = tail call ptr @gimple_build_assign_stat(ptr noundef %216, ptr noundef %213) #19
  %218 = tail call zeroext i8 @add_referenced_var(ptr noundef %216) #19
  %219 = load ptr, ptr @cfun, align 8, !tbaa !66
  %220 = tail call ptr @make_ssa_name_fn(ptr noundef %219, ptr noundef %216, ptr noundef %217) #19
  %221 = load i32, ptr %217, align 8
  %222 = and i32 %221, 255
  %223 = add nsw i32 %222, -10
  %224 = icmp ult i32 %223, -9
  br i1 %224, label %229, label %225

225:                                              ; preds = %212
  %226 = getelementptr inbounds %struct.gimple_statement_base, ptr %217, i64 0, i32 3
  %227 = load i32, ptr %226, align 4, !tbaa !77
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %212
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %230

230:                                              ; preds = %229, %225
  %231 = load i32, ptr %217, align 8
  %232 = and i32 %231, 255
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !81
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !100
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %230
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %241

241:                                              ; preds = %240, %230
  %242 = getelementptr inbounds i8, ptr %217, i64 %238
  store ptr %220, ptr %242, align 8, !tbaa !66
  %243 = icmp eq ptr %220, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %241
  %245 = load i64, ptr %220, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 141
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.tree_ssa_name, ptr %220, i64 0, i32 2
  store ptr %217, ptr %249, align 8, !tbaa !77
  br label %250

250:                                              ; preds = %241, %244, %248
  %251 = load i32, ptr %4, align 8
  %252 = and i32 %251, 254
  %253 = add nsw i32 %252, -10
  %254 = icmp ult i32 %253, -4
  br i1 %254, label %258, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !77
  br label %258

258:                                              ; preds = %250, %255
  %259 = phi ptr [ %257, %255 ], [ null, %250 ]
  %260 = load i32, ptr %217, align 8
  %261 = and i32 %260, 254
  %262 = add nsw i32 %261, -10
  %263 = icmp ult i32 %262, -4
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1407, ptr noundef nonnull @.str.1) #19
  br label %265

265:                                              ; preds = %258, %264
  %266 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %217, i64 0, i32 2
  store ptr %259, ptr %266, align 8, !tbaa !77
  %267 = load i32, ptr %4, align 8
  %268 = and i32 %267, 254
  %269 = add nsw i32 %268, -10
  %270 = icmp ult i32 %269, -4
  br i1 %270, label %274, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !77
  br label %274

274:                                              ; preds = %265, %271
  %275 = phi ptr [ %273, %271 ], [ null, %265 ]
  %276 = load i32, ptr %217, align 8
  %277 = and i32 %276, 254
  %278 = add nsw i32 %277, -10
  %279 = icmp ult i32 %278, -4
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1416, ptr noundef nonnull @.str.1) #19
  br label %281

281:                                              ; preds = %274, %280
  %282 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %217, i64 0, i32 1
  store ptr %275, ptr %282, align 8, !tbaa !77
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef nonnull %217, ptr noundef nonnull %4)
  br label %283

283:                                              ; preds = %210, %281, %204
  %284 = phi ptr [ %173, %204 ], [ %217, %281 ], [ %211, %210 ]
  %285 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 2
  %286 = load i32, ptr %285, align 8, !tbaa !77
  %287 = getelementptr inbounds %struct.gimple_statement_base, ptr %284, i64 0, i32 2
  store i32 %286, ptr %287, align 8, !tbaa !77
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef %284, i8 noundef zeroext 0) #19
  br label %288

288:                                              ; preds = %165, %159, %166, %283
  %289 = phi i8 [ 1, %283 ], [ 0, %166 ], [ 1, %159 ], [ 1, %165 ]
  ret i8 %289
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ssa_propagate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !105 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  store ptr %0, ptr @ssa_prop_visit_stmt, align 8, !tbaa !66
  store ptr %1, ptr @ssa_prop_visit_phi, align 8, !tbaa !66
  %9 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  store ptr %9, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %10 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  store ptr %10, ptr @varying_ssa_edges, align 8, !tbaa !66
  %11 = load ptr, ptr @cfun, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !107
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #19
  store ptr %16, ptr @executable_blocks, align 8, !tbaa !66
  tail call void @sbitmap_zero(ptr noundef %16) #19
  %17 = load ptr, ptr @cfun, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !107
  %22 = tail call ptr @sbitmap_alloc(i32 noundef %21) #19
  store ptr %22, ptr @bb_in_list, align 8, !tbaa !66
  tail call void @sbitmap_zero(ptr noundef %22) #19
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !109

25:                                               ; preds = %2
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @dump_immediate_uses(ptr noundef nonnull %23) #19
  br label %30

30:                                               ; preds = %29, %25, %2
  %31 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #19
  store ptr %31, ptr @cfg_blocks, align 8, !tbaa !66
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !110

33:                                               ; preds = %30
  %34 = load i32, ptr %31, align 8, !tbaa !111
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ 0, %30 ]
  %37 = sub nsw i32 20, %36
  br i1 %32, label %44, label %38, !prof !110

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %31, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !113
  %41 = load i32, ptr %31, align 8, !tbaa !111
  %42 = sub i32 %40, %41
  %43 = icmp uge i32 %42, %37
  br label %46

44:                                               ; preds = %35
  %45 = icmp eq i32 %36, 20
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i1 [ %43, %38 ], [ %45, %44 ]
  br i1 %47, label %50, label %48, !prof !109

48:                                               ; preds = %46
  %49 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %31, i32 noundef %37) #19
  store ptr %49, ptr @cfg_blocks, align 8, !tbaa !66
  br label %50

50:                                               ; preds = %48, %46
  %51 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66, !nonnull !114, !noundef !114
  store i32 20, ptr %51, align 8, !tbaa !111
  %52 = load ptr, ptr @cfun, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = load ptr, ptr %54, align 8, !tbaa !66
  %56 = icmp eq ptr %55, null
  br i1 %56, label %129, label %57, !prof !115

57:                                               ; preds = %50, %125
  %58 = phi ptr [ %127, %125 ], [ %55, %50 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !116, !noalias !118
  %61 = and i32 %60, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69, !prof !121

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !77, !noalias !118
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !122

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !123, !noalias !118
  br label %69

69:                                               ; preds = %67, %63, %57
  %70 = phi ptr [ %68, %67 ], [ null, %63 ], [ null, %57 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !122

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !125, !noalias !118
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi ptr [ %73, %72 ], [ null, %69 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77, !prof !127

77:                                               ; preds = %74, %77
  %78 = phi ptr [ %83, %77 ], [ %75, %74 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !98
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -2049
  store i32 %81, ptr %79, align 8
  %82 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %78, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !128
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77, !prof !129, !llvm.loop !130

85:                                               ; preds = %77, %74
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %58) #19
  %86 = load ptr, ptr %8, align 8, !tbaa.struct !131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88, !prof !132

88:                                               ; preds = %85, %88
  %89 = phi ptr [ %94, %88 ], [ %86, %85 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, -2049
  store i32 %92, ptr %90, align 8
  %93 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %89, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !128
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %88, !prof !133, !llvm.loop !134

96:                                               ; preds = %88, %85
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 1
  br label %98

98:                                               ; preds = %123, %96
  %99 = phi i32 [ 0, %96 ], [ %124, %123 ]
  %100 = load ptr, ptr %97, align 8, !tbaa !66
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !135

102:                                              ; preds = %98
  %103 = load i32, ptr %100, align 8, !tbaa !136
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i32 [ %103, %102 ], [ 0, %98 ]
  %106 = icmp eq i32 %105, %99
  br i1 %106, label %111, label %107, !prof !138

107:                                              ; preds = %104
  %108 = zext i32 %99 to i64
  %109 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !66
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi ptr [ %110, %107 ], [ null, %104 ]
  br i1 %106, label %125, label %113, !prof !138

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !139
  %116 = and i32 %115, -4097
  store i32 %116, ptr %114, align 8, !tbaa !139
  br i1 %101, label %119, label %117, !prof !141

117:                                              ; preds = %113
  %118 = load i32, ptr %100, align 8, !tbaa !136
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %118, %117 ], [ 0, %113 ]
  %121 = icmp ult i32 %99, %120
  br i1 %121, label %123, label %122, !prof !142

122:                                              ; preds = %119
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %123

123:                                              ; preds = %122, %119
  %124 = add i32 %99, 1
  br label %98, !llvm.loop !143

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !66
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %57, !prof !144, !llvm.loop !145

129:                                              ; preds = %125, %50
  %130 = load ptr, ptr @cfun, align 8, !tbaa !66
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !106
  %133 = load ptr, ptr %132, align 8, !tbaa !146
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 1
  br label %135

135:                                              ; preds = %159, %129
  %136 = phi i32 [ 0, %129 ], [ %160, %159 ]
  %137 = load ptr, ptr %134, align 8, !tbaa !66
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139, !prof !147

139:                                              ; preds = %135
  %140 = load i32, ptr %137, align 8, !tbaa !136
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %140, %139 ], [ 0, %135 ]
  %143 = icmp eq i32 %142, %136
  br i1 %143, label %148, label %144, !prof !148

144:                                              ; preds = %141
  %145 = zext i32 %136 to i64
  %146 = getelementptr inbounds %struct.VEC_edge_base, ptr %137, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !66
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi ptr [ %147, %144 ], [ null, %141 ]
  br i1 %143, label %161, label %150, !prof !148

150:                                              ; preds = %148
  call fastcc void @add_control_edge(ptr noundef %149)
  %151 = load ptr, ptr %134, align 8, !tbaa !66
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153, !prof !110

153:                                              ; preds = %150
  %154 = load i32, ptr %151, align 8, !tbaa !136
  br label %155

155:                                              ; preds = %153, %150
  %156 = phi i32 [ %154, %153 ], [ 0, %150 ]
  %157 = icmp ult i32 %136, %156
  br i1 %157, label %159, label %158, !prof !109

158:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %159

159:                                              ; preds = %158, %155
  %160 = add i32 %136, 1
  br label %135, !llvm.loop !149

161:                                              ; preds = %1173, %148
  %162 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %181, !prof !150

164:                                              ; preds = %161
  %165 = load ptr, ptr @interesting_ssa_edges, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167, !prof !110

167:                                              ; preds = %164
  %168 = load i32, ptr %165, align 8, !tbaa !151
  br label %169

169:                                              ; preds = %164, %167
  %170 = phi i32 [ %168, %167 ], [ 0, %164 ]
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180, !prof !109

172:                                              ; preds = %169
  %173 = load ptr, ptr @varying_ssa_edges, align 8
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175, !prof !110

175:                                              ; preds = %172
  %176 = load i32, ptr %173, align 8, !tbaa !151
  br label %177

177:                                              ; preds = %172, %175
  %178 = phi i32 [ %176, %175 ], [ 0, %172 ]
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %1218, label %180, !prof !109

180:                                              ; preds = %169, %177
  br i1 %163, label %1117, label %181, !prof !153

181:                                              ; preds = %161, %180
  %182 = load ptr, ptr @cfg_blocks, align 8
  %183 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %182, i64 0, i32 2, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !66
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189, !prof !153

188:                                              ; preds = %181
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 241, ptr noundef nonnull @.str.1) #19
  br label %189

189:                                              ; preds = %188, %181
  %190 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %191 = add nsw i32 %190, 1
  %192 = load ptr, ptr @cfg_blocks, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194, !prof !153

194:                                              ; preds = %189
  %195 = load i32, ptr %192, align 8, !tbaa !111
  br label %196

196:                                              ; preds = %194, %189
  %197 = phi i32 [ %195, %194 ], [ 0, %189 ]
  %198 = urem i32 %191, %197
  store i32 %198, ptr @cfg_blocks_head, align 4, !tbaa !81
  %199 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %200 = add i32 %199, -1
  store i32 %200, ptr @cfg_blocks_num, align 4, !tbaa !81
  %201 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %202 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 9
  %203 = load i32, ptr %202, align 8, !tbaa !154
  %204 = load ptr, ptr %201, align 8, !tbaa !155
  %205 = icmp eq ptr %204, null
  br i1 %205, label %220, label %206, !prof !157

206:                                              ; preds = %196
  %207 = lshr i32 %203, 6
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds %struct.simple_bitmap_def, ptr %201, i64 0, i32 3, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !100
  %211 = and i32 %203, 63
  %212 = zext nneg i32 %211 to i64
  %213 = shl nuw i64 1, %212
  %214 = and i64 %210, %213
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %206
  %217 = getelementptr inbounds i8, ptr %204, i64 %208
  %218 = load i8, ptr %217, align 1, !tbaa !77
  %219 = add i8 %218, -1
  store i8 %219, ptr %217, align 1, !tbaa !77
  br label %220

220:                                              ; preds = %196, %206, %216
  %221 = and i32 %203, 63
  %222 = zext nneg i32 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = xor i64 %223, -1
  %225 = lshr i32 %203, 6
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds %struct.simple_bitmap_def, ptr %201, i64 0, i32 3, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !100
  %229 = and i64 %228, %224
  store i64 %229, ptr %227, align 8, !tbaa !100
  %230 = load ptr, ptr @cfun, align 8, !tbaa !66
  %231 = getelementptr inbounds %struct.function, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !106
  %233 = getelementptr inbounds %struct.control_flow_graph, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !158
  %235 = icmp eq ptr %234, %186
  br i1 %235, label %1117, label %236, !prof !153

236:                                              ; preds = %220
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %238 = icmp eq ptr %237, null
  br i1 %238, label %246, label %239, !prof !157

239:                                              ; preds = %236
  %240 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %241 = and i32 %240, 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239
  %244 = load i32, ptr %202, align 8, !tbaa !154
  %245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %237, ptr noundef nonnull @.str.16, i32 noundef %244)
  br label %246

246:                                              ; preds = %243, %239, %236
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %186) #19
  %247 = load ptr, ptr %7, align 8, !tbaa.struct !131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %248 = icmp eq ptr %247, null
  br i1 %248, label %555, label %249, !prof !159

249:                                              ; preds = %246, %551
  %250 = phi ptr [ %553, %551 ], [ %247, %246 ]
  %251 = load ptr, ptr %250, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !66
  %252 = load i32, ptr %251, align 8
  %253 = and i32 %252, 512
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %551, label %255, !prof !160

255:                                              ; preds = %249
  %256 = and i32 %252, 255
  %257 = icmp eq i32 %256, 16
  br i1 %257, label %258, label %263, !prof !161

258:                                              ; preds = %255
  %259 = load ptr, ptr @ssa_prop_visit_phi, align 8, !tbaa !66
  %260 = call i32 %259(ptr noundef nonnull %251) #19, !prof !162
  %261 = getelementptr inbounds %struct.gimple_statement_phi, ptr %251, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !77
  store ptr %262, ptr %6, align 8, !tbaa !66
  br label %266

263:                                              ; preds = %255
  %264 = load ptr, ptr @ssa_prop_visit_stmt, align 8, !tbaa !66
  %265 = call i32 %264(ptr noundef nonnull %251, ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !prof !163
  br label %266

266:                                              ; preds = %263, %258
  %267 = phi i32 [ %260, %258 ], [ %265, %263 ]
  switch i32 %267, label %551 [
    i32 2, label %268
    i32 1, label %509
  ], !prof !164

268:                                              ; preds = %266
  %269 = load i32, ptr %251, align 8
  %270 = and i32 %269, -513
  store i32 %270, ptr %251, align 8
  %271 = load ptr, ptr %6, align 8, !tbaa !66
  %272 = icmp eq ptr %271, null
  br i1 %272, label %308, label %273, !prof !165

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.tree_ssa_name, ptr %271, i64 0, i32 5
  %275 = getelementptr inbounds %struct.tree_ssa_name, ptr %271, i64 0, i32 5, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !166
  %277 = icmp eq ptr %276, %274
  br i1 %277, label %308, label %278, !prof !168

278:                                              ; preds = %273, %303
  %279 = phi ptr [ %307, %303 ], [ %276, %273 ]
  %280 = phi ptr [ %305, %303 ], [ %276, %273 ]
  %281 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %279, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !77
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, 2560
  %285 = icmp eq i32 %284, 512
  br i1 %285, label %286, label %303, !prof !169

286:                                              ; preds = %278
  %287 = or disjoint i32 %283, 2048
  store i32 %287, ptr %282, align 8
  %288 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %289 = icmp eq ptr %288, null
  br i1 %289, label %295, label %290, !prof !170

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.VEC_gimple_base, ptr %288, i64 0, i32 1
  %292 = load i32, ptr %291, align 4, !tbaa !171
  %293 = load i32, ptr %288, align 8, !tbaa !151
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %297, !prof !170

295:                                              ; preds = %290, %286
  %296 = call ptr @vec_gc_p_reserve(ptr noundef %288, i32 noundef 1) #19
  store ptr %296, ptr @varying_ssa_edges, align 8, !tbaa !66
  br label %297

297:                                              ; preds = %295, %290
  %298 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %299 = load i32, ptr %298, align 8, !tbaa !151
  %300 = add i32 %299, 1
  store i32 %300, ptr %298, align 8, !tbaa !151
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds %struct.VEC_gimple_base, ptr %298, i64 0, i32 2, i64 %301
  store ptr %282, ptr %302, align 8, !tbaa !66
  br label %303

303:                                              ; preds = %297, %278
  %304 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %280, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !166
  %306 = icmp eq ptr %305, %274
  %307 = select i1 %306, ptr null, ptr %305, !prof !172
  br i1 %306, label %308, label %278, !prof !173, !llvm.loop !174

308:                                              ; preds = %303, %273, %268
  %309 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %251) #19
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %551, label %311, !prof !175

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.gimple_statement_base, ptr %251, i64 0, i32 4
  %313 = load ptr, ptr %312, align 8, !tbaa !77
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 1
  br label %315

315:                                              ; preds = %507, %311
  %316 = phi i32 [ 0, %311 ], [ %508, %507 ]
  %317 = load ptr, ptr %314, align 8, !tbaa !66
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319, !prof !176

319:                                              ; preds = %315
  %320 = load i32, ptr %317, align 8, !tbaa !136
  br label %321

321:                                              ; preds = %319, %315
  %322 = phi i32 [ %320, %319 ], [ 0, %315 ]
  %323 = icmp eq i32 %322, %316
  br i1 %323, label %328, label %324, !prof !177

324:                                              ; preds = %321
  %325 = zext i32 %316 to i64
  %326 = getelementptr inbounds %struct.VEC_edge_base, ptr %317, i64 0, i32 2, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !66
  br label %328

328:                                              ; preds = %324, %321
  %329 = phi ptr [ %327, %324 ], [ null, %321 ]
  br i1 %323, label %551, label %330, !prof !177

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.edge_def, ptr %329, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !178
  %333 = load ptr, ptr @cfun, align 8, !tbaa !66
  %334 = getelementptr inbounds %struct.function, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !106
  %336 = getelementptr inbounds %struct.control_flow_graph, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !158
  %338 = icmp eq ptr %332, %337
  br i1 %338, label %498, label %339, !prof !179

339:                                              ; preds = %330
  %340 = getelementptr inbounds %struct.edge_def, ptr %329, i64 0, i32 7
  %341 = load i32, ptr %340, align 8, !tbaa !139
  %342 = and i32 %341, 4096
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %498, !prof !180

344:                                              ; preds = %339
  %345 = or disjoint i32 %341, 4096
  store i32 %345, ptr %340, align 8, !tbaa !139
  %346 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %347 = getelementptr inbounds %struct.basic_block_def, ptr %332, i64 0, i32 9
  %348 = load i32, ptr %347, align 8, !tbaa !154
  %349 = lshr i32 %348, 6
  %350 = zext nneg i32 %349 to i64
  %351 = getelementptr inbounds %struct.simple_bitmap_def, ptr %346, i64 0, i32 3, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !100
  %353 = and i32 %348, 63
  %354 = zext nneg i32 %353 to i64
  %355 = shl nuw i64 1, %354
  %356 = and i64 %355, %352
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %498, !prof !181

358:                                              ; preds = %344
  %359 = load ptr, ptr %335, align 8, !tbaa !146
  %360 = icmp eq ptr %359, %332
  br i1 %360, label %361, label %362, !prof !153

361:                                              ; preds = %358
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #19
  br label %362

362:                                              ; preds = %361, %358
  %363 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %364 = load i32, ptr %347, align 8, !tbaa !154
  %365 = lshr i32 %364, 6
  %366 = zext nneg i32 %365 to i64
  %367 = getelementptr inbounds %struct.simple_bitmap_def, ptr %363, i64 0, i32 3, i64 %366
  %368 = load i64, ptr %367, align 8, !tbaa !100
  %369 = and i32 %364, 63
  %370 = zext nneg i32 %369 to i64
  %371 = shl nuw i64 1, %370
  %372 = and i64 %371, %368
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %375, label %374, !prof !157

374:                                              ; preds = %362
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #19
  br label %375

375:                                              ; preds = %374, %362
  %376 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379, !prof !182

378:                                              ; preds = %375
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !81
  br label %449

379:                                              ; preds = %375
  %380 = add i32 %376, 1
  store i32 %380, ptr @cfg_blocks_num, align 4, !tbaa !81
  %381 = load ptr, ptr @cfg_blocks, align 8
  %382 = icmp eq ptr %381, null
  br i1 %382, label %385, label %383, !prof !183

383:                                              ; preds = %379
  %384 = load i32, ptr %381, align 8, !tbaa !111
  br label %385

385:                                              ; preds = %383, %379
  %386 = phi i32 [ %384, %383 ], [ 0, %379 ]
  %387 = icmp ugt i32 %380, %386
  br i1 %387, label %388, label %413, !prof !184

388:                                              ; preds = %385
  br i1 %382, label %391, label %389, !prof !185

389:                                              ; preds = %388
  %390 = load i32, ptr %381, align 8, !tbaa !111
  br label %391

391:                                              ; preds = %389, %388
  %392 = phi i32 [ %390, %389 ], [ 0, %388 ]
  store i32 %392, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  %393 = shl nsw i32 %392, 1
  br i1 %382, label %396, label %394, !prof !185

394:                                              ; preds = %391
  %395 = load i32, ptr %381, align 8, !tbaa !111
  br label %396

396:                                              ; preds = %394, %391
  %397 = phi i32 [ %395, %394 ], [ 0, %391 ]
  %398 = sub nsw i32 %393, %397
  br i1 %382, label %405, label %399, !prof !185

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %381, i64 0, i32 1
  %401 = load i32, ptr %400, align 4, !tbaa !113
  %402 = load i32, ptr %381, align 8, !tbaa !111
  %403 = sub i32 %401, %402
  %404 = icmp uge i32 %403, %398
  br label %407

405:                                              ; preds = %396
  %406 = icmp eq i32 %397, %393
  br label %407

407:                                              ; preds = %405, %399
  %408 = phi i1 [ %404, %399 ], [ %406, %405 ]
  br i1 %408, label %411, label %409, !prof !185

409:                                              ; preds = %407
  %410 = call ptr @vec_heap_p_reserve_exact(ptr noundef %381, i32 noundef %398) #19
  store ptr %410, ptr @cfg_blocks, align 8, !tbaa !66
  br label %411

411:                                              ; preds = %409, %407
  %412 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66, !nonnull !114, !noundef !114
  store i32 %393, ptr %412, align 8, !tbaa !111
  br label %449

413:                                              ; preds = %385
  %414 = load ptr, ptr %332, align 8, !tbaa !186
  %415 = icmp eq ptr %414, null
  br i1 %415, label %418, label %416, !prof !187

416:                                              ; preds = %413
  %417 = load i32, ptr %414, align 8, !tbaa !136
  br label %418

418:                                              ; preds = %416, %413
  %419 = phi i32 [ %417, %416 ], [ 0, %413 ]
  %420 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %381, i64 0, i32 2, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !66
  %424 = load ptr, ptr %423, align 8, !tbaa !186
  %425 = icmp eq ptr %424, null
  br i1 %425, label %428, label %426, !prof !187

426:                                              ; preds = %418
  %427 = load i32, ptr %424, align 8, !tbaa !136
  br label %428

428:                                              ; preds = %426, %418
  %429 = phi i32 [ %427, %426 ], [ 0, %418 ]
  %430 = icmp ult i32 %419, %429
  br i1 %430, label %439, label %431, !prof !188

431:                                              ; preds = %428
  %432 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !81
  %433 = add nsw i32 %432, 1
  br i1 %382, label %436, label %434, !prof !189

434:                                              ; preds = %431
  %435 = load i32, ptr %381, align 8, !tbaa !111
  br label %436

436:                                              ; preds = %434, %431
  %437 = phi i32 [ %435, %434 ], [ 0, %431 ]
  %438 = urem i32 %433, %437
  store i32 %438, ptr @cfg_blocks_tail, align 4, !tbaa !81
  br label %449

439:                                              ; preds = %428
  %440 = icmp eq i32 %420, 0
  br i1 %440, label %441, label %446, !prof !190

441:                                              ; preds = %439
  br i1 %382, label %444, label %442, !prof !191

442:                                              ; preds = %441
  %443 = load i32, ptr %381, align 8, !tbaa !111
  br label %444

444:                                              ; preds = %442, %441
  %445 = phi i32 [ %443, %442 ], [ 0, %441 ]
  store i32 %445, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %446

446:                                              ; preds = %444, %439
  %447 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %448 = add nsw i32 %447, -1
  store i32 %448, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %449

449:                                              ; preds = %446, %436, %411, %378
  %450 = phi i1 [ true, %378 ], [ true, %411 ], [ true, %436 ], [ false, %446 ]
  %451 = load ptr, ptr @cfg_blocks, align 8
  %452 = load i32, ptr @cfg_blocks_head, align 4
  %453 = load i32, ptr @cfg_blocks_tail, align 4
  %454 = select i1 %450, i32 %453, i32 %452, !prof !192
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %451, i64 0, i32 2, i64 %455
  store ptr %332, ptr %456, align 8, !tbaa !66
  %457 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %458 = load i32, ptr %347, align 8, !tbaa !154
  %459 = load ptr, ptr %457, align 8, !tbaa !155
  %460 = icmp eq ptr %459, null
  br i1 %460, label %475, label %461, !prof !157

461:                                              ; preds = %449
  %462 = lshr i32 %458, 6
  %463 = zext nneg i32 %462 to i64
  %464 = getelementptr inbounds %struct.simple_bitmap_def, ptr %457, i64 0, i32 3, i64 %463
  %465 = load i64, ptr %464, align 8, !tbaa !100
  %466 = and i32 %458, 63
  %467 = zext nneg i32 %466 to i64
  %468 = shl nuw i64 1, %467
  %469 = and i64 %465, %468
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %461
  %472 = getelementptr inbounds i8, ptr %459, i64 %463
  %473 = load i8, ptr %472, align 1, !tbaa !77
  %474 = add i8 %473, 1
  store i8 %474, ptr %472, align 1, !tbaa !77
  br label %475

475:                                              ; preds = %471, %461, %449
  %476 = and i32 %458, 63
  %477 = zext nneg i32 %476 to i64
  %478 = shl nuw i64 1, %477
  %479 = lshr i32 %458, 6
  %480 = zext nneg i32 %479 to i64
  %481 = getelementptr inbounds %struct.simple_bitmap_def, ptr %457, i64 0, i32 3, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !100
  %483 = or i64 %482, %478
  store i64 %483, ptr %481, align 8, !tbaa !100
  %484 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %485 = icmp eq ptr %484, null
  br i1 %485, label %498, label %486, !prof !157

486:                                              ; preds = %475
  %487 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %488 = and i32 %487, 8
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %486
  %491 = load ptr, ptr %329, align 8, !tbaa !193
  %492 = getelementptr inbounds %struct.basic_block_def, ptr %491, i64 0, i32 9
  %493 = load i32, ptr %492, align 8, !tbaa !154
  %494 = load ptr, ptr %331, align 8, !tbaa !178
  %495 = getelementptr inbounds %struct.basic_block_def, ptr %494, i64 0, i32 9
  %496 = load i32, ptr %495, align 8, !tbaa !154
  %497 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %484, ptr noundef nonnull @.str.15, i32 noundef %493, i32 noundef %496)
  br label %498

498:                                              ; preds = %490, %486, %475, %344, %339, %330
  %499 = load ptr, ptr %314, align 8, !tbaa !66
  %500 = icmp eq ptr %499, null
  br i1 %500, label %503, label %501, !prof !194

501:                                              ; preds = %498
  %502 = load i32, ptr %499, align 8, !tbaa !136
  br label %503

503:                                              ; preds = %501, %498
  %504 = phi i32 [ %502, %501 ], [ 0, %498 ]
  %505 = icmp ult i32 %316, %504
  br i1 %505, label %507, label %506, !prof !195

506:                                              ; preds = %503
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %507

507:                                              ; preds = %506, %503
  %508 = add i32 %316, 1
  br label %315, !llvm.loop !196

509:                                              ; preds = %266
  %510 = load ptr, ptr %6, align 8, !tbaa !66
  %511 = icmp eq ptr %510, null
  br i1 %511, label %547, label %512, !prof !197

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.tree_ssa_name, ptr %510, i64 0, i32 5
  %514 = getelementptr inbounds %struct.tree_ssa_name, ptr %510, i64 0, i32 5, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !166
  %516 = icmp eq ptr %515, %513
  br i1 %516, label %547, label %517, !prof !168

517:                                              ; preds = %512, %542
  %518 = phi ptr [ %546, %542 ], [ %515, %512 ]
  %519 = phi ptr [ %544, %542 ], [ %515, %512 ]
  %520 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %518, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !77
  %522 = load i32, ptr %521, align 8
  %523 = and i32 %522, 2560
  %524 = icmp eq i32 %523, 512
  br i1 %524, label %525, label %542, !prof !169

525:                                              ; preds = %517
  %526 = or disjoint i32 %522, 2048
  store i32 %526, ptr %521, align 8
  %527 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %528 = icmp eq ptr %527, null
  br i1 %528, label %534, label %529, !prof !198

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.VEC_gimple_base, ptr %527, i64 0, i32 1
  %531 = load i32, ptr %530, align 4, !tbaa !171
  %532 = load i32, ptr %527, align 8, !tbaa !151
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %534, label %536, !prof !198

534:                                              ; preds = %529, %525
  %535 = call ptr @vec_gc_p_reserve(ptr noundef %527, i32 noundef 1) #19
  store ptr %535, ptr @interesting_ssa_edges, align 8, !tbaa !66
  br label %536

536:                                              ; preds = %534, %529
  %537 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %538 = load i32, ptr %537, align 8, !tbaa !151
  %539 = add i32 %538, 1
  store i32 %539, ptr %537, align 8, !tbaa !151
  %540 = zext i32 %538 to i64
  %541 = getelementptr inbounds %struct.VEC_gimple_base, ptr %537, i64 0, i32 2, i64 %540
  store ptr %521, ptr %541, align 8, !tbaa !66
  br label %542

542:                                              ; preds = %536, %517
  %543 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %519, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !166
  %545 = icmp eq ptr %544, %513
  %546 = select i1 %545, ptr null, ptr %544, !prof !172
  br i1 %545, label %547, label %517, !prof !173, !llvm.loop !174

547:                                              ; preds = %542, %512, %509
  %548 = load ptr, ptr %5, align 8, !tbaa !66
  %549 = icmp eq ptr %548, null
  br i1 %549, label %551, label %550, !prof !199

550:                                              ; preds = %547
  call fastcc void @add_control_edge(ptr noundef nonnull %548)
  br label %551

551:                                              ; preds = %328, %249, %266, %308, %547, %550
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %552 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %250, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !128
  %554 = icmp eq ptr %553, null
  br i1 %554, label %555, label %249, !prof !200, !llvm.loop !201

555:                                              ; preds = %551, %246
  %556 = load ptr, ptr @executable_blocks, align 8, !tbaa !66
  %557 = load i32, ptr %202, align 8, !tbaa !154
  %558 = lshr i32 %557, 6
  %559 = zext nneg i32 %558 to i64
  %560 = getelementptr inbounds %struct.simple_bitmap_def, ptr %556, i64 0, i32 3, i64 %559
  %561 = load i64, ptr %560, align 8, !tbaa !100
  %562 = and i32 %557, 63
  %563 = zext nneg i32 %562 to i64
  %564 = shl nuw i64 1, %563
  %565 = and i64 %564, %561
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %1117, !prof !202

567:                                              ; preds = %555
  %568 = load ptr, ptr %556, align 8, !tbaa !155
  %569 = icmp eq ptr %568, null
  br i1 %569, label %574, label %570, !prof !203

570:                                              ; preds = %567
  %571 = getelementptr inbounds i8, ptr %568, i64 %559
  %572 = load i8, ptr %571, align 1, !tbaa !77
  %573 = add i8 %572, 1
  store i8 %573, ptr %571, align 1, !tbaa !77
  br label %574

574:                                              ; preds = %570, %567
  %575 = load i64, ptr %560, align 8, !tbaa !100
  %576 = or i64 %575, %564
  store i64 %576, ptr %560, align 8, !tbaa !100
  %577 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 13
  %578 = load i32, ptr %577, align 8, !tbaa !116, !noalias !204
  %579 = and i32 %578, 512
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %587, !prof !203

581:                                              ; preds = %574
  %582 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 7
  %583 = load ptr, ptr %582, align 8, !tbaa !77, !noalias !204
  %584 = icmp eq ptr %583, null
  br i1 %584, label %587, label %585, !prof !207

585:                                              ; preds = %581
  %586 = load ptr, ptr %583, align 8, !tbaa !123, !noalias !204
  br label %587

587:                                              ; preds = %585, %581, %574
  %588 = phi ptr [ %586, %585 ], [ null, %581 ], [ null, %574 ]
  %589 = icmp eq ptr %588, null
  br i1 %589, label %592, label %590, !prof !207

590:                                              ; preds = %587
  %591 = load ptr, ptr %588, align 8, !tbaa !125, !noalias !204
  br label %592

592:                                              ; preds = %590, %587
  %593 = phi ptr [ %591, %590 ], [ null, %587 ]
  %594 = icmp eq ptr %593, null
  br i1 %594, label %907, label %595, !prof !208

595:                                              ; preds = %592, %903
  %596 = phi ptr [ %905, %903 ], [ %593, %592 ]
  %597 = load ptr, ptr %596, align 8, !tbaa !98
  %598 = load i32, ptr %597, align 8
  %599 = and i32 %598, 2048
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %603, label %601, !prof !209

601:                                              ; preds = %595
  %602 = and i32 %598, -2049
  store i32 %602, ptr %597, align 8
  br label %603

603:                                              ; preds = %601, %595
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !66
  %604 = load i32, ptr %597, align 8
  %605 = and i32 %604, 512
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %903, label %607, !prof !160

607:                                              ; preds = %603
  %608 = and i32 %604, 255
  %609 = icmp eq i32 %608, 16
  br i1 %609, label %610, label %615, !prof !161

610:                                              ; preds = %607
  %611 = load ptr, ptr @ssa_prop_visit_phi, align 8, !tbaa !66
  %612 = call i32 %611(ptr noundef nonnull %597) #19, !prof !210
  %613 = getelementptr inbounds %struct.gimple_statement_phi, ptr %597, i64 0, i32 3
  %614 = load ptr, ptr %613, align 8, !tbaa !77
  store ptr %614, ptr %4, align 8, !tbaa !66
  br label %618

615:                                              ; preds = %607
  %616 = load ptr, ptr @ssa_prop_visit_stmt, align 8, !tbaa !66
  %617 = call i32 %616(ptr noundef nonnull %597, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !prof !211
  br label %618

618:                                              ; preds = %615, %610
  %619 = phi i32 [ %612, %610 ], [ %617, %615 ]
  switch i32 %619, label %903 [
    i32 2, label %620
    i32 1, label %861
  ], !prof !164

620:                                              ; preds = %618
  %621 = load i32, ptr %597, align 8
  %622 = and i32 %621, -513
  store i32 %622, ptr %597, align 8
  %623 = load ptr, ptr %4, align 8, !tbaa !66
  %624 = icmp eq ptr %623, null
  br i1 %624, label %660, label %625, !prof !165

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.tree_ssa_name, ptr %623, i64 0, i32 5
  %627 = getelementptr inbounds %struct.tree_ssa_name, ptr %623, i64 0, i32 5, i32 1
  %628 = load ptr, ptr %627, align 8, !tbaa !166
  %629 = icmp eq ptr %628, %626
  br i1 %629, label %660, label %630, !prof !168

630:                                              ; preds = %625, %655
  %631 = phi ptr [ %659, %655 ], [ %628, %625 ]
  %632 = phi ptr [ %657, %655 ], [ %628, %625 ]
  %633 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %631, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !77
  %635 = load i32, ptr %634, align 8
  %636 = and i32 %635, 2560
  %637 = icmp eq i32 %636, 512
  br i1 %637, label %638, label %655, !prof !169

638:                                              ; preds = %630
  %639 = or disjoint i32 %635, 2048
  store i32 %639, ptr %634, align 8
  %640 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %641 = icmp eq ptr %640, null
  br i1 %641, label %647, label %642, !prof !170

642:                                              ; preds = %638
  %643 = getelementptr inbounds %struct.VEC_gimple_base, ptr %640, i64 0, i32 1
  %644 = load i32, ptr %643, align 4, !tbaa !171
  %645 = load i32, ptr %640, align 8, !tbaa !151
  %646 = icmp eq i32 %644, %645
  br i1 %646, label %647, label %649, !prof !170

647:                                              ; preds = %642, %638
  %648 = call ptr @vec_gc_p_reserve(ptr noundef %640, i32 noundef 1) #19
  store ptr %648, ptr @varying_ssa_edges, align 8, !tbaa !66
  br label %649

649:                                              ; preds = %647, %642
  %650 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %651 = load i32, ptr %650, align 8, !tbaa !151
  %652 = add i32 %651, 1
  store i32 %652, ptr %650, align 8, !tbaa !151
  %653 = zext i32 %651 to i64
  %654 = getelementptr inbounds %struct.VEC_gimple_base, ptr %650, i64 0, i32 2, i64 %653
  store ptr %634, ptr %654, align 8, !tbaa !66
  br label %655

655:                                              ; preds = %649, %630
  %656 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %632, i64 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !166
  %658 = icmp eq ptr %657, %626
  %659 = select i1 %658, ptr null, ptr %657, !prof !172
  br i1 %658, label %660, label %630, !prof !173, !llvm.loop !174

660:                                              ; preds = %655, %625, %620
  %661 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %597) #19
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %903, label %663, !prof !175

663:                                              ; preds = %660
  %664 = getelementptr inbounds %struct.gimple_statement_base, ptr %597, i64 0, i32 4
  %665 = load ptr, ptr %664, align 8, !tbaa !77
  %666 = getelementptr inbounds %struct.basic_block_def, ptr %665, i64 0, i32 1
  br label %667

667:                                              ; preds = %859, %663
  %668 = phi i32 [ 0, %663 ], [ %860, %859 ]
  %669 = load ptr, ptr %666, align 8, !tbaa !66
  %670 = icmp eq ptr %669, null
  br i1 %670, label %673, label %671, !prof !176

671:                                              ; preds = %667
  %672 = load i32, ptr %669, align 8, !tbaa !136
  br label %673

673:                                              ; preds = %671, %667
  %674 = phi i32 [ %672, %671 ], [ 0, %667 ]
  %675 = icmp eq i32 %674, %668
  br i1 %675, label %680, label %676, !prof !177

676:                                              ; preds = %673
  %677 = zext i32 %668 to i64
  %678 = getelementptr inbounds %struct.VEC_edge_base, ptr %669, i64 0, i32 2, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !66
  br label %680

680:                                              ; preds = %676, %673
  %681 = phi ptr [ %679, %676 ], [ null, %673 ]
  br i1 %675, label %903, label %682, !prof !177

682:                                              ; preds = %680
  %683 = getelementptr inbounds %struct.edge_def, ptr %681, i64 0, i32 1
  %684 = load ptr, ptr %683, align 8, !tbaa !178
  %685 = load ptr, ptr @cfun, align 8, !tbaa !66
  %686 = getelementptr inbounds %struct.function, ptr %685, i64 0, i32 1
  %687 = load ptr, ptr %686, align 8, !tbaa !106
  %688 = getelementptr inbounds %struct.control_flow_graph, ptr %687, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !158
  %690 = icmp eq ptr %684, %689
  br i1 %690, label %850, label %691, !prof !179

691:                                              ; preds = %682
  %692 = getelementptr inbounds %struct.edge_def, ptr %681, i64 0, i32 7
  %693 = load i32, ptr %692, align 8, !tbaa !139
  %694 = and i32 %693, 4096
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %850, !prof !180

696:                                              ; preds = %691
  %697 = or disjoint i32 %693, 4096
  store i32 %697, ptr %692, align 8, !tbaa !139
  %698 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %699 = getelementptr inbounds %struct.basic_block_def, ptr %684, i64 0, i32 9
  %700 = load i32, ptr %699, align 8, !tbaa !154
  %701 = lshr i32 %700, 6
  %702 = zext nneg i32 %701 to i64
  %703 = getelementptr inbounds %struct.simple_bitmap_def, ptr %698, i64 0, i32 3, i64 %702
  %704 = load i64, ptr %703, align 8, !tbaa !100
  %705 = and i32 %700, 63
  %706 = zext nneg i32 %705 to i64
  %707 = shl nuw i64 1, %706
  %708 = and i64 %707, %704
  %709 = icmp eq i64 %708, 0
  br i1 %709, label %710, label %850, !prof !181

710:                                              ; preds = %696
  %711 = load ptr, ptr %687, align 8, !tbaa !146
  %712 = icmp eq ptr %711, %684
  br i1 %712, label %713, label %714, !prof !153

713:                                              ; preds = %710
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #19
  br label %714

714:                                              ; preds = %713, %710
  %715 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %716 = load i32, ptr %699, align 8, !tbaa !154
  %717 = lshr i32 %716, 6
  %718 = zext nneg i32 %717 to i64
  %719 = getelementptr inbounds %struct.simple_bitmap_def, ptr %715, i64 0, i32 3, i64 %718
  %720 = load i64, ptr %719, align 8, !tbaa !100
  %721 = and i32 %716, 63
  %722 = zext nneg i32 %721 to i64
  %723 = shl nuw i64 1, %722
  %724 = and i64 %723, %720
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %727, label %726, !prof !157

726:                                              ; preds = %714
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #19
  br label %727

727:                                              ; preds = %726, %714
  %728 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %731, !prof !182

730:                                              ; preds = %727
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !81
  br label %801

731:                                              ; preds = %727
  %732 = add i32 %728, 1
  store i32 %732, ptr @cfg_blocks_num, align 4, !tbaa !81
  %733 = load ptr, ptr @cfg_blocks, align 8
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735, !prof !183

735:                                              ; preds = %731
  %736 = load i32, ptr %733, align 8, !tbaa !111
  br label %737

737:                                              ; preds = %735, %731
  %738 = phi i32 [ %736, %735 ], [ 0, %731 ]
  %739 = icmp ugt i32 %732, %738
  br i1 %739, label %740, label %765, !prof !184

740:                                              ; preds = %737
  br i1 %734, label %743, label %741, !prof !185

741:                                              ; preds = %740
  %742 = load i32, ptr %733, align 8, !tbaa !111
  br label %743

743:                                              ; preds = %741, %740
  %744 = phi i32 [ %742, %741 ], [ 0, %740 ]
  store i32 %744, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  %745 = shl nsw i32 %744, 1
  br i1 %734, label %748, label %746, !prof !185

746:                                              ; preds = %743
  %747 = load i32, ptr %733, align 8, !tbaa !111
  br label %748

748:                                              ; preds = %746, %743
  %749 = phi i32 [ %747, %746 ], [ 0, %743 ]
  %750 = sub nsw i32 %745, %749
  br i1 %734, label %757, label %751, !prof !185

751:                                              ; preds = %748
  %752 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %733, i64 0, i32 1
  %753 = load i32, ptr %752, align 4, !tbaa !113
  %754 = load i32, ptr %733, align 8, !tbaa !111
  %755 = sub i32 %753, %754
  %756 = icmp uge i32 %755, %750
  br label %759

757:                                              ; preds = %748
  %758 = icmp eq i32 %749, %745
  br label %759

759:                                              ; preds = %757, %751
  %760 = phi i1 [ %756, %751 ], [ %758, %757 ]
  br i1 %760, label %763, label %761, !prof !185

761:                                              ; preds = %759
  %762 = call ptr @vec_heap_p_reserve_exact(ptr noundef %733, i32 noundef %750) #19
  store ptr %762, ptr @cfg_blocks, align 8, !tbaa !66
  br label %763

763:                                              ; preds = %761, %759
  %764 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66, !nonnull !114, !noundef !114
  store i32 %745, ptr %764, align 8, !tbaa !111
  br label %801

765:                                              ; preds = %737
  %766 = load ptr, ptr %684, align 8, !tbaa !186
  %767 = icmp eq ptr %766, null
  br i1 %767, label %770, label %768, !prof !187

768:                                              ; preds = %765
  %769 = load i32, ptr %766, align 8, !tbaa !136
  br label %770

770:                                              ; preds = %768, %765
  %771 = phi i32 [ %769, %768 ], [ 0, %765 ]
  %772 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %773 = zext i32 %772 to i64
  %774 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %733, i64 0, i32 2, i64 %773
  %775 = load ptr, ptr %774, align 8, !tbaa !66
  %776 = load ptr, ptr %775, align 8, !tbaa !186
  %777 = icmp eq ptr %776, null
  br i1 %777, label %780, label %778, !prof !187

778:                                              ; preds = %770
  %779 = load i32, ptr %776, align 8, !tbaa !136
  br label %780

780:                                              ; preds = %778, %770
  %781 = phi i32 [ %779, %778 ], [ 0, %770 ]
  %782 = icmp ult i32 %771, %781
  br i1 %782, label %791, label %783, !prof !188

783:                                              ; preds = %780
  %784 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !81
  %785 = add nsw i32 %784, 1
  br i1 %734, label %788, label %786, !prof !189

786:                                              ; preds = %783
  %787 = load i32, ptr %733, align 8, !tbaa !111
  br label %788

788:                                              ; preds = %786, %783
  %789 = phi i32 [ %787, %786 ], [ 0, %783 ]
  %790 = urem i32 %785, %789
  store i32 %790, ptr @cfg_blocks_tail, align 4, !tbaa !81
  br label %801

791:                                              ; preds = %780
  %792 = icmp eq i32 %772, 0
  br i1 %792, label %793, label %798, !prof !190

793:                                              ; preds = %791
  br i1 %734, label %796, label %794, !prof !191

794:                                              ; preds = %793
  %795 = load i32, ptr %733, align 8, !tbaa !111
  br label %796

796:                                              ; preds = %794, %793
  %797 = phi i32 [ %795, %794 ], [ 0, %793 ]
  store i32 %797, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %798

798:                                              ; preds = %796, %791
  %799 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %800 = add nsw i32 %799, -1
  store i32 %800, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %801

801:                                              ; preds = %798, %788, %763, %730
  %802 = phi i1 [ true, %730 ], [ true, %763 ], [ true, %788 ], [ false, %798 ]
  %803 = load ptr, ptr @cfg_blocks, align 8
  %804 = load i32, ptr @cfg_blocks_head, align 4
  %805 = load i32, ptr @cfg_blocks_tail, align 4
  %806 = select i1 %802, i32 %805, i32 %804, !prof !192
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %803, i64 0, i32 2, i64 %807
  store ptr %684, ptr %808, align 8, !tbaa !66
  %809 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %810 = load i32, ptr %699, align 8, !tbaa !154
  %811 = load ptr, ptr %809, align 8, !tbaa !155
  %812 = icmp eq ptr %811, null
  br i1 %812, label %827, label %813, !prof !157

813:                                              ; preds = %801
  %814 = lshr i32 %810, 6
  %815 = zext nneg i32 %814 to i64
  %816 = getelementptr inbounds %struct.simple_bitmap_def, ptr %809, i64 0, i32 3, i64 %815
  %817 = load i64, ptr %816, align 8, !tbaa !100
  %818 = and i32 %810, 63
  %819 = zext nneg i32 %818 to i64
  %820 = shl nuw i64 1, %819
  %821 = and i64 %817, %820
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %823, label %827

823:                                              ; preds = %813
  %824 = getelementptr inbounds i8, ptr %811, i64 %815
  %825 = load i8, ptr %824, align 1, !tbaa !77
  %826 = add i8 %825, 1
  store i8 %826, ptr %824, align 1, !tbaa !77
  br label %827

827:                                              ; preds = %823, %813, %801
  %828 = and i32 %810, 63
  %829 = zext nneg i32 %828 to i64
  %830 = shl nuw i64 1, %829
  %831 = lshr i32 %810, 6
  %832 = zext nneg i32 %831 to i64
  %833 = getelementptr inbounds %struct.simple_bitmap_def, ptr %809, i64 0, i32 3, i64 %832
  %834 = load i64, ptr %833, align 8, !tbaa !100
  %835 = or i64 %834, %830
  store i64 %835, ptr %833, align 8, !tbaa !100
  %836 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %837 = icmp eq ptr %836, null
  br i1 %837, label %850, label %838, !prof !157

838:                                              ; preds = %827
  %839 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %840 = and i32 %839, 8
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %850, label %842

842:                                              ; preds = %838
  %843 = load ptr, ptr %681, align 8, !tbaa !193
  %844 = getelementptr inbounds %struct.basic_block_def, ptr %843, i64 0, i32 9
  %845 = load i32, ptr %844, align 8, !tbaa !154
  %846 = load ptr, ptr %683, align 8, !tbaa !178
  %847 = getelementptr inbounds %struct.basic_block_def, ptr %846, i64 0, i32 9
  %848 = load i32, ptr %847, align 8, !tbaa !154
  %849 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %836, ptr noundef nonnull @.str.15, i32 noundef %845, i32 noundef %848)
  br label %850

850:                                              ; preds = %842, %838, %827, %696, %691, %682
  %851 = load ptr, ptr %666, align 8, !tbaa !66
  %852 = icmp eq ptr %851, null
  br i1 %852, label %855, label %853, !prof !194

853:                                              ; preds = %850
  %854 = load i32, ptr %851, align 8, !tbaa !136
  br label %855

855:                                              ; preds = %853, %850
  %856 = phi i32 [ %854, %853 ], [ 0, %850 ]
  %857 = icmp ult i32 %668, %856
  br i1 %857, label %859, label %858, !prof !195

858:                                              ; preds = %855
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %859

859:                                              ; preds = %858, %855
  %860 = add i32 %668, 1
  br label %667, !llvm.loop !196

861:                                              ; preds = %618
  %862 = load ptr, ptr %4, align 8, !tbaa !66
  %863 = icmp eq ptr %862, null
  br i1 %863, label %899, label %864, !prof !197

864:                                              ; preds = %861
  %865 = getelementptr inbounds %struct.tree_ssa_name, ptr %862, i64 0, i32 5
  %866 = getelementptr inbounds %struct.tree_ssa_name, ptr %862, i64 0, i32 5, i32 1
  %867 = load ptr, ptr %866, align 8, !tbaa !166
  %868 = icmp eq ptr %867, %865
  br i1 %868, label %899, label %869, !prof !168

869:                                              ; preds = %864, %894
  %870 = phi ptr [ %898, %894 ], [ %867, %864 ]
  %871 = phi ptr [ %896, %894 ], [ %867, %864 ]
  %872 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %870, i64 0, i32 2
  %873 = load ptr, ptr %872, align 8, !tbaa !77
  %874 = load i32, ptr %873, align 8
  %875 = and i32 %874, 2560
  %876 = icmp eq i32 %875, 512
  br i1 %876, label %877, label %894, !prof !169

877:                                              ; preds = %869
  %878 = or disjoint i32 %874, 2048
  store i32 %878, ptr %873, align 8
  %879 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %880 = icmp eq ptr %879, null
  br i1 %880, label %886, label %881, !prof !198

881:                                              ; preds = %877
  %882 = getelementptr inbounds %struct.VEC_gimple_base, ptr %879, i64 0, i32 1
  %883 = load i32, ptr %882, align 4, !tbaa !171
  %884 = load i32, ptr %879, align 8, !tbaa !151
  %885 = icmp eq i32 %883, %884
  br i1 %885, label %886, label %888, !prof !198

886:                                              ; preds = %881, %877
  %887 = call ptr @vec_gc_p_reserve(ptr noundef %879, i32 noundef 1) #19
  store ptr %887, ptr @interesting_ssa_edges, align 8, !tbaa !66
  br label %888

888:                                              ; preds = %886, %881
  %889 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %890 = load i32, ptr %889, align 8, !tbaa !151
  %891 = add i32 %890, 1
  store i32 %891, ptr %889, align 8, !tbaa !151
  %892 = zext i32 %890 to i64
  %893 = getelementptr inbounds %struct.VEC_gimple_base, ptr %889, i64 0, i32 2, i64 %892
  store ptr %873, ptr %893, align 8, !tbaa !66
  br label %894

894:                                              ; preds = %888, %869
  %895 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %871, i64 0, i32 1
  %896 = load ptr, ptr %895, align 8, !tbaa !166
  %897 = icmp eq ptr %896, %865
  %898 = select i1 %897, ptr null, ptr %896, !prof !172
  br i1 %897, label %899, label %869, !prof !173, !llvm.loop !174

899:                                              ; preds = %894, %864, %861
  %900 = load ptr, ptr %3, align 8, !tbaa !66
  %901 = icmp eq ptr %900, null
  br i1 %901, label %903, label %902, !prof !199

902:                                              ; preds = %899
  call fastcc void @add_control_edge(ptr noundef nonnull %900)
  br label %903

903:                                              ; preds = %680, %603, %618, %660, %899, %902
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %904 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %596, i64 0, i32 2
  %905 = load ptr, ptr %904, align 8, !tbaa !128
  %906 = icmp eq ptr %905, null
  br i1 %906, label %907, label %595, !prof !212, !llvm.loop !213

907:                                              ; preds = %903, %592
  %908 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 1
  br label %909

909:                                              ; preds = %945, %907
  %910 = phi i32 [ 0, %907 ], [ %946, %945 ]
  %911 = phi ptr [ null, %907 ], [ %935, %945 ]
  %912 = phi i32 [ 0, %907 ], [ %936, %945 ]
  %913 = load ptr, ptr %908, align 8, !tbaa !66
  %914 = icmp eq ptr %913, null
  br i1 %914, label %917, label %915, !prof !214

915:                                              ; preds = %909
  %916 = load i32, ptr %913, align 8, !tbaa !136
  br label %917

917:                                              ; preds = %915, %909
  %918 = phi i32 [ %916, %915 ], [ 0, %909 ]
  %919 = icmp eq i32 %918, %910
  br i1 %919, label %924, label %920, !prof !215

920:                                              ; preds = %917
  %921 = zext i32 %910 to i64
  %922 = getelementptr inbounds %struct.VEC_edge_base, ptr %913, i64 0, i32 2, i64 %921
  %923 = load ptr, ptr %922, align 8, !tbaa !66
  br label %924

924:                                              ; preds = %920, %917
  %925 = phi ptr [ %923, %920 ], [ null, %917 ]
  br i1 %919, label %947, label %926, !prof !215

926:                                              ; preds = %924
  %927 = getelementptr inbounds %struct.edge_def, ptr %925, i64 0, i32 7
  %928 = load i32, ptr %927, align 8, !tbaa !139
  %929 = and i32 %928, 10
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %932, label %931, !prof !216

931:                                              ; preds = %926
  call fastcc void @add_control_edge(ptr noundef %925)
  br label %934

932:                                              ; preds = %926
  %933 = add i32 %912, 1
  br label %934

934:                                              ; preds = %932, %931
  %935 = phi ptr [ %911, %931 ], [ %925, %932 ]
  %936 = phi i32 [ %912, %931 ], [ %933, %932 ]
  %937 = load ptr, ptr %908, align 8, !tbaa !66
  %938 = icmp eq ptr %937, null
  br i1 %938, label %941, label %939, !prof !217

939:                                              ; preds = %934
  %940 = load i32, ptr %937, align 8, !tbaa !136
  br label %941

941:                                              ; preds = %939, %934
  %942 = phi i32 [ %940, %939 ], [ 0, %934 ]
  %943 = icmp ult i32 %910, %942
  br i1 %943, label %945, label %944, !prof !216

944:                                              ; preds = %941
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %945

945:                                              ; preds = %944, %941
  %946 = add i32 %910, 1
  br label %909, !llvm.loop !218

947:                                              ; preds = %924
  %948 = icmp eq i32 %912, 1
  br i1 %948, label %949, label %1117, !prof !219

949:                                              ; preds = %947
  %950 = getelementptr inbounds %struct.edge_def, ptr %911, i64 0, i32 1
  %951 = load ptr, ptr %950, align 8, !tbaa !178
  %952 = load ptr, ptr @cfun, align 8, !tbaa !66
  %953 = getelementptr inbounds %struct.function, ptr %952, i64 0, i32 1
  %954 = load ptr, ptr %953, align 8, !tbaa !106
  %955 = getelementptr inbounds %struct.control_flow_graph, ptr %954, i64 0, i32 1
  %956 = load ptr, ptr %955, align 8, !tbaa !158
  %957 = icmp eq ptr %951, %956
  br i1 %957, label %1117, label %958, !prof !179

958:                                              ; preds = %949
  %959 = getelementptr inbounds %struct.edge_def, ptr %911, i64 0, i32 7
  %960 = load i32, ptr %959, align 8, !tbaa !139
  %961 = and i32 %960, 4096
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %1117, !prof !180

963:                                              ; preds = %958
  %964 = or disjoint i32 %960, 4096
  store i32 %964, ptr %959, align 8, !tbaa !139
  %965 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %966 = getelementptr inbounds %struct.basic_block_def, ptr %951, i64 0, i32 9
  %967 = load i32, ptr %966, align 8, !tbaa !154
  %968 = lshr i32 %967, 6
  %969 = zext nneg i32 %968 to i64
  %970 = getelementptr inbounds %struct.simple_bitmap_def, ptr %965, i64 0, i32 3, i64 %969
  %971 = load i64, ptr %970, align 8, !tbaa !100
  %972 = and i32 %967, 63
  %973 = zext nneg i32 %972 to i64
  %974 = shl nuw i64 1, %973
  %975 = and i64 %974, %971
  %976 = icmp eq i64 %975, 0
  br i1 %976, label %977, label %1117, !prof !181

977:                                              ; preds = %963
  %978 = load ptr, ptr %954, align 8, !tbaa !146
  %979 = icmp eq ptr %978, %951
  br i1 %979, label %980, label %981, !prof !153

980:                                              ; preds = %977
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #19
  br label %981

981:                                              ; preds = %980, %977
  %982 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %983 = load i32, ptr %966, align 8, !tbaa !154
  %984 = lshr i32 %983, 6
  %985 = zext nneg i32 %984 to i64
  %986 = getelementptr inbounds %struct.simple_bitmap_def, ptr %982, i64 0, i32 3, i64 %985
  %987 = load i64, ptr %986, align 8, !tbaa !100
  %988 = and i32 %983, 63
  %989 = zext nneg i32 %988 to i64
  %990 = shl nuw i64 1, %989
  %991 = and i64 %990, %987
  %992 = icmp eq i64 %991, 0
  br i1 %992, label %994, label %993, !prof !157

993:                                              ; preds = %981
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #19
  br label %994

994:                                              ; preds = %993, %981
  %995 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %998, !prof !182

997:                                              ; preds = %994
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !81
  br label %1068

998:                                              ; preds = %994
  %999 = add i32 %995, 1
  store i32 %999, ptr @cfg_blocks_num, align 4, !tbaa !81
  %1000 = load ptr, ptr @cfg_blocks, align 8
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1004, label %1002, !prof !183

1002:                                             ; preds = %998
  %1003 = load i32, ptr %1000, align 8, !tbaa !111
  br label %1004

1004:                                             ; preds = %1002, %998
  %1005 = phi i32 [ %1003, %1002 ], [ 0, %998 ]
  %1006 = icmp ugt i32 %999, %1005
  br i1 %1006, label %1007, label %1032, !prof !184

1007:                                             ; preds = %1004
  br i1 %1001, label %1010, label %1008, !prof !185

1008:                                             ; preds = %1007
  %1009 = load i32, ptr %1000, align 8, !tbaa !111
  br label %1010

1010:                                             ; preds = %1008, %1007
  %1011 = phi i32 [ %1009, %1008 ], [ 0, %1007 ]
  store i32 %1011, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  %1012 = shl nsw i32 %1011, 1
  br i1 %1001, label %1015, label %1013, !prof !185

1013:                                             ; preds = %1010
  %1014 = load i32, ptr %1000, align 8, !tbaa !111
  br label %1015

1015:                                             ; preds = %1013, %1010
  %1016 = phi i32 [ %1014, %1013 ], [ 0, %1010 ]
  %1017 = sub nsw i32 %1012, %1016
  br i1 %1001, label %1024, label %1018, !prof !185

1018:                                             ; preds = %1015
  %1019 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1000, i64 0, i32 1
  %1020 = load i32, ptr %1019, align 4, !tbaa !113
  %1021 = load i32, ptr %1000, align 8, !tbaa !111
  %1022 = sub i32 %1020, %1021
  %1023 = icmp uge i32 %1022, %1017
  br label %1026

1024:                                             ; preds = %1015
  %1025 = icmp eq i32 %1016, %1012
  br label %1026

1026:                                             ; preds = %1024, %1018
  %1027 = phi i1 [ %1023, %1018 ], [ %1025, %1024 ]
  br i1 %1027, label %1030, label %1028, !prof !185

1028:                                             ; preds = %1026
  %1029 = call ptr @vec_heap_p_reserve_exact(ptr noundef %1000, i32 noundef %1017) #19
  store ptr %1029, ptr @cfg_blocks, align 8, !tbaa !66
  br label %1030

1030:                                             ; preds = %1028, %1026
  %1031 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66, !nonnull !114, !noundef !114
  store i32 %1012, ptr %1031, align 8, !tbaa !111
  br label %1068

1032:                                             ; preds = %1004
  %1033 = load ptr, ptr %951, align 8, !tbaa !186
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1037, label %1035, !prof !187

1035:                                             ; preds = %1032
  %1036 = load i32, ptr %1033, align 8, !tbaa !136
  br label %1037

1037:                                             ; preds = %1035, %1032
  %1038 = phi i32 [ %1036, %1035 ], [ 0, %1032 ]
  %1039 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1000, i64 0, i32 2, i64 %1040
  %1042 = load ptr, ptr %1041, align 8, !tbaa !66
  %1043 = load ptr, ptr %1042, align 8, !tbaa !186
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1047, label %1045, !prof !187

1045:                                             ; preds = %1037
  %1046 = load i32, ptr %1043, align 8, !tbaa !136
  br label %1047

1047:                                             ; preds = %1045, %1037
  %1048 = phi i32 [ %1046, %1045 ], [ 0, %1037 ]
  %1049 = icmp ult i32 %1038, %1048
  br i1 %1049, label %1058, label %1050, !prof !188

1050:                                             ; preds = %1047
  %1051 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !81
  %1052 = add nsw i32 %1051, 1
  br i1 %1001, label %1055, label %1053, !prof !189

1053:                                             ; preds = %1050
  %1054 = load i32, ptr %1000, align 8, !tbaa !111
  br label %1055

1055:                                             ; preds = %1053, %1050
  %1056 = phi i32 [ %1054, %1053 ], [ 0, %1050 ]
  %1057 = urem i32 %1052, %1056
  store i32 %1057, ptr @cfg_blocks_tail, align 4, !tbaa !81
  br label %1068

1058:                                             ; preds = %1047
  %1059 = icmp eq i32 %1039, 0
  br i1 %1059, label %1060, label %1065, !prof !190

1060:                                             ; preds = %1058
  br i1 %1001, label %1063, label %1061, !prof !191

1061:                                             ; preds = %1060
  %1062 = load i32, ptr %1000, align 8, !tbaa !111
  br label %1063

1063:                                             ; preds = %1061, %1060
  %1064 = phi i32 [ %1062, %1061 ], [ 0, %1060 ]
  store i32 %1064, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %1065

1065:                                             ; preds = %1063, %1058
  %1066 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %1067 = add nsw i32 %1066, -1
  store i32 %1067, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %1068

1068:                                             ; preds = %1065, %1055, %1030, %997
  %1069 = phi i1 [ true, %997 ], [ true, %1030 ], [ true, %1055 ], [ false, %1065 ]
  %1070 = load ptr, ptr @cfg_blocks, align 8
  %1071 = load i32, ptr @cfg_blocks_head, align 4
  %1072 = load i32, ptr @cfg_blocks_tail, align 4
  %1073 = select i1 %1069, i32 %1072, i32 %1071, !prof !192
  %1074 = zext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1070, i64 0, i32 2, i64 %1074
  store ptr %951, ptr %1075, align 8, !tbaa !66
  %1076 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %1077 = load i32, ptr %966, align 8, !tbaa !154
  %1078 = load ptr, ptr %1076, align 8, !tbaa !155
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1094, label %1080, !prof !157

1080:                                             ; preds = %1068
  %1081 = lshr i32 %1077, 6
  %1082 = zext nneg i32 %1081 to i64
  %1083 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1076, i64 0, i32 3, i64 %1082
  %1084 = load i64, ptr %1083, align 8, !tbaa !100
  %1085 = and i32 %1077, 63
  %1086 = zext nneg i32 %1085 to i64
  %1087 = shl nuw i64 1, %1086
  %1088 = and i64 %1084, %1087
  %1089 = icmp eq i64 %1088, 0
  br i1 %1089, label %1090, label %1094

1090:                                             ; preds = %1080
  %1091 = getelementptr inbounds i8, ptr %1078, i64 %1082
  %1092 = load i8, ptr %1091, align 1, !tbaa !77
  %1093 = add i8 %1092, 1
  store i8 %1093, ptr %1091, align 1, !tbaa !77
  br label %1094

1094:                                             ; preds = %1090, %1080, %1068
  %1095 = and i32 %1077, 63
  %1096 = zext nneg i32 %1095 to i64
  %1097 = shl nuw i64 1, %1096
  %1098 = lshr i32 %1077, 6
  %1099 = zext nneg i32 %1098 to i64
  %1100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1076, i64 0, i32 3, i64 %1099
  %1101 = load i64, ptr %1100, align 8, !tbaa !100
  %1102 = or i64 %1101, %1097
  store i64 %1102, ptr %1100, align 8, !tbaa !100
  %1103 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1117, label %1105, !prof !157

1105:                                             ; preds = %1094
  %1106 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %1107 = and i32 %1106, 8
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1117, label %1109

1109:                                             ; preds = %1105
  %1110 = load ptr, ptr %911, align 8, !tbaa !193
  %1111 = getelementptr inbounds %struct.basic_block_def, ptr %1110, i64 0, i32 9
  %1112 = load i32, ptr %1111, align 8, !tbaa !154
  %1113 = load ptr, ptr %950, align 8, !tbaa !178
  %1114 = getelementptr inbounds %struct.basic_block_def, ptr %1113, i64 0, i32 9
  %1115 = load i32, ptr %1114, align 8, !tbaa !154
  %1116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1103, ptr noundef nonnull @.str.15, i32 noundef %1112, i32 noundef %1115)
  br label %1117

1117:                                             ; preds = %1109, %1105, %1094, %963, %958, %949, %947, %555, %220, %180
  br label %1118

1118:                                             ; preds = %1167, %1117
  %1119 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1123, label %1121, !prof !220

1121:                                             ; preds = %1118
  %1122 = load i32, ptr %1119, align 8, !tbaa !151
  br label %1123

1123:                                             ; preds = %1121, %1118
  %1124 = phi i32 [ %1122, %1121 ], [ 0, %1118 ]
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1168, label %1126, !prof !221

1126:                                             ; preds = %1123
  %1127 = load i32, ptr %1119, align 8, !tbaa !151
  %1128 = add i32 %1127, -1
  store i32 %1128, ptr %1119, align 8, !tbaa !151
  %1129 = zext i32 %1128 to i64
  %1130 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1119, i64 0, i32 2, i64 %1129
  %1131 = load ptr, ptr %1130, align 8, !tbaa !66
  %1132 = load i32, ptr %1131, align 8
  %1133 = and i32 %1132, 2048
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1167, label %1135, !prof !222

1135:                                             ; preds = %1126
  %1136 = and i32 %1132, -2049
  store i32 %1136, ptr %1131, align 8
  %1137 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1147, label %1139, !prof !223

1139:                                             ; preds = %1135
  %1140 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %1141 = and i32 %1140, 8
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1147, label %1143

1143:                                             ; preds = %1139
  %1144 = call i64 @fwrite(ptr nonnull @.str.17, i64 40, i64 1, ptr nonnull %1137)
  %1145 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %1146 = load i32, ptr @dump_flags, align 4, !tbaa !81
  call void @print_gimple_stmt(ptr noundef %1145, ptr noundef nonnull %1131, i32 noundef 0, i32 noundef %1146) #19
  br label %1147

1147:                                             ; preds = %1143, %1139, %1135
  %1148 = load i32, ptr %1131, align 8
  %1149 = and i32 %1148, 255
  %1150 = icmp eq i32 %1149, 16
  br i1 %1150, label %1166, label %1151, !prof !224

1151:                                             ; preds = %1147
  %1152 = getelementptr inbounds %struct.gimple_statement_base, ptr %1131, i64 0, i32 4
  %1153 = load ptr, ptr %1152, align 8, !tbaa !77
  %1154 = load ptr, ptr @executable_blocks, align 8, !tbaa !66
  %1155 = getelementptr inbounds %struct.basic_block_def, ptr %1153, i64 0, i32 9
  %1156 = load i32, ptr %1155, align 8, !tbaa !154
  %1157 = lshr i32 %1156, 6
  %1158 = zext nneg i32 %1157 to i64
  %1159 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1154, i64 0, i32 3, i64 %1158
  %1160 = load i64, ptr %1159, align 8, !tbaa !100
  %1161 = and i32 %1156, 63
  %1162 = zext nneg i32 %1161 to i64
  %1163 = shl nuw i64 1, %1162
  %1164 = and i64 %1163, %1160
  %1165 = icmp eq i64 %1164, 0
  br i1 %1165, label %1167, label %1166, !prof !225

1166:                                             ; preds = %1151, %1147
  call fastcc void @simulate_stmt(ptr noundef nonnull %1131)
  br label %1167

1167:                                             ; preds = %1166, %1151, %1126
  br label %1118, !llvm.loop !226

1168:                                             ; preds = %1123, %1217
  %1169 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1173, label %1171, !prof !220

1171:                                             ; preds = %1168
  %1172 = load i32, ptr %1169, align 8, !tbaa !151
  br label %1173

1173:                                             ; preds = %1171, %1168
  %1174 = phi i32 [ %1172, %1171 ], [ 0, %1168 ]
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %161, label %1176, !prof !221, !llvm.loop !227

1176:                                             ; preds = %1173
  %1177 = load i32, ptr %1169, align 8, !tbaa !151
  %1178 = add i32 %1177, -1
  store i32 %1178, ptr %1169, align 8, !tbaa !151
  %1179 = zext i32 %1178 to i64
  %1180 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1169, i64 0, i32 2, i64 %1179
  %1181 = load ptr, ptr %1180, align 8, !tbaa !66
  %1182 = load i32, ptr %1181, align 8
  %1183 = and i32 %1182, 2048
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1217, label %1185, !prof !222

1185:                                             ; preds = %1176
  %1186 = and i32 %1182, -2049
  store i32 %1186, ptr %1181, align 8
  %1187 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1197, label %1189, !prof !223

1189:                                             ; preds = %1185
  %1190 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %1191 = and i32 %1190, 8
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1197, label %1193

1193:                                             ; preds = %1189
  %1194 = call i64 @fwrite(ptr nonnull @.str.17, i64 40, i64 1, ptr nonnull %1187)
  %1195 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %1196 = load i32, ptr @dump_flags, align 4, !tbaa !81
  call void @print_gimple_stmt(ptr noundef %1195, ptr noundef nonnull %1181, i32 noundef 0, i32 noundef %1196) #19
  br label %1197

1197:                                             ; preds = %1193, %1189, %1185
  %1198 = load i32, ptr %1181, align 8
  %1199 = and i32 %1198, 255
  %1200 = icmp eq i32 %1199, 16
  br i1 %1200, label %1216, label %1201, !prof !224

1201:                                             ; preds = %1197
  %1202 = getelementptr inbounds %struct.gimple_statement_base, ptr %1181, i64 0, i32 4
  %1203 = load ptr, ptr %1202, align 8, !tbaa !77
  %1204 = load ptr, ptr @executable_blocks, align 8, !tbaa !66
  %1205 = getelementptr inbounds %struct.basic_block_def, ptr %1203, i64 0, i32 9
  %1206 = load i32, ptr %1205, align 8, !tbaa !154
  %1207 = lshr i32 %1206, 6
  %1208 = zext nneg i32 %1207 to i64
  %1209 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1204, i64 0, i32 3, i64 %1208
  %1210 = load i64, ptr %1209, align 8, !tbaa !100
  %1211 = and i32 %1206, 63
  %1212 = zext nneg i32 %1211 to i64
  %1213 = shl nuw i64 1, %1212
  %1214 = and i64 %1213, %1210
  %1215 = icmp eq i64 %1214, 0
  br i1 %1215, label %1217, label %1216, !prof !225

1216:                                             ; preds = %1201, %1197
  call fastcc void @simulate_stmt(ptr noundef nonnull %1181)
  br label %1217

1217:                                             ; preds = %1216, %1201, %1176
  br label %1168, !llvm.loop !226

1218:                                             ; preds = %177
  br i1 %166, label %1220, label %1219, !prof !110

1219:                                             ; preds = %1218
  call void @ggc_free(ptr noundef nonnull %165) #19
  br label %1220

1220:                                             ; preds = %1219, %1218
  store ptr null, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %1221 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1224, label %1223, !prof !110

1223:                                             ; preds = %1220
  call void @ggc_free(ptr noundef nonnull %1221) #19
  br label %1224

1224:                                             ; preds = %1223, %1220
  store ptr null, ptr @varying_ssa_edges, align 8, !tbaa !66
  %1225 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1228, label %1227, !prof !110

1227:                                             ; preds = %1224
  call void @free(ptr noundef %1225)
  br label %1228

1228:                                             ; preds = %1224, %1227
  store ptr null, ptr @cfg_blocks, align 8, !tbaa !66
  %1229 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %1230 = load ptr, ptr %1229, align 8, !tbaa !155
  call void @free(ptr noundef %1230)
  call void @free(ptr noundef %1229)
  %1231 = load ptr, ptr @executable_blocks, align 8, !tbaa !66
  %1232 = load ptr, ptr %1231, align 8, !tbaa !155
  call void @free(ptr noundef %1232)
  call void @free(ptr noundef %1231)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @stmt_makes_single_store(ptr noundef %0) local_unnamed_addr #10 !prof !65 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %27 [
    i8 6, label %4
    i8 8, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = and i32 %2, 254
  %6 = add nsw i32 %5, -10
  %7 = icmp ult i32 %6, -4
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 524288
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = and i64 %16, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp eq i32 %22, 4
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %4, %8, %1, %15, %24, %19, %12
  %28 = phi i8 [ 0, %12 ], [ 0, %15 ], [ 1, %19 ], [ %26, %24 ], [ 0, %1 ], [ 0, %8 ], [ 0, %4 ]
  ret i8 %28
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @substitute_and_fold(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !105 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %447, !prof !109

10:                                               ; preds = %2
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !109

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 45, i64 1, ptr nonnull %11)
  br label %19

19:                                               ; preds = %17, %13, %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @prop_stats, i8 0, i64 32, i1 false)
  %20 = load ptr, ptr @cfun, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !228
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !158
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %433, label %29, !prof !115

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, ptr %4, i64 8
  %31 = getelementptr inbounds i8, ptr %4, i64 16
  %32 = icmp eq ptr %0, null
  br label %43

33:                                               ; preds = %430, %164
  %34 = phi i8 [ %45, %164 ], [ %431, %430 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !228
  %37 = load ptr, ptr @cfun, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !158
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %433, label %43, !prof !229, !llvm.loop !230

43:                                               ; preds = %29, %33
  %44 = phi ptr [ %25, %29 ], [ %36, %33 ]
  %45 = phi i8 [ 0, %29 ], [ %34, %33 ]
  br i1 %7, label %46, label %147, !prof !231

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %44) #19
  %47 = load ptr, ptr %3, align 8, !tbaa.struct !131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %147, label %49, !prof !232

49:                                               ; preds = %46, %143
  %50 = phi ptr [ %145, %143 ], [ %47, %46 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !98
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54, !prof !233

54:                                               ; preds = %49
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr nonnull %52)
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !66
  call void @print_gimple_stmt(ptr noundef %60, ptr noundef %51, i32 noundef 0, i32 noundef 2) #19
  br label %61

61:                                               ; preds = %58, %54, %49
  %62 = getelementptr inbounds %struct.gimple_statement_phi, ptr %51, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !77
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %126, label %65, !prof !234

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gimple_statement_phi, ptr %51, i64 0, i32 1
  br label %67

67:                                               ; preds = %65, %120
  %68 = phi i64 [ 0, %65 ], [ %122, %120 ]
  %69 = phi i8 [ 0, %65 ], [ %121, %120 ]
  %70 = trunc i64 %68 to i32
  %71 = load i32, ptr %66, align 8, !tbaa !77
  %72 = icmp ult i32 %71, %70
  br i1 %72, label %73, label %74, !prof !235

73:                                               ; preds = %67
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %74

74:                                               ; preds = %73, %67
  %75 = getelementptr inbounds %struct.gimple_statement_phi, ptr %51, i64 0, i32 4, i64 %68, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !236
  %77 = load ptr, ptr %76, align 8, !tbaa !66
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %81, label %120, !prof !237

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %77, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !77
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 %84, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !238
  %87 = icmp eq ptr %86, null
  %88 = icmp eq ptr %86, %77
  %89 = or i1 %87, %88
  br i1 %89, label %120, label %90, !prof !240

90:                                               ; preds = %81
  %91 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %77, ptr noundef nonnull %86) #19
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %120, label %93, !prof !241

93:                                               ; preds = %90
  %94 = load i64, ptr %86, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 141
  %97 = select i1 %96, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), ptr @prop_stats, !prof !242
  %98 = load i64, ptr %97, align 8, !tbaa !100
  %99 = add nsw i64 %98, 1
  store i64 %99, ptr %97, align 8, !tbaa !100
  %100 = load i32, ptr %66, align 8, !tbaa !77
  %101 = icmp ult i32 %100, %70
  br i1 %101, label %102, label %103, !prof !241

102:                                              ; preds = %93
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %103

103:                                              ; preds = %102, %93
  %104 = getelementptr inbounds %struct.gimple_statement_phi, ptr %51, i64 0, i32 4, i64 %68
  call void @propagate_value(ptr noundef nonnull %104, ptr noundef nonnull %86) #19
  %105 = load i64, ptr %86, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 141
  br i1 %107, label %108, label %120, !prof !242

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.gimple_statement_base, ptr %51, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !77
  %111 = load ptr, ptr %110, align 8, !tbaa !186, !nonnull !114, !noundef !114
  %112 = getelementptr inbounds %struct.VEC_edge_base, ptr %111, i64 0, i32 2, i64 %68
  %113 = load ptr, ptr %112, align 8, !tbaa !66
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !139
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118, !prof !243

118:                                              ; preds = %108
  %119 = or i64 %105, 4194304
  store i64 %119, ptr %86, align 8
  br label %120

120:                                              ; preds = %118, %108, %103, %90, %81, %74
  %121 = phi i8 [ %69, %74 ], [ 1, %118 ], [ 1, %108 ], [ 1, %103 ], [ %69, %90 ], [ %69, %81 ]
  %122 = add nuw nsw i64 %68, 1
  %123 = load i32, ptr %62, align 4, !tbaa !77
  %124 = zext i32 %123 to i64
  %125 = icmp ult i64 %122, %124
  br i1 %125, label %67, label %126, !prof !244, !llvm.loop !245

126:                                              ; preds = %120, %61
  %127 = phi i8 [ 0, %61 ], [ %121, %120 ]
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %129 = icmp eq ptr %128, null
  br i1 %129, label %143, label %130, !prof !233

130:                                              ; preds = %126
  %131 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = icmp eq i8 %127, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %134
  %137 = call i64 @fwrite(ptr nonnull @.str.19, i64 20, i64 1, ptr nonnull %128)
  br label %143

138:                                              ; preds = %134
  %139 = call i64 @fwrite(ptr nonnull @.str.6, i64 13, i64 1, ptr nonnull %128)
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !66
  call void @print_gimple_stmt(ptr noundef %140, ptr noundef %51, i32 noundef 0, i32 noundef 2) #19
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %142 = call i32 @fputc(i32 10, ptr %141)
  br label %143

143:                                              ; preds = %126, %130, %136, %138
  %144 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %50, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !128
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %49, !prof !233, !llvm.loop !246

147:                                              ; preds = %143, %46, %43
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 13
  %149 = load i32, ptr %148, align 8, !tbaa !116, !noalias !247
  %150 = and i32 %149, 512
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158, !prof !250

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !77, !noalias !247
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156, !prof !251

156:                                              ; preds = %152
  %157 = load ptr, ptr %154, align 8, !tbaa !123, !noalias !247
  br label %158

158:                                              ; preds = %156, %152, %147
  %159 = phi ptr [ %157, %156 ], [ null, %152 ], [ null, %147 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161, !prof !251

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.gimple_seq_d, ptr %159, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !252, !noalias !247
  br label %164

164:                                              ; preds = %158, %161
  %165 = phi ptr [ %163, %161 ], [ null, %158 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %33, label %167, !prof !253

167:                                              ; preds = %164, %430
  %168 = phi i8 [ %431, %430 ], [ %45, %164 ]
  %169 = phi ptr [ %174, %430 ], [ %165, %164 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !98
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  store ptr %169, ptr %4, align 8, !tbaa.struct !131
  store ptr %159, ptr %30, align 8, !tbaa.struct !254
  store ptr %44, ptr %31, align 8, !tbaa.struct !255
  %173 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %169, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !256
  %175 = icmp eq i32 %172, 6
  br i1 %175, label %176, label %196, !prof !257

176:                                              ; preds = %167
  %177 = load i32, ptr %170, align 8
  %178 = and i32 %177, 255
  %179 = add nsw i32 %178, -1
  %180 = icmp ult i32 %179, 9
  call void @llvm.assume(i1 %180)
  %181 = zext nneg i32 %178 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !81
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !100
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189, !prof !258

188:                                              ; preds = %176
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %189

189:                                              ; preds = %188, %176
  %190 = getelementptr inbounds i8, ptr %170, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !66
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 148
  br i1 %195, label %430, label %196, !prof !259, !llvm.loop !260

196:                                              ; preds = %189, %167
  %197 = call ptr @gimple_get_lhs(ptr noundef nonnull %170) #19
  %198 = icmp eq ptr %197, null
  br i1 %198, label %239, label %199, !prof !261

199:                                              ; preds = %196
  %200 = call ptr @gimple_get_lhs(ptr noundef nonnull %170) #19
  %201 = load i64, ptr %200, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %239, !prof !262

204:                                              ; preds = %199
  %205 = call ptr @gimple_get_lhs(ptr noundef nonnull %170) #19
  %206 = getelementptr inbounds %struct.tree_ssa_name, ptr %205, i64 0, i32 5
  %207 = getelementptr inbounds %struct.tree_ssa_name, ptr %205, i64 0, i32 5, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !166
  %209 = icmp eq ptr %206, %208
  br i1 %209, label %215, label %210, !prof !263

210:                                              ; preds = %204
  %211 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !81
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213, !prof !264

213:                                              ; preds = %210
  %214 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %206) #19
  br label %215

215:                                              ; preds = %204, %210, %213
  %216 = phi i8 [ %214, %213 ], [ 1, %204 ], [ 0, %210 ]
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %239, label %218, !prof !265

218:                                              ; preds = %215
  %219 = call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %170) #19
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %239, !prof !266

221:                                              ; preds = %218
  %222 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %170) #19
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %239, !prof !267

224:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %225 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %226 = icmp eq ptr %225, null
  br i1 %226, label %236, label %227, !prof !268

227:                                              ; preds = %224
  %228 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %229 = and i32 %228, 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %227
  %232 = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr nonnull %225)
  %233 = load ptr, ptr @dump_file, align 8, !tbaa !66
  call void @print_gimple_stmt(ptr noundef %233, ptr noundef nonnull %170, i32 noundef 0, i32 noundef 0) #19
  %234 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %235 = call i32 @fputc(i32 10, ptr %234)
  br label %236

236:                                              ; preds = %231, %227, %224
  %237 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !269
  %238 = add nsw i64 %237, 1
  store i64 %238, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %170) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #19
  call void @release_defs(ptr noundef nonnull %170) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %430

239:                                              ; preds = %221, %218, %215, %199, %196
  %240 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %241 = icmp eq ptr %240, null
  br i1 %241, label %249, label %242, !prof !271

242:                                              ; preds = %239
  %243 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %244 = and i32 %243, 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = call i64 @fwrite(ptr nonnull @.str.5, i64 19, i64 1, ptr nonnull %240)
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !66
  call void @print_gimple_stmt(ptr noundef %248, ptr noundef nonnull %170, i32 noundef 0, i32 noundef 2) #19
  br label %249

249:                                              ; preds = %246, %242, %239
  br i1 %8, label %250, label %256, !prof !272

250:                                              ; preds = %249
  %251 = call zeroext i8 %1(ptr noundef nonnull %4) #19, !prof !273
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %256, label %253, !prof !274

253:                                              ; preds = %250
  %254 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !275
  %255 = add nsw i64 %254, 1
  store i64 %255, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !275
  br label %256

256:                                              ; preds = %253, %250, %249
  %257 = phi i1 [ true, %253 ], [ false, %250 ], [ false, %249 ]
  %258 = phi i8 [ 1, %253 ], [ 0, %250 ], [ 0, %249 ]
  %259 = or i1 %32, %257
  br i1 %259, label %335, label %260, !prof !276

260:                                              ; preds = %256
  %261 = load i32, ptr %170, align 8
  %262 = and i32 %261, 255
  %263 = add nsw i32 %262, -10
  %264 = icmp ult i32 %263, -9
  br i1 %264, label %268, label %265, !prof !277

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %170, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !77
  br label %268

268:                                              ; preds = %265, %260
  %269 = phi ptr [ %267, %265 ], [ null, %260 ]
  %270 = icmp eq ptr %269, null
  br i1 %270, label %281, label %271, !prof !278

271:                                              ; preds = %268
  %272 = and i32 %261, 254
  %273 = add nsw i32 %272, -10
  %274 = icmp ult i32 %273, -4
  br i1 %274, label %281, label %275, !prof !279

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %170, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !77
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279, !prof !280

279:                                              ; preds = %275
  %280 = load ptr, ptr %269, align 8, !tbaa !281
  br label %281

281:                                              ; preds = %279, %275, %271, %268
  %282 = phi ptr [ %269, %268 ], [ %269, %271 ], [ %269, %275 ], [ %280, %279 ]
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %284, !prof !283

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.use_optype_d, ptr %282, i64 0, i32 1
  %286 = load ptr, ptr %282, align 8, !tbaa !281
  br label %287

287:                                              ; preds = %284, %281
  %288 = phi ptr [ %286, %284 ], [ %282, %281 ]
  %289 = phi i8 [ 0, %284 ], [ 1, %281 ]
  %290 = phi ptr [ %285, %284 ], [ null, %281 ]
  br i1 %283, label %335, label %291, !prof !284

291:                                              ; preds = %287, %330
  %292 = phi i8 [ %325, %330 ], [ 0, %287 ]
  %293 = phi ptr [ %333, %330 ], [ %290, %287 ]
  %294 = phi i8 [ %332, %330 ], [ %289, %287 ]
  %295 = phi ptr [ %331, %330 ], [ %288, %287 ]
  %296 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %293, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !236
  %298 = load ptr, ptr %297, align 8, !tbaa !66
  %299 = getelementptr inbounds %struct.tree_ssa_name, ptr %298, i64 0, i32 3
  %300 = load i32, ptr %299, align 8, !tbaa !77
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 %301, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !238
  %304 = icmp eq ptr %303, %298
  %305 = icmp eq ptr %303, null
  %306 = or i1 %304, %305
  br i1 %306, label %324, label %307, !prof !285

307:                                              ; preds = %291
  %308 = load i32, ptr %170, align 8
  %309 = and i32 %308, 255
  %310 = icmp eq i32 %309, 7
  br i1 %310, label %311, label %314, !prof !286

311:                                              ; preds = %307
  %312 = call zeroext i8 @may_propagate_copy_into_asm(ptr noundef %298) #19
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %324, label %314

314:                                              ; preds = %311, %307
  %315 = call zeroext i8 @may_propagate_copy(ptr noundef %298, ptr noundef %303) #19
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %324, label %317, !prof !286

317:                                              ; preds = %314
  %318 = load i64, ptr %303, align 8
  %319 = and i64 %318, 65535
  %320 = icmp eq i64 %319, 141
  %321 = select i1 %320, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), ptr @prop_stats, !prof !287
  %322 = load i64, ptr %321, align 8, !tbaa !100
  %323 = add nsw i64 %322, 1
  store i64 %323, ptr %321, align 8, !tbaa !100
  call void @propagate_value(ptr noundef %293, ptr noundef nonnull %303) #19
  br label %324

324:                                              ; preds = %311, %317, %314, %291
  %325 = phi i8 [ 1, %317 ], [ %292, %291 ], [ %292, %314 ], [ %292, %311 ]
  %326 = icmp eq ptr %295, null
  br i1 %326, label %330, label %327, !prof !288

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.use_optype_d, ptr %295, i64 0, i32 1
  %329 = load ptr, ptr %295, align 8, !tbaa !281
  br label %330

330:                                              ; preds = %324, %327
  %331 = phi ptr [ %329, %327 ], [ %295, %324 ]
  %332 = phi i8 [ %294, %327 ], [ 1, %324 ]
  %333 = phi ptr [ %328, %327 ], [ null, %324 ]
  %334 = icmp eq i8 %332, 0
  br i1 %334, label %291, label %335, !prof !289, !llvm.loop !290

335:                                              ; preds = %330, %287, %256
  %336 = phi i8 [ %258, %256 ], [ 0, %287 ], [ %325, %330 ]
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %413, label %338, !prof !291

338:                                              ; preds = %335
  %339 = call zeroext i8 @fold_stmt(ptr noundef nonnull %4) #19
  %340 = load ptr, ptr %4, align 8
  %341 = load ptr, ptr %340, align 8, !tbaa !98
  %342 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %170, ptr noundef %341) #19
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %346, label %344, !prof !292

344:                                              ; preds = %338
  %345 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %44) #19
  br label %346

346:                                              ; preds = %344, %338
  %347 = load i32, ptr %341, align 8
  %348 = and i32 %347, 255
  %349 = icmp eq i32 %348, 6
  br i1 %349, label %350, label %402, !prof !293

350:                                              ; preds = %346
  %351 = lshr i32 %347, 16
  %352 = zext nneg i32 %351 to i64
  %353 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !77
  %355 = icmp eq i8 %354, 3
  br i1 %355, label %356, label %372, !prof !294

356:                                              ; preds = %350
  %357 = zext nneg i32 %348 to i64
  %358 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !81
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %360
  %362 = load i64, ptr %361, align 8, !tbaa !100
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %365, !prof !295

364:                                              ; preds = %356
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %365

365:                                              ; preds = %364, %356
  %366 = getelementptr inbounds i8, ptr %341, i64 %362
  %367 = getelementptr inbounds ptr, ptr %366, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !66
  %369 = load i64, ptr %368, align 8
  %370 = trunc i64 %369 to i32
  %371 = and i32 %370, 65535
  br label %372

372:                                              ; preds = %350, %365
  %373 = phi i32 [ %371, %365 ], [ %351, %350 ]
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !77
  %377 = icmp eq i8 %376, 3
  br i1 %377, label %378, label %402, !prof !294

378:                                              ; preds = %372
  %379 = load i32, ptr %341, align 8
  %380 = and i32 %379, 255
  %381 = add nsw i32 %380, -10
  %382 = icmp ult i32 %381, -9
  br i1 %382, label %396, label %383, !prof !295

383:                                              ; preds = %378
  %384 = zext nneg i32 %380 to i64
  %385 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !81
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %387
  %389 = load i64, ptr %388, align 8, !tbaa !100
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %392, !prof !295

391:                                              ; preds = %383
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %392

392:                                              ; preds = %391, %383
  %393 = getelementptr inbounds i8, ptr %341, i64 %389
  %394 = getelementptr inbounds ptr, ptr %393, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !66
  br label %396

396:                                              ; preds = %378, %392
  %397 = phi ptr [ %395, %392 ], [ null, %378 ]
  %398 = load i64, ptr %397, align 8
  %399 = and i64 %398, 65535
  %400 = icmp eq i64 %399, 121
  br i1 %400, label %401, label %402, !prof !296

401:                                              ; preds = %396
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %397) #19
  br label %402

402:                                              ; preds = %396, %401, %372, %346
  %403 = load i32, ptr %341, align 8
  %404 = and i32 %403, 255
  %405 = add nsw i32 %404, -10
  %406 = icmp ult i32 %405, -9
  br i1 %406, label %408, label %407, !prof !297

407:                                              ; preds = %402
  call void @gimple_set_modified(ptr noundef nonnull %341, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %341) #19
  br label %408

408:                                              ; preds = %402, %407
  %409 = load i32, ptr %341, align 8
  %410 = and i32 %409, 255
  %411 = icmp eq i32 %410, 2
  %412 = select i1 %411, i8 %168, i8 1, !prof !297
  br label %413

413:                                              ; preds = %408, %335
  %414 = phi ptr [ %341, %408 ], [ %170, %335 ]
  %415 = phi i8 [ %412, %408 ], [ %168, %335 ]
  %416 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %417 = icmp eq ptr %416, null
  br i1 %417, label %430, label %418, !prof !271

418:                                              ; preds = %413
  %419 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %420 = and i32 %419, 8
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %430, label %422

422:                                              ; preds = %418
  br i1 %337, label %428, label %423

423:                                              ; preds = %422
  %424 = call i64 @fwrite(ptr nonnull @.str.6, i64 13, i64 1, ptr nonnull %416)
  %425 = load ptr, ptr @dump_file, align 8, !tbaa !66
  call void @print_gimple_stmt(ptr noundef %425, ptr noundef nonnull %414, i32 noundef 0, i32 noundef 2) #19
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %427 = call i32 @fputc(i32 10, ptr %426)
  br label %430

428:                                              ; preds = %422
  %429 = call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr nonnull %416)
  br label %430

430:                                              ; preds = %413, %418, %428, %423, %189, %236
  %431 = phi i8 [ %168, %236 ], [ %168, %189 ], [ %415, %423 ], [ %415, %428 ], [ %415, %418 ], [ %415, %413 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %432 = icmp eq ptr %174, null
  br i1 %432, label %33, label %167, !prof !298

433:                                              ; preds = %33, %19
  %434 = phi i8 [ 0, %19 ], [ %34, %33 ]
  %435 = phi ptr [ %20, %19 ], [ %37, %33 ]
  %436 = load i64, ptr @prop_stats, align 8, !tbaa !299
  %437 = trunc i64 %436 to i32
  call void @statistics_counter_event(ptr noundef %435, ptr noundef nonnull @.str.8, i32 noundef %437) #19
  %438 = load ptr, ptr @cfun, align 8, !tbaa !66
  %439 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), align 8, !tbaa !300
  %440 = trunc i64 %439 to i32
  call void @statistics_counter_event(ptr noundef %438, ptr noundef nonnull @.str.9, i32 noundef %440) #19
  %441 = load ptr, ptr @cfun, align 8, !tbaa !66
  %442 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !275
  %443 = trunc i64 %442 to i32
  call void @statistics_counter_event(ptr noundef %441, ptr noundef nonnull @.str.10, i32 noundef %443) #19
  %444 = load ptr, ptr @cfun, align 8, !tbaa !66
  %445 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !269
  %446 = trunc i64 %445 to i32
  call void @statistics_counter_event(ptr noundef %444, ptr noundef nonnull @.str.11, i32 noundef %446) #19
  br label %447

447:                                              ; preds = %2, %433
  %448 = phi i8 [ %434, %433 ], [ 0, %2 ]
  ret i8 %448
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_VEC_gimple_gc(ptr noundef) #3

declare void @gt_pch_nx_VEC_gimple_gc(ptr noundef) #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @dump_immediate_uses(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_control_edge(ptr nocapture noundef %0) unnamed_addr #15 !prof !301 !PGOFuncName !302 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  %4 = load ptr, ptr @cfun, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %169, label %10, !prof !179

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !139
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %169, !prof !180

15:                                               ; preds = %10
  %16 = or disjoint i32 %12, 4096
  store i32 %16, ptr %11, align 8, !tbaa !139
  %17 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !154
  %20 = lshr i32 %19, 6
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !100
  %24 = and i32 %19, 63
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %23
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %169, !prof !181

29:                                               ; preds = %15
  %30 = load ptr, ptr %6, align 8, !tbaa !146
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %32, label %33, !prof !153

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #19
  br label %33

33:                                               ; preds = %29, %32
  %34 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %35 = load i32, ptr %18, align 8, !tbaa !154
  %36 = lshr i32 %35, 6
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !100
  %40 = and i32 %35, 63
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %42, %39
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45, !prof !157

45:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #19
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !182

49:                                               ; preds = %46
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !81
  br label %120

50:                                               ; preds = %46
  %51 = add i32 %47, 1
  store i32 %51, ptr @cfg_blocks_num, align 4, !tbaa !81
  %52 = load ptr, ptr @cfg_blocks, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !183

54:                                               ; preds = %50
  %55 = load i32, ptr %52, align 8, !tbaa !111
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ 0, %50 ]
  %58 = icmp ugt i32 %51, %57
  br i1 %58, label %59, label %84, !prof !184

59:                                               ; preds = %56
  br i1 %53, label %62, label %60, !prof !185

60:                                               ; preds = %59
  %61 = load i32, ptr %52, align 8, !tbaa !111
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ %61, %60 ], [ 0, %59 ]
  store i32 %63, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  %64 = shl nsw i32 %63, 1
  br i1 %53, label %67, label %65, !prof !185

65:                                               ; preds = %62
  %66 = load i32, ptr %52, align 8, !tbaa !111
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %66, %65 ], [ 0, %62 ]
  %69 = sub nsw i32 %64, %68
  br i1 %53, label %76, label %70, !prof !185

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %52, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !113
  %73 = load i32, ptr %52, align 8, !tbaa !111
  %74 = sub i32 %72, %73
  %75 = icmp uge i32 %74, %69
  br label %78

76:                                               ; preds = %67
  %77 = icmp eq i32 %68, %64
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi i1 [ %75, %70 ], [ %77, %76 ]
  br i1 %79, label %82, label %80, !prof !185

80:                                               ; preds = %78
  %81 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %52, i32 noundef %69) #19
  store ptr %81, ptr @cfg_blocks, align 8, !tbaa !66
  br label %82

82:                                               ; preds = %80, %78
  %83 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66, !nonnull !114, !noundef !114
  store i32 %64, ptr %83, align 8, !tbaa !111
  br label %120

84:                                               ; preds = %56
  %85 = load ptr, ptr %3, align 8, !tbaa !186
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !187

87:                                               ; preds = %84
  %88 = load i32, ptr %85, align 8, !tbaa !136
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %52, i64 0, i32 2, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !66
  %95 = load ptr, ptr %94, align 8, !tbaa !186
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97, !prof !187

97:                                               ; preds = %89
  %98 = load i32, ptr %95, align 8, !tbaa !136
  br label %99

99:                                               ; preds = %97, %89
  %100 = phi i32 [ %98, %97 ], [ 0, %89 ]
  %101 = icmp ult i32 %90, %100
  br i1 %101, label %110, label %102, !prof !188

102:                                              ; preds = %99
  %103 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !81
  %104 = add nsw i32 %103, 1
  br i1 %53, label %107, label %105, !prof !189

105:                                              ; preds = %102
  %106 = load i32, ptr %52, align 8, !tbaa !111
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %106, %105 ], [ 0, %102 ]
  %109 = urem i32 %104, %108
  store i32 %109, ptr @cfg_blocks_tail, align 4, !tbaa !81
  br label %120

110:                                              ; preds = %99
  %111 = icmp eq i32 %91, 0
  br i1 %111, label %112, label %117, !prof !190

112:                                              ; preds = %110
  br i1 %53, label %115, label %113, !prof !191

113:                                              ; preds = %112
  %114 = load i32, ptr %52, align 8, !tbaa !111
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi i32 [ %114, %113 ], [ 0, %112 ]
  store i32 %116, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %119 = add nsw i32 %118, -1
  store i32 %119, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %120

120:                                              ; preds = %117, %107, %82, %49
  %121 = phi i1 [ true, %49 ], [ true, %82 ], [ true, %107 ], [ false, %117 ]
  %122 = load ptr, ptr @cfg_blocks, align 8
  %123 = load i32, ptr @cfg_blocks_head, align 4
  %124 = load i32, ptr @cfg_blocks_tail, align 4
  %125 = select i1 %121, i32 %124, i32 %123, !prof !192
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %122, i64 0, i32 2, i64 %126
  store ptr %3, ptr %127, align 8, !tbaa !66
  %128 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %129 = load i32, ptr %18, align 8, !tbaa !154
  %130 = load ptr, ptr %128, align 8, !tbaa !155
  %131 = icmp eq ptr %130, null
  br i1 %131, label %146, label %132, !prof !157

132:                                              ; preds = %120
  %133 = lshr i32 %129, 6
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds %struct.simple_bitmap_def, ptr %128, i64 0, i32 3, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !100
  %137 = and i32 %129, 63
  %138 = zext nneg i32 %137 to i64
  %139 = shl nuw i64 1, %138
  %140 = and i64 %136, %139
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, ptr %130, i64 %134
  %144 = load i8, ptr %143, align 1, !tbaa !77
  %145 = add i8 %144, 1
  store i8 %145, ptr %143, align 1, !tbaa !77
  br label %146

146:                                              ; preds = %120, %132, %142
  %147 = and i32 %129, 63
  %148 = zext nneg i32 %147 to i64
  %149 = shl nuw i64 1, %148
  %150 = lshr i32 %129, 6
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds %struct.simple_bitmap_def, ptr %128, i64 0, i32 3, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !100
  %154 = or i64 %153, %149
  store i64 %154, ptr %152, align 8, !tbaa !100
  %155 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %156 = icmp eq ptr %155, null
  br i1 %156, label %169, label %157, !prof !157

157:                                              ; preds = %146
  %158 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %159 = and i32 %158, 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %0, align 8, !tbaa !193
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %162, i64 0, i32 9
  %164 = load i32, ptr %163, align 8, !tbaa !154
  %165 = load ptr, ptr %2, align 8, !tbaa !178
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 9
  %167 = load i32, ptr %166, align 8, !tbaa !154
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %155, ptr noundef nonnull @.str.15, i32 noundef %164, i32 noundef %167)
  br label %169

169:                                              ; preds = %146, %157, %161, %15, %10, %1
  ret void
}

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @simulate_stmt(ptr noundef %0) unnamed_addr #15 !prof !303 !PGOFuncName !304 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !66
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %303, label %7, !prof !160

7:                                                ; preds = %1
  %8 = and i32 %4, 255
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %15, !prof !161

10:                                               ; preds = %7
  %11 = load ptr, ptr @ssa_prop_visit_phi, align 8, !tbaa !66
  %12 = tail call i32 %11(ptr noundef nonnull %0) #19, !prof !305
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  store ptr %14, ptr %3, align 8, !tbaa !66
  br label %18

15:                                               ; preds = %7
  %16 = load ptr, ptr @ssa_prop_visit_stmt, align 8, !tbaa !66
  %17 = call i32 %16(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !prof !306
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ %12, %10 ], [ %17, %15 ]
  switch i32 %19, label %303 [
    i32 2, label %20
    i32 1, label %261
  ], !prof !164

20:                                               ; preds = %18
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, -513
  store i32 %22, ptr %0, align 8
  %23 = load ptr, ptr %3, align 8, !tbaa !66
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25, !prof !165

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 5
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 5, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !166
  %29 = icmp eq ptr %28, %26
  br i1 %29, label %60, label %30, !prof !168

30:                                               ; preds = %25, %55
  %31 = phi ptr [ %59, %55 ], [ %28, %25 ]
  %32 = phi ptr [ %57, %55 ], [ %28, %25 ]
  %33 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 2560
  %37 = icmp eq i32 %36, 512
  br i1 %37, label %38, label %55, !prof !169

38:                                               ; preds = %30
  %39 = or disjoint i32 %35, 2048
  store i32 %39, ptr %34, align 8
  %40 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42, !prof !170

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.VEC_gimple_base, ptr %40, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !171
  %45 = load i32, ptr %40, align 8, !tbaa !151
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49, !prof !170

47:                                               ; preds = %42, %38
  %48 = call ptr @vec_gc_p_reserve(ptr noundef %40, i32 noundef 1) #19
  store ptr %48, ptr @varying_ssa_edges, align 8, !tbaa !66
  br label %49

49:                                               ; preds = %47, %42
  %50 = load ptr, ptr @varying_ssa_edges, align 8, !tbaa !66
  %51 = load i32, ptr %50, align 8, !tbaa !151
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !151
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds %struct.VEC_gimple_base, ptr %50, i64 0, i32 2, i64 %53
  store ptr %34, ptr %54, align 8, !tbaa !66
  br label %55

55:                                               ; preds = %49, %30
  %56 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %32, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !166
  %58 = icmp eq ptr %57, %26
  %59 = select i1 %58, ptr null, ptr %57, !prof !172
  br i1 %58, label %60, label %30, !prof !173, !llvm.loop !174

60:                                               ; preds = %55, %25, %20
  %61 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %0) #19
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %303, label %63, !prof !175

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !77
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 1
  br label %67

67:                                               ; preds = %259, %63
  %68 = phi i32 [ 0, %63 ], [ %260, %259 ]
  %69 = load ptr, ptr %66, align 8, !tbaa !66
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71, !prof !176

71:                                               ; preds = %67
  %72 = load i32, ptr %69, align 8, !tbaa !136
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i32 [ %72, %71 ], [ 0, %67 ]
  %75 = icmp eq i32 %74, %68
  br i1 %75, label %80, label %76, !prof !177

76:                                               ; preds = %73
  %77 = zext i32 %68 to i64
  %78 = getelementptr inbounds %struct.VEC_edge_base, ptr %69, i64 0, i32 2, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !66
  br label %80

80:                                               ; preds = %73, %76
  %81 = phi ptr [ %79, %76 ], [ null, %73 ]
  br i1 %75, label %303, label %82, !prof !177

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !178
  %85 = load ptr, ptr @cfun, align 8, !tbaa !66
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !106
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !158
  %90 = icmp eq ptr %84, %89
  br i1 %90, label %250, label %91, !prof !179

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !139
  %94 = and i32 %93, 4096
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %250, !prof !180

96:                                               ; preds = %91
  %97 = or disjoint i32 %93, 4096
  store i32 %97, ptr %92, align 8, !tbaa !139
  %98 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !154
  %101 = lshr i32 %100, 6
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds %struct.simple_bitmap_def, ptr %98, i64 0, i32 3, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !100
  %105 = and i32 %100, 63
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = and i64 %107, %104
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %250, !prof !181

110:                                              ; preds = %96
  %111 = load ptr, ptr %87, align 8, !tbaa !146
  %112 = icmp eq ptr %111, %84
  br i1 %112, label %113, label %114, !prof !153

113:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #19
  br label %114

114:                                              ; preds = %113, %110
  %115 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %116 = load i32, ptr %99, align 8, !tbaa !154
  %117 = lshr i32 %116, 6
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds %struct.simple_bitmap_def, ptr %115, i64 0, i32 3, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !100
  %121 = and i32 %116, 63
  %122 = zext nneg i32 %121 to i64
  %123 = shl nuw i64 1, %122
  %124 = and i64 %123, %120
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %127, label %126, !prof !157

126:                                              ; preds = %114
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #19
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !81
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131, !prof !182

130:                                              ; preds = %127
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !81
  br label %201

131:                                              ; preds = %127
  %132 = add i32 %128, 1
  store i32 %132, ptr @cfg_blocks_num, align 4, !tbaa !81
  %133 = load ptr, ptr @cfg_blocks, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !183

135:                                              ; preds = %131
  %136 = load i32, ptr %133, align 8, !tbaa !111
  br label %137

137:                                              ; preds = %135, %131
  %138 = phi i32 [ %136, %135 ], [ 0, %131 ]
  %139 = icmp ugt i32 %132, %138
  br i1 %139, label %140, label %165, !prof !184

140:                                              ; preds = %137
  br i1 %134, label %143, label %141, !prof !185

141:                                              ; preds = %140
  %142 = load i32, ptr %133, align 8, !tbaa !111
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i32 [ %142, %141 ], [ 0, %140 ]
  store i32 %144, ptr @cfg_blocks_tail, align 4, !tbaa !81
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !81
  %145 = shl nsw i32 %144, 1
  br i1 %134, label %148, label %146, !prof !185

146:                                              ; preds = %143
  %147 = load i32, ptr %133, align 8, !tbaa !111
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi i32 [ %147, %146 ], [ 0, %143 ]
  %150 = sub nsw i32 %145, %149
  br i1 %134, label %157, label %151, !prof !185

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %133, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !113
  %154 = load i32, ptr %133, align 8, !tbaa !111
  %155 = sub i32 %153, %154
  %156 = icmp uge i32 %155, %150
  br label %159

157:                                              ; preds = %148
  %158 = icmp eq i32 %149, %145
  br label %159

159:                                              ; preds = %157, %151
  %160 = phi i1 [ %156, %151 ], [ %158, %157 ]
  br i1 %160, label %163, label %161, !prof !185

161:                                              ; preds = %159
  %162 = call ptr @vec_heap_p_reserve_exact(ptr noundef %133, i32 noundef %150) #19
  store ptr %162, ptr @cfg_blocks, align 8, !tbaa !66
  br label %163

163:                                              ; preds = %161, %159
  %164 = load ptr, ptr @cfg_blocks, align 8, !tbaa !66, !nonnull !114, !noundef !114
  store i32 %145, ptr %164, align 8, !tbaa !111
  br label %201

165:                                              ; preds = %137
  %166 = load ptr, ptr %84, align 8, !tbaa !186
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168, !prof !187

168:                                              ; preds = %165
  %169 = load i32, ptr %166, align 8, !tbaa !136
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi i32 [ %169, %168 ], [ 0, %165 ]
  %172 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %133, i64 0, i32 2, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !66
  %176 = load ptr, ptr %175, align 8, !tbaa !186
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178, !prof !187

178:                                              ; preds = %170
  %179 = load i32, ptr %176, align 8, !tbaa !136
  br label %180

180:                                              ; preds = %178, %170
  %181 = phi i32 [ %179, %178 ], [ 0, %170 ]
  %182 = icmp ult i32 %171, %181
  br i1 %182, label %191, label %183, !prof !188

183:                                              ; preds = %180
  %184 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !81
  %185 = add nsw i32 %184, 1
  br i1 %134, label %188, label %186, !prof !189

186:                                              ; preds = %183
  %187 = load i32, ptr %133, align 8, !tbaa !111
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i32 [ %187, %186 ], [ 0, %183 ]
  %190 = urem i32 %185, %189
  store i32 %190, ptr @cfg_blocks_tail, align 4, !tbaa !81
  br label %201

191:                                              ; preds = %180
  %192 = icmp eq i32 %172, 0
  br i1 %192, label %193, label %198, !prof !190

193:                                              ; preds = %191
  br i1 %134, label %196, label %194, !prof !191

194:                                              ; preds = %193
  %195 = load i32, ptr %133, align 8, !tbaa !111
  br label %196

196:                                              ; preds = %194, %193
  %197 = phi i32 [ %195, %194 ], [ 0, %193 ]
  store i32 %197, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %198

198:                                              ; preds = %196, %191
  %199 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !81
  %200 = add nsw i32 %199, -1
  store i32 %200, ptr @cfg_blocks_head, align 4, !tbaa !81
  br label %201

201:                                              ; preds = %198, %188, %163, %130
  %202 = phi i1 [ true, %130 ], [ true, %163 ], [ true, %188 ], [ false, %198 ]
  %203 = load ptr, ptr @cfg_blocks, align 8
  %204 = load i32, ptr @cfg_blocks_head, align 4
  %205 = load i32, ptr @cfg_blocks_tail, align 4
  %206 = select i1 %202, i32 %205, i32 %204, !prof !192
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %203, i64 0, i32 2, i64 %207
  store ptr %84, ptr %208, align 8, !tbaa !66
  %209 = load ptr, ptr @bb_in_list, align 8, !tbaa !66
  %210 = load i32, ptr %99, align 8, !tbaa !154
  %211 = load ptr, ptr %209, align 8, !tbaa !155
  %212 = icmp eq ptr %211, null
  br i1 %212, label %227, label %213, !prof !157

213:                                              ; preds = %201
  %214 = lshr i32 %210, 6
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds %struct.simple_bitmap_def, ptr %209, i64 0, i32 3, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !100
  %218 = and i32 %210, 63
  %219 = zext nneg i32 %218 to i64
  %220 = shl nuw i64 1, %219
  %221 = and i64 %217, %220
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %213
  %224 = getelementptr inbounds i8, ptr %211, i64 %215
  %225 = load i8, ptr %224, align 1, !tbaa !77
  %226 = add i8 %225, 1
  store i8 %226, ptr %224, align 1, !tbaa !77
  br label %227

227:                                              ; preds = %223, %213, %201
  %228 = and i32 %210, 63
  %229 = zext nneg i32 %228 to i64
  %230 = shl nuw i64 1, %229
  %231 = lshr i32 %210, 6
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds %struct.simple_bitmap_def, ptr %209, i64 0, i32 3, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !100
  %235 = or i64 %234, %230
  store i64 %235, ptr %233, align 8, !tbaa !100
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %237 = icmp eq ptr %236, null
  br i1 %237, label %250, label %238, !prof !157

238:                                              ; preds = %227
  %239 = load i32, ptr @dump_flags, align 4, !tbaa !81
  %240 = and i32 %239, 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr %81, align 8, !tbaa !193
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %243, i64 0, i32 9
  %245 = load i32, ptr %244, align 8, !tbaa !154
  %246 = load ptr, ptr %83, align 8, !tbaa !178
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %246, i64 0, i32 9
  %248 = load i32, ptr %247, align 8, !tbaa !154
  %249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.15, i32 noundef %245, i32 noundef %248)
  br label %250

250:                                              ; preds = %82, %91, %96, %227, %238, %242
  %251 = load ptr, ptr %66, align 8, !tbaa !66
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253, !prof !194

253:                                              ; preds = %250
  %254 = load i32, ptr %251, align 8, !tbaa !136
  br label %255

255:                                              ; preds = %253, %250
  %256 = phi i32 [ %254, %253 ], [ 0, %250 ]
  %257 = icmp ult i32 %68, %256
  br i1 %257, label %259, label %258, !prof !195

258:                                              ; preds = %255
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %259

259:                                              ; preds = %255, %258
  %260 = add i32 %68, 1
  br label %67, !llvm.loop !196

261:                                              ; preds = %18
  %262 = load ptr, ptr %3, align 8, !tbaa !66
  %263 = icmp eq ptr %262, null
  br i1 %263, label %299, label %264, !prof !197

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.tree_ssa_name, ptr %262, i64 0, i32 5
  %266 = getelementptr inbounds %struct.tree_ssa_name, ptr %262, i64 0, i32 5, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !166
  %268 = icmp eq ptr %267, %265
  br i1 %268, label %299, label %269, !prof !168

269:                                              ; preds = %264, %294
  %270 = phi ptr [ %298, %294 ], [ %267, %264 ]
  %271 = phi ptr [ %296, %294 ], [ %267, %264 ]
  %272 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %270, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !77
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 2560
  %276 = icmp eq i32 %275, 512
  br i1 %276, label %277, label %294, !prof !169

277:                                              ; preds = %269
  %278 = or disjoint i32 %274, 2048
  store i32 %278, ptr %273, align 8
  %279 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %280 = icmp eq ptr %279, null
  br i1 %280, label %286, label %281, !prof !198

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.VEC_gimple_base, ptr %279, i64 0, i32 1
  %283 = load i32, ptr %282, align 4, !tbaa !171
  %284 = load i32, ptr %279, align 8, !tbaa !151
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288, !prof !198

286:                                              ; preds = %281, %277
  %287 = call ptr @vec_gc_p_reserve(ptr noundef %279, i32 noundef 1) #19
  store ptr %287, ptr @interesting_ssa_edges, align 8, !tbaa !66
  br label %288

288:                                              ; preds = %286, %281
  %289 = load ptr, ptr @interesting_ssa_edges, align 8, !tbaa !66
  %290 = load i32, ptr %289, align 8, !tbaa !151
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 8, !tbaa !151
  %292 = zext i32 %290 to i64
  %293 = getelementptr inbounds %struct.VEC_gimple_base, ptr %289, i64 0, i32 2, i64 %292
  store ptr %273, ptr %293, align 8, !tbaa !66
  br label %294

294:                                              ; preds = %288, %269
  %295 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %271, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !166
  %297 = icmp eq ptr %296, %265
  %298 = select i1 %297, ptr null, ptr %296, !prof !172
  br i1 %297, label %299, label %269, !prof !173, !llvm.loop !174

299:                                              ; preds = %294, %264, %261
  %300 = load ptr, ptr %2, align 8, !tbaa !66
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302, !prof !199

302:                                              ; preds = %299
  call fastcc void @add_control_edge(ptr noundef nonnull %300)
  br label %303

303:                                              ; preds = %80, %60, %299, %302, %18, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy_into_asm(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

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
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!64}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !{ptr @valid_gimple_rhs_p, ptr @is_gimple_val, i64 1098}
!36 = !{ptr @ssa_propagate, ptr @vec_gc_p_reserve_exact, i64 692}
!37 = !{ptr @ssa_propagate, ptr @sbitmap_alloc, i64 692}
!38 = !{ptr @ssa_propagate, ptr @sbitmap_zero, i64 692}
!39 = !{ptr @ssa_propagate, ptr @vec_heap_p_reserve_exact, i64 1038}
!40 = !{ptr @ssa_propagate, ptr @gsi_start_phis, i64 3412667}
!41 = !{ptr @ssa_propagate, ptr @add_control_edge, i64 1783}
!42 = !{ptr @ssa_propagate, ptr @stmt_ends_bb_p, i64 1711769}
!43 = !{ptr @ssa_propagate, ptr @simulate_stmt, i64 20064}
!44 = !{ptr @ssa_propagate, ptr @ggc_free, i64 692}
!45 = !{ptr @ssa_propagate, ptr @free, i64 1730}
!46 = !{ptr @substitute_and_fold, ptr @gsi_start_phis, i64 1634852}
!47 = !{ptr @substitute_and_fold, ptr @may_propagate_copy, i64 66367}
!48 = !{ptr @substitute_and_fold, ptr @propagate_value, i64 66367}
!49 = !{ptr @substitute_and_fold, ptr @gimple_get_lhs, i64 6988210}
!50 = !{ptr @substitute_and_fold, ptr @stmt_could_throw_p, i64 60285}
!51 = !{ptr @substitute_and_fold, ptr @gimple_has_side_effects, i64 60285}
!52 = !{ptr @substitute_and_fold, ptr @gsi_for_stmt, i64 60284}
!53 = !{ptr @substitute_and_fold, ptr @gsi_remove, i64 60284}
!54 = !{ptr @substitute_and_fold, ptr @release_defs, i64 60284}
!55 = !{ptr @substitute_and_fold, ptr @fold_stmt, i64 72536}
!56 = !{ptr @substitute_and_fold, ptr @maybe_clean_or_replace_eh_stmt, i64 72536}
!57 = !{ptr @substitute_and_fold, ptr @recompute_tree_invariant_for_addr_expr, i64 6}
!58 = !{ptr @substitute_and_fold, ptr @gimple_set_modified, i64 72536}
!59 = !{ptr @substitute_and_fold, ptr @update_stmt_operands, i64 72536}
!60 = !{ptr @substitute_and_fold, ptr @statistics_counter_event, i64 1384}
!61 = !{ptr @simulate_stmt, ptr @stmt_ends_bb_p, i64 9081}
!62 = !{ptr @simulate_stmt, ptr @vec_heap_p_reserve_exact, i64 3}
!63 = !{ptr @simulate_stmt, ptr @add_control_edge, i64 8}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !67, i64 8}
!71 = !{!"_IO_FILE", !72, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !72, i64 112, !72, i64 116, !73, i64 120, !74, i64 128, !68, i64 130, !68, i64 131, !67, i64 136, !73, i64 144, !67, i64 152, !67, i64 160, !67, i64 168, !67, i64 176, !73, i64 184, !72, i64 192, !68, i64 196}
!72 = !{!"int", !68, i64 0}
!73 = !{!"long", !68, i64 0}
!74 = !{!"short", !68, i64 0}
!75 = !{!71, !67, i64 16}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{!68, !68, i64 0}
!78 = !{!71, !67, i64 40}
!79 = !{!71, !67, i64 48}
!80 = !{!71, !72, i64 0}
!81 = !{!72, !72, i64 0}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!"function_entry_count", i64 4252}
!86 = !{!"branch_weights", i32 0, i32 0, i32 3417, i32 532, i32 0, i32 34, i32 0, i32 269}
!87 = !{!"branch_weights", i32 0, i32 532}
!88 = !{!"branch_weights", i32 34, i32 0}
!89 = distinct !{!89, !83, !84}
!90 = !{!"branch_weights", i32 269, i32 0}
!91 = distinct !{!91, !83, !84}
!92 = !{!93, !67, i64 24}
!93 = !{!"function", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !72, i64 104, !72, i64 108, !72, i64 112, !72, i64 116, !72, i64 120, !72, i64 124, !67, i64 128, !72, i64 136, !72, i64 137, !72, i64 138, !72, i64 138, !72, i64 138, !72, i64 138, !72, i64 138, !72, i64 138, !72, i64 138, !72, i64 139, !72, i64 139, !72, i64 139, !72, i64 139, !72, i64 139, !72, i64 139, !72, i64 139}
!94 = !{!95, !67, i64 8}
!95 = !{!"def_optype_d", !67, i64 0, !67, i64 8}
!96 = !{!95, !67, i64 0}
!97 = distinct !{!97, !83, !84}
!98 = !{!99, !67, i64 0}
!99 = !{!"gimple_seq_node_d", !67, i64 0, !67, i64 8, !67, i64 16}
!100 = !{!73, !73, i64 0}
!101 = !{!102, !72, i64 0}
!102 = !{!"VEC_tree_base", !72, i64 0, !72, i64 4, !68, i64 8}
!103 = !{!102, !72, i64 4}
!104 = distinct !{!104, !83, !84}
!105 = !{!"function_entry_count", i64 346}
!106 = !{!93, !67, i64 8}
!107 = !{!108, !72, i64 32}
!108 = !{!"control_flow_graph", !67, i64 0, !67, i64 8, !67, i64 16, !72, i64 24, !72, i64 28, !72, i64 32, !67, i64 40, !72, i64 48, !68, i64 52, !68, i64 60, !72, i64 68, !72, i64 72}
!109 = !{!"branch_weights", i32 346, i32 0}
!110 = !{!"branch_weights", i32 0, i32 346}
!111 = !{!112, !72, i64 0}
!112 = !{!"VEC_basic_block_base", !72, i64 0, !72, i64 4, !68, i64 8}
!113 = !{!112, !72, i64 4}
!114 = !{}
!115 = !{!"branch_weights", i32 1, i32 345}
!116 = !{!117, !72, i64 96}
!117 = !{!"basic_block_def", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !68, i64 32, !67, i64 48, !67, i64 56, !68, i64 64, !73, i64 72, !72, i64 80, !72, i64 84, !72, i64 88, !72, i64 92, !72, i64 96}
!118 = !{!119}
!119 = distinct !{!119, !120, !"gsi_start_bb: argument 0"}
!120 = distinct !{!120, !"gsi_start_bb"}
!121 = !{!"branch_weights", i32 1638244, i32 0}
!122 = !{!"branch_weights", i32 692, i32 1637552}
!123 = !{!124, !67, i64 0}
!124 = !{!"gimple_bb_info", !67, i64 0, !67, i64 8}
!125 = !{!126, !67, i64 0}
!126 = !{!"gimple_seq_d", !67, i64 0, !67, i64 8, !67, i64 16}
!127 = !{!"branch_weights", i32 1, i32 1638243}
!128 = !{!99, !67, i64 16}
!129 = !{!"branch_weights", i32 1638243, i32 1612619}
!130 = distinct !{!130, !83, !84}
!131 = !{i64 0, i64 8, !66, i64 8, i64 8, !66, i64 16, i64 8, !66}
!132 = !{!"branch_weights", i32 1225758, i32 412486}
!133 = !{!"branch_weights", i32 412486, i32 0}
!134 = distinct !{!134, !83, !84}
!135 = !{!"branch_weights", i32 468, i32 4582369}
!136 = !{!137, !72, i64 0}
!137 = !{!"VEC_edge_base", !72, i64 0, !72, i64 4, !68, i64 8}
!138 = !{!"branch_weights", i32 1638244, i32 2944593}
!139 = !{!140, !72, i64 48}
!140 = !{!"edge_def", !67, i64 0, !67, i64 8, !68, i64 16, !67, i64 24, !67, i64 32, !72, i64 40, !72, i64 44, !72, i64 48, !72, i64 52, !73, i64 56}
!141 = !{!"branch_weights", i32 0, i32 2944593}
!142 = !{!"branch_weights", i32 2944593, i32 0}
!143 = distinct !{!143, !83, !84}
!144 = !{!"branch_weights", i32 345, i32 1637899}
!145 = distinct !{!145, !83, !84}
!146 = !{!108, !67, i64 0}
!147 = !{!"branch_weights", i32 0, i32 692}
!148 = !{!"branch_weights", i32 346, i32 346}
!149 = distinct !{!149, !83, !84}
!150 = !{!"branch_weights", i32 346, i32 1774420}
!151 = !{!152, !72, i64 0}
!152 = !{!"VEC_gimple_base", !72, i64 0, !72, i64 4, !68, i64 8}
!153 = !{!"branch_weights", i32 0, i32 1774420}
!154 = !{!117, !72, i64 80}
!155 = !{!156, !67, i64 0}
!156 = !{!"simple_bitmap_def", !67, i64 0, !72, i64 8, !72, i64 12, !68, i64 16}
!157 = !{!"branch_weights", i32 1774420, i32 0}
!158 = !{!108, !67, i64 8}
!159 = !{!"branch_weights", i32 1243186, i32 531234}
!160 = !{!"branch_weights", i32 1881989, i32 1919768}
!161 = !{!"branch_weights", i32 28701, i32 1891067}
!162 = !{!"VP", i32 0, i64 4010, i64 1971283922030891904, i64 1802, i64 4303407576015330863, i64 1672, i64 1617611971799241956, i64 535}
!163 = !{!"VP", i32 0, i64 264246, i64 -1617396243747221338, i64 123534, i64 1157411784724741775, i64 81848, i64 -5005779515436897618, i64 58862}
!164 = !{!"branch_weights", i32 10272, i32 1720850, i32 188646}
!165 = !{!"branch_weights", i32 1281921, i32 438929}
!166 = !{!167, !67, i64 8}
!167 = !{!"ssa_use_operand_d", !67, i64 0, !67, i64 8, !68, i64 16, !67, i64 24}
!168 = !{!"branch_weights", i32 1, i32 626129}
!169 = !{!"branch_weights", i32 -1829270622, i32 1351351144}
!170 = !{!"branch_weights", i32 0, i32 406047}
!171 = !{!152, !72, i64 4}
!172 = !{!"branch_weights", i32 613049, i32 209304}
!173 = !{!"branch_weights", i32 626129, i32 196224}
!174 = distinct !{!174, !83, !84}
!175 = !{!"branch_weights", i32 438929, i32 1281921}
!176 = !{!"branch_weights", i32 122, i32 3869936}
!177 = !{!"branch_weights", i32 1281921, i32 2588137}
!178 = !{!140, !67, i64 8}
!179 = !{!"branch_weights", i32 692, i32 2944732}
!180 = !{!"branch_weights", i32 2943566, i32 1166}
!181 = !{!"branch_weights", i32 1774420, i32 1169146}
!182 = !{!"branch_weights", i32 7130, i32 1767290}
!183 = !{!"branch_weights", i32 0, i32 1767290}
!184 = !{!"branch_weights", i32 696, i32 1766594}
!185 = !{!"branch_weights", i32 0, i32 696}
!186 = !{!117, !67, i64 0}
!187 = !{!"branch_weights", i32 0, i32 1766594}
!188 = !{!"branch_weights", i32 801026, i32 965568}
!189 = !{!"branch_weights", i32 0, i32 965568}
!190 = !{!"branch_weights", i32 4084, i32 796942}
!191 = !{!"branch_weights", i32 0, i32 4084}
!192 = !{!"branch_weights", i32 973394, i32 801026}
!193 = !{!140, !67, i64 0}
!194 = !{!"branch_weights", i32 0, i32 2588137}
!195 = !{!"branch_weights", i32 2588137, i32 0}
!196 = distinct !{!196, !83, !84}
!197 = !{!"branch_weights", i32 1445, i32 187201}
!198 = !{!"branch_weights", i32 0, i32 125168}
!199 = !{!"branch_weights", i32 187201, i32 1445}
!200 = !{!"branch_weights", i32 531234, i32 0}
!201 = distinct !{!201, !83, !84}
!202 = !{!"branch_weights", i32 1637350, i32 137070}
!203 = !{!"branch_weights", i32 1637350, i32 0}
!204 = !{!205}
!205 = distinct !{!205, !206, !"gsi_start_bb: argument 0"}
!206 = distinct !{!206, !"gsi_start_bb"}
!207 = !{!"branch_weights", i32 0, i32 1637350}
!208 = !{!"branch_weights", i32 1, i32 1637349}
!209 = !{!"branch_weights", i32 2777424, i32 473035}
!210 = !{!"VP", i32 0, i64 24538, i64 1971283922030891904, i64 11024, i64 4303407576015330863, i64 10235, i64 1617611971799241956, i64 3276}
!211 = !{!"VP", i32 0, i64 1616840, i64 -1617396243747221338, i64 755871, i64 1157411784724741775, i64 500806, i64 -5005779515436897618, i64 360162}
!212 = !{!"branch_weights", i32 1637349, i32 1613110}
!213 = distinct !{!213, !83, !84}
!214 = !{!"branch_weights", i32 122, i32 4581073}
!215 = !{!"branch_weights", i32 1637350, i32 2943845}
!216 = !{!"branch_weights", i32 2943845, i32 0}
!217 = !{!"branch_weights", i32 0, i32 2943845}
!218 = distinct !{!218, !83, !84}
!219 = !{!"branch_weights", i32 355496, i32 1281854}
!220 = !{!"branch_weights", i32 0, i32 4080055}
!221 = !{!"branch_weights", i32 3548840, i32 531215}
!222 = !{!"branch_weights", i32 473035, i32 58180}
!223 = !{!"branch_weights", i32 58180, i32 0}
!224 = !{!"branch_weights", i32 13935, i32 44245}
!225 = !{!"branch_weights", i32 38116, i32 6129}
!226 = distinct !{!226, !83, !84}
!227 = distinct !{!227, !83, !84}
!228 = !{!117, !67, i64 56}
!229 = !{!"branch_weights", i32 345, i32 1637207}
!230 = distinct !{!230, !83, !84}
!231 = !{!"branch_weights", i32 1634854, i32 2698}
!232 = !{!"branch_weights", i32 1222616, i32 412238}
!233 = !{!"branch_weights", i32 412238, i32 0}
!234 = !{!"branch_weights", i32 1, i32 412237}
!235 = !{!"branch_weights", i32 0, i32 1593100}
!236 = !{!167, !67, i64 24}
!237 = !{!"branch_weights", i32 1122046, i32 471054}
!238 = !{!239, !67, i64 8}
!239 = !{!"prop_value_d", !72, i64 0, !67, i64 8}
!240 = !{!"branch_weights", i32 1075084, i32 46962}
!241 = !{!"branch_weights", i32 0, i32 46962}
!242 = !{!"branch_weights", i32 1710, i32 45252}
!243 = !{!"branch_weights", i32 1710, i32 0}
!244 = !{!"branch_weights", i32 1180863, i32 412237}
!245 = distinct !{!245, !83, !84}
!246 = distinct !{!246, !83, !84}
!247 = !{!248}
!248 = distinct !{!248, !249, !"gsi_last_bb: argument 0"}
!249 = distinct !{!249, !"gsi_last_bb"}
!250 = !{!"branch_weights", i32 1637552, i32 0}
!251 = !{!"branch_weights", i32 0, i32 1637552}
!252 = !{!126, !67, i64 8}
!253 = !{!"branch_weights", i32 1, i32 1637551}
!254 = !{i64 0, i64 8, !66, i64 8, i64 8, !66}
!255 = !{i64 0, i64 8, !66}
!256 = !{!99, !67, i64 8}
!257 = !{!"branch_weights", i32 1320343, i32 1930519}
!258 = !{!"branch_weights", i32 0, i32 1320343}
!259 = !{!"branch_weights", i32 35583, i32 1284760}
!260 = distinct !{!260, !83, !84}
!261 = !{!"branch_weights", i32 1328669, i32 1886610}
!262 = !{!"branch_weights", i32 1886328, i32 282}
!263 = !{!"branch_weights", i32 60285, i32 1826043}
!264 = !{!"branch_weights", i32 1826043, i32 0}
!265 = !{!"branch_weights", i32 1826043, i32 60285}
!266 = !{!"branch_weights", i32 60285, i32 0}
!267 = !{!"branch_weights", i32 60284, i32 1}
!268 = !{!"branch_weights", i32 60284, i32 0}
!269 = !{!270, !73, i64 24}
!270 = !{!"prop_stats_d", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24}
!271 = !{!"branch_weights", i32 3154995, i32 0}
!272 = !{!"branch_weights", i32 1779352, i32 1375643}
!273 = !{!"VP", i32 0, i64 1779352, i64 8327294680178385712, i64 1099843, i64 3493168657485441393, i64 679509}
!274 = !{!"branch_weights", i32 1726221, i32 53131}
!275 = !{!270, !73, i64 16}
!276 = !{!"branch_weights", i32 62255, i32 3092740}
!277 = !{!"branch_weights", i32 0, i32 3092740}
!278 = !{!"branch_weights", i32 25600, i32 3067140}
!279 = !{!"branch_weights", i32 1279757, i32 1787383}
!280 = !{!"branch_weights", i32 424235, i32 1363148}
!281 = !{!282, !67, i64 0}
!282 = !{!"use_optype_d", !67, i64 0, !167, i64 8}
!283 = !{!"branch_weights", i32 767736, i32 2325004}
!284 = !{!"branch_weights", i32 685638, i32 2407102}
!285 = !{!"branch_weights", i32 2387697, i32 19405}
!286 = !{!"branch_weights", i32 0, i32 19405}
!287 = !{!"branch_weights", i32 19404, i32 1}
!288 = !{!"branch_weights", i32 2325004, i32 82098}
!289 = !{!"branch_weights", i32 0, i32 2407102}
!290 = distinct !{!290, !83, !84}
!291 = !{!"branch_weights", i32 3082459, i32 72536}
!292 = !{!"branch_weights", i32 72536, i32 0}
!293 = !{!"branch_weights", i32 65673, i32 6863}
!294 = !{!"branch_weights", i32 43312, i32 22361}
!295 = !{!"branch_weights", i32 0, i32 43312}
!296 = !{!"branch_weights", i32 6, i32 43306}
!297 = !{!"branch_weights", i32 0, i32 72536}
!298 = !{!"branch_weights", i32 1637551, i32 1613311}
!299 = !{!270, !73, i64 0}
!300 = !{!270, !73, i64 8}
!301 = !{!"function_entry_count", i64 1791}
!302 = !{!"tree-ssa-propagate.c;add_control_edge"}
!303 = !{!"function_entry_count", i64 20062}
!304 = !{!"tree-ssa-propagate.c;simulate_stmt"}
!305 = !{!"VP", i32 0, i64 151, i64 1971283922030891904, i64 68, i64 4303407576015330863, i64 63, i64 1617611971799241956, i64 20}
!306 = !{!"VP", i32 0, i64 9979, i64 -1617396243747221338, i64 4665, i64 1157411784724741775, i64 3091, i64 -5005779515436897618, i64 2222}
