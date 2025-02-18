; ModuleID = 'tree-cfgcleanup.c'
source_filename = "tree-cfgcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct._edge_var_map = type { ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"mergephi\00", align 1
@pass_merge_phi = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_merge_phi, ptr @merge_phi_nodes, ptr null, ptr null, i32 0, i32 80, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@cfgcleanup_altered_bbs = dso_local local_unnamed_addr global ptr null, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tree-cfgcleanup.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !92 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !93
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !92 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !93
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !92 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !103

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !97
  %11 = load i8, ptr %3, align 1, !tbaa !104
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !92 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !103

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !97
  %11 = load i8, ptr %3, align 1, !tbaa !104
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !92 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !93
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !103

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !97
  %11 = load i8, ptr %3, align 1, !tbaa !104
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !92 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !93
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !92 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !103

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !105
  store i8 %12, ptr %4, align 1, !tbaa !104
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !92 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !103

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !105
  store i8 %12, ptr %4, align 1, !tbaa !104
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !92 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !103

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !105
  store i8 %12, ptr %4, align 1, !tbaa !104
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !92 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !92 {
  %2 = load i32, ptr %0, align 8, !tbaa !107
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !92 {
  %2 = load i32, ptr %0, align 8, !tbaa !107
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !92 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !108
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !92 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !108
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !92 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !92 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !92 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !92 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
  br i1 %23, label %7, label %24, !llvm.loop !109

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !92 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #9 !prof !112 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !104
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !113

13:                                               ; preds = %0
  tail call void @timevar_push_1(i32 noundef 51) #14
  br label %14

14:                                               ; preds = %13, %0
  %15 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19, !prof !114

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @delete_unreachable_blocks() #14
  tail call void @calculate_dominance_info(i32 noundef 1) #14
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i8 [ %18, %17 ], [ 0, %14 ]
  %21 = load ptr, ptr @cfun, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25, !prof !117

25:                                               ; preds = %19, %73
  %26 = phi i8 [ 1, %73 ], [ 0, %19 ]
  br label %27

27:                                               ; preds = %72, %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !93
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !122

34:                                               ; preds = %27
  %35 = load i32, ptr %32, align 8, !tbaa !123
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi i32 [ %35, %34 ], [ 0, %27 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %77, label %39, !prof !125

39:                                               ; preds = %36
  %40 = load i32, ptr %32, align 8, !tbaa !123
  %41 = add i32 %40, -1
  store i32 %41, ptr %32, align 8, !tbaa !123
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_gimple_base, ptr %32, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = icmp eq ptr %46, null
  br i1 %47, label %72, label %48, !prof !126

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !127
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %72, label %52, !prof !126

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !129
  %55 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !130
  %57 = icmp slt i32 %50, %56
  br i1 %57, label %58, label %72, !prof !132

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !133
  %61 = zext nneg i32 %50 to i64
  %62 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %60, i64 0, i32 2, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !93
  %64 = icmp eq ptr %63, %46
  br i1 %64, label %65, label %72, !prof !132

65:                                               ; preds = %58
  %66 = tail call ptr @last_stmt(ptr noundef nonnull %46) #14
  %67 = icmp eq ptr %66, %44
  br i1 %67, label %72, label %68, !prof !132

68:                                               ; preds = %65
  %69 = tail call i32 @gimple_call_flags(ptr noundef %44) #14
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %65, %58, %52, %48, %39
  br label %27, !llvm.loop !134

73:                                               ; preds = %68
  %74 = tail call ptr @split_block(ptr noundef nonnull %46, ptr noundef %44) #14
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !135
  tail call fastcc void @remove_fallthru_edge(ptr noundef %76)
  br label %25, !llvm.loop !134

77:                                               ; preds = %36, %19
  %78 = phi i8 [ 0, %19 ], [ %26, %36 ]
  %79 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  store ptr %79, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  tail call void @start_recording_case_labels() #14
  %80 = load ptr, ptr @cfun, align 8, !tbaa !93
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !129
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !136
  %85 = icmp ugt i32 %84, 2
  br i1 %85, label %86, label %94, !prof !137

86:                                               ; preds = %77
  %87 = getelementptr inbounds i8, ptr %10, i64 8
  %88 = getelementptr inbounds i8, ptr %10, i64 16
  %89 = getelementptr inbounds i8, ptr %7, i64 8
  %90 = getelementptr inbounds i8, ptr %7, i64 16
  %91 = getelementptr inbounds i8, ptr %6, i64 8
  %92 = getelementptr inbounds i8, ptr %6, i64 16
  %93 = zext i32 %84 to i64
  br label %106

94:                                               ; preds = %1212, %77
  %95 = phi i8 [ %78, %77 ], [ %1213, %1212 ]
  %96 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %97 = load ptr, ptr %96, align 8, !tbaa !138
  %98 = icmp eq ptr %97, null
  br i1 %98, label %2396, label %99, !prof !140

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %5, i64 8
  %101 = getelementptr inbounds i8, ptr %5, i64 16
  %102 = getelementptr inbounds i8, ptr %2, i64 8
  %103 = getelementptr inbounds i8, ptr %2, i64 16
  %104 = getelementptr inbounds i8, ptr %1, i64 8
  %105 = getelementptr inbounds i8, ptr %1, i64 16
  br label %2393

106:                                              ; preds = %86, %1212
  %107 = phi i64 [ 2, %86 ], [ %1214, %1212 ]
  %108 = phi i8 [ %78, %86 ], [ %1213, %1212 ]
  %109 = load ptr, ptr @cfun, align 8, !tbaa !93
  %110 = getelementptr inbounds %struct.function, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !129
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !133
  %114 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %113, i64 0, i32 2, i64 %107
  %115 = load ptr, ptr %114, align 8, !tbaa !93
  %116 = icmp eq ptr %115, null
  br i1 %116, label %1212, label %117, !prof !141

117:                                              ; preds = %106
  %118 = call ptr @last_stmt(ptr noundef %115) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %157, label %120, !prof !142

120:                                              ; preds = %117
  %121 = load i32, ptr %118, align 8
  %122 = and i32 %121, 255
  %123 = icmp eq i32 %122, 28
  br i1 %123, label %124, label %157, !prof !143

124:                                              ; preds = %120
  %125 = load ptr, ptr %115, align 8, !tbaa !144
  %126 = icmp eq ptr %125, null
  br i1 %126, label %157, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %125, align 8, !tbaa !145
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %157

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.VEC_edge_base, ptr %125, i64 0, i32 2, i64 0
  %132 = load ptr, ptr %131, align 8, !tbaa !93
  %133 = load ptr, ptr %132, align 8, !tbaa !147
  %134 = call ptr @last_stmt(ptr noundef %133) #14
  %135 = icmp eq ptr %134, null
  br i1 %135, label %157, label %136

136:                                              ; preds = %130
  %137 = load i32, ptr %134, align 8
  %138 = and i32 %137, 255
  %139 = icmp eq i32 %138, 31
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load ptr, ptr %133, align 8, !tbaa !144
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr %141, align 8, !tbaa !145
  switch i32 %144, label %145 [
    i32 2, label %157
    i32 1, label %146
  ]

145:                                              ; preds = %143, %140
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 593, ptr noundef nonnull @.str.2) #14
  br label %146

146:                                              ; preds = %143, %145
  %147 = load ptr, ptr %115, align 8, !tbaa !144
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %147, align 8, !tbaa !145
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %153, label %152

152:                                              ; preds = %149, %146
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.2) #14
  br label %153

153:                                              ; preds = %152, %149
  %154 = load ptr, ptr %115, align 8, !tbaa !144
  %155 = getelementptr inbounds %struct.VEC_edge_base, ptr %154, i64 0, i32 2, i64 0
  %156 = load ptr, ptr %155, align 8, !tbaa !93
  call void @remove_edge_and_dominated_blocks(ptr noundef %156) #14
  br label %1209

157:                                              ; preds = %143, %136, %130, %127, %124, %120, %117
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  %158 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %115) #14
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 13
  %160 = load i32, ptr %159, align 8, !tbaa !149, !noalias !150
  %161 = and i32 %160, 512
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169, !prof !153

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %165 = load ptr, ptr %164, align 8, !tbaa !104, !noalias !150
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167, !prof !154

167:                                              ; preds = %163
  %168 = load ptr, ptr %165, align 8, !tbaa !155, !noalias !150
  br label %169

169:                                              ; preds = %167, %163, %157
  %170 = phi ptr [ %168, %167 ], [ null, %163 ], [ null, %157 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172, !prof !154

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.gimple_seq_d, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !157, !noalias !150
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi ptr [ %174, %172 ], [ null, %169 ]
  store ptr %176, ptr %10, align 8, !tbaa.struct !159
  store ptr %170, ptr %87, align 8, !tbaa.struct !160
  store ptr %115, ptr %88, align 8, !tbaa.struct !161
  %177 = icmp eq ptr %176, null
  br i1 %177, label %556, label %178, !prof !142

178:                                              ; preds = %175
  %179 = load ptr, ptr %176, align 8, !tbaa !162
  %180 = load i32, ptr %179, align 8
  %181 = trunc i32 %180 to i8
  switch i8 %181, label %515 [
    i8 1, label %182
    i8 5, label %182
    i8 3, label %411
  ], !prof !164

182:                                              ; preds = %178, %178
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %183 = load ptr, ptr %9, align 8
  %184 = load ptr, ptr %183, align 8, !tbaa !162
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !135
  %187 = icmp eq ptr %186, null
  br i1 %187, label %192, label %188, !prof !165

188:                                              ; preds = %182
  %189 = load i32, ptr %186, align 8, !tbaa !145
  %190 = icmp eq i32 %189, 1
  %191 = zext i1 %190 to i8
  br label %192

192:                                              ; preds = %188, %182
  %193 = phi i8 [ %191, %188 ], [ 0, %182 ]
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %391, !prof !166

195:                                              ; preds = %192
  call void @fold_defer_overflow_warnings() #14
  %196 = getelementptr inbounds %struct.gimple_statement_base, ptr %184, i64 0, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !104
  %198 = load i32, ptr %184, align 8
  %199 = and i32 %198, 255
  %200 = trunc i32 %198 to i8
  switch i8 %200, label %330 [
    i8 1, label %201
    i8 5, label %315
  ], !prof !167

201:                                              ; preds = %195
  %202 = add nsw i32 %199, -10
  %203 = icmp ult i32 %202, -9
  br i1 %203, label %216, label %204, !prof !168

204:                                              ; preds = %201
  %205 = zext nneg i32 %199 to i64
  %206 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !108
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !169
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213, !prof !168

212:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %213

213:                                              ; preds = %212, %204
  %214 = getelementptr inbounds i8, ptr %184, i64 %210
  %215 = load ptr, ptr %214, align 8, !tbaa !93
  br label %216

216:                                              ; preds = %213, %201
  %217 = phi ptr [ %215, %213 ], [ null, %201 ]
  %218 = load i32, ptr %184, align 8
  %219 = and i32 %218, 255
  %220 = add nsw i32 %219, -10
  %221 = icmp ult i32 %220, -9
  br i1 %221, label %235, label %222, !prof !168

222:                                              ; preds = %216
  %223 = zext nneg i32 %219 to i64
  %224 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !108
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !169
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231, !prof !168

230:                                              ; preds = %222
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %231

231:                                              ; preds = %230, %222
  %232 = getelementptr inbounds i8, ptr %184, i64 %228
  %233 = getelementptr inbounds ptr, ptr %232, i64 1
  %234 = load ptr, ptr %233, align 8, !tbaa !93
  br label %235

235:                                              ; preds = %231, %216
  %236 = phi ptr [ %234, %231 ], [ null, %216 ]
  %237 = load i64, ptr %217, align 8
  %238 = and i64 %237, 65535
  %239 = icmp eq i64 %238, 141
  br i1 %239, label %240, label %272, !prof !170

240:                                              ; preds = %235
  %241 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %217) #14
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %272, !prof !171

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.tree_ssa_name, ptr %217, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !104
  %246 = load i32, ptr %245, align 8
  %247 = and i32 %246, 255
  %248 = icmp eq i32 %247, 16
  br i1 %248, label %249, label %272, !prof !172

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.gimple_statement_phi, ptr %245, i64 0, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !104
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %272, !prof !173

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.gimple_statement_base, ptr %245, i64 0, i32 4
  %255 = load ptr, ptr %254, align 8, !tbaa !104
  %256 = getelementptr inbounds %struct.gimple_statement_base, ptr %184, i64 0, i32 4
  %257 = load ptr, ptr %256, align 8, !tbaa !104
  %258 = icmp eq ptr %255, %257
  br i1 %258, label %259, label %272

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.gimple_statement_phi, ptr %245, i64 0, i32 4, i64 0, i32 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !174
  %262 = load ptr, ptr %261, align 8, !tbaa !93
  %263 = load i64, ptr %262, align 8
  %264 = and i64 %263, 65535
  %265 = icmp eq i64 %264, 141
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %262) #14
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266, %259
  %270 = load ptr, ptr %260, align 8, !tbaa !174
  %271 = load ptr, ptr %270, align 8, !tbaa !93
  br label %272

272:                                              ; preds = %269, %266, %253, %249, %243, %240, %235
  %273 = phi ptr [ %217, %240 ], [ %217, %235 ], [ %271, %269 ], [ %217, %266 ], [ %217, %253 ], [ %217, %249 ], [ %217, %243 ]
  %274 = load i64, ptr %236, align 8
  %275 = and i64 %274, 65535
  %276 = icmp eq i64 %275, 141
  br i1 %276, label %277, label %309, !prof !168

277:                                              ; preds = %272
  %278 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %236) #14
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %309

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !104
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, 255
  %285 = icmp eq i32 %284, 16
  br i1 %285, label %286, label %309

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.gimple_statement_phi, ptr %282, i64 0, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !104
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %290, label %309

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.gimple_statement_base, ptr %282, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !104
  %293 = getelementptr inbounds %struct.gimple_statement_base, ptr %184, i64 0, i32 4
  %294 = load ptr, ptr %293, align 8, !tbaa !104
  %295 = icmp eq ptr %292, %294
  br i1 %295, label %296, label %309

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.gimple_statement_phi, ptr %282, i64 0, i32 4, i64 0, i32 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !174
  %299 = load ptr, ptr %298, align 8, !tbaa !93
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 141
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %299) #14
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303, %296
  %307 = load ptr, ptr %297, align 8, !tbaa !174
  %308 = load ptr, ptr %307, align 8, !tbaa !93
  br label %309

309:                                              ; preds = %306, %303, %290, %286, %280, %277, %272
  %310 = phi ptr [ %236, %277 ], [ %236, %272 ], [ %308, %306 ], [ %236, %303 ], [ %236, %290 ], [ %236, %286 ], [ %236, %280 ]
  %311 = load i32, ptr %184, align 8
  %312 = lshr i32 %311, 16
  %313 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !93
  %314 = call ptr @fold_binary_loc(i32 noundef %197, i32 noundef %312, ptr noundef %313, ptr noundef %273, ptr noundef %310) #14
  br label %330

315:                                              ; preds = %195
  %316 = add nsw i32 %199, -10
  %317 = icmp ult i32 %316, -9
  br i1 %317, label %330, label %318, !prof !176

318:                                              ; preds = %315
  %319 = zext nneg i32 %199 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !108
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !169
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327, !prof !176

326:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %327

327:                                              ; preds = %326, %318
  %328 = getelementptr inbounds i8, ptr %184, i64 %324
  %329 = load ptr, ptr %328, align 8, !tbaa !93
  br label %330

330:                                              ; preds = %327, %315, %309, %195
  %331 = phi ptr [ %314, %309 ], [ null, %195 ], [ %329, %327 ], [ null, %315 ]
  %332 = call ptr @find_taken_edge(ptr noundef %115, ptr noundef %331) #14
  %333 = icmp eq ptr %332, null
  br i1 %333, label %340, label %334, !prof !177

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.edge_def, ptr %332, i64 0, i32 8
  br label %336

336:                                              ; preds = %380, %334
  %337 = phi i32 [ %381, %380 ], [ 0, %334 ]
  %338 = phi i8 [ %342, %380 ], [ 0, %334 ]
  %339 = phi i8 [ %343, %380 ], [ 0, %334 ]
  br label %341

340:                                              ; preds = %330
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %389

341:                                              ; preds = %336, %363
  %342 = phi i8 [ 1, %363 ], [ %338, %336 ]
  %343 = phi i8 [ 1, %363 ], [ %339, %336 ]
  %344 = load ptr, ptr %185, align 8, !tbaa !93
  %345 = icmp eq ptr %344, null
  br i1 %345, label %348, label %346, !prof !178

346:                                              ; preds = %341
  %347 = load i32, ptr %344, align 8, !tbaa !145
  br label %348

348:                                              ; preds = %346, %341
  %349 = phi i32 [ %347, %346 ], [ 0, %341 ]
  %350 = icmp eq i32 %349, %337
  br i1 %350, label %355, label %351, !prof !179

351:                                              ; preds = %348
  %352 = zext i32 %337 to i64
  %353 = getelementptr inbounds %struct.VEC_edge_base, ptr %344, i64 0, i32 2, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !93
  br label %355

355:                                              ; preds = %351, %348
  %356 = phi ptr [ %354, %351 ], [ null, %348 ]
  %357 = icmp eq ptr %356, null
  br i1 %357, label %382, label %358, !prof !179

358:                                              ; preds = %355
  %359 = icmp eq ptr %356, %332
  br i1 %359, label %373, label %360, !prof !180

360:                                              ; preds = %358
  %361 = icmp eq i8 %342, 0
  br i1 %361, label %362, label %363, !prof !181

362:                                              ; preds = %360
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext 1, ptr noundef nonnull %184, i32 noundef 2) #14
  br label %363

363:                                              ; preds = %362, %360
  %364 = getelementptr inbounds %struct.edge_def, ptr %332, i64 0, i32 9
  %365 = getelementptr inbounds %struct.edge_def, ptr %356, i64 0, i32 8
  %366 = load i32, ptr %365, align 4, !tbaa !182
  %367 = load i32, ptr %335, align 4, !tbaa !182
  %368 = add nsw i32 %367, %366
  store i32 %368, ptr %335, align 4, !tbaa !182
  %369 = getelementptr inbounds %struct.edge_def, ptr %356, i64 0, i32 9
  %370 = load i64, ptr %369, align 8, !tbaa !183
  %371 = load i64, ptr %364, align 8, !tbaa !183
  %372 = add nsw i64 %371, %370
  store i64 %372, ptr %364, align 8, !tbaa !183
  call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %356) #14
  br label %341, !llvm.loop !184

373:                                              ; preds = %358
  br i1 %345, label %376, label %374, !prof !185

374:                                              ; preds = %373
  %375 = load i32, ptr %344, align 8, !tbaa !145
  br label %376

376:                                              ; preds = %374, %373
  %377 = phi i32 [ %375, %374 ], [ 0, %373 ]
  %378 = icmp ult i32 %337, %377
  br i1 %378, label %380, label %379, !prof !181

379:                                              ; preds = %376
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %380

380:                                              ; preds = %379, %376
  %381 = add i32 %337, 1
  br label %336, !llvm.loop !184

382:                                              ; preds = %355
  %383 = icmp eq i8 %342, 0
  br i1 %383, label %384, label %385, !prof !185

384:                                              ; preds = %382
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %385

385:                                              ; preds = %384, %382
  %386 = load i32, ptr %335, align 4, !tbaa !182
  %387 = icmp sgt i32 %386, 10000
  br i1 %387, label %388, label %389, !prof !185

388:                                              ; preds = %385
  store i32 10000, ptr %335, align 4, !tbaa !182
  br label %389

389:                                              ; preds = %388, %385, %340
  %390 = phi i8 [ 0, %340 ], [ %343, %388 ], [ %343, %385 ]
  br i1 %333, label %408, label %400, !prof !177

391:                                              ; preds = %192
  br i1 %187, label %395, label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %186, align 8, !tbaa !145
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %396, label %395

395:                                              ; preds = %392, %391
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %396

396:                                              ; preds = %395, %392
  %397 = load ptr, ptr %185, align 8, !tbaa !135
  %398 = getelementptr inbounds %struct.VEC_edge_base, ptr %397, i64 0, i32 2, i64 0
  %399 = load ptr, ptr %398, align 8, !tbaa !93
  br label %400

400:                                              ; preds = %396, %389
  %401 = phi i8 [ 0, %396 ], [ %390, %389 ]
  %402 = phi ptr [ %399, %396 ], [ %332, %389 ]
  %403 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 9
  %405 = load i32, ptr %404, align 8, !tbaa !127
  %406 = call zeroext i8 @bitmap_set_bit(ptr noundef %403, i32 noundef %405) #14
  call void @gsi_remove(ptr noundef nonnull %9, i8 noundef zeroext 1) #14
  %407 = getelementptr inbounds %struct.edge_def, ptr %402, i64 0, i32 7
  store i32 1, ptr %407, align 8, !tbaa !186
  br label %408

408:                                              ; preds = %400, %389
  %409 = phi i8 [ %401, %400 ], [ 0, %389 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  %410 = or i8 %409, %158
  br label %556

411:                                              ; preds = %178
  %412 = and i32 %180, 255
  %413 = add nsw i32 %412, -1
  %414 = icmp ult i32 %413, 9
  call void @llvm.assume(i1 %414)
  %415 = zext nneg i32 %412 to i64
  %416 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !108
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %418
  %420 = load i64, ptr %419, align 8, !tbaa !169
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %411
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %423

423:                                              ; preds = %422, %411
  %424 = getelementptr inbounds i8, ptr %179, i64 %420
  %425 = load ptr, ptr %424, align 8, !tbaa !93
  %426 = load i64, ptr %425, align 8
  %427 = and i64 %426, 65535
  %428 = icmp eq i64 %427, 121
  br i1 %428, label %429, label %515

429:                                              ; preds = %423
  %430 = load i32, ptr %179, align 8
  %431 = and i32 %430, 255
  %432 = add nsw i32 %431, -1
  %433 = icmp ult i32 %432, 9
  call void @llvm.assume(i1 %433)
  %434 = zext nneg i32 %431 to i64
  %435 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !108
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %437
  %439 = load i64, ptr %438, align 8, !tbaa !169
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %429
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %442

442:                                              ; preds = %441, %429
  %443 = getelementptr inbounds i8, ptr %179, i64 %439
  %444 = load ptr, ptr %443, align 8, !tbaa !93
  %445 = getelementptr inbounds %struct.tree_exp, ptr %444, i64 0, i32 3
  %446 = load ptr, ptr %445, align 8, !tbaa !104
  %447 = load i64, ptr %446, align 8
  %448 = and i64 %447, 65535
  %449 = icmp eq i64 %448, 30
  br i1 %449, label %450, label %515

450:                                              ; preds = %442
  %451 = load i32, ptr %179, align 8
  %452 = and i32 %451, 255
  %453 = add nsw i32 %452, -1
  %454 = icmp ult i32 %453, 9
  call void @llvm.assume(i1 %454)
  %455 = zext nneg i32 %452 to i64
  %456 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !108
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %458
  %460 = load i64, ptr %459, align 8, !tbaa !169
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %450
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %463

463:                                              ; preds = %462, %450
  %464 = getelementptr inbounds i8, ptr %179, i64 %460
  %465 = load ptr, ptr %464, align 8, !tbaa !93
  %466 = getelementptr inbounds %struct.tree_exp, ptr %465, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !104
  %468 = load ptr, ptr @cfun, align 8, !tbaa !93
  %469 = call ptr @label_to_block_fn(ptr noundef %468, ptr noundef %467) #14
  %470 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 1
  br label %471

471:                                              ; preds = %504, %463
  %472 = phi i32 [ %505, %504 ], [ 0, %463 ]
  %473 = zext i32 %472 to i64
  br label %474

474:                                              ; preds = %471, %492
  %475 = load ptr, ptr %470, align 8, !tbaa !93
  %476 = icmp eq ptr %475, null
  br i1 %476, label %479, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr %475, align 8, !tbaa !145
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i32 [ %478, %477 ], [ 0, %474 ]
  %481 = icmp eq i32 %480, %472
  br i1 %481, label %485, label %482

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.VEC_edge_base, ptr %475, i64 0, i32 2, i64 %473
  %484 = load ptr, ptr %483, align 8, !tbaa !93
  br label %485

485:                                              ; preds = %482, %479
  %486 = phi ptr [ %484, %482 ], [ null, %479 ]
  %487 = icmp eq ptr %486, null
  br i1 %487, label %506, label %488

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.edge_def, ptr %486, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !187
  %491 = icmp eq ptr %490, %469
  br i1 %491, label %493, label %492

492:                                              ; preds = %488
  call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %486) #14
  br label %474, !llvm.loop !188

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.edge_def, ptr %486, i64 0, i32 7
  %495 = load i32, ptr %494, align 8, !tbaa !186
  %496 = and i32 %495, -4
  %497 = or disjoint i32 %496, 1
  store i32 %497, ptr %494, align 8, !tbaa !186
  br i1 %476, label %500, label %498

498:                                              ; preds = %493
  %499 = load i32, ptr %475, align 8, !tbaa !145
  br label %500

500:                                              ; preds = %498, %493
  %501 = phi i32 [ %499, %498 ], [ 0, %493 ]
  %502 = icmp ult i32 %472, %501
  br i1 %502, label %504, label %503

503:                                              ; preds = %500
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %504

504:                                              ; preds = %503, %500
  %505 = add i32 %472, 1
  br label %471, !llvm.loop !188

506:                                              ; preds = %485
  %507 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %508 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 9
  %509 = load i32, ptr %508, align 8, !tbaa !127
  %510 = call zeroext i8 @bitmap_set_bit(ptr noundef %507, i32 noundef %509) #14
  %511 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %512 = getelementptr inbounds %struct.basic_block_def, ptr %469, i64 0, i32 9
  %513 = load i32, ptr %512, align 8, !tbaa !127
  %514 = call zeroext i8 @bitmap_set_bit(ptr noundef %511, i32 noundef %513) #14
  call void @gsi_remove(ptr noundef nonnull %10, i8 noundef zeroext 1) #14
  br label %556

515:                                              ; preds = %442, %423, %178
  %516 = load i32, ptr %179, align 8
  %517 = and i32 %516, 255
  %518 = icmp eq i32 %517, 8
  br i1 %518, label %519, label %556, !prof !189

519:                                              ; preds = %515
  %520 = call i32 @gimple_call_flags(ptr noundef nonnull %179) #14
  %521 = and i32 %520, 8
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %556, label %523, !prof !190

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !135
  %526 = icmp eq ptr %525, null
  br label %527

527:                                              ; preds = %554, %523
  %528 = phi i32 [ 0, %523 ], [ %555, %554 ]
  br i1 %526, label %531, label %529, !prof !191

529:                                              ; preds = %527
  %530 = load i32, ptr %525, align 8, !tbaa !145
  br label %531

531:                                              ; preds = %529, %527
  %532 = phi i32 [ %530, %529 ], [ 0, %527 ]
  %533 = icmp eq i32 %532, %528
  br i1 %533, label %539, label %534, !prof !192

534:                                              ; preds = %531
  %535 = icmp ne ptr %525, null
  call void @llvm.assume(i1 %535)
  %536 = zext i32 %528 to i64
  %537 = getelementptr inbounds %struct.VEC_edge_base, ptr %525, i64 0, i32 2, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !93
  br label %539

539:                                              ; preds = %534, %531
  %540 = phi ptr [ %538, %534 ], [ null, %531 ]
  br i1 %533, label %556, label %541, !prof !192

541:                                              ; preds = %539
  %542 = getelementptr inbounds %struct.edge_def, ptr %540, i64 0, i32 7
  %543 = load i32, ptr %542, align 8, !tbaa !186
  %544 = and i32 %543, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %547, label %546

546:                                              ; preds = %541
  call void @remove_edge_and_dominated_blocks(ptr noundef %540) #14
  br label %556

547:                                              ; preds = %541
  br i1 %526, label %550, label %548

548:                                              ; preds = %547
  %549 = load i32, ptr %525, align 8, !tbaa !145
  br label %550

550:                                              ; preds = %548, %547
  %551 = phi i32 [ %549, %548 ], [ 0, %547 ]
  %552 = icmp ult i32 %528, %551
  br i1 %552, label %554, label %553

553:                                              ; preds = %550
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %554

554:                                              ; preds = %553, %550
  %555 = add i32 %528, 1
  br label %527, !llvm.loop !193

556:                                              ; preds = %539, %546, %519, %515, %506, %408, %175
  %557 = phi i8 [ %158, %175 ], [ %410, %408 ], [ 1, %506 ], [ %158, %519 ], [ %158, %515 ], [ 1, %546 ], [ %158, %539 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  %558 = load i32, ptr @optimize, align 4, !tbaa !108
  %559 = icmp sgt i32 %558, 0
  br i1 %559, label %560, label %1181, !prof !153

560:                                              ; preds = %556
  %561 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !135
  %563 = icmp eq ptr %562, null
  br i1 %563, label %568, label %564, !prof !194

564:                                              ; preds = %560
  %565 = load i32, ptr %562, align 8, !tbaa !145
  %566 = icmp eq i32 %565, 1
  %567 = zext i1 %566 to i8
  br label %568

568:                                              ; preds = %564, %560
  %569 = phi i8 [ %567, %564 ], [ 0, %560 ]
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %744, label %571, !prof !195

571:                                              ; preds = %568
  %572 = load i32, ptr %159, align 8, !tbaa !149
  %573 = and i32 %572, 512
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %576, label %575, !prof !196

575:                                              ; preds = %571
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %576

576:                                              ; preds = %575, %571
  %577 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %578 = load ptr, ptr %577, align 8, !tbaa !104
  %579 = icmp eq ptr %578, null
  br i1 %579, label %583, label %580, !prof !197

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.gimple_bb_info, ptr %578, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !198
  br label %583

583:                                              ; preds = %580, %576
  %584 = phi ptr [ %582, %580 ], [ null, %576 ]
  %585 = icmp eq ptr %584, null
  br i1 %585, label %590, label %586, !prof !199

586:                                              ; preds = %583
  %587 = load ptr, ptr %584, align 8, !tbaa !200
  %588 = icmp eq ptr %587, null
  %589 = zext i1 %588 to i8
  br label %590

590:                                              ; preds = %586, %583
  %591 = phi i8 [ 1, %583 ], [ %589, %586 ]
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %744, label %593, !prof !201

593:                                              ; preds = %590
  %594 = load ptr, ptr %561, align 8, !tbaa !135
  %595 = icmp eq ptr %594, null
  br i1 %595, label %599, label %596, !prof !202

596:                                              ; preds = %593
  %597 = load i32, ptr %594, align 8, !tbaa !145
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %600, label %599, !prof !203

599:                                              ; preds = %596, %593
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %600

600:                                              ; preds = %599, %596
  %601 = load ptr, ptr %561, align 8, !tbaa !135
  %602 = getelementptr inbounds %struct.VEC_edge_base, ptr %601, i64 0, i32 2, i64 0
  %603 = load ptr, ptr %602, align 8, !tbaa !93
  %604 = getelementptr inbounds %struct.edge_def, ptr %603, i64 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !187
  %606 = load ptr, ptr @cfun, align 8, !tbaa !93
  %607 = getelementptr inbounds %struct.function, ptr %606, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !129
  %609 = getelementptr inbounds %struct.control_flow_graph, ptr %608, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !204
  %611 = icmp eq ptr %605, %610
  br i1 %611, label %744, label %612, !prof !205

612:                                              ; preds = %600
  %613 = icmp eq ptr %601, null
  br i1 %613, label %617, label %614, !prof !206

614:                                              ; preds = %612
  %615 = load i32, ptr %601, align 8, !tbaa !145
  %616 = icmp eq i32 %615, 1
  br i1 %616, label %618, label %617, !prof !207

617:                                              ; preds = %614, %612
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %618

618:                                              ; preds = %617, %614
  %619 = load ptr, ptr %561, align 8, !tbaa !135
  %620 = getelementptr inbounds %struct.VEC_edge_base, ptr %619, i64 0, i32 2, i64 0
  %621 = load ptr, ptr %620, align 8, !tbaa !93
  %622 = getelementptr inbounds %struct.edge_def, ptr %621, i64 0, i32 1
  %623 = load ptr, ptr %622, align 8, !tbaa !187
  %624 = icmp eq ptr %623, %115
  br i1 %624, label %744, label %625, !prof !206

625:                                              ; preds = %618
  %626 = icmp eq ptr %619, null
  br i1 %626, label %630, label %627, !prof !206

627:                                              ; preds = %625
  %628 = load i32, ptr %619, align 8, !tbaa !145
  %629 = icmp eq i32 %628, 1
  br i1 %629, label %631, label %630, !prof !207

630:                                              ; preds = %627, %625
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %631

631:                                              ; preds = %630, %627
  %632 = load ptr, ptr %561, align 8, !tbaa !135
  %633 = getelementptr inbounds %struct.VEC_edge_base, ptr %632, i64 0, i32 2, i64 0
  %634 = load ptr, ptr %633, align 8, !tbaa !93
  %635 = getelementptr inbounds %struct.edge_def, ptr %634, i64 0, i32 7
  %636 = load i32, ptr %635, align 8, !tbaa !186
  %637 = and i32 %636, 2
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %744, !prof !207

639:                                              ; preds = %631, %673
  %640 = phi i32 [ %674, %673 ], [ 0, %631 ]
  %641 = load ptr, ptr %115, align 8, !tbaa !93
  %642 = icmp eq ptr %641, null
  br i1 %642, label %645, label %643, !prof !208

643:                                              ; preds = %639
  %644 = load i32, ptr %641, align 8, !tbaa !145
  br label %645

645:                                              ; preds = %643, %639
  %646 = phi i32 [ %644, %643 ], [ 0, %639 ]
  %647 = icmp eq i32 %646, %640
  br i1 %647, label %652, label %648, !prof !209

648:                                              ; preds = %645
  %649 = zext i32 %640 to i64
  %650 = getelementptr inbounds %struct.VEC_edge_base, ptr %641, i64 0, i32 2, i64 %649
  %651 = load ptr, ptr %650, align 8, !tbaa !93
  br label %652

652:                                              ; preds = %648, %645
  %653 = phi ptr [ %651, %648 ], [ null, %645 ]
  br i1 %647, label %675, label %654, !prof !209

654:                                              ; preds = %652
  %655 = load ptr, ptr %653, align 8, !tbaa !147
  %656 = load ptr, ptr @cfun, align 8, !tbaa !93
  %657 = getelementptr inbounds %struct.function, ptr %656, i64 0, i32 1
  %658 = load ptr, ptr %657, align 8, !tbaa !129
  %659 = load ptr, ptr %658, align 8, !tbaa !210
  %660 = icmp eq ptr %655, %659
  br i1 %660, label %744, label %661, !prof !211

661:                                              ; preds = %654
  %662 = getelementptr inbounds %struct.edge_def, ptr %653, i64 0, i32 7
  %663 = load i32, ptr %662, align 8, !tbaa !186
  %664 = and i32 %663, 8
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %744, !prof !212

666:                                              ; preds = %661
  br i1 %642, label %669, label %667, !prof !213

667:                                              ; preds = %666
  %668 = load i32, ptr %641, align 8, !tbaa !145
  br label %669

669:                                              ; preds = %667, %666
  %670 = phi i32 [ %668, %667 ], [ 0, %666 ]
  %671 = icmp ult i32 %640, %670
  br i1 %671, label %673, label %672, !prof !212

672:                                              ; preds = %669
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %673

673:                                              ; preds = %672, %669
  %674 = add i32 %640, 1
  br label %639, !llvm.loop !214

675:                                              ; preds = %652
  %676 = load i32, ptr %159, align 8, !tbaa !149, !noalias !215
  %677 = and i32 %676, 512
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %684, !prof !218

679:                                              ; preds = %675
  %680 = load ptr, ptr %577, align 8, !tbaa !104, !noalias !215
  %681 = icmp eq ptr %680, null
  br i1 %681, label %684, label %682, !prof !219

682:                                              ; preds = %679
  %683 = load ptr, ptr %680, align 8, !tbaa !155, !noalias !215
  br label %684

684:                                              ; preds = %682, %679, %675
  %685 = phi ptr [ %683, %682 ], [ null, %679 ], [ null, %675 ]
  %686 = icmp eq ptr %685, null
  br i1 %686, label %690, label %687, !prof !219

687:                                              ; preds = %684
  %688 = getelementptr inbounds %struct.gimple_seq_d, ptr %685, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !157, !noalias !215
  br label %690

690:                                              ; preds = %687, %684
  %691 = phi ptr [ %689, %687 ], [ null, %684 ]
  %692 = icmp eq ptr %691, null
  br i1 %692, label %721, label %693, !prof !220

693:                                              ; preds = %690, %717
  %694 = phi ptr [ %719, %717 ], [ %691, %690 ]
  %695 = load ptr, ptr %694, align 8, !tbaa !162
  %696 = load i32, ptr %695, align 8
  %697 = trunc i32 %696 to i8
  switch i8 %697, label %744 [
    i8 4, label %698
    i8 2, label %717
  ], !prof !221

698:                                              ; preds = %693
  %699 = and i32 %696, 255
  %700 = add nsw i32 %699, -1
  %701 = icmp ult i32 %700, 9
  call void @llvm.assume(i1 %701)
  %702 = zext nneg i32 %699 to i64
  %703 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %702
  %704 = load i32, ptr %703, align 4, !tbaa !108
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %705
  %707 = load i64, ptr %706, align 8, !tbaa !169
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %709, label %710, !prof !222

709:                                              ; preds = %698
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %710

710:                                              ; preds = %709, %698
  %711 = getelementptr inbounds i8, ptr %695, i64 %707
  %712 = load ptr, ptr %711, align 8, !tbaa !93
  %713 = getelementptr inbounds %struct.tree_decl_common, ptr %712, i64 0, i32 2
  %714 = load i64, ptr %713, align 8
  %715 = and i64 %714, 256
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %717, label %744, !prof !223

717:                                              ; preds = %710, %693
  %718 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %694, i64 0, i32 1
  %719 = load ptr, ptr %718, align 8, !tbaa !224
  %720 = icmp eq ptr %719, null
  br i1 %720, label %721, label %693, !prof !225, !llvm.loop !226

721:                                              ; preds = %717, %690
  %722 = load ptr, ptr @cfun, align 8, !tbaa !93
  %723 = getelementptr inbounds %struct.function, ptr %722, i64 0, i32 4
  %724 = load ptr, ptr %723, align 8, !tbaa !227
  %725 = icmp eq ptr %724, null
  br i1 %725, label %744, label %726, !prof !228

726:                                              ; preds = %721
  %727 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 3
  %728 = load ptr, ptr %727, align 8, !tbaa !229
  %729 = getelementptr inbounds %struct.loop, ptr %728, i64 0, i32 2
  %730 = load ptr, ptr %729, align 8, !tbaa !230
  %731 = icmp eq ptr %730, %115
  br i1 %731, label %744, label %732, !prof !234

732:                                              ; preds = %726
  %733 = load ptr, ptr %561, align 8, !tbaa !135
  %734 = getelementptr inbounds %struct.VEC_edge_base, ptr %733, i64 0, i32 2, i64 0
  %735 = load ptr, ptr %734, align 8, !tbaa !93
  %736 = getelementptr inbounds %struct.edge_def, ptr %735, i64 0, i32 1
  %737 = load ptr, ptr %736, align 8, !tbaa !187
  %738 = getelementptr inbounds %struct.basic_block_def, ptr %737, i64 0, i32 3
  %739 = load ptr, ptr %738, align 8, !tbaa !229
  %740 = getelementptr inbounds %struct.loop, ptr %739, i64 0, i32 2
  %741 = load ptr, ptr %740, align 8, !tbaa !230
  %742 = icmp ne ptr %741, %737
  %743 = zext i1 %742 to i8
  br label %744

744:                                              ; preds = %661, %654, %710, %693, %732, %726, %721, %631, %618, %600, %590, %568
  %745 = phi i8 [ 0, %631 ], [ 0, %618 ], [ 0, %600 ], [ 0, %590 ], [ 0, %568 ], [ 0, %726 ], [ 1, %721 ], [ %743, %732 ], [ 0, %693 ], [ 0, %710 ], [ 0, %654 ], [ 0, %661 ]
  %746 = icmp eq i8 %745, 0
  br i1 %746, label %1181, label %747, !prof !235

747:                                              ; preds = %744
  %748 = load ptr, ptr %561, align 8, !tbaa !135
  %749 = icmp eq ptr %748, null
  br i1 %749, label %753, label %750, !prof !236

750:                                              ; preds = %747
  %751 = load i32, ptr %748, align 8, !tbaa !145
  %752 = icmp eq i32 %751, 1
  br i1 %752, label %754, label %753, !prof !237

753:                                              ; preds = %750, %747
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %754

754:                                              ; preds = %753, %750
  %755 = load ptr, ptr %561, align 8, !tbaa !135
  %756 = getelementptr inbounds %struct.VEC_edge_base, ptr %755, i64 0, i32 2, i64 0
  %757 = load ptr, ptr %756, align 8, !tbaa !93
  %758 = getelementptr inbounds %struct.edge_def, ptr %757, i64 0, i32 1
  %759 = load ptr, ptr %758, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  %760 = icmp eq ptr %759, %115
  br i1 %760, label %1180, label %761, !prof !236

761:                                              ; preds = %754
  %762 = call ptr @first_stmt(ptr noundef %759) #14
  %763 = icmp eq ptr %762, null
  br i1 %763, label %803, label %764, !prof !238

764:                                              ; preds = %761
  %765 = load i32, ptr %762, align 8
  %766 = and i32 %765, 255
  %767 = icmp eq i32 %766, 4
  br i1 %767, label %768, label %803, !prof !239

768:                                              ; preds = %764
  %769 = zext nneg i32 %766 to i64
  %770 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %769
  %771 = load i32, ptr %770, align 4, !tbaa !108
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %772
  %774 = load i64, ptr %773, align 8, !tbaa !169
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %776, label %777, !prof !240

776:                                              ; preds = %768
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %777

777:                                              ; preds = %776, %768
  %778 = getelementptr inbounds i8, ptr %762, i64 %774
  %779 = load ptr, ptr %778, align 8, !tbaa !93
  %780 = getelementptr inbounds %struct.tree_decl_common, ptr %779, i64 0, i32 2
  %781 = load i64, ptr %780, align 8
  %782 = and i64 %781, 256
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %784, label %1180, !prof !241

784:                                              ; preds = %777
  %785 = load i32, ptr %762, align 8
  %786 = and i32 %785, 255
  %787 = add nsw i32 %786, -1
  %788 = icmp ult i32 %787, 9
  call void @llvm.assume(i1 %788)
  %789 = zext nneg i32 %786 to i64
  %790 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %789
  %791 = load i32, ptr %790, align 4, !tbaa !108
  %792 = zext i32 %791 to i64
  %793 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %792
  %794 = load i64, ptr %793, align 8, !tbaa !169
  %795 = icmp eq i64 %794, 0
  br i1 %795, label %796, label %797, !prof !240

796:                                              ; preds = %784
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %797

797:                                              ; preds = %796, %784
  %798 = getelementptr inbounds i8, ptr %762, i64 %794
  %799 = load ptr, ptr %798, align 8, !tbaa !93
  %800 = getelementptr inbounds %struct.tree_label_decl, ptr %799, i64 0, i32 2
  %801 = load i32, ptr %800, align 4, !tbaa !104
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %1180, !prof !241

803:                                              ; preds = %797, %764, %761
  br label %804

804:                                              ; preds = %803, %833
  %805 = phi i32 [ %834, %833 ], [ 0, %803 ]
  %806 = load ptr, ptr %115, align 8, !tbaa !93
  %807 = icmp eq ptr %806, null
  br i1 %807, label %810, label %808, !prof !242

808:                                              ; preds = %804
  %809 = load i32, ptr %806, align 8, !tbaa !145
  br label %810

810:                                              ; preds = %808, %804
  %811 = phi i32 [ %809, %808 ], [ 0, %804 ]
  %812 = icmp eq i32 %811, %805
  br i1 %812, label %817, label %813, !prof !243

813:                                              ; preds = %810
  %814 = zext i32 %805 to i64
  %815 = getelementptr inbounds %struct.VEC_edge_base, ptr %806, i64 0, i32 2, i64 %814
  %816 = load ptr, ptr %815, align 8, !tbaa !93
  br label %817

817:                                              ; preds = %813, %810
  %818 = phi ptr [ %816, %813 ], [ null, %810 ]
  br i1 %812, label %889, label %819, !prof !243

819:                                              ; preds = %817
  %820 = getelementptr inbounds %struct.edge_def, ptr %818, i64 0, i32 7
  %821 = load i32, ptr %820, align 8, !tbaa !186
  %822 = and i32 %821, 2
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %826, label %824, !prof !244

824:                                              ; preds = %819
  %825 = icmp eq ptr %759, null
  br label %835

826:                                              ; preds = %819
  br i1 %807, label %829, label %827, !prof !245

827:                                              ; preds = %826
  %828 = load i32, ptr %806, align 8, !tbaa !145
  br label %829

829:                                              ; preds = %827, %826
  %830 = phi i32 [ %828, %827 ], [ 0, %826 ]
  %831 = icmp ult i32 %805, %830
  br i1 %831, label %833, label %832, !prof !244

832:                                              ; preds = %829
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %833

833:                                              ; preds = %832, %829
  %834 = add i32 %805, 1
  br label %804, !llvm.loop !246

835:                                              ; preds = %864, %824
  %836 = phi i32 [ %865, %864 ], [ 0, %824 ]
  br i1 %825, label %837, label %838

837:                                              ; preds = %835
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #14
  br label %838

838:                                              ; preds = %837, %835
  %839 = load ptr, ptr %759, align 8, !tbaa !93
  %840 = icmp eq ptr %839, null
  br i1 %840, label %843, label %841

841:                                              ; preds = %838
  %842 = load i32, ptr %839, align 8, !tbaa !145
  br label %843

843:                                              ; preds = %841, %838
  %844 = phi i32 [ %842, %841 ], [ 0, %838 ]
  %845 = icmp eq i32 %844, %836
  br i1 %845, label %850, label %846

846:                                              ; preds = %843
  %847 = zext i32 %836 to i64
  %848 = getelementptr inbounds %struct.VEC_edge_base, ptr %839, i64 0, i32 2, i64 %847
  %849 = load ptr, ptr %848, align 8, !tbaa !93
  br label %850

850:                                              ; preds = %846, %843
  %851 = phi ptr [ %849, %846 ], [ null, %843 ]
  br i1 %845, label %866, label %852

852:                                              ; preds = %850
  %853 = getelementptr inbounds %struct.edge_def, ptr %851, i64 0, i32 7
  %854 = load i32, ptr %853, align 8, !tbaa !186
  %855 = and i32 %854, 2
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %1180

857:                                              ; preds = %852
  br i1 %840, label %860, label %858

858:                                              ; preds = %857
  %859 = load i32, ptr %839, align 8, !tbaa !145
  br label %860

860:                                              ; preds = %858, %857
  %861 = phi i32 [ %859, %858 ], [ 0, %857 ]
  %862 = icmp ult i32 %836, %861
  br i1 %862, label %864, label %863

863:                                              ; preds = %860
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %864

864:                                              ; preds = %863, %860
  %865 = add i32 %836, 1
  br label %835, !llvm.loop !246

866:                                              ; preds = %850
  %867 = getelementptr inbounds %struct.basic_block_def, ptr %759, i64 0, i32 13
  %868 = load i32, ptr %867, align 8, !tbaa !149
  %869 = and i32 %868, 512
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %872, label %871

871:                                              ; preds = %866
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %872

872:                                              ; preds = %871, %866
  %873 = getelementptr inbounds %struct.basic_block_def, ptr %759, i64 0, i32 7
  %874 = load ptr, ptr %873, align 8, !tbaa !104
  %875 = icmp eq ptr %874, null
  br i1 %875, label %879, label %876

876:                                              ; preds = %872
  %877 = getelementptr inbounds %struct.gimple_bb_info, ptr %874, i64 0, i32 1
  %878 = load ptr, ptr %877, align 8, !tbaa !198
  br label %879

879:                                              ; preds = %876, %872
  %880 = phi ptr [ %878, %876 ], [ null, %872 ]
  %881 = icmp eq ptr %880, null
  br i1 %881, label %886, label %882

882:                                              ; preds = %879
  %883 = load ptr, ptr %880, align 8, !tbaa !200
  %884 = icmp eq ptr %883, null
  %885 = zext i1 %884 to i8
  br label %886

886:                                              ; preds = %882, %879
  %887 = phi i8 [ %885, %882 ], [ 1, %879 ]
  %888 = icmp eq i8 %887, 0
  br i1 %888, label %1180, label %889

889:                                              ; preds = %817, %886
  %890 = getelementptr inbounds %struct.basic_block_def, ptr %759, i64 0, i32 13
  %891 = load i32, ptr %890, align 8, !tbaa !149
  %892 = and i32 %891, 512
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %895, label %894, !prof !237

894:                                              ; preds = %889
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %895

895:                                              ; preds = %894, %889
  %896 = getelementptr inbounds %struct.basic_block_def, ptr %759, i64 0, i32 7
  %897 = load ptr, ptr %896, align 8, !tbaa !104
  %898 = icmp eq ptr %897, null
  br i1 %898, label %902, label %899, !prof !236

899:                                              ; preds = %895
  %900 = getelementptr inbounds %struct.gimple_bb_info, ptr %897, i64 0, i32 1
  %901 = load ptr, ptr %900, align 8, !tbaa !198
  br label %902

902:                                              ; preds = %899, %895
  %903 = phi ptr [ %901, %899 ], [ null, %895 ]
  %904 = icmp eq ptr %903, null
  br i1 %904, label %909, label %905, !prof !247

905:                                              ; preds = %902
  %906 = load ptr, ptr %903, align 8, !tbaa !200
  %907 = icmp eq ptr %906, null
  %908 = zext i1 %907 to i8
  br label %909

909:                                              ; preds = %905, %902
  %910 = phi i8 [ 1, %902 ], [ %908, %905 ]
  %911 = icmp eq i8 %910, 0
  br i1 %911, label %912, label %945, !prof !248

912:                                              ; preds = %909, %943
  %913 = phi i32 [ %944, %943 ], [ 0, %909 ]
  %914 = load ptr, ptr %115, align 8, !tbaa !93
  %915 = icmp eq ptr %914, null
  br i1 %915, label %918, label %916, !prof !249

916:                                              ; preds = %912
  %917 = load i32, ptr %914, align 8, !tbaa !145
  br label %918

918:                                              ; preds = %916, %912
  %919 = phi i32 [ %917, %916 ], [ 0, %912 ]
  %920 = icmp eq i32 %919, %913
  br i1 %920, label %925, label %921, !prof !250

921:                                              ; preds = %918
  %922 = zext i32 %913 to i64
  %923 = getelementptr inbounds %struct.VEC_edge_base, ptr %914, i64 0, i32 2, i64 %922
  %924 = load ptr, ptr %923, align 8, !tbaa !93
  br label %925

925:                                              ; preds = %921, %918
  %926 = phi ptr [ %924, %921 ], [ null, %918 ]
  br i1 %920, label %945, label %927, !prof !250

927:                                              ; preds = %925
  %928 = load ptr, ptr %926, align 8, !tbaa !147
  %929 = call ptr @find_edge(ptr noundef %928, ptr noundef %759) #14
  %930 = icmp eq ptr %929, null
  br i1 %930, label %934, label %931, !prof !251

931:                                              ; preds = %927
  %932 = call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %759, ptr noundef %757, ptr noundef nonnull %929)
  %933 = icmp eq i8 %932, 0
  br i1 %933, label %1180, label %934, !prof !252

934:                                              ; preds = %931, %927
  %935 = load ptr, ptr %115, align 8, !tbaa !93
  %936 = icmp eq ptr %935, null
  br i1 %936, label %939, label %937, !prof !253

937:                                              ; preds = %934
  %938 = load i32, ptr %935, align 8, !tbaa !145
  br label %939

939:                                              ; preds = %937, %934
  %940 = phi i32 [ %938, %937 ], [ 0, %934 ]
  %941 = icmp ult i32 %913, %940
  br i1 %941, label %943, label %942, !prof !254

942:                                              ; preds = %939
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %943

943:                                              ; preds = %942, %939
  %944 = add i32 %913, 1
  br label %912, !llvm.loop !255

945:                                              ; preds = %925, %909
  %946 = load ptr, ptr %759, align 8, !tbaa !144
  %947 = icmp eq ptr %946, null
  br i1 %947, label %952, label %948, !prof !256

948:                                              ; preds = %945
  %949 = load i32, ptr %946, align 8, !tbaa !145
  %950 = icmp eq i32 %949, 1
  %951 = zext i1 %950 to i8
  br label %952

952:                                              ; preds = %948, %945
  %953 = phi i8 [ %951, %948 ], [ 0, %945 ]
  %954 = getelementptr inbounds %struct.edge_def, ptr %757, i64 0, i32 6
  br label %955

955:                                              ; preds = %1014, %952
  %956 = load ptr, ptr %115, align 8, !tbaa !93
  %957 = icmp eq ptr %956, null
  br i1 %957, label %960, label %958, !prof !257

958:                                              ; preds = %955
  %959 = load i32, ptr %956, align 8, !tbaa !145
  br label %960

960:                                              ; preds = %958, %955
  %961 = phi i32 [ %959, %958 ], [ 0, %955 ]
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %966, label %963, !prof !258

963:                                              ; preds = %960
  %964 = getelementptr inbounds %struct.VEC_edge_base, ptr %956, i64 0, i32 2, i64 0
  %965 = load ptr, ptr %964, align 8, !tbaa !93
  br label %966

966:                                              ; preds = %963, %960
  %967 = phi ptr [ %965, %963 ], [ null, %960 ]
  %968 = icmp eq ptr %967, null
  br i1 %968, label %1015, label %969, !prof !258

969:                                              ; preds = %966
  %970 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %971 = load ptr, ptr %967, align 8, !tbaa !147
  %972 = getelementptr inbounds %struct.basic_block_def, ptr %971, i64 0, i32 9
  %973 = load i32, ptr %972, align 8, !tbaa !127
  %974 = call zeroext i8 @bitmap_set_bit(ptr noundef %970, i32 noundef %973) #14
  %975 = getelementptr inbounds %struct.edge_def, ptr %967, i64 0, i32 7
  %976 = load i32, ptr %975, align 8, !tbaa !186
  %977 = and i32 %976, 2
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %981, label %979, !prof !259

979:                                              ; preds = %969
  %980 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %967, ptr noundef nonnull %759) #14
  br label %983

981:                                              ; preds = %969
  %982 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %967, ptr noundef nonnull %759) #14
  br label %983

983:                                              ; preds = %981, %979
  %984 = phi ptr [ %980, %979 ], [ %982, %981 ]
  %985 = icmp eq ptr %984, %967
  br i1 %985, label %986, label %1014, !prof !260

986:                                              ; preds = %983
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %759) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %987 = load ptr, ptr %6, align 8
  %988 = icmp eq ptr %987, null
  br i1 %988, label %1014, label %989, !prof !261

989:                                              ; preds = %986, %1006
  %990 = phi ptr [ %1012, %1006 ], [ %987, %986 ]
  %991 = load ptr, ptr %990, align 8, !tbaa !162
  %992 = load i32, ptr %954, align 4, !tbaa !262
  %993 = getelementptr inbounds %struct.gimple_statement_phi, ptr %991, i64 0, i32 1
  %994 = load i32, ptr %993, align 8, !tbaa !104
  %995 = icmp ult i32 %994, %992
  br i1 %995, label %996, label %997, !prof !263

996:                                              ; preds = %989
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %997

997:                                              ; preds = %996, %989
  %998 = zext i32 %992 to i64
  %999 = getelementptr inbounds %struct.gimple_statement_phi, ptr %991, i64 0, i32 4, i64 %998, i32 2
  %1000 = load i32, ptr %999, align 8, !tbaa !264
  %1001 = load i32, ptr %954, align 4, !tbaa !262
  %1002 = zext i32 %1001 to i64
  %1003 = load i32, ptr %993, align 8, !tbaa !104
  %1004 = icmp ult i32 %1003, %1001
  br i1 %1004, label %1005, label %1006, !prof !263

1005:                                             ; preds = %997
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %1006

1006:                                             ; preds = %1005, %997
  %1007 = getelementptr inbounds %struct.gimple_statement_phi, ptr %991, i64 0, i32 4, i64 %1002, i32 0, i32 3
  %1008 = load ptr, ptr %1007, align 8, !tbaa !174
  %1009 = load ptr, ptr %1008, align 8, !tbaa !93
  call void @add_phi_arg(ptr noundef %991, ptr noundef %1009, ptr noundef %984, i32 noundef %1000) #14
  %1010 = load ptr, ptr %6, align 8, !tbaa !266
  %1011 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1010, i64 0, i32 2
  %1012 = load ptr, ptr %1011, align 8, !tbaa !268
  store ptr %1012, ptr %6, align 8, !tbaa !266
  %1013 = icmp eq ptr %1012, null
  br i1 %1013, label %1014, label %989, !prof !269, !llvm.loop !270

1014:                                             ; preds = %1006, %986, %983
  br label %955, !llvm.loop !271

1015:                                             ; preds = %966
  %1016 = load i32, ptr %890, align 8, !tbaa !149, !noalias !272
  %1017 = and i32 %1016, 512
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1024, !prof !275

1019:                                             ; preds = %1015
  %1020 = load ptr, ptr %896, align 8, !tbaa !104, !noalias !272
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %1024, label %1022, !prof !256

1022:                                             ; preds = %1019
  %1023 = load ptr, ptr %1020, align 8, !tbaa !155, !noalias !272
  br label %1024

1024:                                             ; preds = %1022, %1019, %1015
  %1025 = phi ptr [ %1023, %1022 ], [ null, %1019 ], [ null, %1015 ]
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1029, label %1027, !prof !256

1027:                                             ; preds = %1024
  %1028 = load ptr, ptr %1025, align 8, !tbaa !200, !noalias !272
  br label %1029

1029:                                             ; preds = %1027, %1024
  %1030 = phi ptr [ %1028, %1027 ], [ null, %1024 ]
  store ptr %1030, ptr %7, align 8, !tbaa.struct !159
  store ptr %1025, ptr %89, align 8, !tbaa.struct !160
  store ptr %759, ptr %90, align 8, !tbaa.struct !161
  %1031 = load i32, ptr %159, align 8, !tbaa !149, !noalias !276
  %1032 = and i32 %1031, 512
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1040, !prof !275

1034:                                             ; preds = %1029
  %1035 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %1036 = load ptr, ptr %1035, align 8, !tbaa !104, !noalias !276
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1040, label %1038, !prof !256

1038:                                             ; preds = %1034
  %1039 = load ptr, ptr %1036, align 8, !tbaa !155, !noalias !276
  br label %1040

1040:                                             ; preds = %1038, %1034, %1029
  %1041 = phi ptr [ %1039, %1038 ], [ null, %1034 ], [ null, %1029 ]
  %1042 = icmp eq ptr %1041, null
  br i1 %1042, label %1045, label %1043, !prof !256

1043:                                             ; preds = %1040
  %1044 = load ptr, ptr %1041, align 8, !tbaa !200, !noalias !276
  br label %1045

1045:                                             ; preds = %1043, %1040
  %1046 = phi ptr [ %1044, %1043 ], [ null, %1040 ]
  store ptr %1046, ptr %6, align 8, !tbaa.struct !159
  store ptr %1041, ptr %91, align 8, !tbaa.struct !160
  store ptr %115, ptr %92, align 8, !tbaa.struct !161
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1094, label %1048, !prof !279

1048:                                             ; preds = %1045, %1091
  %1049 = phi ptr [ %1092, %1091 ], [ %1046, %1045 ]
  %1050 = load ptr, ptr %1049, align 8, !tbaa !162
  %1051 = load i32, ptr %1050, align 8
  %1052 = and i32 %1051, 255
  %1053 = icmp eq i32 %1052, 2
  br i1 %1053, label %1094, label %1054, !prof !280

1054:                                             ; preds = %1048
  %1055 = add nsw i32 %1052, -10
  %1056 = icmp ult i32 %1055, -9
  br i1 %1056, label %1069, label %1057, !prof !280

1057:                                             ; preds = %1054
  %1058 = zext nneg i32 %1052 to i64
  %1059 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1058
  %1060 = load i32, ptr %1059, align 4, !tbaa !108
  %1061 = zext i32 %1060 to i64
  %1062 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1061
  %1063 = load i64, ptr %1062, align 8, !tbaa !169
  %1064 = icmp eq i64 %1063, 0
  br i1 %1064, label %1065, label %1066, !prof !280

1065:                                             ; preds = %1057
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1066

1066:                                             ; preds = %1065, %1057
  %1067 = getelementptr inbounds i8, ptr %1050, i64 %1063
  %1068 = load ptr, ptr %1067, align 8, !tbaa !93
  br label %1069

1069:                                             ; preds = %1066, %1054
  %1070 = phi ptr [ %1068, %1066 ], [ null, %1054 ]
  %1071 = getelementptr inbounds %struct.tree_label_decl, ptr %1070, i64 0, i32 2
  %1072 = load i32, ptr %1071, align 4, !tbaa !104
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1074, label %1086, !prof !281

1074:                                             ; preds = %1069
  %1075 = getelementptr inbounds %struct.tree_decl_common, ptr %1070, i64 0, i32 2
  %1076 = load i64, ptr %1075, align 8
  %1077 = and i64 %1076, 256
  %1078 = icmp eq i64 %1077, 0
  br i1 %1078, label %1079, label %1086, !prof !281

1079:                                             ; preds = %1074
  %1080 = load i64, ptr %1070, align 8
  %1081 = and i64 %1080, 65536
  %1082 = icmp ne i64 %1081, 0
  %1083 = and i64 %1076, 4096
  %1084 = icmp eq i64 %1083, 0
  %1085 = or i1 %1084, %1082
  br i1 %1085, label %1086, label %1087, !prof !280

1086:                                             ; preds = %1079, %1074, %1069
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 0) #14
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef nonnull %1050, i32 noundef 1) #14
  br label %1091

1087:                                             ; preds = %1079
  %1088 = load ptr, ptr %6, align 8, !tbaa !266
  %1089 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1088, i64 0, i32 2
  %1090 = load ptr, ptr %1089, align 8, !tbaa !268
  store ptr %1090, ptr %6, align 8, !tbaa !266
  br label %1091

1091:                                             ; preds = %1087, %1086
  %1092 = load ptr, ptr %6, align 8
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1094, label %1048, !prof !281

1094:                                             ; preds = %1091, %1048, %1045
  %1095 = icmp eq i8 %953, 0
  br i1 %1095, label %1164, label %1096, !prof !282

1096:                                             ; preds = %1094
  %1097 = load i32, ptr %890, align 8, !tbaa !149, !noalias !283
  %1098 = and i32 %1097, 512
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1105, !prof !288

1100:                                             ; preds = %1096
  %1101 = load ptr, ptr %896, align 8, !tbaa !104, !noalias !283
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1105, label %1103, !prof !289

1103:                                             ; preds = %1100
  %1104 = load ptr, ptr %1101, align 8, !tbaa !155, !noalias !283
  br label %1105

1105:                                             ; preds = %1103, %1100, %1096
  %1106 = phi ptr [ %1104, %1103 ], [ null, %1100 ], [ null, %1096 ]
  %1107 = icmp eq ptr %1106, null
  br i1 %1107, label %1110, label %1108, !prof !289

1108:                                             ; preds = %1105
  %1109 = load ptr, ptr %1106, align 8, !tbaa !200, !noalias !283
  br label %1110

1110:                                             ; preds = %1108, %1105
  %1111 = phi ptr [ %1109, %1108 ], [ null, %1105 ]
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1123, label %1113, !prof !290

1113:                                             ; preds = %1110, %1119
  %1114 = phi ptr [ %1121, %1119 ], [ %1111, %1110 ]
  %1115 = load ptr, ptr %1114, align 8, !tbaa !162, !noalias !291
  %1116 = load i32, ptr %1115, align 8, !noalias !291
  %1117 = and i32 %1116, 255
  %1118 = icmp eq i32 %1117, 4
  br i1 %1118, label %1119, label %1123, !prof !292

1119:                                             ; preds = %1113
  %1120 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1114, i64 0, i32 2
  %1121 = load ptr, ptr %1120, align 8, !tbaa !268, !noalias !291
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1123, label %1113, !prof !293, !llvm.loop !294

1123:                                             ; preds = %1119, %1113, %1110
  %1124 = phi ptr [ %1111, %1110 ], [ %1121, %1119 ], [ %1114, %1113 ]
  store ptr %1124, ptr %7, align 8, !tbaa.struct !159
  store ptr %1106, ptr %89, align 8, !tbaa.struct !160
  store ptr %759, ptr %90, align 8, !tbaa.struct !161
  %1125 = load i32, ptr %159, align 8, !tbaa !149, !noalias !295
  %1126 = and i32 %1125, 512
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1128, label %1134, !prof !288

1128:                                             ; preds = %1123
  %1129 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %1130 = load ptr, ptr %1129, align 8, !tbaa !104, !noalias !295
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1134, label %1132, !prof !289

1132:                                             ; preds = %1128
  %1133 = load ptr, ptr %1130, align 8, !tbaa !155, !noalias !295
  br label %1134

1134:                                             ; preds = %1132, %1128, %1123
  %1135 = phi ptr [ %1133, %1132 ], [ null, %1128 ], [ null, %1123 ]
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1139, label %1137, !prof !289

1137:                                             ; preds = %1134
  %1138 = load ptr, ptr %1135, align 8, !tbaa !200, !noalias !295
  br label %1139

1139:                                             ; preds = %1137, %1134
  %1140 = phi ptr [ %1138, %1137 ], [ null, %1134 ]
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1152, label %1142, !prof !300

1142:                                             ; preds = %1139, %1148
  %1143 = phi ptr [ %1150, %1148 ], [ %1140, %1139 ]
  %1144 = load ptr, ptr %1143, align 8, !tbaa !162, !noalias !301
  %1145 = load i32, ptr %1144, align 8, !noalias !301
  %1146 = and i32 %1145, 255
  %1147 = icmp eq i32 %1146, 4
  br i1 %1147, label %1148, label %1152

1148:                                             ; preds = %1142
  %1149 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1143, i64 0, i32 2
  %1150 = load ptr, ptr %1149, align 8, !tbaa !268, !noalias !301
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %1152, label %1142, !prof !300, !llvm.loop !294

1152:                                             ; preds = %1148, %1142, %1139
  %1153 = phi ptr [ %1140, %1139 ], [ %1150, %1148 ], [ %1143, %1142 ]
  store ptr %1153, ptr %6, align 8, !tbaa.struct !159
  store ptr %1135, ptr %91, align 8, !tbaa.struct !160
  store ptr %115, ptr %92, align 8, !tbaa.struct !161
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1164, label %1155, !prof !300

1155:                                             ; preds = %1152, %1161
  %1156 = phi ptr [ %1162, %1161 ], [ %1153, %1152 ]
  %1157 = load ptr, ptr %1156, align 8, !tbaa !162
  %1158 = load i32, ptr %1157, align 8
  %1159 = and i32 %1158, 255
  %1160 = icmp eq i32 %1159, 2
  br i1 %1160, label %1161, label %1164

1161:                                             ; preds = %1155
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 0) #14
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef nonnull %1157, i32 noundef 1) #14
  %1162 = load ptr, ptr %6, align 8
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1155, !prof !300

1164:                                             ; preds = %1161, %1155, %1152, %1094
  %1165 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %1166 = getelementptr inbounds %struct.basic_block_def, ptr %759, i64 0, i32 9
  %1167 = load i32, ptr %1166, align 8, !tbaa !127
  %1168 = call zeroext i8 @bitmap_set_bit(ptr noundef %1165, i32 noundef %1167) #14
  %1169 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #14
  %1170 = icmp eq i8 %1169, 0
  br i1 %1170, label %1179, label %1171, !prof !256

1171:                                             ; preds = %1164
  %1172 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %115) #14
  %1173 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %759) #14
  %1174 = icmp eq ptr %1173, %115
  br i1 %1174, label %1177, label %1175, !prof !302

1175:                                             ; preds = %1171
  %1176 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %1173, ptr noundef %1172) #14
  br label %1177

1177:                                             ; preds = %1175, %1171
  %1178 = phi ptr [ %1176, %1175 ], [ %1172, %1171 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %759, ptr noundef %1178) #14
  br label %1179

1179:                                             ; preds = %1177, %1164
  call void @delete_basic_block(ptr noundef nonnull %115) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %1209

1180:                                             ; preds = %852, %931, %886, %797, %777, %754
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %1181

1181:                                             ; preds = %1180, %744, %556
  %1182 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 1
  %1183 = load ptr, ptr %1182, align 8, !tbaa !135
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1209, label %1185, !prof !303

1185:                                             ; preds = %1181
  %1186 = load i32, ptr %1183, align 8, !tbaa !145
  %1187 = icmp eq i32 %1186, 1
  br i1 %1187, label %1188, label %1209, !prof !304

1188:                                             ; preds = %1185
  %1189 = load ptr, ptr %1182, align 8, !tbaa !135
  %1190 = getelementptr inbounds %struct.VEC_edge_base, ptr %1189, i64 0, i32 2, i64 0
  %1191 = load ptr, ptr %1190, align 8, !tbaa !93
  %1192 = getelementptr inbounds %struct.edge_def, ptr %1191, i64 0, i32 1
  %1193 = load ptr, ptr %1192, align 8, !tbaa !187
  %1194 = call zeroext i8 @can_merge_blocks_p(ptr noundef %115, ptr noundef %1193) #14
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1209, label %1196, !prof !305

1196:                                             ; preds = %1188
  %1197 = load ptr, ptr %1182, align 8, !tbaa !135
  %1198 = icmp eq ptr %1197, null
  br i1 %1198, label %1202, label %1199, !prof !306

1199:                                             ; preds = %1196
  %1200 = load i32, ptr %1197, align 8, !tbaa !145
  %1201 = icmp eq i32 %1200, 1
  br i1 %1201, label %1203, label %1202, !prof !307

1202:                                             ; preds = %1199, %1196
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %1203

1203:                                             ; preds = %1202, %1199
  %1204 = load ptr, ptr %1182, align 8, !tbaa !135
  %1205 = getelementptr inbounds %struct.VEC_edge_base, ptr %1204, i64 0, i32 2, i64 0
  %1206 = load ptr, ptr %1205, align 8, !tbaa !93
  %1207 = getelementptr inbounds %struct.edge_def, ptr %1206, i64 0, i32 1
  %1208 = load ptr, ptr %1207, align 8, !tbaa !187
  call void @merge_blocks(ptr noundef %115, ptr noundef %1208) #14
  br label %1209

1209:                                             ; preds = %153, %1179, %1181, %1185, %1188, %1203
  %1210 = phi i8 [ 1, %1203 ], [ 1, %1179 ], [ %557, %1188 ], [ %557, %1185 ], [ 1, %153 ], [ %557, %1181 ]
  %1211 = or i8 %1210, %108
  br label %1212

1212:                                             ; preds = %1209, %106
  %1213 = phi i8 [ %1211, %1209 ], [ %108, %106 ]
  %1214 = add nuw nsw i64 %107, 1
  %1215 = icmp eq i64 %1214, %93
  br i1 %1215, label %94, label %106, !prof !308, !llvm.loop !309

1216:                                             ; preds = %2393, %1222
  %1217 = phi ptr [ %2394, %2393 ], [ %1223, %1222 ]
  %1218 = call i32 @bitmap_first_set_bit(ptr noundef nonnull %1217) #14
  %1219 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %1220 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1219, i32 noundef %1218) #14
  %1221 = icmp ult i32 %1218, 2
  br i1 %1221, label %1222, label %1226, !prof !310

1222:                                             ; preds = %1216, %1226
  %1223 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %1224 = load ptr, ptr %1223, align 8, !tbaa !138
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %2396, label %1216, !prof !311, !llvm.loop !312

1226:                                             ; preds = %1216
  %1227 = load ptr, ptr @cfun, align 8, !tbaa !93
  %1228 = getelementptr inbounds %struct.function, ptr %1227, i64 0, i32 1
  %1229 = load ptr, ptr %1228, align 8, !tbaa !129
  %1230 = getelementptr inbounds %struct.control_flow_graph, ptr %1229, i64 0, i32 2
  %1231 = load ptr, ptr %1230, align 8, !tbaa !133
  %1232 = zext i32 %1218 to i64
  %1233 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1231, i64 0, i32 2, i64 %1232
  %1234 = load ptr, ptr %1233, align 8, !tbaa !93
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1222, label %1236, !prof !313

1236:                                             ; preds = %1226
  %1237 = call ptr @last_stmt(ptr noundef %1234) #14
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1276, label %1239, !prof !142

1239:                                             ; preds = %1236
  %1240 = load i32, ptr %1237, align 8
  %1241 = and i32 %1240, 255
  %1242 = icmp eq i32 %1241, 28
  br i1 %1242, label %1243, label %1276, !prof !143

1243:                                             ; preds = %1239
  %1244 = load ptr, ptr %1234, align 8, !tbaa !144
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1276, label %1246

1246:                                             ; preds = %1243
  %1247 = load i32, ptr %1244, align 8, !tbaa !145
  %1248 = icmp eq i32 %1247, 1
  br i1 %1248, label %1249, label %1276

1249:                                             ; preds = %1246
  %1250 = getelementptr inbounds %struct.VEC_edge_base, ptr %1244, i64 0, i32 2, i64 0
  %1251 = load ptr, ptr %1250, align 8, !tbaa !93
  %1252 = load ptr, ptr %1251, align 8, !tbaa !147
  %1253 = call ptr @last_stmt(ptr noundef %1252) #14
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1276, label %1255

1255:                                             ; preds = %1249
  %1256 = load i32, ptr %1253, align 8
  %1257 = and i32 %1256, 255
  %1258 = icmp eq i32 %1257, 31
  br i1 %1258, label %1259, label %1276

1259:                                             ; preds = %1255
  %1260 = load ptr, ptr %1252, align 8, !tbaa !144
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1264, label %1262

1262:                                             ; preds = %1259
  %1263 = load i32, ptr %1260, align 8, !tbaa !145
  switch i32 %1263, label %1264 [
    i32 2, label %1276
    i32 1, label %1265
  ]

1264:                                             ; preds = %1262, %1259
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 593, ptr noundef nonnull @.str.2) #14
  br label %1265

1265:                                             ; preds = %1262, %1264
  %1266 = load ptr, ptr %1234, align 8, !tbaa !144
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1271, label %1268

1268:                                             ; preds = %1265
  %1269 = load i32, ptr %1266, align 8, !tbaa !145
  %1270 = icmp eq i32 %1269, 1
  br i1 %1270, label %1272, label %1271

1271:                                             ; preds = %1268, %1265
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.2) #14
  br label %1272

1272:                                             ; preds = %1271, %1268
  %1273 = load ptr, ptr %1234, align 8, !tbaa !144
  %1274 = getelementptr inbounds %struct.VEC_edge_base, ptr %1273, i64 0, i32 2, i64 0
  %1275 = load ptr, ptr %1274, align 8, !tbaa !93
  call void @remove_edge_and_dominated_blocks(ptr noundef %1275) #14
  br label %2328

1276:                                             ; preds = %1262, %1255, %1249, %1246, %1243, %1239, %1236
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %1277 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %1234) #14
  %1278 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 13
  %1279 = load i32, ptr %1278, align 8, !tbaa !149, !noalias !314
  %1280 = and i32 %1279, 512
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1282, label %1288, !prof !153

1282:                                             ; preds = %1276
  %1283 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 7
  %1284 = load ptr, ptr %1283, align 8, !tbaa !104, !noalias !314
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1288, label %1286, !prof !154

1286:                                             ; preds = %1282
  %1287 = load ptr, ptr %1284, align 8, !tbaa !155, !noalias !314
  br label %1288

1288:                                             ; preds = %1286, %1282, %1276
  %1289 = phi ptr [ %1287, %1286 ], [ null, %1282 ], [ null, %1276 ]
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1294, label %1291, !prof !154

1291:                                             ; preds = %1288
  %1292 = getelementptr inbounds %struct.gimple_seq_d, ptr %1289, i64 0, i32 1
  %1293 = load ptr, ptr %1292, align 8, !tbaa !157, !noalias !314
  br label %1294

1294:                                             ; preds = %1291, %1288
  %1295 = phi ptr [ %1293, %1291 ], [ null, %1288 ]
  store ptr %1295, ptr %5, align 8, !tbaa.struct !159
  store ptr %1289, ptr %100, align 8, !tbaa.struct !160
  store ptr %1234, ptr %101, align 8, !tbaa.struct !161
  %1296 = icmp eq ptr %1295, null
  br i1 %1296, label %1675, label %1297, !prof !142

1297:                                             ; preds = %1294
  %1298 = load ptr, ptr %1295, align 8, !tbaa !162
  %1299 = load i32, ptr %1298, align 8
  %1300 = trunc i32 %1299 to i8
  switch i8 %1300, label %1634 [
    i8 1, label %1301
    i8 5, label %1301
    i8 3, label %1530
  ], !prof !164

1301:                                             ; preds = %1297, %1297
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %1302 = load ptr, ptr %4, align 8
  %1303 = load ptr, ptr %1302, align 8, !tbaa !162
  %1304 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 1
  %1305 = load ptr, ptr %1304, align 8, !tbaa !135
  %1306 = icmp eq ptr %1305, null
  br i1 %1306, label %1311, label %1307, !prof !165

1307:                                             ; preds = %1301
  %1308 = load i32, ptr %1305, align 8, !tbaa !145
  %1309 = icmp eq i32 %1308, 1
  %1310 = zext i1 %1309 to i8
  br label %1311

1311:                                             ; preds = %1307, %1301
  %1312 = phi i8 [ %1310, %1307 ], [ 0, %1301 ]
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1314, label %1510, !prof !166

1314:                                             ; preds = %1311
  call void @fold_defer_overflow_warnings() #14
  %1315 = getelementptr inbounds %struct.gimple_statement_base, ptr %1303, i64 0, i32 2
  %1316 = load i32, ptr %1315, align 8, !tbaa !104
  %1317 = load i32, ptr %1303, align 8
  %1318 = and i32 %1317, 255
  %1319 = trunc i32 %1317 to i8
  switch i8 %1319, label %1449 [
    i8 1, label %1320
    i8 5, label %1434
  ], !prof !167

1320:                                             ; preds = %1314
  %1321 = add nsw i32 %1318, -10
  %1322 = icmp ult i32 %1321, -9
  br i1 %1322, label %1335, label %1323, !prof !168

1323:                                             ; preds = %1320
  %1324 = zext nneg i32 %1318 to i64
  %1325 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1324
  %1326 = load i32, ptr %1325, align 4, !tbaa !108
  %1327 = zext i32 %1326 to i64
  %1328 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1327
  %1329 = load i64, ptr %1328, align 8, !tbaa !169
  %1330 = icmp eq i64 %1329, 0
  br i1 %1330, label %1331, label %1332, !prof !168

1331:                                             ; preds = %1323
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1332

1332:                                             ; preds = %1331, %1323
  %1333 = getelementptr inbounds i8, ptr %1303, i64 %1329
  %1334 = load ptr, ptr %1333, align 8, !tbaa !93
  br label %1335

1335:                                             ; preds = %1332, %1320
  %1336 = phi ptr [ %1334, %1332 ], [ null, %1320 ]
  %1337 = load i32, ptr %1303, align 8
  %1338 = and i32 %1337, 255
  %1339 = add nsw i32 %1338, -10
  %1340 = icmp ult i32 %1339, -9
  br i1 %1340, label %1354, label %1341, !prof !168

1341:                                             ; preds = %1335
  %1342 = zext nneg i32 %1338 to i64
  %1343 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1342
  %1344 = load i32, ptr %1343, align 4, !tbaa !108
  %1345 = zext i32 %1344 to i64
  %1346 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1345
  %1347 = load i64, ptr %1346, align 8, !tbaa !169
  %1348 = icmp eq i64 %1347, 0
  br i1 %1348, label %1349, label %1350, !prof !168

1349:                                             ; preds = %1341
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1350

1350:                                             ; preds = %1349, %1341
  %1351 = getelementptr inbounds i8, ptr %1303, i64 %1347
  %1352 = getelementptr inbounds ptr, ptr %1351, i64 1
  %1353 = load ptr, ptr %1352, align 8, !tbaa !93
  br label %1354

1354:                                             ; preds = %1350, %1335
  %1355 = phi ptr [ %1353, %1350 ], [ null, %1335 ]
  %1356 = load i64, ptr %1336, align 8
  %1357 = and i64 %1356, 65535
  %1358 = icmp eq i64 %1357, 141
  br i1 %1358, label %1359, label %1391, !prof !170

1359:                                             ; preds = %1354
  %1360 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %1336) #14
  %1361 = icmp eq i8 %1360, 0
  br i1 %1361, label %1362, label %1391, !prof !171

1362:                                             ; preds = %1359
  %1363 = getelementptr inbounds %struct.tree_ssa_name, ptr %1336, i64 0, i32 2
  %1364 = load ptr, ptr %1363, align 8, !tbaa !104
  %1365 = load i32, ptr %1364, align 8
  %1366 = and i32 %1365, 255
  %1367 = icmp eq i32 %1366, 16
  br i1 %1367, label %1368, label %1391, !prof !172

1368:                                             ; preds = %1362
  %1369 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1364, i64 0, i32 2
  %1370 = load i32, ptr %1369, align 4, !tbaa !104
  %1371 = icmp eq i32 %1370, 1
  br i1 %1371, label %1372, label %1391, !prof !173

1372:                                             ; preds = %1368
  %1373 = getelementptr inbounds %struct.gimple_statement_base, ptr %1364, i64 0, i32 4
  %1374 = load ptr, ptr %1373, align 8, !tbaa !104
  %1375 = getelementptr inbounds %struct.gimple_statement_base, ptr %1303, i64 0, i32 4
  %1376 = load ptr, ptr %1375, align 8, !tbaa !104
  %1377 = icmp eq ptr %1374, %1376
  br i1 %1377, label %1378, label %1391

1378:                                             ; preds = %1372
  %1379 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1364, i64 0, i32 4, i64 0, i32 0, i32 3
  %1380 = load ptr, ptr %1379, align 8, !tbaa !174
  %1381 = load ptr, ptr %1380, align 8, !tbaa !93
  %1382 = load i64, ptr %1381, align 8
  %1383 = and i64 %1382, 65535
  %1384 = icmp eq i64 %1383, 141
  br i1 %1384, label %1385, label %1388

1385:                                             ; preds = %1378
  %1386 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %1381) #14
  %1387 = icmp eq i8 %1386, 0
  br i1 %1387, label %1388, label %1391

1388:                                             ; preds = %1385, %1378
  %1389 = load ptr, ptr %1379, align 8, !tbaa !174
  %1390 = load ptr, ptr %1389, align 8, !tbaa !93
  br label %1391

1391:                                             ; preds = %1388, %1385, %1372, %1368, %1362, %1359, %1354
  %1392 = phi ptr [ %1336, %1359 ], [ %1336, %1354 ], [ %1390, %1388 ], [ %1336, %1385 ], [ %1336, %1372 ], [ %1336, %1368 ], [ %1336, %1362 ]
  %1393 = load i64, ptr %1355, align 8
  %1394 = and i64 %1393, 65535
  %1395 = icmp eq i64 %1394, 141
  br i1 %1395, label %1396, label %1428, !prof !168

1396:                                             ; preds = %1391
  %1397 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %1355) #14
  %1398 = icmp eq i8 %1397, 0
  br i1 %1398, label %1399, label %1428

1399:                                             ; preds = %1396
  %1400 = getelementptr inbounds %struct.tree_ssa_name, ptr %1355, i64 0, i32 2
  %1401 = load ptr, ptr %1400, align 8, !tbaa !104
  %1402 = load i32, ptr %1401, align 8
  %1403 = and i32 %1402, 255
  %1404 = icmp eq i32 %1403, 16
  br i1 %1404, label %1405, label %1428

1405:                                             ; preds = %1399
  %1406 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1401, i64 0, i32 2
  %1407 = load i32, ptr %1406, align 4, !tbaa !104
  %1408 = icmp eq i32 %1407, 1
  br i1 %1408, label %1409, label %1428

1409:                                             ; preds = %1405
  %1410 = getelementptr inbounds %struct.gimple_statement_base, ptr %1401, i64 0, i32 4
  %1411 = load ptr, ptr %1410, align 8, !tbaa !104
  %1412 = getelementptr inbounds %struct.gimple_statement_base, ptr %1303, i64 0, i32 4
  %1413 = load ptr, ptr %1412, align 8, !tbaa !104
  %1414 = icmp eq ptr %1411, %1413
  br i1 %1414, label %1415, label %1428

1415:                                             ; preds = %1409
  %1416 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1401, i64 0, i32 4, i64 0, i32 0, i32 3
  %1417 = load ptr, ptr %1416, align 8, !tbaa !174
  %1418 = load ptr, ptr %1417, align 8, !tbaa !93
  %1419 = load i64, ptr %1418, align 8
  %1420 = and i64 %1419, 65535
  %1421 = icmp eq i64 %1420, 141
  br i1 %1421, label %1422, label %1425

1422:                                             ; preds = %1415
  %1423 = call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %1418) #14
  %1424 = icmp eq i8 %1423, 0
  br i1 %1424, label %1425, label %1428

1425:                                             ; preds = %1422, %1415
  %1426 = load ptr, ptr %1416, align 8, !tbaa !174
  %1427 = load ptr, ptr %1426, align 8, !tbaa !93
  br label %1428

1428:                                             ; preds = %1425, %1422, %1409, %1405, %1399, %1396, %1391
  %1429 = phi ptr [ %1355, %1396 ], [ %1355, %1391 ], [ %1427, %1425 ], [ %1355, %1422 ], [ %1355, %1409 ], [ %1355, %1405 ], [ %1355, %1399 ]
  %1430 = load i32, ptr %1303, align 8
  %1431 = lshr i32 %1430, 16
  %1432 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !93
  %1433 = call ptr @fold_binary_loc(i32 noundef %1316, i32 noundef %1431, ptr noundef %1432, ptr noundef %1392, ptr noundef %1429) #14
  br label %1449

1434:                                             ; preds = %1314
  %1435 = add nsw i32 %1318, -10
  %1436 = icmp ult i32 %1435, -9
  br i1 %1436, label %1449, label %1437, !prof !176

1437:                                             ; preds = %1434
  %1438 = zext nneg i32 %1318 to i64
  %1439 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1438
  %1440 = load i32, ptr %1439, align 4, !tbaa !108
  %1441 = zext i32 %1440 to i64
  %1442 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1441
  %1443 = load i64, ptr %1442, align 8, !tbaa !169
  %1444 = icmp eq i64 %1443, 0
  br i1 %1444, label %1445, label %1446, !prof !176

1445:                                             ; preds = %1437
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1446

1446:                                             ; preds = %1445, %1437
  %1447 = getelementptr inbounds i8, ptr %1303, i64 %1443
  %1448 = load ptr, ptr %1447, align 8, !tbaa !93
  br label %1449

1449:                                             ; preds = %1446, %1434, %1428, %1314
  %1450 = phi ptr [ %1433, %1428 ], [ null, %1314 ], [ %1448, %1446 ], [ null, %1434 ]
  %1451 = call ptr @find_taken_edge(ptr noundef %1234, ptr noundef %1450) #14
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %1459, label %1453, !prof !177

1453:                                             ; preds = %1449
  %1454 = getelementptr inbounds %struct.edge_def, ptr %1451, i64 0, i32 8
  br label %1455

1455:                                             ; preds = %1499, %1453
  %1456 = phi i32 [ %1500, %1499 ], [ 0, %1453 ]
  %1457 = phi i8 [ %1461, %1499 ], [ 0, %1453 ]
  %1458 = phi i8 [ %1462, %1499 ], [ 0, %1453 ]
  br label %1460

1459:                                             ; preds = %1449
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %1508

1460:                                             ; preds = %1455, %1482
  %1461 = phi i8 [ 1, %1482 ], [ %1457, %1455 ]
  %1462 = phi i8 [ 1, %1482 ], [ %1458, %1455 ]
  %1463 = load ptr, ptr %1304, align 8, !tbaa !93
  %1464 = icmp eq ptr %1463, null
  br i1 %1464, label %1467, label %1465, !prof !178

1465:                                             ; preds = %1460
  %1466 = load i32, ptr %1463, align 8, !tbaa !145
  br label %1467

1467:                                             ; preds = %1465, %1460
  %1468 = phi i32 [ %1466, %1465 ], [ 0, %1460 ]
  %1469 = icmp eq i32 %1468, %1456
  br i1 %1469, label %1474, label %1470, !prof !179

1470:                                             ; preds = %1467
  %1471 = zext i32 %1456 to i64
  %1472 = getelementptr inbounds %struct.VEC_edge_base, ptr %1463, i64 0, i32 2, i64 %1471
  %1473 = load ptr, ptr %1472, align 8, !tbaa !93
  br label %1474

1474:                                             ; preds = %1470, %1467
  %1475 = phi ptr [ %1473, %1470 ], [ null, %1467 ]
  %1476 = icmp eq ptr %1475, null
  br i1 %1476, label %1501, label %1477, !prof !179

1477:                                             ; preds = %1474
  %1478 = icmp eq ptr %1475, %1451
  br i1 %1478, label %1492, label %1479, !prof !180

1479:                                             ; preds = %1477
  %1480 = icmp eq i8 %1461, 0
  br i1 %1480, label %1481, label %1482, !prof !181

1481:                                             ; preds = %1479
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext 1, ptr noundef nonnull %1303, i32 noundef 2) #14
  br label %1482

1482:                                             ; preds = %1481, %1479
  %1483 = getelementptr inbounds %struct.edge_def, ptr %1451, i64 0, i32 9
  %1484 = getelementptr inbounds %struct.edge_def, ptr %1475, i64 0, i32 8
  %1485 = load i32, ptr %1484, align 4, !tbaa !182
  %1486 = load i32, ptr %1454, align 4, !tbaa !182
  %1487 = add nsw i32 %1486, %1485
  store i32 %1487, ptr %1454, align 4, !tbaa !182
  %1488 = getelementptr inbounds %struct.edge_def, ptr %1475, i64 0, i32 9
  %1489 = load i64, ptr %1488, align 8, !tbaa !183
  %1490 = load i64, ptr %1483, align 8, !tbaa !183
  %1491 = add nsw i64 %1490, %1489
  store i64 %1491, ptr %1483, align 8, !tbaa !183
  call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %1475) #14
  br label %1460, !llvm.loop !184

1492:                                             ; preds = %1477
  br i1 %1464, label %1495, label %1493, !prof !185

1493:                                             ; preds = %1492
  %1494 = load i32, ptr %1463, align 8, !tbaa !145
  br label %1495

1495:                                             ; preds = %1493, %1492
  %1496 = phi i32 [ %1494, %1493 ], [ 0, %1492 ]
  %1497 = icmp ult i32 %1456, %1496
  br i1 %1497, label %1499, label %1498, !prof !181

1498:                                             ; preds = %1495
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %1499

1499:                                             ; preds = %1498, %1495
  %1500 = add i32 %1456, 1
  br label %1455, !llvm.loop !184

1501:                                             ; preds = %1474
  %1502 = icmp eq i8 %1461, 0
  br i1 %1502, label %1503, label %1504, !prof !185

1503:                                             ; preds = %1501
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %1504

1504:                                             ; preds = %1503, %1501
  %1505 = load i32, ptr %1454, align 4, !tbaa !182
  %1506 = icmp sgt i32 %1505, 10000
  br i1 %1506, label %1507, label %1508, !prof !185

1507:                                             ; preds = %1504
  store i32 10000, ptr %1454, align 4, !tbaa !182
  br label %1508

1508:                                             ; preds = %1507, %1504, %1459
  %1509 = phi i8 [ 0, %1459 ], [ %1462, %1507 ], [ %1462, %1504 ]
  br i1 %1452, label %1527, label %1519, !prof !177

1510:                                             ; preds = %1311
  br i1 %1306, label %1514, label %1511

1511:                                             ; preds = %1510
  %1512 = load i32, ptr %1305, align 8, !tbaa !145
  %1513 = icmp eq i32 %1512, 1
  br i1 %1513, label %1515, label %1514

1514:                                             ; preds = %1511, %1510
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %1515

1515:                                             ; preds = %1514, %1511
  %1516 = load ptr, ptr %1304, align 8, !tbaa !135
  %1517 = getelementptr inbounds %struct.VEC_edge_base, ptr %1516, i64 0, i32 2, i64 0
  %1518 = load ptr, ptr %1517, align 8, !tbaa !93
  br label %1519

1519:                                             ; preds = %1515, %1508
  %1520 = phi i8 [ 0, %1515 ], [ %1509, %1508 ]
  %1521 = phi ptr [ %1518, %1515 ], [ %1451, %1508 ]
  %1522 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %1523 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 9
  %1524 = load i32, ptr %1523, align 8, !tbaa !127
  %1525 = call zeroext i8 @bitmap_set_bit(ptr noundef %1522, i32 noundef %1524) #14
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #14
  %1526 = getelementptr inbounds %struct.edge_def, ptr %1521, i64 0, i32 7
  store i32 1, ptr %1526, align 8, !tbaa !186
  br label %1527

1527:                                             ; preds = %1519, %1508
  %1528 = phi i8 [ %1520, %1519 ], [ 0, %1508 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  %1529 = or i8 %1528, %1277
  br label %1675

1530:                                             ; preds = %1297
  %1531 = and i32 %1299, 255
  %1532 = add nsw i32 %1531, -1
  %1533 = icmp ult i32 %1532, 9
  call void @llvm.assume(i1 %1533)
  %1534 = zext nneg i32 %1531 to i64
  %1535 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1534
  %1536 = load i32, ptr %1535, align 4, !tbaa !108
  %1537 = zext i32 %1536 to i64
  %1538 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1537
  %1539 = load i64, ptr %1538, align 8, !tbaa !169
  %1540 = icmp eq i64 %1539, 0
  br i1 %1540, label %1541, label %1542

1541:                                             ; preds = %1530
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1542

1542:                                             ; preds = %1541, %1530
  %1543 = getelementptr inbounds i8, ptr %1298, i64 %1539
  %1544 = load ptr, ptr %1543, align 8, !tbaa !93
  %1545 = load i64, ptr %1544, align 8
  %1546 = and i64 %1545, 65535
  %1547 = icmp eq i64 %1546, 121
  br i1 %1547, label %1548, label %1634

1548:                                             ; preds = %1542
  %1549 = load i32, ptr %1298, align 8
  %1550 = and i32 %1549, 255
  %1551 = add nsw i32 %1550, -1
  %1552 = icmp ult i32 %1551, 9
  call void @llvm.assume(i1 %1552)
  %1553 = zext nneg i32 %1550 to i64
  %1554 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1553
  %1555 = load i32, ptr %1554, align 4, !tbaa !108
  %1556 = zext i32 %1555 to i64
  %1557 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1556
  %1558 = load i64, ptr %1557, align 8, !tbaa !169
  %1559 = icmp eq i64 %1558, 0
  br i1 %1559, label %1560, label %1561

1560:                                             ; preds = %1548
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1561

1561:                                             ; preds = %1560, %1548
  %1562 = getelementptr inbounds i8, ptr %1298, i64 %1558
  %1563 = load ptr, ptr %1562, align 8, !tbaa !93
  %1564 = getelementptr inbounds %struct.tree_exp, ptr %1563, i64 0, i32 3
  %1565 = load ptr, ptr %1564, align 8, !tbaa !104
  %1566 = load i64, ptr %1565, align 8
  %1567 = and i64 %1566, 65535
  %1568 = icmp eq i64 %1567, 30
  br i1 %1568, label %1569, label %1634

1569:                                             ; preds = %1561
  %1570 = load i32, ptr %1298, align 8
  %1571 = and i32 %1570, 255
  %1572 = add nsw i32 %1571, -1
  %1573 = icmp ult i32 %1572, 9
  call void @llvm.assume(i1 %1573)
  %1574 = zext nneg i32 %1571 to i64
  %1575 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1574
  %1576 = load i32, ptr %1575, align 4, !tbaa !108
  %1577 = zext i32 %1576 to i64
  %1578 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1577
  %1579 = load i64, ptr %1578, align 8, !tbaa !169
  %1580 = icmp eq i64 %1579, 0
  br i1 %1580, label %1581, label %1582

1581:                                             ; preds = %1569
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1582

1582:                                             ; preds = %1581, %1569
  %1583 = getelementptr inbounds i8, ptr %1298, i64 %1579
  %1584 = load ptr, ptr %1583, align 8, !tbaa !93
  %1585 = getelementptr inbounds %struct.tree_exp, ptr %1584, i64 0, i32 3
  %1586 = load ptr, ptr %1585, align 8, !tbaa !104
  %1587 = load ptr, ptr @cfun, align 8, !tbaa !93
  %1588 = call ptr @label_to_block_fn(ptr noundef %1587, ptr noundef %1586) #14
  %1589 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 1
  br label %1590

1590:                                             ; preds = %1623, %1582
  %1591 = phi i32 [ %1624, %1623 ], [ 0, %1582 ]
  %1592 = zext i32 %1591 to i64
  br label %1593

1593:                                             ; preds = %1590, %1611
  %1594 = load ptr, ptr %1589, align 8, !tbaa !93
  %1595 = icmp eq ptr %1594, null
  br i1 %1595, label %1598, label %1596

1596:                                             ; preds = %1593
  %1597 = load i32, ptr %1594, align 8, !tbaa !145
  br label %1598

1598:                                             ; preds = %1596, %1593
  %1599 = phi i32 [ %1597, %1596 ], [ 0, %1593 ]
  %1600 = icmp eq i32 %1599, %1591
  br i1 %1600, label %1604, label %1601

1601:                                             ; preds = %1598
  %1602 = getelementptr inbounds %struct.VEC_edge_base, ptr %1594, i64 0, i32 2, i64 %1592
  %1603 = load ptr, ptr %1602, align 8, !tbaa !93
  br label %1604

1604:                                             ; preds = %1601, %1598
  %1605 = phi ptr [ %1603, %1601 ], [ null, %1598 ]
  %1606 = icmp eq ptr %1605, null
  br i1 %1606, label %1625, label %1607

1607:                                             ; preds = %1604
  %1608 = getelementptr inbounds %struct.edge_def, ptr %1605, i64 0, i32 1
  %1609 = load ptr, ptr %1608, align 8, !tbaa !187
  %1610 = icmp eq ptr %1609, %1588
  br i1 %1610, label %1612, label %1611

1611:                                             ; preds = %1607
  call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %1605) #14
  br label %1593, !llvm.loop !188

1612:                                             ; preds = %1607
  %1613 = getelementptr inbounds %struct.edge_def, ptr %1605, i64 0, i32 7
  %1614 = load i32, ptr %1613, align 8, !tbaa !186
  %1615 = and i32 %1614, -4
  %1616 = or disjoint i32 %1615, 1
  store i32 %1616, ptr %1613, align 8, !tbaa !186
  br i1 %1595, label %1619, label %1617

1617:                                             ; preds = %1612
  %1618 = load i32, ptr %1594, align 8, !tbaa !145
  br label %1619

1619:                                             ; preds = %1617, %1612
  %1620 = phi i32 [ %1618, %1617 ], [ 0, %1612 ]
  %1621 = icmp ult i32 %1591, %1620
  br i1 %1621, label %1623, label %1622

1622:                                             ; preds = %1619
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %1623

1623:                                             ; preds = %1622, %1619
  %1624 = add i32 %1591, 1
  br label %1590, !llvm.loop !188

1625:                                             ; preds = %1604
  %1626 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %1627 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 9
  %1628 = load i32, ptr %1627, align 8, !tbaa !127
  %1629 = call zeroext i8 @bitmap_set_bit(ptr noundef %1626, i32 noundef %1628) #14
  %1630 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %1631 = getelementptr inbounds %struct.basic_block_def, ptr %1588, i64 0, i32 9
  %1632 = load i32, ptr %1631, align 8, !tbaa !127
  %1633 = call zeroext i8 @bitmap_set_bit(ptr noundef %1630, i32 noundef %1632) #14
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #14
  br label %1675

1634:                                             ; preds = %1561, %1542, %1297
  %1635 = load i32, ptr %1298, align 8
  %1636 = and i32 %1635, 255
  %1637 = icmp eq i32 %1636, 8
  br i1 %1637, label %1638, label %1675, !prof !189

1638:                                             ; preds = %1634
  %1639 = call i32 @gimple_call_flags(ptr noundef nonnull %1298) #14
  %1640 = and i32 %1639, 8
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1675, label %1642, !prof !190

1642:                                             ; preds = %1638
  %1643 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 1
  %1644 = load ptr, ptr %1643, align 8, !tbaa !135
  %1645 = icmp eq ptr %1644, null
  br label %1646

1646:                                             ; preds = %1673, %1642
  %1647 = phi i32 [ 0, %1642 ], [ %1674, %1673 ]
  br i1 %1645, label %1650, label %1648, !prof !191

1648:                                             ; preds = %1646
  %1649 = load i32, ptr %1644, align 8, !tbaa !145
  br label %1650

1650:                                             ; preds = %1648, %1646
  %1651 = phi i32 [ %1649, %1648 ], [ 0, %1646 ]
  %1652 = icmp eq i32 %1651, %1647
  br i1 %1652, label %1658, label %1653, !prof !192

1653:                                             ; preds = %1650
  %1654 = icmp ne ptr %1644, null
  call void @llvm.assume(i1 %1654)
  %1655 = zext i32 %1647 to i64
  %1656 = getelementptr inbounds %struct.VEC_edge_base, ptr %1644, i64 0, i32 2, i64 %1655
  %1657 = load ptr, ptr %1656, align 8, !tbaa !93
  br label %1658

1658:                                             ; preds = %1653, %1650
  %1659 = phi ptr [ %1657, %1653 ], [ null, %1650 ]
  br i1 %1652, label %1675, label %1660, !prof !192

1660:                                             ; preds = %1658
  %1661 = getelementptr inbounds %struct.edge_def, ptr %1659, i64 0, i32 7
  %1662 = load i32, ptr %1661, align 8, !tbaa !186
  %1663 = and i32 %1662, 1
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1666, label %1665

1665:                                             ; preds = %1660
  call void @remove_edge_and_dominated_blocks(ptr noundef %1659) #14
  br label %1675

1666:                                             ; preds = %1660
  br i1 %1645, label %1669, label %1667

1667:                                             ; preds = %1666
  %1668 = load i32, ptr %1644, align 8, !tbaa !145
  br label %1669

1669:                                             ; preds = %1667, %1666
  %1670 = phi i32 [ %1668, %1667 ], [ 0, %1666 ]
  %1671 = icmp ult i32 %1647, %1670
  br i1 %1671, label %1673, label %1672

1672:                                             ; preds = %1669
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %1673

1673:                                             ; preds = %1672, %1669
  %1674 = add i32 %1647, 1
  br label %1646, !llvm.loop !193

1675:                                             ; preds = %1658, %1665, %1638, %1634, %1625, %1527, %1294
  %1676 = phi i8 [ %1277, %1294 ], [ %1529, %1527 ], [ 1, %1625 ], [ %1277, %1638 ], [ %1277, %1634 ], [ 1, %1665 ], [ %1277, %1658 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %1677 = load i32, ptr @optimize, align 4, !tbaa !108
  %1678 = icmp sgt i32 %1677, 0
  br i1 %1678, label %1679, label %2300, !prof !153

1679:                                             ; preds = %1675
  %1680 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 1
  %1681 = load ptr, ptr %1680, align 8, !tbaa !135
  %1682 = icmp eq ptr %1681, null
  br i1 %1682, label %1687, label %1683, !prof !194

1683:                                             ; preds = %1679
  %1684 = load i32, ptr %1681, align 8, !tbaa !145
  %1685 = icmp eq i32 %1684, 1
  %1686 = zext i1 %1685 to i8
  br label %1687

1687:                                             ; preds = %1683, %1679
  %1688 = phi i8 [ %1686, %1683 ], [ 0, %1679 ]
  %1689 = icmp eq i8 %1688, 0
  br i1 %1689, label %1863, label %1690, !prof !195

1690:                                             ; preds = %1687
  %1691 = load i32, ptr %1278, align 8, !tbaa !149
  %1692 = and i32 %1691, 512
  %1693 = icmp eq i32 %1692, 0
  br i1 %1693, label %1695, label %1694, !prof !196

1694:                                             ; preds = %1690
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %1695

1695:                                             ; preds = %1694, %1690
  %1696 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 7
  %1697 = load ptr, ptr %1696, align 8, !tbaa !104
  %1698 = icmp eq ptr %1697, null
  br i1 %1698, label %1702, label %1699, !prof !197

1699:                                             ; preds = %1695
  %1700 = getelementptr inbounds %struct.gimple_bb_info, ptr %1697, i64 0, i32 1
  %1701 = load ptr, ptr %1700, align 8, !tbaa !198
  br label %1702

1702:                                             ; preds = %1699, %1695
  %1703 = phi ptr [ %1701, %1699 ], [ null, %1695 ]
  %1704 = icmp eq ptr %1703, null
  br i1 %1704, label %1709, label %1705, !prof !199

1705:                                             ; preds = %1702
  %1706 = load ptr, ptr %1703, align 8, !tbaa !200
  %1707 = icmp eq ptr %1706, null
  %1708 = zext i1 %1707 to i8
  br label %1709

1709:                                             ; preds = %1705, %1702
  %1710 = phi i8 [ 1, %1702 ], [ %1708, %1705 ]
  %1711 = icmp eq i8 %1710, 0
  br i1 %1711, label %1863, label %1712, !prof !201

1712:                                             ; preds = %1709
  %1713 = load ptr, ptr %1680, align 8, !tbaa !135
  %1714 = icmp eq ptr %1713, null
  br i1 %1714, label %1718, label %1715, !prof !202

1715:                                             ; preds = %1712
  %1716 = load i32, ptr %1713, align 8, !tbaa !145
  %1717 = icmp eq i32 %1716, 1
  br i1 %1717, label %1719, label %1718, !prof !203

1718:                                             ; preds = %1715, %1712
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %1719

1719:                                             ; preds = %1718, %1715
  %1720 = load ptr, ptr %1680, align 8, !tbaa !135
  %1721 = getelementptr inbounds %struct.VEC_edge_base, ptr %1720, i64 0, i32 2, i64 0
  %1722 = load ptr, ptr %1721, align 8, !tbaa !93
  %1723 = getelementptr inbounds %struct.edge_def, ptr %1722, i64 0, i32 1
  %1724 = load ptr, ptr %1723, align 8, !tbaa !187
  %1725 = load ptr, ptr @cfun, align 8, !tbaa !93
  %1726 = getelementptr inbounds %struct.function, ptr %1725, i64 0, i32 1
  %1727 = load ptr, ptr %1726, align 8, !tbaa !129
  %1728 = getelementptr inbounds %struct.control_flow_graph, ptr %1727, i64 0, i32 1
  %1729 = load ptr, ptr %1728, align 8, !tbaa !204
  %1730 = icmp eq ptr %1724, %1729
  br i1 %1730, label %1863, label %1731, !prof !205

1731:                                             ; preds = %1719
  %1732 = icmp eq ptr %1720, null
  br i1 %1732, label %1736, label %1733, !prof !206

1733:                                             ; preds = %1731
  %1734 = load i32, ptr %1720, align 8, !tbaa !145
  %1735 = icmp eq i32 %1734, 1
  br i1 %1735, label %1737, label %1736, !prof !207

1736:                                             ; preds = %1733, %1731
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %1737

1737:                                             ; preds = %1736, %1733
  %1738 = load ptr, ptr %1680, align 8, !tbaa !135
  %1739 = getelementptr inbounds %struct.VEC_edge_base, ptr %1738, i64 0, i32 2, i64 0
  %1740 = load ptr, ptr %1739, align 8, !tbaa !93
  %1741 = getelementptr inbounds %struct.edge_def, ptr %1740, i64 0, i32 1
  %1742 = load ptr, ptr %1741, align 8, !tbaa !187
  %1743 = icmp eq ptr %1742, %1234
  br i1 %1743, label %1863, label %1744, !prof !206

1744:                                             ; preds = %1737
  %1745 = icmp eq ptr %1738, null
  br i1 %1745, label %1749, label %1746, !prof !206

1746:                                             ; preds = %1744
  %1747 = load i32, ptr %1738, align 8, !tbaa !145
  %1748 = icmp eq i32 %1747, 1
  br i1 %1748, label %1750, label %1749, !prof !207

1749:                                             ; preds = %1746, %1744
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %1750

1750:                                             ; preds = %1749, %1746
  %1751 = load ptr, ptr %1680, align 8, !tbaa !135
  %1752 = getelementptr inbounds %struct.VEC_edge_base, ptr %1751, i64 0, i32 2, i64 0
  %1753 = load ptr, ptr %1752, align 8, !tbaa !93
  %1754 = getelementptr inbounds %struct.edge_def, ptr %1753, i64 0, i32 7
  %1755 = load i32, ptr %1754, align 8, !tbaa !186
  %1756 = and i32 %1755, 2
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1758, label %1863, !prof !207

1758:                                             ; preds = %1750, %1792
  %1759 = phi i32 [ %1793, %1792 ], [ 0, %1750 ]
  %1760 = load ptr, ptr %1234, align 8, !tbaa !93
  %1761 = icmp eq ptr %1760, null
  br i1 %1761, label %1764, label %1762, !prof !208

1762:                                             ; preds = %1758
  %1763 = load i32, ptr %1760, align 8, !tbaa !145
  br label %1764

1764:                                             ; preds = %1762, %1758
  %1765 = phi i32 [ %1763, %1762 ], [ 0, %1758 ]
  %1766 = icmp eq i32 %1765, %1759
  br i1 %1766, label %1771, label %1767, !prof !209

1767:                                             ; preds = %1764
  %1768 = zext i32 %1759 to i64
  %1769 = getelementptr inbounds %struct.VEC_edge_base, ptr %1760, i64 0, i32 2, i64 %1768
  %1770 = load ptr, ptr %1769, align 8, !tbaa !93
  br label %1771

1771:                                             ; preds = %1767, %1764
  %1772 = phi ptr [ %1770, %1767 ], [ null, %1764 ]
  br i1 %1766, label %1794, label %1773, !prof !209

1773:                                             ; preds = %1771
  %1774 = load ptr, ptr %1772, align 8, !tbaa !147
  %1775 = load ptr, ptr @cfun, align 8, !tbaa !93
  %1776 = getelementptr inbounds %struct.function, ptr %1775, i64 0, i32 1
  %1777 = load ptr, ptr %1776, align 8, !tbaa !129
  %1778 = load ptr, ptr %1777, align 8, !tbaa !210
  %1779 = icmp eq ptr %1774, %1778
  br i1 %1779, label %1863, label %1780, !prof !211

1780:                                             ; preds = %1773
  %1781 = getelementptr inbounds %struct.edge_def, ptr %1772, i64 0, i32 7
  %1782 = load i32, ptr %1781, align 8, !tbaa !186
  %1783 = and i32 %1782, 8
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1785, label %1863, !prof !212

1785:                                             ; preds = %1780
  br i1 %1761, label %1788, label %1786, !prof !213

1786:                                             ; preds = %1785
  %1787 = load i32, ptr %1760, align 8, !tbaa !145
  br label %1788

1788:                                             ; preds = %1786, %1785
  %1789 = phi i32 [ %1787, %1786 ], [ 0, %1785 ]
  %1790 = icmp ult i32 %1759, %1789
  br i1 %1790, label %1792, label %1791, !prof !212

1791:                                             ; preds = %1788
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %1792

1792:                                             ; preds = %1791, %1788
  %1793 = add i32 %1759, 1
  br label %1758, !llvm.loop !214

1794:                                             ; preds = %1771
  %1795 = load i32, ptr %1278, align 8, !tbaa !149, !noalias !317
  %1796 = and i32 %1795, 512
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1798, label %1803, !prof !218

1798:                                             ; preds = %1794
  %1799 = load ptr, ptr %1696, align 8, !tbaa !104, !noalias !317
  %1800 = icmp eq ptr %1799, null
  br i1 %1800, label %1803, label %1801, !prof !219

1801:                                             ; preds = %1798
  %1802 = load ptr, ptr %1799, align 8, !tbaa !155, !noalias !317
  br label %1803

1803:                                             ; preds = %1801, %1798, %1794
  %1804 = phi ptr [ %1802, %1801 ], [ null, %1798 ], [ null, %1794 ]
  %1805 = icmp eq ptr %1804, null
  br i1 %1805, label %1809, label %1806, !prof !219

1806:                                             ; preds = %1803
  %1807 = getelementptr inbounds %struct.gimple_seq_d, ptr %1804, i64 0, i32 1
  %1808 = load ptr, ptr %1807, align 8, !tbaa !157, !noalias !317
  br label %1809

1809:                                             ; preds = %1806, %1803
  %1810 = phi ptr [ %1808, %1806 ], [ null, %1803 ]
  %1811 = icmp eq ptr %1810, null
  br i1 %1811, label %1840, label %1812, !prof !220

1812:                                             ; preds = %1809, %1836
  %1813 = phi ptr [ %1838, %1836 ], [ %1810, %1809 ]
  %1814 = load ptr, ptr %1813, align 8, !tbaa !162
  %1815 = load i32, ptr %1814, align 8
  %1816 = trunc i32 %1815 to i8
  switch i8 %1816, label %1863 [
    i8 4, label %1817
    i8 2, label %1836
  ], !prof !221

1817:                                             ; preds = %1812
  %1818 = and i32 %1815, 255
  %1819 = add nsw i32 %1818, -1
  %1820 = icmp ult i32 %1819, 9
  call void @llvm.assume(i1 %1820)
  %1821 = zext nneg i32 %1818 to i64
  %1822 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1821
  %1823 = load i32, ptr %1822, align 4, !tbaa !108
  %1824 = zext i32 %1823 to i64
  %1825 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1824
  %1826 = load i64, ptr %1825, align 8, !tbaa !169
  %1827 = icmp eq i64 %1826, 0
  br i1 %1827, label %1828, label %1829, !prof !222

1828:                                             ; preds = %1817
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1829

1829:                                             ; preds = %1828, %1817
  %1830 = getelementptr inbounds i8, ptr %1814, i64 %1826
  %1831 = load ptr, ptr %1830, align 8, !tbaa !93
  %1832 = getelementptr inbounds %struct.tree_decl_common, ptr %1831, i64 0, i32 2
  %1833 = load i64, ptr %1832, align 8
  %1834 = and i64 %1833, 256
  %1835 = icmp eq i64 %1834, 0
  br i1 %1835, label %1836, label %1863, !prof !223

1836:                                             ; preds = %1829, %1812
  %1837 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1813, i64 0, i32 1
  %1838 = load ptr, ptr %1837, align 8, !tbaa !224
  %1839 = icmp eq ptr %1838, null
  br i1 %1839, label %1840, label %1812, !prof !225, !llvm.loop !226

1840:                                             ; preds = %1836, %1809
  %1841 = load ptr, ptr @cfun, align 8, !tbaa !93
  %1842 = getelementptr inbounds %struct.function, ptr %1841, i64 0, i32 4
  %1843 = load ptr, ptr %1842, align 8, !tbaa !227
  %1844 = icmp eq ptr %1843, null
  br i1 %1844, label %1863, label %1845, !prof !228

1845:                                             ; preds = %1840
  %1846 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 3
  %1847 = load ptr, ptr %1846, align 8, !tbaa !229
  %1848 = getelementptr inbounds %struct.loop, ptr %1847, i64 0, i32 2
  %1849 = load ptr, ptr %1848, align 8, !tbaa !230
  %1850 = icmp eq ptr %1849, %1234
  br i1 %1850, label %1863, label %1851, !prof !234

1851:                                             ; preds = %1845
  %1852 = load ptr, ptr %1680, align 8, !tbaa !135
  %1853 = getelementptr inbounds %struct.VEC_edge_base, ptr %1852, i64 0, i32 2, i64 0
  %1854 = load ptr, ptr %1853, align 8, !tbaa !93
  %1855 = getelementptr inbounds %struct.edge_def, ptr %1854, i64 0, i32 1
  %1856 = load ptr, ptr %1855, align 8, !tbaa !187
  %1857 = getelementptr inbounds %struct.basic_block_def, ptr %1856, i64 0, i32 3
  %1858 = load ptr, ptr %1857, align 8, !tbaa !229
  %1859 = getelementptr inbounds %struct.loop, ptr %1858, i64 0, i32 2
  %1860 = load ptr, ptr %1859, align 8, !tbaa !230
  %1861 = icmp ne ptr %1860, %1856
  %1862 = zext i1 %1861 to i8
  br label %1863

1863:                                             ; preds = %1780, %1773, %1829, %1812, %1851, %1845, %1840, %1750, %1737, %1719, %1709, %1687
  %1864 = phi i8 [ 0, %1750 ], [ 0, %1737 ], [ 0, %1719 ], [ 0, %1709 ], [ 0, %1687 ], [ 0, %1845 ], [ 1, %1840 ], [ %1862, %1851 ], [ 0, %1812 ], [ 0, %1829 ], [ 0, %1773 ], [ 0, %1780 ]
  %1865 = icmp eq i8 %1864, 0
  br i1 %1865, label %2300, label %1866, !prof !235

1866:                                             ; preds = %1863
  %1867 = load ptr, ptr %1680, align 8, !tbaa !135
  %1868 = icmp eq ptr %1867, null
  br i1 %1868, label %1872, label %1869, !prof !236

1869:                                             ; preds = %1866
  %1870 = load i32, ptr %1867, align 8, !tbaa !145
  %1871 = icmp eq i32 %1870, 1
  br i1 %1871, label %1873, label %1872, !prof !237

1872:                                             ; preds = %1869, %1866
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %1873

1873:                                             ; preds = %1872, %1869
  %1874 = load ptr, ptr %1680, align 8, !tbaa !135
  %1875 = getelementptr inbounds %struct.VEC_edge_base, ptr %1874, i64 0, i32 2, i64 0
  %1876 = load ptr, ptr %1875, align 8, !tbaa !93
  %1877 = getelementptr inbounds %struct.edge_def, ptr %1876, i64 0, i32 1
  %1878 = load ptr, ptr %1877, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %1879 = icmp eq ptr %1878, %1234
  br i1 %1879, label %2299, label %1880, !prof !236

1880:                                             ; preds = %1873
  %1881 = call ptr @first_stmt(ptr noundef %1878) #14
  %1882 = icmp eq ptr %1881, null
  br i1 %1882, label %1922, label %1883, !prof !238

1883:                                             ; preds = %1880
  %1884 = load i32, ptr %1881, align 8
  %1885 = and i32 %1884, 255
  %1886 = icmp eq i32 %1885, 4
  br i1 %1886, label %1887, label %1922, !prof !239

1887:                                             ; preds = %1883
  %1888 = zext nneg i32 %1885 to i64
  %1889 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1888
  %1890 = load i32, ptr %1889, align 4, !tbaa !108
  %1891 = zext i32 %1890 to i64
  %1892 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1891
  %1893 = load i64, ptr %1892, align 8, !tbaa !169
  %1894 = icmp eq i64 %1893, 0
  br i1 %1894, label %1895, label %1896, !prof !240

1895:                                             ; preds = %1887
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1896

1896:                                             ; preds = %1895, %1887
  %1897 = getelementptr inbounds i8, ptr %1881, i64 %1893
  %1898 = load ptr, ptr %1897, align 8, !tbaa !93
  %1899 = getelementptr inbounds %struct.tree_decl_common, ptr %1898, i64 0, i32 2
  %1900 = load i64, ptr %1899, align 8
  %1901 = and i64 %1900, 256
  %1902 = icmp eq i64 %1901, 0
  br i1 %1902, label %1903, label %2299, !prof !241

1903:                                             ; preds = %1896
  %1904 = load i32, ptr %1881, align 8
  %1905 = and i32 %1904, 255
  %1906 = add nsw i32 %1905, -1
  %1907 = icmp ult i32 %1906, 9
  call void @llvm.assume(i1 %1907)
  %1908 = zext nneg i32 %1905 to i64
  %1909 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1908
  %1910 = load i32, ptr %1909, align 4, !tbaa !108
  %1911 = zext i32 %1910 to i64
  %1912 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1911
  %1913 = load i64, ptr %1912, align 8, !tbaa !169
  %1914 = icmp eq i64 %1913, 0
  br i1 %1914, label %1915, label %1916, !prof !240

1915:                                             ; preds = %1903
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %1916

1916:                                             ; preds = %1915, %1903
  %1917 = getelementptr inbounds i8, ptr %1881, i64 %1913
  %1918 = load ptr, ptr %1917, align 8, !tbaa !93
  %1919 = getelementptr inbounds %struct.tree_label_decl, ptr %1918, i64 0, i32 2
  %1920 = load i32, ptr %1919, align 4, !tbaa !104
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1922, label %2299, !prof !241

1922:                                             ; preds = %1916, %1883, %1880
  br label %1923

1923:                                             ; preds = %1922, %1952
  %1924 = phi i32 [ %1953, %1952 ], [ 0, %1922 ]
  %1925 = load ptr, ptr %1234, align 8, !tbaa !93
  %1926 = icmp eq ptr %1925, null
  br i1 %1926, label %1929, label %1927, !prof !242

1927:                                             ; preds = %1923
  %1928 = load i32, ptr %1925, align 8, !tbaa !145
  br label %1929

1929:                                             ; preds = %1927, %1923
  %1930 = phi i32 [ %1928, %1927 ], [ 0, %1923 ]
  %1931 = icmp eq i32 %1930, %1924
  br i1 %1931, label %1936, label %1932, !prof !243

1932:                                             ; preds = %1929
  %1933 = zext i32 %1924 to i64
  %1934 = getelementptr inbounds %struct.VEC_edge_base, ptr %1925, i64 0, i32 2, i64 %1933
  %1935 = load ptr, ptr %1934, align 8, !tbaa !93
  br label %1936

1936:                                             ; preds = %1932, %1929
  %1937 = phi ptr [ %1935, %1932 ], [ null, %1929 ]
  br i1 %1931, label %2008, label %1938, !prof !243

1938:                                             ; preds = %1936
  %1939 = getelementptr inbounds %struct.edge_def, ptr %1937, i64 0, i32 7
  %1940 = load i32, ptr %1939, align 8, !tbaa !186
  %1941 = and i32 %1940, 2
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1945, label %1943, !prof !244

1943:                                             ; preds = %1938
  %1944 = icmp eq ptr %1878, null
  br label %1954

1945:                                             ; preds = %1938
  br i1 %1926, label %1948, label %1946, !prof !245

1946:                                             ; preds = %1945
  %1947 = load i32, ptr %1925, align 8, !tbaa !145
  br label %1948

1948:                                             ; preds = %1946, %1945
  %1949 = phi i32 [ %1947, %1946 ], [ 0, %1945 ]
  %1950 = icmp ult i32 %1924, %1949
  br i1 %1950, label %1952, label %1951, !prof !244

1951:                                             ; preds = %1948
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %1952

1952:                                             ; preds = %1951, %1948
  %1953 = add i32 %1924, 1
  br label %1923, !llvm.loop !246

1954:                                             ; preds = %1983, %1943
  %1955 = phi i32 [ %1984, %1983 ], [ 0, %1943 ]
  br i1 %1944, label %1956, label %1957

1956:                                             ; preds = %1954
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #14
  br label %1957

1957:                                             ; preds = %1956, %1954
  %1958 = load ptr, ptr %1878, align 8, !tbaa !93
  %1959 = icmp eq ptr %1958, null
  br i1 %1959, label %1962, label %1960

1960:                                             ; preds = %1957
  %1961 = load i32, ptr %1958, align 8, !tbaa !145
  br label %1962

1962:                                             ; preds = %1960, %1957
  %1963 = phi i32 [ %1961, %1960 ], [ 0, %1957 ]
  %1964 = icmp eq i32 %1963, %1955
  br i1 %1964, label %1969, label %1965

1965:                                             ; preds = %1962
  %1966 = zext i32 %1955 to i64
  %1967 = getelementptr inbounds %struct.VEC_edge_base, ptr %1958, i64 0, i32 2, i64 %1966
  %1968 = load ptr, ptr %1967, align 8, !tbaa !93
  br label %1969

1969:                                             ; preds = %1965, %1962
  %1970 = phi ptr [ %1968, %1965 ], [ null, %1962 ]
  br i1 %1964, label %1985, label %1971

1971:                                             ; preds = %1969
  %1972 = getelementptr inbounds %struct.edge_def, ptr %1970, i64 0, i32 7
  %1973 = load i32, ptr %1972, align 8, !tbaa !186
  %1974 = and i32 %1973, 2
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %1976, label %2299

1976:                                             ; preds = %1971
  br i1 %1959, label %1979, label %1977

1977:                                             ; preds = %1976
  %1978 = load i32, ptr %1958, align 8, !tbaa !145
  br label %1979

1979:                                             ; preds = %1977, %1976
  %1980 = phi i32 [ %1978, %1977 ], [ 0, %1976 ]
  %1981 = icmp ult i32 %1955, %1980
  br i1 %1981, label %1983, label %1982

1982:                                             ; preds = %1979
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %1983

1983:                                             ; preds = %1982, %1979
  %1984 = add i32 %1955, 1
  br label %1954, !llvm.loop !246

1985:                                             ; preds = %1969
  %1986 = getelementptr inbounds %struct.basic_block_def, ptr %1878, i64 0, i32 13
  %1987 = load i32, ptr %1986, align 8, !tbaa !149
  %1988 = and i32 %1987, 512
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %1991, label %1990

1990:                                             ; preds = %1985
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %1991

1991:                                             ; preds = %1990, %1985
  %1992 = getelementptr inbounds %struct.basic_block_def, ptr %1878, i64 0, i32 7
  %1993 = load ptr, ptr %1992, align 8, !tbaa !104
  %1994 = icmp eq ptr %1993, null
  br i1 %1994, label %1998, label %1995

1995:                                             ; preds = %1991
  %1996 = getelementptr inbounds %struct.gimple_bb_info, ptr %1993, i64 0, i32 1
  %1997 = load ptr, ptr %1996, align 8, !tbaa !198
  br label %1998

1998:                                             ; preds = %1995, %1991
  %1999 = phi ptr [ %1997, %1995 ], [ null, %1991 ]
  %2000 = icmp eq ptr %1999, null
  br i1 %2000, label %2005, label %2001

2001:                                             ; preds = %1998
  %2002 = load ptr, ptr %1999, align 8, !tbaa !200
  %2003 = icmp eq ptr %2002, null
  %2004 = zext i1 %2003 to i8
  br label %2005

2005:                                             ; preds = %2001, %1998
  %2006 = phi i8 [ %2004, %2001 ], [ 1, %1998 ]
  %2007 = icmp eq i8 %2006, 0
  br i1 %2007, label %2299, label %2008

2008:                                             ; preds = %1936, %2005
  %2009 = getelementptr inbounds %struct.basic_block_def, ptr %1878, i64 0, i32 13
  %2010 = load i32, ptr %2009, align 8, !tbaa !149
  %2011 = and i32 %2010, 512
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2014, label %2013, !prof !237

2013:                                             ; preds = %2008
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %2014

2014:                                             ; preds = %2013, %2008
  %2015 = getelementptr inbounds %struct.basic_block_def, ptr %1878, i64 0, i32 7
  %2016 = load ptr, ptr %2015, align 8, !tbaa !104
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2021, label %2018, !prof !236

2018:                                             ; preds = %2014
  %2019 = getelementptr inbounds %struct.gimple_bb_info, ptr %2016, i64 0, i32 1
  %2020 = load ptr, ptr %2019, align 8, !tbaa !198
  br label %2021

2021:                                             ; preds = %2018, %2014
  %2022 = phi ptr [ %2020, %2018 ], [ null, %2014 ]
  %2023 = icmp eq ptr %2022, null
  br i1 %2023, label %2028, label %2024, !prof !247

2024:                                             ; preds = %2021
  %2025 = load ptr, ptr %2022, align 8, !tbaa !200
  %2026 = icmp eq ptr %2025, null
  %2027 = zext i1 %2026 to i8
  br label %2028

2028:                                             ; preds = %2024, %2021
  %2029 = phi i8 [ 1, %2021 ], [ %2027, %2024 ]
  %2030 = icmp eq i8 %2029, 0
  br i1 %2030, label %2031, label %2064, !prof !248

2031:                                             ; preds = %2028, %2062
  %2032 = phi i32 [ %2063, %2062 ], [ 0, %2028 ]
  %2033 = load ptr, ptr %1234, align 8, !tbaa !93
  %2034 = icmp eq ptr %2033, null
  br i1 %2034, label %2037, label %2035, !prof !249

2035:                                             ; preds = %2031
  %2036 = load i32, ptr %2033, align 8, !tbaa !145
  br label %2037

2037:                                             ; preds = %2035, %2031
  %2038 = phi i32 [ %2036, %2035 ], [ 0, %2031 ]
  %2039 = icmp eq i32 %2038, %2032
  br i1 %2039, label %2044, label %2040, !prof !250

2040:                                             ; preds = %2037
  %2041 = zext i32 %2032 to i64
  %2042 = getelementptr inbounds %struct.VEC_edge_base, ptr %2033, i64 0, i32 2, i64 %2041
  %2043 = load ptr, ptr %2042, align 8, !tbaa !93
  br label %2044

2044:                                             ; preds = %2040, %2037
  %2045 = phi ptr [ %2043, %2040 ], [ null, %2037 ]
  br i1 %2039, label %2064, label %2046, !prof !250

2046:                                             ; preds = %2044
  %2047 = load ptr, ptr %2045, align 8, !tbaa !147
  %2048 = call ptr @find_edge(ptr noundef %2047, ptr noundef %1878) #14
  %2049 = icmp eq ptr %2048, null
  br i1 %2049, label %2053, label %2050, !prof !251

2050:                                             ; preds = %2046
  %2051 = call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %1878, ptr noundef %1876, ptr noundef nonnull %2048)
  %2052 = icmp eq i8 %2051, 0
  br i1 %2052, label %2299, label %2053, !prof !252

2053:                                             ; preds = %2050, %2046
  %2054 = load ptr, ptr %1234, align 8, !tbaa !93
  %2055 = icmp eq ptr %2054, null
  br i1 %2055, label %2058, label %2056, !prof !253

2056:                                             ; preds = %2053
  %2057 = load i32, ptr %2054, align 8, !tbaa !145
  br label %2058

2058:                                             ; preds = %2056, %2053
  %2059 = phi i32 [ %2057, %2056 ], [ 0, %2053 ]
  %2060 = icmp ult i32 %2032, %2059
  br i1 %2060, label %2062, label %2061, !prof !254

2061:                                             ; preds = %2058
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %2062

2062:                                             ; preds = %2061, %2058
  %2063 = add i32 %2032, 1
  br label %2031, !llvm.loop !255

2064:                                             ; preds = %2044, %2028
  %2065 = load ptr, ptr %1878, align 8, !tbaa !144
  %2066 = icmp eq ptr %2065, null
  br i1 %2066, label %2071, label %2067, !prof !256

2067:                                             ; preds = %2064
  %2068 = load i32, ptr %2065, align 8, !tbaa !145
  %2069 = icmp eq i32 %2068, 1
  %2070 = zext i1 %2069 to i8
  br label %2071

2071:                                             ; preds = %2067, %2064
  %2072 = phi i8 [ %2070, %2067 ], [ 0, %2064 ]
  %2073 = getelementptr inbounds %struct.edge_def, ptr %1876, i64 0, i32 6
  br label %2074

2074:                                             ; preds = %2133, %2071
  %2075 = load ptr, ptr %1234, align 8, !tbaa !93
  %2076 = icmp eq ptr %2075, null
  br i1 %2076, label %2079, label %2077, !prof !257

2077:                                             ; preds = %2074
  %2078 = load i32, ptr %2075, align 8, !tbaa !145
  br label %2079

2079:                                             ; preds = %2077, %2074
  %2080 = phi i32 [ %2078, %2077 ], [ 0, %2074 ]
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2085, label %2082, !prof !258

2082:                                             ; preds = %2079
  %2083 = getelementptr inbounds %struct.VEC_edge_base, ptr %2075, i64 0, i32 2, i64 0
  %2084 = load ptr, ptr %2083, align 8, !tbaa !93
  br label %2085

2085:                                             ; preds = %2082, %2079
  %2086 = phi ptr [ %2084, %2082 ], [ null, %2079 ]
  %2087 = icmp eq ptr %2086, null
  br i1 %2087, label %2134, label %2088, !prof !258

2088:                                             ; preds = %2085
  %2089 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %2090 = load ptr, ptr %2086, align 8, !tbaa !147
  %2091 = getelementptr inbounds %struct.basic_block_def, ptr %2090, i64 0, i32 9
  %2092 = load i32, ptr %2091, align 8, !tbaa !127
  %2093 = call zeroext i8 @bitmap_set_bit(ptr noundef %2089, i32 noundef %2092) #14
  %2094 = getelementptr inbounds %struct.edge_def, ptr %2086, i64 0, i32 7
  %2095 = load i32, ptr %2094, align 8, !tbaa !186
  %2096 = and i32 %2095, 2
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %2100, label %2098, !prof !259

2098:                                             ; preds = %2088
  %2099 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %2086, ptr noundef nonnull %1878) #14
  br label %2102

2100:                                             ; preds = %2088
  %2101 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %2086, ptr noundef nonnull %1878) #14
  br label %2102

2102:                                             ; preds = %2100, %2098
  %2103 = phi ptr [ %2099, %2098 ], [ %2101, %2100 ]
  %2104 = icmp eq ptr %2103, %2086
  br i1 %2104, label %2105, label %2133, !prof !260

2105:                                             ; preds = %2102
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1878) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  %2106 = load ptr, ptr %1, align 8
  %2107 = icmp eq ptr %2106, null
  br i1 %2107, label %2133, label %2108, !prof !261

2108:                                             ; preds = %2105, %2125
  %2109 = phi ptr [ %2131, %2125 ], [ %2106, %2105 ]
  %2110 = load ptr, ptr %2109, align 8, !tbaa !162
  %2111 = load i32, ptr %2073, align 4, !tbaa !262
  %2112 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2110, i64 0, i32 1
  %2113 = load i32, ptr %2112, align 8, !tbaa !104
  %2114 = icmp ult i32 %2113, %2111
  br i1 %2114, label %2115, label %2116, !prof !263

2115:                                             ; preds = %2108
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %2116

2116:                                             ; preds = %2115, %2108
  %2117 = zext i32 %2111 to i64
  %2118 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2110, i64 0, i32 4, i64 %2117, i32 2
  %2119 = load i32, ptr %2118, align 8, !tbaa !264
  %2120 = load i32, ptr %2073, align 4, !tbaa !262
  %2121 = zext i32 %2120 to i64
  %2122 = load i32, ptr %2112, align 8, !tbaa !104
  %2123 = icmp ult i32 %2122, %2120
  br i1 %2123, label %2124, label %2125, !prof !263

2124:                                             ; preds = %2116
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %2125

2125:                                             ; preds = %2124, %2116
  %2126 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2110, i64 0, i32 4, i64 %2121, i32 0, i32 3
  %2127 = load ptr, ptr %2126, align 8, !tbaa !174
  %2128 = load ptr, ptr %2127, align 8, !tbaa !93
  call void @add_phi_arg(ptr noundef %2110, ptr noundef %2128, ptr noundef %2103, i32 noundef %2119) #14
  %2129 = load ptr, ptr %1, align 8, !tbaa !266
  %2130 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2129, i64 0, i32 2
  %2131 = load ptr, ptr %2130, align 8, !tbaa !268
  store ptr %2131, ptr %1, align 8, !tbaa !266
  %2132 = icmp eq ptr %2131, null
  br i1 %2132, label %2133, label %2108, !prof !269, !llvm.loop !270

2133:                                             ; preds = %2125, %2105, %2102
  br label %2074, !llvm.loop !271

2134:                                             ; preds = %2085
  %2135 = load i32, ptr %2009, align 8, !tbaa !149, !noalias !320
  %2136 = and i32 %2135, 512
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2138, label %2143, !prof !275

2138:                                             ; preds = %2134
  %2139 = load ptr, ptr %2015, align 8, !tbaa !104, !noalias !320
  %2140 = icmp eq ptr %2139, null
  br i1 %2140, label %2143, label %2141, !prof !256

2141:                                             ; preds = %2138
  %2142 = load ptr, ptr %2139, align 8, !tbaa !155, !noalias !320
  br label %2143

2143:                                             ; preds = %2141, %2138, %2134
  %2144 = phi ptr [ %2142, %2141 ], [ null, %2138 ], [ null, %2134 ]
  %2145 = icmp eq ptr %2144, null
  br i1 %2145, label %2148, label %2146, !prof !256

2146:                                             ; preds = %2143
  %2147 = load ptr, ptr %2144, align 8, !tbaa !200, !noalias !320
  br label %2148

2148:                                             ; preds = %2146, %2143
  %2149 = phi ptr [ %2147, %2146 ], [ null, %2143 ]
  store ptr %2149, ptr %2, align 8, !tbaa.struct !159
  store ptr %2144, ptr %102, align 8, !tbaa.struct !160
  store ptr %1878, ptr %103, align 8, !tbaa.struct !161
  %2150 = load i32, ptr %1278, align 8, !tbaa !149, !noalias !323
  %2151 = and i32 %2150, 512
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2153, label %2159, !prof !275

2153:                                             ; preds = %2148
  %2154 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 7
  %2155 = load ptr, ptr %2154, align 8, !tbaa !104, !noalias !323
  %2156 = icmp eq ptr %2155, null
  br i1 %2156, label %2159, label %2157, !prof !256

2157:                                             ; preds = %2153
  %2158 = load ptr, ptr %2155, align 8, !tbaa !155, !noalias !323
  br label %2159

2159:                                             ; preds = %2157, %2153, %2148
  %2160 = phi ptr [ %2158, %2157 ], [ null, %2153 ], [ null, %2148 ]
  %2161 = icmp eq ptr %2160, null
  br i1 %2161, label %2164, label %2162, !prof !256

2162:                                             ; preds = %2159
  %2163 = load ptr, ptr %2160, align 8, !tbaa !200, !noalias !323
  br label %2164

2164:                                             ; preds = %2162, %2159
  %2165 = phi ptr [ %2163, %2162 ], [ null, %2159 ]
  store ptr %2165, ptr %1, align 8, !tbaa.struct !159
  store ptr %2160, ptr %104, align 8, !tbaa.struct !160
  store ptr %1234, ptr %105, align 8, !tbaa.struct !161
  %2166 = icmp eq ptr %2165, null
  br i1 %2166, label %2213, label %2167, !prof !279

2167:                                             ; preds = %2164, %2210
  %2168 = phi ptr [ %2211, %2210 ], [ %2165, %2164 ]
  %2169 = load ptr, ptr %2168, align 8, !tbaa !162
  %2170 = load i32, ptr %2169, align 8
  %2171 = and i32 %2170, 255
  %2172 = icmp eq i32 %2171, 2
  br i1 %2172, label %2213, label %2173, !prof !280

2173:                                             ; preds = %2167
  %2174 = add nsw i32 %2171, -10
  %2175 = icmp ult i32 %2174, -9
  br i1 %2175, label %2188, label %2176, !prof !280

2176:                                             ; preds = %2173
  %2177 = zext nneg i32 %2171 to i64
  %2178 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2177
  %2179 = load i32, ptr %2178, align 4, !tbaa !108
  %2180 = zext i32 %2179 to i64
  %2181 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2180
  %2182 = load i64, ptr %2181, align 8, !tbaa !169
  %2183 = icmp eq i64 %2182, 0
  br i1 %2183, label %2184, label %2185, !prof !280

2184:                                             ; preds = %2176
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %2185

2185:                                             ; preds = %2184, %2176
  %2186 = getelementptr inbounds i8, ptr %2169, i64 %2182
  %2187 = load ptr, ptr %2186, align 8, !tbaa !93
  br label %2188

2188:                                             ; preds = %2185, %2173
  %2189 = phi ptr [ %2187, %2185 ], [ null, %2173 ]
  %2190 = getelementptr inbounds %struct.tree_label_decl, ptr %2189, i64 0, i32 2
  %2191 = load i32, ptr %2190, align 4, !tbaa !104
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2193, label %2205, !prof !281

2193:                                             ; preds = %2188
  %2194 = getelementptr inbounds %struct.tree_decl_common, ptr %2189, i64 0, i32 2
  %2195 = load i64, ptr %2194, align 8
  %2196 = and i64 %2195, 256
  %2197 = icmp eq i64 %2196, 0
  br i1 %2197, label %2198, label %2205, !prof !281

2198:                                             ; preds = %2193
  %2199 = load i64, ptr %2189, align 8
  %2200 = and i64 %2199, 65536
  %2201 = icmp ne i64 %2200, 0
  %2202 = and i64 %2195, 4096
  %2203 = icmp eq i64 %2202, 0
  %2204 = or i1 %2203, %2201
  br i1 %2204, label %2205, label %2206, !prof !280

2205:                                             ; preds = %2198, %2193, %2188
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 0) #14
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef nonnull %2169, i32 noundef 1) #14
  br label %2210

2206:                                             ; preds = %2198
  %2207 = load ptr, ptr %1, align 8, !tbaa !266
  %2208 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2207, i64 0, i32 2
  %2209 = load ptr, ptr %2208, align 8, !tbaa !268
  store ptr %2209, ptr %1, align 8, !tbaa !266
  br label %2210

2210:                                             ; preds = %2206, %2205
  %2211 = load ptr, ptr %1, align 8
  %2212 = icmp eq ptr %2211, null
  br i1 %2212, label %2213, label %2167, !prof !281

2213:                                             ; preds = %2210, %2167, %2164
  %2214 = icmp eq i8 %2072, 0
  br i1 %2214, label %2283, label %2215, !prof !282

2215:                                             ; preds = %2213
  %2216 = load i32, ptr %2009, align 8, !tbaa !149, !noalias !326
  %2217 = and i32 %2216, 512
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2219, label %2224, !prof !288

2219:                                             ; preds = %2215
  %2220 = load ptr, ptr %2015, align 8, !tbaa !104, !noalias !326
  %2221 = icmp eq ptr %2220, null
  br i1 %2221, label %2224, label %2222, !prof !289

2222:                                             ; preds = %2219
  %2223 = load ptr, ptr %2220, align 8, !tbaa !155, !noalias !326
  br label %2224

2224:                                             ; preds = %2222, %2219, %2215
  %2225 = phi ptr [ %2223, %2222 ], [ null, %2219 ], [ null, %2215 ]
  %2226 = icmp eq ptr %2225, null
  br i1 %2226, label %2229, label %2227, !prof !289

2227:                                             ; preds = %2224
  %2228 = load ptr, ptr %2225, align 8, !tbaa !200, !noalias !326
  br label %2229

2229:                                             ; preds = %2227, %2224
  %2230 = phi ptr [ %2228, %2227 ], [ null, %2224 ]
  %2231 = icmp eq ptr %2230, null
  br i1 %2231, label %2242, label %2232, !prof !290

2232:                                             ; preds = %2229, %2238
  %2233 = phi ptr [ %2240, %2238 ], [ %2230, %2229 ]
  %2234 = load ptr, ptr %2233, align 8, !tbaa !162, !noalias !331
  %2235 = load i32, ptr %2234, align 8, !noalias !331
  %2236 = and i32 %2235, 255
  %2237 = icmp eq i32 %2236, 4
  br i1 %2237, label %2238, label %2242, !prof !292

2238:                                             ; preds = %2232
  %2239 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2233, i64 0, i32 2
  %2240 = load ptr, ptr %2239, align 8, !tbaa !268, !noalias !331
  %2241 = icmp eq ptr %2240, null
  br i1 %2241, label %2242, label %2232, !prof !293, !llvm.loop !294

2242:                                             ; preds = %2238, %2232, %2229
  %2243 = phi ptr [ %2230, %2229 ], [ %2240, %2238 ], [ %2233, %2232 ]
  store ptr %2243, ptr %2, align 8, !tbaa.struct !159
  store ptr %2225, ptr %102, align 8, !tbaa.struct !160
  store ptr %1878, ptr %103, align 8, !tbaa.struct !161
  %2244 = load i32, ptr %1278, align 8, !tbaa !149, !noalias !332
  %2245 = and i32 %2244, 512
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2247, label %2253, !prof !288

2247:                                             ; preds = %2242
  %2248 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 7
  %2249 = load ptr, ptr %2248, align 8, !tbaa !104, !noalias !332
  %2250 = icmp eq ptr %2249, null
  br i1 %2250, label %2253, label %2251, !prof !289

2251:                                             ; preds = %2247
  %2252 = load ptr, ptr %2249, align 8, !tbaa !155, !noalias !332
  br label %2253

2253:                                             ; preds = %2251, %2247, %2242
  %2254 = phi ptr [ %2252, %2251 ], [ null, %2247 ], [ null, %2242 ]
  %2255 = icmp eq ptr %2254, null
  br i1 %2255, label %2258, label %2256, !prof !289

2256:                                             ; preds = %2253
  %2257 = load ptr, ptr %2254, align 8, !tbaa !200, !noalias !332
  br label %2258

2258:                                             ; preds = %2256, %2253
  %2259 = phi ptr [ %2257, %2256 ], [ null, %2253 ]
  %2260 = icmp eq ptr %2259, null
  br i1 %2260, label %2271, label %2261, !prof !300

2261:                                             ; preds = %2258, %2267
  %2262 = phi ptr [ %2269, %2267 ], [ %2259, %2258 ]
  %2263 = load ptr, ptr %2262, align 8, !tbaa !162, !noalias !337
  %2264 = load i32, ptr %2263, align 8, !noalias !337
  %2265 = and i32 %2264, 255
  %2266 = icmp eq i32 %2265, 4
  br i1 %2266, label %2267, label %2271

2267:                                             ; preds = %2261
  %2268 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2262, i64 0, i32 2
  %2269 = load ptr, ptr %2268, align 8, !tbaa !268, !noalias !337
  %2270 = icmp eq ptr %2269, null
  br i1 %2270, label %2271, label %2261, !prof !300, !llvm.loop !294

2271:                                             ; preds = %2267, %2261, %2258
  %2272 = phi ptr [ %2259, %2258 ], [ %2269, %2267 ], [ %2262, %2261 ]
  store ptr %2272, ptr %1, align 8, !tbaa.struct !159
  store ptr %2254, ptr %104, align 8, !tbaa.struct !160
  store ptr %1234, ptr %105, align 8, !tbaa.struct !161
  %2273 = icmp eq ptr %2272, null
  br i1 %2273, label %2283, label %2274, !prof !300

2274:                                             ; preds = %2271, %2280
  %2275 = phi ptr [ %2281, %2280 ], [ %2272, %2271 ]
  %2276 = load ptr, ptr %2275, align 8, !tbaa !162
  %2277 = load i32, ptr %2276, align 8
  %2278 = and i32 %2277, 255
  %2279 = icmp eq i32 %2278, 2
  br i1 %2279, label %2280, label %2283

2280:                                             ; preds = %2274
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 0) #14
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef nonnull %2276, i32 noundef 1) #14
  %2281 = load ptr, ptr %1, align 8
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %2283, label %2274, !prof !300

2283:                                             ; preds = %2280, %2274, %2271, %2213
  %2284 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %2285 = getelementptr inbounds %struct.basic_block_def, ptr %1878, i64 0, i32 9
  %2286 = load i32, ptr %2285, align 8, !tbaa !127
  %2287 = call zeroext i8 @bitmap_set_bit(ptr noundef %2284, i32 noundef %2286) #14
  %2288 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #14
  %2289 = icmp eq i8 %2288, 0
  br i1 %2289, label %2298, label %2290, !prof !256

2290:                                             ; preds = %2283
  %2291 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %1234) #14
  %2292 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %1878) #14
  %2293 = icmp eq ptr %2292, %1234
  br i1 %2293, label %2296, label %2294, !prof !302

2294:                                             ; preds = %2290
  %2295 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %2292, ptr noundef %2291) #14
  br label %2296

2296:                                             ; preds = %2294, %2290
  %2297 = phi ptr [ %2295, %2294 ], [ %2291, %2290 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %1878, ptr noundef %2297) #14
  br label %2298

2298:                                             ; preds = %2296, %2283
  call void @delete_basic_block(ptr noundef nonnull %1234) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %2328

2299:                                             ; preds = %1971, %2050, %2005, %1916, %1896, %1873
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %2300

2300:                                             ; preds = %2299, %1863, %1675
  %2301 = getelementptr inbounds %struct.basic_block_def, ptr %1234, i64 0, i32 1
  %2302 = load ptr, ptr %2301, align 8, !tbaa !135
  %2303 = icmp eq ptr %2302, null
  br i1 %2303, label %2328, label %2304, !prof !303

2304:                                             ; preds = %2300
  %2305 = load i32, ptr %2302, align 8, !tbaa !145
  %2306 = icmp eq i32 %2305, 1
  br i1 %2306, label %2307, label %2328, !prof !304

2307:                                             ; preds = %2304
  %2308 = load ptr, ptr %2301, align 8, !tbaa !135
  %2309 = getelementptr inbounds %struct.VEC_edge_base, ptr %2308, i64 0, i32 2, i64 0
  %2310 = load ptr, ptr %2309, align 8, !tbaa !93
  %2311 = getelementptr inbounds %struct.edge_def, ptr %2310, i64 0, i32 1
  %2312 = load ptr, ptr %2311, align 8, !tbaa !187
  %2313 = call zeroext i8 @can_merge_blocks_p(ptr noundef %1234, ptr noundef %2312) #14
  %2314 = icmp eq i8 %2313, 0
  br i1 %2314, label %2328, label %2315, !prof !305

2315:                                             ; preds = %2307
  %2316 = load ptr, ptr %2301, align 8, !tbaa !135
  %2317 = icmp eq ptr %2316, null
  br i1 %2317, label %2321, label %2318, !prof !306

2318:                                             ; preds = %2315
  %2319 = load i32, ptr %2316, align 8, !tbaa !145
  %2320 = icmp eq i32 %2319, 1
  br i1 %2320, label %2322, label %2321, !prof !307

2321:                                             ; preds = %2318, %2315
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %2322

2322:                                             ; preds = %2321, %2318
  %2323 = load ptr, ptr %2301, align 8, !tbaa !135
  %2324 = getelementptr inbounds %struct.VEC_edge_base, ptr %2323, i64 0, i32 2, i64 0
  %2325 = load ptr, ptr %2324, align 8, !tbaa !93
  %2326 = getelementptr inbounds %struct.edge_def, ptr %2325, i64 0, i32 1
  %2327 = load ptr, ptr %2326, align 8, !tbaa !187
  call void @merge_blocks(ptr noundef %1234, ptr noundef %2327) #14
  br label %2328

2328:                                             ; preds = %1272, %2298, %2300, %2304, %2307, %2322
  %2329 = phi i8 [ 1, %2322 ], [ 1, %2298 ], [ %1676, %2307 ], [ %1676, %2304 ], [ 1, %1272 ], [ %1676, %2300 ]
  %2330 = load ptr, ptr @cfun, align 8, !tbaa !93
  %2331 = getelementptr inbounds %struct.function, ptr %2330, i64 0, i32 3
  %2332 = load ptr, ptr %2331, align 8, !tbaa !115
  %2333 = icmp eq ptr %2332, null
  br i1 %2333, label %2386, label %2334, !prof !117

2334:                                             ; preds = %2328, %2382
  %2335 = phi i8 [ 1, %2382 ], [ 0, %2328 ]
  br label %2336

2336:                                             ; preds = %2381, %2334
  %2337 = load ptr, ptr @cfun, align 8, !tbaa !93
  %2338 = getelementptr inbounds %struct.function, ptr %2337, i64 0, i32 3
  %2339 = load ptr, ptr %2338, align 8, !tbaa !115
  %2340 = getelementptr inbounds %struct.gimple_df, ptr %2339, i64 0, i32 1
  %2341 = load ptr, ptr %2340, align 8, !tbaa !118
  %2342 = icmp eq ptr %2341, null
  br i1 %2342, label %2345, label %2343, !prof !122

2343:                                             ; preds = %2336
  %2344 = load i32, ptr %2341, align 8, !tbaa !123
  br label %2345

2345:                                             ; preds = %2343, %2336
  %2346 = phi i32 [ %2344, %2343 ], [ 0, %2336 ]
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2386, label %2348, !prof !125

2348:                                             ; preds = %2345
  %2349 = load i32, ptr %2341, align 8, !tbaa !123
  %2350 = add i32 %2349, -1
  store i32 %2350, ptr %2341, align 8, !tbaa !123
  %2351 = zext i32 %2350 to i64
  %2352 = getelementptr inbounds %struct.VEC_gimple_base, ptr %2341, i64 0, i32 2, i64 %2351
  %2353 = load ptr, ptr %2352, align 8, !tbaa !93
  %2354 = getelementptr inbounds %struct.gimple_statement_base, ptr %2353, i64 0, i32 4
  %2355 = load ptr, ptr %2354, align 8, !tbaa !104
  %2356 = icmp eq ptr %2355, null
  br i1 %2356, label %2381, label %2357, !prof !126

2357:                                             ; preds = %2348
  %2358 = getelementptr inbounds %struct.basic_block_def, ptr %2355, i64 0, i32 9
  %2359 = load i32, ptr %2358, align 8, !tbaa !127
  %2360 = icmp slt i32 %2359, 2
  br i1 %2360, label %2381, label %2361, !prof !126

2361:                                             ; preds = %2357
  %2362 = getelementptr inbounds %struct.function, ptr %2337, i64 0, i32 1
  %2363 = load ptr, ptr %2362, align 8, !tbaa !129
  %2364 = getelementptr inbounds %struct.control_flow_graph, ptr %2363, i64 0, i32 3
  %2365 = load i32, ptr %2364, align 8, !tbaa !130
  %2366 = icmp slt i32 %2359, %2365
  br i1 %2366, label %2367, label %2381, !prof !132

2367:                                             ; preds = %2361
  %2368 = getelementptr inbounds %struct.control_flow_graph, ptr %2363, i64 0, i32 2
  %2369 = load ptr, ptr %2368, align 8, !tbaa !133
  %2370 = zext nneg i32 %2359 to i64
  %2371 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2369, i64 0, i32 2, i64 %2370
  %2372 = load ptr, ptr %2371, align 8, !tbaa !93
  %2373 = icmp eq ptr %2372, %2355
  br i1 %2373, label %2374, label %2381, !prof !132

2374:                                             ; preds = %2367
  %2375 = call ptr @last_stmt(ptr noundef nonnull %2355) #14
  %2376 = icmp eq ptr %2375, %2353
  br i1 %2376, label %2381, label %2377, !prof !132

2377:                                             ; preds = %2374
  %2378 = call i32 @gimple_call_flags(ptr noundef %2353) #14
  %2379 = and i32 %2378, 8
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2381, label %2382

2381:                                             ; preds = %2377, %2374, %2367, %2361, %2357, %2348
  br label %2336, !llvm.loop !134

2382:                                             ; preds = %2377
  %2383 = call ptr @split_block(ptr noundef nonnull %2355, ptr noundef %2353) #14
  %2384 = getelementptr inbounds %struct.basic_block_def, ptr %2355, i64 0, i32 1
  %2385 = load ptr, ptr %2384, align 8, !tbaa !135
  call fastcc void @remove_fallthru_edge(ptr noundef %2385)
  br label %2334, !llvm.loop !134

2386:                                             ; preds = %2345, %2328
  %2387 = phi i8 [ 0, %2328 ], [ %2335, %2345 ]
  %2388 = or i8 %2329, %2387
  %2389 = or i8 %2388, %2395
  %2390 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %2391 = load ptr, ptr %2390, align 8, !tbaa !138
  %2392 = icmp eq ptr %2391, null
  br i1 %2392, label %2396, label %2393, !prof !338, !llvm.loop !312

2393:                                             ; preds = %99, %2386
  %2394 = phi ptr [ %96, %99 ], [ %2390, %2386 ]
  %2395 = phi i8 [ %95, %99 ], [ %2389, %2386 ]
  br label %1216

2396:                                             ; preds = %2386, %1222, %94
  %2397 = phi i8 [ %95, %94 ], [ %2395, %1222 ], [ %2389, %2386 ]
  call void @end_recording_case_labels() #14
  %2398 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  call void @bitmap_obstack_free(ptr noundef %2398) #14
  store ptr null, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !93
  %2399 = or i8 %2397, %20
  %2400 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #14
  %2401 = icmp eq i8 %2400, 0
  br i1 %2401, label %2402, label %2403, !prof !339

2402:                                             ; preds = %2396
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 716, ptr noundef nonnull @.str.2) #14
  br label %2403

2403:                                             ; preds = %2402, %2396
  call void @compact_blocks() #14
  %2404 = load i8, ptr @timevar_enable, align 1, !tbaa !104
  %2405 = icmp eq i8 %2404, 0
  br i1 %2405, label %2407, label %2406, !prof !113

2406:                                             ; preds = %2403
  call void @timevar_pop_1(i32 noundef 51) #14
  br label %2407

2407:                                             ; preds = %2406, %2403
  %2408 = icmp eq i8 %2399, 0
  br i1 %2408, label %2417, label %2409, !prof !340

2409:                                             ; preds = %2407
  %2410 = load ptr, ptr @cfun, align 8, !tbaa !93
  %2411 = getelementptr inbounds %struct.function, ptr %2410, i64 0, i32 4
  %2412 = load ptr, ptr %2411, align 8, !tbaa !227
  %2413 = icmp eq ptr %2412, null
  br i1 %2413, label %2417, label %2414, !prof !341

2414:                                             ; preds = %2409
  %2415 = load i32, ptr %2412, align 8, !tbaa !342
  %2416 = or i32 %2415, 64
  store i32 %2416, ptr %2412, align 8, !tbaa !342
  br label %2417

2417:                                             ; preds = %2407, %2409, %2414
  %2418 = load ptr, ptr @cfun, align 8, !tbaa !93
  %2419 = getelementptr inbounds %struct.function, ptr %2418, i64 0, i32 4
  %2420 = load ptr, ptr %2419, align 8, !tbaa !227
  %2421 = icmp eq ptr %2420, null
  br i1 %2421, label %2443, label %2422, !prof !344

2422:                                             ; preds = %2417
  %2423 = load i32, ptr %2420, align 8, !tbaa !342
  %2424 = and i32 %2423, 64
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2443, label %2426, !prof !345

2426:                                             ; preds = %2422
  %2427 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  call void @fix_loop_structure(ptr noundef %2427) #14
  %2428 = load ptr, ptr @cfun, align 8, !tbaa !93
  %2429 = getelementptr inbounds %struct.function, ptr %2428, i64 0, i32 4
  %2430 = load ptr, ptr %2429, align 8, !tbaa !227
  %2431 = load i32, ptr %2430, align 8, !tbaa !342
  %2432 = and i32 %2431, 32
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2435, label %2434, !prof !346

2434:                                             ; preds = %2426
  call void @rewrite_into_loop_closed_ssa(ptr noundef %2427, i32 noundef 2048) #14
  br label %2435

2435:                                             ; preds = %2434, %2426
  call void @bitmap_obstack_free(ptr noundef %2427) #14
  call void @scev_reset() #14
  %2436 = load ptr, ptr @cfun, align 8, !tbaa !93
  %2437 = getelementptr inbounds %struct.function, ptr %2436, i64 0, i32 4
  %2438 = load ptr, ptr %2437, align 8, !tbaa !227
  %2439 = icmp eq ptr %2438, null
  br i1 %2439, label %2443, label %2440, !prof !346

2440:                                             ; preds = %2435
  %2441 = load i32, ptr %2438, align 8, !tbaa !342
  %2442 = and i32 %2441, -65
  store i32 %2442, ptr %2438, align 8, !tbaa !342
  br label %2443

2443:                                             ; preds = %2440, %2435, %2422, %2417
  ret i8 %2399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_merge_phi() #10 !prof !347 !PGOFuncName !348 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @merge_phi_nodes() #9 !prof !347 !PGOFuncName !349 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !130
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #14
  tail call void @calculate_dominance_info(i32 noundef 1) #14
  %13 = load ptr, ptr @cfun, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !350
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %25, !prof !351

22:                                               ; preds = %376, %0
  %23 = phi ptr [ %12, %0 ], [ %377, %376 ]
  %24 = icmp eq ptr %23, %12
  br i1 %24, label %540, label %386, !prof !352

25:                                               ; preds = %0, %376
  %26 = phi ptr [ %379, %376 ], [ %18, %0 ]
  %27 = phi ptr [ %377, %376 ], [ %12, %0 ]
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31, !prof !194

31:                                               ; preds = %25
  %32 = load i32, ptr %29, align 8, !tbaa !145
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i8 [ %34, %31 ], [ 0, %25 ]
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %216, label %38, !prof !195

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  %40 = load i32, ptr %39, align 8, !tbaa !149
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !196

43:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !197

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gimple_bb_info, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !198
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi ptr [ %50, %48 ], [ null, %44 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !199

54:                                               ; preds = %51
  %55 = load ptr, ptr %52, align 8, !tbaa !200
  %56 = icmp eq ptr %55, null
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i8 [ 1, %51 ], [ %57, %54 ]
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %216, !prof !353

61:                                               ; preds = %58
  %62 = load ptr, ptr %28, align 8, !tbaa !135
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !202

64:                                               ; preds = %61
  %65 = load i32, ptr %62, align 8, !tbaa !145
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %68, label %67, !prof !203

67:                                               ; preds = %64, %61
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %68

68:                                               ; preds = %67, %64
  %69 = load ptr, ptr %28, align 8, !tbaa !135
  %70 = getelementptr inbounds %struct.VEC_edge_base, ptr %69, i64 0, i32 2, i64 0
  %71 = load ptr, ptr %70, align 8, !tbaa !93
  %72 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !187
  %74 = load ptr, ptr @cfun, align 8, !tbaa !93
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !129
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !204
  %79 = icmp eq ptr %73, %78
  br i1 %79, label %216, label %80, !prof !205

80:                                               ; preds = %68
  %81 = icmp eq ptr %69, null
  br i1 %81, label %85, label %82, !prof !206

82:                                               ; preds = %80
  %83 = load i32, ptr %69, align 8, !tbaa !145
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %86, label %85, !prof !207

85:                                               ; preds = %82, %80
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %28, align 8, !tbaa !135
  %88 = getelementptr inbounds %struct.VEC_edge_base, ptr %87, i64 0, i32 2, i64 0
  %89 = load ptr, ptr %88, align 8, !tbaa !93
  %90 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !187
  %92 = icmp eq ptr %91, %26
  br i1 %92, label %216, label %93, !prof !206

93:                                               ; preds = %86
  %94 = icmp eq ptr %87, null
  br i1 %94, label %98, label %95, !prof !206

95:                                               ; preds = %93
  %96 = load i32, ptr %87, align 8, !tbaa !145
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %99, label %98, !prof !207

98:                                               ; preds = %95, %93
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %99

99:                                               ; preds = %98, %95
  %100 = load ptr, ptr %28, align 8, !tbaa !135
  %101 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 0
  %102 = load ptr, ptr %101, align 8, !tbaa !93
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !186
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %216, !prof !207

107:                                              ; preds = %99
  %108 = icmp eq ptr %26, null
  br label %109

109:                                              ; preds = %145, %107
  %110 = phi i32 [ %146, %145 ], [ 0, %107 ]
  br i1 %108, label %111, label %112, !prof !208

111:                                              ; preds = %109
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #14
  br label %112

112:                                              ; preds = %111, %109
  %113 = load ptr, ptr %26, align 8, !tbaa !93
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !208

115:                                              ; preds = %112
  %116 = load i32, ptr %113, align 8, !tbaa !145
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi i32 [ %116, %115 ], [ 0, %112 ]
  %119 = icmp eq i32 %118, %110
  br i1 %119, label %124, label %120, !prof !209

120:                                              ; preds = %117
  %121 = zext i32 %110 to i64
  %122 = getelementptr inbounds %struct.VEC_edge_base, ptr %113, i64 0, i32 2, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !93
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi ptr [ %123, %120 ], [ null, %117 ]
  br i1 %119, label %147, label %126, !prof !209

126:                                              ; preds = %124
  %127 = load ptr, ptr %125, align 8, !tbaa !147
  %128 = load ptr, ptr @cfun, align 8, !tbaa !93
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !129
  %131 = load ptr, ptr %130, align 8, !tbaa !210
  %132 = icmp eq ptr %127, %131
  br i1 %132, label %216, label %133, !prof !211

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !186
  %136 = and i32 %135, 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %216, !prof !212

138:                                              ; preds = %133
  br i1 %114, label %141, label %139, !prof !213

139:                                              ; preds = %138
  %140 = load i32, ptr %113, align 8, !tbaa !145
  br label %141

141:                                              ; preds = %139, %138
  %142 = phi i32 [ %140, %139 ], [ 0, %138 ]
  %143 = icmp ult i32 %110, %142
  br i1 %143, label %145, label %144, !prof !212

144:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %145

145:                                              ; preds = %144, %141
  %146 = add i32 %110, 1
  br label %109, !llvm.loop !214

147:                                              ; preds = %124
  %148 = load i32, ptr %39, align 8, !tbaa !149, !noalias !354
  %149 = and i32 %148, 512
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156, !prof !218

151:                                              ; preds = %147
  %152 = load ptr, ptr %45, align 8, !tbaa !104, !noalias !354
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !219

154:                                              ; preds = %151
  %155 = load ptr, ptr %152, align 8, !tbaa !155, !noalias !354
  br label %156

156:                                              ; preds = %154, %151, %147
  %157 = phi ptr [ %155, %154 ], [ null, %151 ], [ null, %147 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159, !prof !219

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.gimple_seq_d, ptr %157, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !157, !noalias !354
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi ptr [ %161, %159 ], [ null, %156 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %193, label %165, !prof !220

165:                                              ; preds = %162, %189
  %166 = phi ptr [ %191, %189 ], [ %163, %162 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !162
  %168 = load i32, ptr %167, align 8
  %169 = trunc i32 %168 to i8
  switch i8 %169, label %216 [
    i8 4, label %170
    i8 2, label %189
  ], !prof !221

170:                                              ; preds = %165
  %171 = and i32 %168, 255
  %172 = add nsw i32 %171, -1
  %173 = icmp ult i32 %172, 9
  call void @llvm.assume(i1 %173)
  %174 = zext nneg i32 %171 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !108
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !169
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182, !prof !222

181:                                              ; preds = %170
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %182

182:                                              ; preds = %181, %170
  %183 = getelementptr inbounds i8, ptr %167, i64 %179
  %184 = load ptr, ptr %183, align 8, !tbaa !93
  %185 = getelementptr inbounds %struct.tree_decl_common, ptr %184, i64 0, i32 2
  %186 = load i64, ptr %185, align 8
  %187 = and i64 %186, 256
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %216, !prof !223

189:                                              ; preds = %182, %165
  %190 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %166, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !224
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %165, !prof !225, !llvm.loop !226

193:                                              ; preds = %189, %162
  %194 = load ptr, ptr @cfun, align 8, !tbaa !93
  %195 = getelementptr inbounds %struct.function, ptr %194, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !227
  %197 = icmp eq ptr %196, null
  br i1 %197, label %216, label %198, !prof !228

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !229
  %201 = getelementptr inbounds %struct.loop, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !230
  %203 = icmp eq ptr %202, %26
  br i1 %203, label %216, label %204, !prof !234

204:                                              ; preds = %198
  %205 = load ptr, ptr %28, align 8, !tbaa !135
  %206 = getelementptr inbounds %struct.VEC_edge_base, ptr %205, i64 0, i32 2, i64 0
  %207 = load ptr, ptr %206, align 8, !tbaa !93
  %208 = getelementptr inbounds %struct.edge_def, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !187
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !229
  %212 = getelementptr inbounds %struct.loop, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !230
  %214 = icmp ne ptr %213, %209
  %215 = zext i1 %214 to i8
  br label %216

216:                                              ; preds = %126, %133, %165, %182, %35, %58, %68, %86, %99, %193, %198, %204
  %217 = phi i8 [ 0, %99 ], [ 0, %86 ], [ 0, %68 ], [ 0, %58 ], [ 0, %35 ], [ 0, %198 ], [ 1, %193 ], [ %215, %204 ], [ 0, %182 ], [ 0, %165 ], [ 0, %133 ], [ 0, %126 ]
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %376, label %219, !prof !357

219:                                              ; preds = %216
  %220 = load ptr, ptr %28, align 8, !tbaa !135
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222, !prof !358

222:                                              ; preds = %219
  %223 = load i32, ptr %220, align 8, !tbaa !145
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %226, label %225, !prof !359

225:                                              ; preds = %222, %219
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %226

226:                                              ; preds = %222, %225
  %227 = load ptr, ptr %28, align 8, !tbaa !135
  %228 = getelementptr inbounds %struct.VEC_edge_base, ptr %227, i64 0, i32 2, i64 0
  %229 = load ptr, ptr %228, align 8, !tbaa !93
  %230 = getelementptr inbounds %struct.edge_def, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !187
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 13
  %233 = load i32, ptr %232, align 8, !tbaa !149
  %234 = and i32 %233, 512
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236, !prof !359

236:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 510, ptr noundef nonnull @.str.2) #14
  br label %237

237:                                              ; preds = %236, %226
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 7
  %239 = load ptr, ptr %238, align 8, !tbaa !104
  %240 = icmp eq ptr %239, null
  br i1 %240, label %244, label %241, !prof !358

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.gimple_bb_info, ptr %239, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !198
  br label %244

244:                                              ; preds = %237, %241
  %245 = phi ptr [ %243, %241 ], [ null, %237 ]
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247, !prof !358

247:                                              ; preds = %244
  %248 = load ptr, ptr %245, align 8, !tbaa !200
  %249 = icmp eq ptr %248, null
  %250 = zext i1 %249 to i8
  br label %251

251:                                              ; preds = %244, %247
  %252 = phi i8 [ 1, %244 ], [ %250, %247 ]
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %376, !prof !359

254:                                              ; preds = %251
  %255 = icmp eq ptr %26, null
  br label %256

256:                                              ; preds = %254, %285
  %257 = phi i32 [ %286, %285 ], [ 0, %254 ]
  br i1 %255, label %258, label %259, !prof !360

258:                                              ; preds = %256
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #14
  br label %259

259:                                              ; preds = %258, %256
  %260 = load ptr, ptr %26, align 8, !tbaa !93
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262, !prof !360

262:                                              ; preds = %259
  %263 = load i32, ptr %260, align 8, !tbaa !145
  br label %264

264:                                              ; preds = %262, %259
  %265 = phi i32 [ %263, %262 ], [ 0, %259 ]
  %266 = icmp eq i32 %265, %257
  br i1 %266, label %271, label %267, !prof !361

267:                                              ; preds = %264
  %268 = zext i32 %257 to i64
  %269 = getelementptr inbounds %struct.VEC_edge_base, ptr %260, i64 0, i32 2, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !93
  br label %271

271:                                              ; preds = %267, %264
  %272 = phi ptr [ %270, %267 ], [ null, %264 ]
  br i1 %266, label %288, label %273, !prof !361

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.edge_def, ptr %272, i64 0, i32 7
  %275 = load i32, ptr %274, align 8, !tbaa !186
  %276 = and i32 %275, 2
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %287, !prof !362

278:                                              ; preds = %273
  br i1 %261, label %281, label %279, !prof !363

279:                                              ; preds = %278
  %280 = load i32, ptr %260, align 8, !tbaa !145
  br label %281

281:                                              ; preds = %279, %278
  %282 = phi i32 [ %280, %279 ], [ 0, %278 ]
  %283 = icmp ult i32 %257, %282
  br i1 %283, label %285, label %284, !prof !362

284:                                              ; preds = %281
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %285

285:                                              ; preds = %284, %281
  %286 = add i32 %257, 1
  br label %256, !llvm.loop !246

287:                                              ; preds = %273
  br i1 %266, label %288, label %376, !prof !359

288:                                              ; preds = %271, %287
  %289 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %231, ptr noundef nonnull %26) #14
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %374, label %291, !prof !359

291:                                              ; preds = %288
  %292 = load ptr, ptr %28, align 8, !tbaa !135
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %292, align 8, !tbaa !145
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %298, label %297

297:                                              ; preds = %291, %294
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %298

298:                                              ; preds = %294, %297
  %299 = load ptr, ptr %28, align 8, !tbaa !135
  %300 = getelementptr inbounds %struct.VEC_edge_base, ptr %299, i64 0, i32 2, i64 0
  %301 = load ptr, ptr %300, align 8, !tbaa !93
  %302 = getelementptr inbounds %struct.edge_def, ptr %301, i64 0, i32 6
  %303 = load i32, ptr %302, align 4, !tbaa !262
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %26) #14
  %304 = load ptr, ptr %2, align 8, !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %305 = icmp eq ptr %304, null
  br i1 %305, label %374, label %306

306:                                              ; preds = %298, %370
  %307 = phi ptr [ %372, %370 ], [ %304, %298 ]
  %308 = load ptr, ptr %307, align 8, !tbaa !162
  %309 = getelementptr inbounds %struct.gimple_statement_phi, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %311 = getelementptr inbounds %struct.tree_ssa_name, ptr %310, i64 0, i32 5
  %312 = getelementptr inbounds %struct.tree_ssa_name, ptr %310, i64 0, i32 5, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !364
  %314 = icmp eq ptr %311, %313
  br i1 %314, label %320, label %315

315:                                              ; preds = %306
  %316 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !108
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %311) #14
  br label %320

320:                                              ; preds = %306, %315, %318
  %321 = phi i8 [ %319, %318 ], [ 1, %306 ], [ 0, %315 ]
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %367

323:                                              ; preds = %320
  %324 = load ptr, ptr %312, align 8, !tbaa !364
  %325 = icmp eq ptr %311, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %338, %331, %323
  store ptr null, ptr %3, align 8, !tbaa !93
  store ptr null, ptr %4, align 8, !tbaa !93
  br label %343

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %324, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !364
  %330 = icmp eq ptr %311, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %324, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !104
  %334 = load i32, ptr %333, align 8
  %335 = and i32 %334, 255
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %326, label %337

337:                                              ; preds = %331
  store ptr %324, ptr %3, align 8, !tbaa !93
  store ptr %333, ptr %4, align 8, !tbaa !93
  br label %343

338:                                              ; preds = %327
  %339 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !108
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %326, label %341

341:                                              ; preds = %338
  %342 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %311, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  br label %343

343:                                              ; preds = %326, %337, %341
  %344 = phi i8 [ 0, %326 ], [ 1, %337 ], [ %342, %341 ]
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %367, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr %4, align 8, !tbaa !93
  %348 = load i32, ptr %347, align 8
  %349 = and i32 %348, 255
  %350 = icmp eq i32 %349, 16
  br i1 %350, label %351, label %367

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.gimple_statement_base, ptr %347, i64 0, i32 4
  %353 = load ptr, ptr %352, align 8, !tbaa !104
  %354 = icmp eq ptr %353, %231
  br i1 %354, label %355, label %367

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.gimple_statement_phi, ptr %347, i64 0, i32 1
  %357 = load i32, ptr %356, align 8, !tbaa !104
  %358 = icmp ult i32 %357, %303
  br i1 %358, label %359, label %360

359:                                              ; preds = %355
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %360

360:                                              ; preds = %355, %359
  %361 = zext i32 %303 to i64
  %362 = getelementptr inbounds %struct.gimple_statement_phi, ptr %347, i64 0, i32 4, i64 %361, i32 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !174
  %364 = load ptr, ptr %363, align 8, !tbaa !93
  %365 = icmp eq ptr %364, %310
  %366 = select i1 %365, i32 0, i32 5
  br label %367

367:                                              ; preds = %360, %343, %346, %351, %320
  %368 = phi i32 [ 7, %320 ], [ 5, %351 ], [ 5, %346 ], [ 5, %343 ], [ %366, %360 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %369 = icmp eq i32 %368, 5
  br i1 %369, label %376, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %307, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !268
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %306, !llvm.loop !365

374:                                              ; preds = %370, %298, %288
  %375 = getelementptr inbounds ptr, ptr %27, i64 1
  store ptr %26, ptr %27, align 8, !tbaa !93
  br label %376

376:                                              ; preds = %367, %374, %287, %251, %216
  %377 = phi ptr [ %27, %216 ], [ %27, %251 ], [ %27, %287 ], [ %375, %374 ], [ %27, %367 ]
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %379 = load ptr, ptr %378, align 8, !tbaa !350
  %380 = load ptr, ptr @cfun, align 8, !tbaa !93
  %381 = getelementptr inbounds %struct.function, ptr %380, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !129
  %383 = getelementptr inbounds %struct.control_flow_graph, ptr %382, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !204
  %385 = icmp eq ptr %379, %384
  br i1 %385, label %22, label %25, !prof !366, !llvm.loop !367

386:                                              ; preds = %22, %538
  %387 = phi ptr [ %388, %538 ], [ %23, %22 ]
  %388 = getelementptr inbounds ptr, ptr %387, i64 -1
  %389 = load ptr, ptr %388, align 8, !tbaa !93
  %390 = getelementptr inbounds %struct.basic_block_def, ptr %389, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !135
  %392 = icmp eq ptr %391, null
  br i1 %392, label %396, label %393, !prof !358

393:                                              ; preds = %386
  %394 = load i32, ptr %391, align 8, !tbaa !145
  %395 = icmp eq i32 %394, 1
  br i1 %395, label %397, label %396, !prof !359

396:                                              ; preds = %393, %386
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %397

397:                                              ; preds = %396, %393
  %398 = load ptr, ptr %390, align 8, !tbaa !135
  %399 = getelementptr inbounds %struct.VEC_edge_base, ptr %398, i64 0, i32 2, i64 0
  %400 = load ptr, ptr %399, align 8, !tbaa !93
  %401 = getelementptr inbounds %struct.edge_def, ptr %400, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !187
  %403 = icmp eq ptr %402, %389
  br i1 %403, label %538, label %404, !prof !358

404:                                              ; preds = %397
  %405 = call ptr @first_stmt(ptr noundef %402) #14
  %406 = icmp eq ptr %405, null
  br i1 %406, label %427, label %407, !prof !358

407:                                              ; preds = %404
  %408 = load i32, ptr %405, align 8
  %409 = and i32 %408, 255
  %410 = icmp eq i32 %409, 4
  br i1 %410, label %411, label %427, !prof !358

411:                                              ; preds = %407
  %412 = zext nneg i32 %409 to i64
  %413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !108
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !169
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %411
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %420

420:                                              ; preds = %419, %411
  %421 = getelementptr inbounds i8, ptr %405, i64 %417
  %422 = load ptr, ptr %421, align 8, !tbaa !93
  %423 = getelementptr inbounds %struct.tree_decl_common, ptr %422, i64 0, i32 2
  %424 = load i64, ptr %423, align 8
  %425 = and i64 %424, 256
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %538

427:                                              ; preds = %420, %407, %404
  %428 = getelementptr inbounds %struct.edge_def, ptr %400, i64 0, i32 6
  br label %429

429:                                              ; preds = %528, %427
  %430 = load ptr, ptr %389, align 8, !tbaa !144
  %431 = icmp eq ptr %430, null
  br i1 %431, label %434, label %432, !prof !360

432:                                              ; preds = %429
  %433 = load i32, ptr %430, align 8, !tbaa !145
  br label %434

434:                                              ; preds = %432, %429
  %435 = phi i32 [ %433, %432 ], [ 0, %429 ]
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %530, label %437, !prof !361

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.VEC_edge_base, ptr %430, i64 0, i32 2, i64 0
  %439 = load ptr, ptr %438, align 8, !tbaa !93
  %440 = load ptr, ptr %439, align 8, !tbaa !147
  %441 = call ptr @find_edge(ptr noundef %440, ptr noundef %402) #14
  %442 = icmp eq ptr %441, null
  br i1 %442, label %461, label %443, !prof !368

443:                                              ; preds = %437
  %444 = call fastcc zeroext i8 @phi_alternatives_equal(ptr noundef %402, ptr noundef nonnull %441, ptr noundef %400)
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %448, label %446, !prof !359

446:                                              ; preds = %443
  %447 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %439, ptr noundef %402) #14
  br label %528, !llvm.loop !369

448:                                              ; preds = %443
  %449 = call ptr @split_edge(ptr noundef nonnull %439) #14
  %450 = getelementptr inbounds %struct.basic_block_def, ptr %449, i64 0, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !135
  %452 = icmp eq ptr %451, null
  br i1 %452, label %456, label %453, !prof !358

453:                                              ; preds = %448
  %454 = load i32, ptr %451, align 8, !tbaa !145
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %457, label %456, !prof !359

456:                                              ; preds = %453, %448
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.2) #14
  br label %457

457:                                              ; preds = %456, %453
  %458 = load ptr, ptr %450, align 8, !tbaa !135
  %459 = getelementptr inbounds %struct.VEC_edge_base, ptr %458, i64 0, i32 2, i64 0
  %460 = load ptr, ptr %459, align 8, !tbaa !93
  br label %461

461:                                              ; preds = %457, %437
  %462 = phi ptr [ %460, %457 ], [ %439, %437 ]
  %463 = call ptr @redirect_edge_and_branch(ptr noundef %462, ptr noundef %402) #14
  %464 = icmp eq ptr %463, %462
  br i1 %464, label %466, label %465, !prof !362

465:                                              ; preds = %461
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 821, ptr noundef nonnull @.str.2) #14
  br label %466

466:                                              ; preds = %465, %461
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %402) #14
  %467 = load ptr, ptr %1, align 8, !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  %468 = icmp eq ptr %467, null
  br i1 %468, label %528, label %469, !prof !370

469:                                              ; preds = %466, %522
  %470 = phi ptr [ %526, %522 ], [ %467, %466 ]
  %471 = load ptr, ptr %470, align 8, !tbaa !162
  %472 = load i32, ptr %428, align 4, !tbaa !262
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.gimple_statement_phi, ptr %471, i64 0, i32 1
  %475 = load i32, ptr %474, align 8, !tbaa !104
  %476 = icmp ult i32 %475, %472
  br i1 %476, label %477, label %478, !prof !371

477:                                              ; preds = %469
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %478

478:                                              ; preds = %477, %469
  %479 = getelementptr inbounds %struct.gimple_statement_phi, ptr %471, i64 0, i32 4, i64 %473, i32 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !174
  %481 = load ptr, ptr %480, align 8, !tbaa !93
  %482 = load i32, ptr %428, align 4, !tbaa !262
  %483 = load i32, ptr %474, align 8, !tbaa !104
  %484 = icmp ult i32 %483, %482
  br i1 %484, label %485, label %486, !prof !371

485:                                              ; preds = %478
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %486

486:                                              ; preds = %485, %478
  %487 = zext i32 %482 to i64
  %488 = getelementptr inbounds %struct.gimple_statement_phi, ptr %471, i64 0, i32 4, i64 %487, i32 2
  %489 = load i32, ptr %488, align 8, !tbaa !264
  %490 = load i64, ptr %481, align 8
  %491 = and i64 %490, 65535
  %492 = icmp eq i64 %491, 141
  br i1 %492, label %493, label %522, !prof !372

493:                                              ; preds = %486
  %494 = call ptr @redirect_edge_var_map_vector(ptr noundef %462) #14
  %495 = icmp eq ptr %494, null
  br label %496

496:                                              ; preds = %518, %493
  %497 = phi ptr [ %481, %493 ], [ %519, %518 ]
  %498 = phi i32 [ %489, %493 ], [ %520, %518 ]
  %499 = phi i64 [ 0, %493 ], [ %521, %518 ]
  br i1 %495, label %507, label %500, !prof !363

500:                                              ; preds = %496
  %501 = trunc i64 %499 to i32
  %502 = load i32, ptr %494, align 8, !tbaa !373
  %503 = icmp ugt i32 %502, %501
  br i1 %503, label %504, label %507, !prof !362

504:                                              ; preds = %500
  %505 = and i64 %499, 4294967295
  %506 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %494, i64 0, i32 2, i64 %505
  br label %507

507:                                              ; preds = %504, %500, %496
  %508 = phi ptr [ %506, %504 ], [ null, %500 ], [ null, %496 ]
  %509 = phi i1 [ false, %504 ], [ true, %500 ], [ true, %496 ]
  br i1 %509, label %522, label %510, !prof !363

510:                                              ; preds = %507
  %511 = load ptr, ptr %508, align 8, !tbaa !375
  %512 = icmp eq ptr %497, %511
  br i1 %512, label %513, label %518, !prof !362

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct._edge_var_map, ptr %508, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !377
  %516 = getelementptr inbounds %struct._edge_var_map, ptr %508, i64 0, i32 2
  %517 = load i32, ptr %516, align 8, !tbaa !378
  br label %518

518:                                              ; preds = %513, %510
  %519 = phi ptr [ %515, %513 ], [ %497, %510 ]
  %520 = phi i32 [ %517, %513 ], [ %498, %510 ]
  %521 = add i64 %499, 1
  br i1 %512, label %522, label %496, !prof !362, !llvm.loop !379

522:                                              ; preds = %518, %507, %486
  %523 = phi ptr [ %481, %486 ], [ %519, %518 ], [ %497, %507 ]
  %524 = phi i32 [ %489, %486 ], [ %520, %518 ], [ %498, %507 ]
  call void @add_phi_arg(ptr noundef %471, ptr noundef %523, ptr noundef %463, i32 noundef %524) #14
  %525 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %470, i64 0, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !268
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %469, !prof !380, !llvm.loop !381

528:                                              ; preds = %522, %466, %446
  %529 = phi ptr [ %447, %446 ], [ %462, %466 ], [ %462, %522 ]
  call void @redirect_edge_var_map_clear(ptr noundef %529) #14
  br label %429

530:                                              ; preds = %434
  %531 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %389) #14
  %532 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %402) #14
  %533 = icmp eq ptr %532, %389
  br i1 %533, label %536, label %534, !prof !358

534:                                              ; preds = %530
  %535 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %532, ptr noundef %531) #14
  br label %536

536:                                              ; preds = %534, %530
  %537 = phi ptr [ %535, %534 ], [ %531, %530 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %402, ptr noundef %537) #14
  call void @delete_basic_block(ptr noundef nonnull %389) #14
  br label %538

538:                                              ; preds = %397, %420, %536
  %539 = icmp eq ptr %388, %12
  br i1 %539, label %540, label %386, !prof !359, !llvm.loop !382

540:                                              ; preds = %538, %22
  call void @free(ptr noundef %12)
  ret i32 0
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @start_recording_case_labels() local_unnamed_addr #3

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @end_recording_case_labels() local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_fallthru_edge(ptr noundef readonly %0) unnamed_addr #9 !prof !92 !PGOFuncName !383 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %30, %1
  %4 = phi i32 [ 0, %1 ], [ %31, %30 ]
  br i1 %2, label %7, label %5, !prof !191

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !145
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %9 = icmp eq i32 %8, %4
  br i1 %9, label %15, label %10, !prof !192

10:                                               ; preds = %7
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = zext i32 %4 to i64
  %13 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi ptr [ %14, %10 ], [ null, %7 ]
  br i1 %9, label %32, label %17, !prof !192

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !186
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @remove_edge_and_dominated_blocks(ptr noundef %16) #14
  br label %32

23:                                               ; preds = %17
  br i1 %2, label %26, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %0, align 8, !tbaa !145
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ %25, %24 ], [ 0, %23 ]
  %28 = icmp ult i32 %4, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %30

30:                                               ; preds = %26, %29
  %31 = add i32 %4, 1
  br label %3, !llvm.loop !193

32:                                               ; preds = %15, %22
  ret void
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @remove_edge_and_dominated_blocks(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #3

declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @first_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @phi_alternatives_equal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !384 !PGOFuncName !385 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !262
  %7 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !262
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #14
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11, !prof !386

11:                                               ; preds = %3
  %12 = zext i32 %6 to i64
  %13 = zext i32 %8 to i64
  br label %14

14:                                               ; preds = %11, %40
  %15 = phi ptr [ %9, %11 ], [ %42, %40 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = getelementptr inbounds %struct.gimple_statement_phi, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !104
  %19 = icmp ult i32 %18, %6
  br i1 %19, label %20, label %21, !prof !387

20:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %21

21:                                               ; preds = %14, %20
  %22 = getelementptr inbounds %struct.gimple_statement_phi, ptr %16, i64 0, i32 4, i64 %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !174
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  %25 = load i32, ptr %17, align 8, !tbaa !104
  %26 = icmp ult i32 %25, %8
  br i1 %26, label %27, label %28, !prof !387

27:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #14
  br label %28

28:                                               ; preds = %21, %27
  %29 = getelementptr inbounds %struct.gimple_statement_phi, ptr %16, i64 0, i32 4, i64 %13, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !174
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = icmp eq ptr %24, null
  br i1 %32, label %33, label %34, !prof !387

33:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 367, ptr noundef nonnull @.str.2) #14
  br label %34

34:                                               ; preds = %28, %33
  %35 = icmp eq ptr %31, null
  br i1 %35, label %36, label %37, !prof !387

36:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 368, ptr noundef nonnull @.str.2) #14
  br label %37

37:                                               ; preds = %34, %36
  %38 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %24, ptr noundef %31) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !388

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !268
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %14, !prof !389, !llvm.loop !390

44:                                               ; preds = %37, %40, %3
  %45 = phi i8 [ 1, %3 ], [ 0, %37 ], [ 1, %40 ]
  ret i8 %45
}

declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fix_loop_structure(ptr noundef) local_unnamed_addr #3

declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_var_map_vector(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!91}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!35 = !{ptr @cleanup_tree_cfg, ptr @dom_info_available_p, i64 287896}
!36 = !{ptr @cleanup_tree_cfg, ptr @delete_unreachable_blocks, i64 185}
!37 = !{ptr @cleanup_tree_cfg, ptr @calculate_dominance_info, i64 185}
!38 = !{ptr @cleanup_tree_cfg, ptr @bitmap_obstack_alloc_stat, i64 827}
!39 = !{ptr @cleanup_tree_cfg, ptr @start_recording_case_labels, i64 789}
!40 = !{ptr @cleanup_tree_cfg, ptr @last_stmt, i64 4502111}
!41 = !{ptr @cleanup_tree_cfg, ptr @gimple_purge_dead_eh_edges, i64 4501970}
!42 = !{ptr @cleanup_tree_cfg, ptr @fold_defer_overflow_warnings, i64 3783425}
!43 = !{ptr @cleanup_tree_cfg, ptr @name_registered_for_update_p, i64 3473451}
!44 = !{ptr @cleanup_tree_cfg, ptr @fold_binary_loc, i64 3782441}
!45 = !{ptr @cleanup_tree_cfg, ptr @find_taken_edge, i64 3783425}
!46 = !{ptr @cleanup_tree_cfg, ptr @fold_undefer_and_ignore_overflow_warnings, i64 3782666}
!47 = !{ptr @cleanup_tree_cfg, ptr @fold_undefer_overflow_warnings, i64 759}
!48 = !{ptr @cleanup_tree_cfg, ptr @remove_edge_and_dominated_blocks, i64 759}
!49 = !{ptr @cleanup_tree_cfg, ptr @bitmap_set_bit, i64 621498}
!50 = !{ptr @cleanup_tree_cfg, ptr @gsi_remove, i64 759}
!51 = !{ptr @cleanup_tree_cfg, ptr @gimple_call_flags, i64 5402}
!52 = !{ptr @cleanup_tree_cfg, ptr @first_stmt, i64 340596}
!53 = !{ptr @cleanup_tree_cfg, ptr @find_edge, i64 373942}
!54 = !{ptr @cleanup_tree_cfg, ptr @phi_alternatives_equal, i64 54738}
!55 = !{ptr @cleanup_tree_cfg, ptr @redirect_edge_and_branch, i64 334421}
!56 = !{ptr @cleanup_tree_cfg, ptr @gsi_start_phis, i64 333752}
!57 = !{ptr @cleanup_tree_cfg, ptr @add_phi_arg, i64 295118}
!58 = !{ptr @cleanup_tree_cfg, ptr @get_immediate_dominator, i64 572636}
!59 = !{ptr @cleanup_tree_cfg, ptr @nearest_common_dominator, i64 280659}
!60 = !{ptr @cleanup_tree_cfg, ptr @set_immediate_dominator, i64 286318}
!61 = !{ptr @cleanup_tree_cfg, ptr @delete_basic_block, i64 286318}
!62 = !{ptr @cleanup_tree_cfg, ptr @can_merge_blocks_p, i64 431537}
!63 = !{ptr @cleanup_tree_cfg, ptr @merge_blocks, i64 1525}
!64 = !{ptr @cleanup_tree_cfg, ptr @bitmap_first_set_bit, i64 603562}
!65 = !{ptr @cleanup_tree_cfg, ptr @bitmap_clear_bit, i64 603562}
!66 = !{ptr @cleanup_tree_cfg, ptr @end_recording_case_labels, i64 789}
!67 = !{ptr @cleanup_tree_cfg, ptr @bitmap_obstack_free, i64 827}
!68 = !{ptr @cleanup_tree_cfg, ptr @compact_blocks, i64 789}
!69 = !{ptr @cleanup_tree_cfg, ptr @fix_loop_structure, i64 38}
!70 = !{ptr @cleanup_tree_cfg, ptr @rewrite_into_loop_closed_ssa, i64 38}
!71 = !{ptr @cleanup_tree_cfg, ptr @scev_reset, i64 38}
!72 = !{ptr @merge_phi_nodes, ptr @xmalloc, i64 78}
!73 = !{ptr @merge_phi_nodes, ptr @calculate_dominance_info, i64 78}
!74 = !{ptr @merge_phi_nodes, ptr @dominated_by_p, i64 11}
!75 = !{ptr @merge_phi_nodes, ptr @first_stmt, i64 11}
!76 = !{ptr @merge_phi_nodes, ptr @find_edge, i64 22}
!77 = !{ptr @merge_phi_nodes, ptr @phi_alternatives_equal, i64 11}
!78 = !{ptr @merge_phi_nodes, ptr @split_edge, i64 11}
!79 = !{ptr @merge_phi_nodes, ptr @redirect_edge_and_branch, i64 22}
!80 = !{ptr @merge_phi_nodes, ptr @gsi_start_phis, i64 22}
!81 = !{ptr @merge_phi_nodes, ptr @redirect_edge_var_map_vector, i64 22}
!82 = !{ptr @merge_phi_nodes, ptr @add_phi_arg, i64 44}
!83 = !{ptr @merge_phi_nodes, ptr @redirect_edge_var_map_clear, i64 22}
!84 = !{ptr @merge_phi_nodes, ptr @get_immediate_dominator, i64 22}
!85 = !{ptr @merge_phi_nodes, ptr @nearest_common_dominator, i64 11}
!86 = !{ptr @merge_phi_nodes, ptr @set_immediate_dominator, i64 11}
!87 = !{ptr @merge_phi_nodes, ptr @delete_basic_block, i64 11}
!88 = !{ptr @merge_phi_nodes, ptr @free, i64 78}
!89 = !{ptr @phi_alternatives_equal, ptr @gsi_start_phis, i64 50975}
!90 = !{ptr @phi_alternatives_equal, ptr @operand_equal_for_phi_arg_p, i64 51283}
!91 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!92 = !{!"function_entry_count", i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!98, !94, i64 8}
!98 = !{!"_IO_FILE", !99, i64 0, !94, i64 8, !94, i64 16, !94, i64 24, !94, i64 32, !94, i64 40, !94, i64 48, !94, i64 56, !94, i64 64, !94, i64 72, !94, i64 80, !94, i64 88, !94, i64 96, !94, i64 104, !99, i64 112, !99, i64 116, !100, i64 120, !101, i64 128, !95, i64 130, !95, i64 131, !94, i64 136, !100, i64 144, !94, i64 152, !94, i64 160, !94, i64 168, !94, i64 176, !100, i64 184, !99, i64 192, !95, i64 196}
!99 = !{!"int", !95, i64 0}
!100 = !{!"long", !95, i64 0}
!101 = !{!"short", !95, i64 0}
!102 = !{!98, !94, i64 16}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{!95, !95, i64 0}
!105 = !{!98, !94, i64 40}
!106 = !{!98, !94, i64 48}
!107 = !{!98, !99, i64 0}
!108 = !{!99, !99, i64 0}
!109 = distinct !{!109, !110, !111}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = !{!"function_entry_count", i64 789}
!113 = !{!"branch_weights", i32 789, i32 0}
!114 = !{!"branch_weights", i32 185, i32 604}
!115 = !{!116, !94, i64 24}
!116 = !{!"function", !94, i64 0, !94, i64 8, !94, i64 16, !94, i64 24, !94, i64 32, !94, i64 40, !94, i64 48, !94, i64 56, !94, i64 64, !94, i64 72, !94, i64 80, !94, i64 88, !94, i64 96, !99, i64 104, !99, i64 108, !99, i64 112, !99, i64 116, !99, i64 120, !99, i64 124, !94, i64 128, !99, i64 136, !99, i64 137, !99, i64 138, !99, i64 138, !99, i64 138, !99, i64 138, !99, i64 138, !99, i64 138, !99, i64 138, !99, i64 139, !99, i64 139, !99, i64 139, !99, i64 139, !99, i64 139, !99, i64 139, !99, i64 139}
!117 = !{!"branch_weights", i32 445, i32 278324}
!118 = !{!119, !94, i64 8}
!119 = !{!"gimple_df", !94, i64 0, !94, i64 8, !94, i64 16, !94, i64 24, !120, i64 32, !120, i64 48, !94, i64 64, !94, i64 72, !94, i64 80, !94, i64 88, !99, i64 96, !121, i64 104}
!120 = !{!"pt_solution", !99, i64 0, !99, i64 0, !99, i64 0, !99, i64 0, !99, i64 0, !99, i64 0, !94, i64 8}
!121 = !{!"ssa_operands", !94, i64 0, !99, i64 8, !99, i64 12, !95, i64 16, !94, i64 24, !94, i64 32}
!122 = !{!"branch_weights", i32 5, i32 278386}
!123 = !{!124, !99, i64 0}
!124 = !{!"VEC_gimple_base", !99, i64 0, !99, i64 4, !95, i64 8}
!125 = !{!"branch_weights", i32 278324, i32 67}
!126 = !{!"branch_weights", i32 0, i32 67}
!127 = !{!128, !99, i64 80}
!128 = !{!"basic_block_def", !94, i64 0, !94, i64 8, !94, i64 16, !94, i64 24, !95, i64 32, !94, i64 48, !94, i64 56, !95, i64 64, !100, i64 72, !99, i64 80, !99, i64 84, !99, i64 88, !99, i64 92, !99, i64 96}
!129 = !{!116, !94, i64 8}
!130 = !{!131, !99, i64 24}
!131 = !{!"control_flow_graph", !94, i64 0, !94, i64 8, !94, i64 16, !99, i64 24, !99, i64 28, !99, i64 32, !94, i64 40, !99, i64 48, !95, i64 52, !95, i64 60, !99, i64 68, !99, i64 72}
!132 = !{!"branch_weights", i32 67, i32 0}
!133 = !{!131, !94, i64 16}
!134 = distinct !{!134, !110, !111}
!135 = !{!128, !94, i64 8}
!136 = !{!131, !99, i64 32}
!137 = !{!"branch_weights", i32 788, i32 1}
!138 = !{!139, !94, i64 0}
!139 = !{!"bitmap_head_def", !94, i64 0, !94, i64 8, !99, i64 16, !94, i64 24}
!140 = !{!"branch_weights", i32 1, i32 127}
!141 = !{!"branch_weights", i32 2673, i32 3913617}
!142 = !{!"branch_weights", i32 435489, i32 3756108}
!143 = !{!"branch_weights", i32 0, i32 3756108}
!144 = !{!128, !94, i64 0}
!145 = !{!146, !99, i64 0}
!146 = !{!"VEC_edge_base", !99, i64 0, !99, i64 4, !95, i64 8}
!147 = !{!148, !94, i64 0}
!148 = !{!"edge_def", !94, i64 0, !94, i64 8, !95, i64 16, !94, i64 24, !94, i64 32, !99, i64 40, !99, i64 44, !99, i64 48, !99, i64 52, !100, i64 56}
!149 = !{!128, !99, i64 96}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_last_bb: argument 0"}
!152 = distinct !{!152, !"gsi_last_bb"}
!153 = !{!"branch_weights", i32 4191597, i32 0}
!154 = !{!"branch_weights", i32 0, i32 4191597}
!155 = !{!156, !94, i64 0}
!156 = !{!"gimple_bb_info", !94, i64 0, !94, i64 8}
!157 = !{!158, !94, i64 8}
!158 = !{!"gimple_seq_d", !94, i64 0, !94, i64 8, !94, i64 16}
!159 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !93}
!160 = !{i64 0, i64 8, !93, i64 8, i64 8, !93}
!161 = !{i64 0, i64 8, !93}
!162 = !{!163, !94, i64 0}
!163 = !{!"gimple_seq_node_d", !94, i64 0, !94, i64 8, !94, i64 16}
!164 = !{!"branch_weights", i32 233518, i32 3521674, i32 916, i32 0}
!165 = !{!"branch_weights", i32 0, i32 3522590}
!166 = !{!"branch_weights", i32 3522590, i32 0}
!167 = !{!"branch_weights", i32 0, i32 3521674, i32 916}
!168 = !{!"branch_weights", i32 0, i32 3521674}
!169 = !{!100, !100, i64 0}
!170 = !{!"branch_weights", i32 3233986, i32 287688}
!171 = !{!"branch_weights", i32 3196713, i32 37273}
!172 = !{!"branch_weights", i32 22128, i32 3174585}
!173 = !{!"branch_weights", i32 0, i32 22128}
!174 = !{!175, !94, i64 24}
!175 = !{!"ssa_use_operand_d", !94, i64 0, !94, i64 8, !95, i64 16, !94, i64 24}
!176 = !{!"branch_weights", i32 0, i32 916}
!177 = !{!"branch_weights", i32 3521883, i32 707}
!178 = !{!"branch_weights", i32 0, i32 2121}
!179 = !{!"branch_weights", i32 707, i32 1414}
!180 = !{!"branch_weights", i32 707, i32 707}
!181 = !{!"branch_weights", i32 707, i32 0}
!182 = !{!148, !99, i64 52}
!183 = !{!148, !100, i64 56}
!184 = distinct !{!184, !110, !111}
!185 = !{!"branch_weights", i32 0, i32 707}
!186 = !{!148, !99, i64 48}
!187 = !{!148, !94, i64 8}
!188 = distinct !{!188, !110, !111}
!189 = !{!"branch_weights", i32 5030, i32 228488}
!190 = !{!"branch_weights", i32 3707, i32 1323}
!191 = !{!"branch_weights", i32 261, i32 1062}
!192 = !{!"branch_weights", i32 1323, i32 0}
!193 = distinct !{!193, !110, !111}
!194 = !{!"branch_weights", i32 322, i32 4484501}
!195 = !{!"branch_weights", i32 3809996, i32 674827}
!196 = !{!"branch_weights", i32 674827, i32 0}
!197 = !{!"branch_weights", i32 0, i32 674827}
!198 = !{!156, !94, i64 8}
!199 = !{!"branch_weights", i32 445270, i32 229557}
!200 = !{!158, !94, i64 0}
!201 = !{!"branch_weights", i32 178207, i32 496620}
!202 = !{!"branch_weights", i32 0, i32 496620}
!203 = !{!"branch_weights", i32 496620, i32 0}
!204 = !{!131, !94, i64 8}
!205 = !{!"branch_weights", i32 178, i32 496442}
!206 = !{!"branch_weights", i32 0, i32 496442}
!207 = !{!"branch_weights", i32 496442, i32 0}
!208 = !{!"branch_weights", i32 0, i32 1141399}
!209 = !{!"branch_weights", i32 496404, i32 644995}
!210 = !{!131, !94, i64 0}
!211 = !{!"branch_weights", i32 38, i32 644957}
!212 = !{!"branch_weights", i32 644957, i32 0}
!213 = !{!"branch_weights", i32 0, i32 644957}
!214 = distinct !{!214, !110, !111}
!215 = !{!216}
!216 = distinct !{!216, !217, !"gsi_last_bb: argument 0"}
!217 = distinct !{!217, !"gsi_last_bb"}
!218 = !{!"branch_weights", i32 496404, i32 0}
!219 = !{!"branch_weights", i32 0, i32 496404}
!220 = !{!"branch_weights", i32 135473, i32 181653}
!221 = !{!"branch_weights", i32 179278, i32 2375, i32 0}
!222 = !{!"branch_weights", i32 0, i32 2375}
!223 = !{!"branch_weights", i32 2375, i32 0}
!224 = !{!163, !94, i64 8}
!225 = !{!"branch_weights", i32 181653, i32 0}
!226 = distinct !{!226, !110, !111}
!227 = !{!116, !94, i64 32}
!228 = !{!"branch_weights", i32 124275, i32 192851}
!229 = !{!128, !94, i64 24}
!230 = !{!231, !94, i64 8}
!231 = !{!"loop", !99, i64 0, !99, i64 4, !94, i64 8, !94, i64 16, !232, i64 24, !99, i64 32, !99, i64 36, !94, i64 40, !94, i64 48, !94, i64 56, !94, i64 64, !94, i64 72, !233, i64 80, !233, i64 96, !95, i64 112, !95, i64 113, !99, i64 116, !94, i64 120, !94, i64 128, !95, i64 136, !94, i64 144}
!232 = !{!"lpt_decision", !99, i64 0, !99, i64 4}
!233 = !{!"", !100, i64 0, !100, i64 8}
!234 = !{!"branch_weights", i32 0, i32 192851}
!235 = !{!"branch_weights", i32 3874482, i32 317115}
!236 = !{!"branch_weights", i32 0, i32 317115}
!237 = !{!"branch_weights", i32 317115, i32 0}
!238 = !{!"branch_weights", i32 23773, i32 293342}
!239 = !{!"branch_weights", i32 11884, i32 281458}
!240 = !{!"branch_weights", i32 0, i32 11884}
!241 = !{!"branch_weights", i32 11884, i32 0}
!242 = !{!"branch_weights", i32 0, i32 719719}
!243 = !{!"branch_weights", i32 317115, i32 402604}
!244 = !{!"branch_weights", i32 402604, i32 0}
!245 = !{!"branch_weights", i32 0, i32 402604}
!246 = distinct !{!246, !110, !111}
!247 = !{!"branch_weights", i32 20206, i32 296909}
!248 = !{!"branch_weights", i32 292086, i32 25029}
!249 = !{!"branch_weights", i32 0, i32 589711}
!250 = !{!"branch_weights", i32 241550, i32 348161}
!251 = !{!"branch_weights", i32 297197, i32 50964}
!252 = !{!"branch_weights", i32 50536, i32 428}
!253 = !{!"branch_weights", i32 0, i32 297625}
!254 = !{!"branch_weights", i32 297625, i32 0}
!255 = distinct !{!255, !110, !111}
!256 = !{!"branch_weights", i32 0, i32 266579}
!257 = !{!"branch_weights", i32 0, i32 577944}
!258 = !{!"branch_weights", i32 266579, i32 311365}
!259 = !{!"branch_weights", i32 311365, i32 0}
!260 = !{!"branch_weights", i32 310743, i32 622}
!261 = !{!"branch_weights", i32 35971, i32 274772}
!262 = !{!148, !99, i64 44}
!263 = !{!"branch_weights", i32 0, i32 274772}
!264 = !{!265, !99, i64 40}
!265 = !{!"phi_arg_d", !175, i64 0, !94, i64 32, !99, i64 40}
!266 = !{!267, !94, i64 0}
!267 = !{!"", !94, i64 0, !94, i64 8, !94, i64 16}
!268 = !{!163, !94, i64 16}
!269 = !{!"branch_weights", i32 274772, i32 0}
!270 = distinct !{!270, !110, !111}
!271 = distinct !{!271, !110, !111}
!272 = !{!273}
!273 = distinct !{!273, !274, !"gsi_start_bb: argument 0"}
!274 = distinct !{!274, !"gsi_start_bb"}
!275 = !{!"branch_weights", i32 266579, i32 0}
!276 = !{!277}
!277 = distinct !{!277, !278, !"gsi_start_bb: argument 0"}
!278 = distinct !{!278, !"gsi_start_bb"}
!279 = !{!"branch_weights", i32 266508, i32 71}
!280 = !{!"branch_weights", i32 0, i32 71}
!281 = !{!"branch_weights", i32 71, i32 0}
!282 = !{!"branch_weights", i32 261310, i32 5269}
!283 = !{!284, !286}
!284 = distinct !{!284, !285, !"gsi_start_bb: argument 0"}
!285 = distinct !{!285, !"gsi_start_bb"}
!286 = distinct !{!286, !287, !"gsi_after_labels: argument 0"}
!287 = distinct !{!287, !"gsi_after_labels"}
!288 = !{!"branch_weights", i32 5269, i32 0}
!289 = !{!"branch_weights", i32 0, i32 5269}
!290 = !{!"branch_weights", i32 1, i32 1683}
!291 = !{!286}
!292 = !{!"branch_weights", i32 0, i32 3585}
!293 = !{!"branch_weights", i32 1683, i32 1902}
!294 = distinct !{!294, !110, !111}
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"gsi_start_bb: argument 0"}
!297 = distinct !{!297, !"gsi_start_bb"}
!298 = distinct !{!298, !299, !"gsi_after_labels: argument 0"}
!299 = distinct !{!299, !"gsi_after_labels"}
!300 = !{!"branch_weights", i32 1, i32 0}
!301 = !{!298}
!302 = !{!"branch_weights", i32 5269, i32 261310}
!303 = !{!"branch_weights", i32 261, i32 3924757}
!304 = !{!"branch_weights", i32 401812, i32 3523206}
!305 = !{!"branch_weights", i32 400392, i32 1420}
!306 = !{!"branch_weights", i32 0, i32 1420}
!307 = !{!"branch_weights", i32 1420, i32 0}
!308 = !{!"branch_weights", i32 788, i32 3915502}
!309 = distinct !{!309, !110, !111}
!310 = !{!"branch_weights", i32 0, i32 285166}
!311 = !{!"branch_weights", i32 788, i32 284378}
!312 = distinct !{!312, !110, !111}
!313 = !{!"branch_weights", i32 7186, i32 277980}
!314 = !{!315}
!315 = distinct !{!315, !316, !"gsi_last_bb: argument 0"}
!316 = distinct !{!316, !"gsi_last_bb"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"gsi_last_bb: argument 0"}
!319 = distinct !{!319, !"gsi_last_bb"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"gsi_start_bb: argument 0"}
!322 = distinct !{!322, !"gsi_start_bb"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"gsi_start_bb: argument 0"}
!325 = distinct !{!325, !"gsi_start_bb"}
!326 = !{!327, !329}
!327 = distinct !{!327, !328, !"gsi_start_bb: argument 0"}
!328 = distinct !{!328, !"gsi_start_bb"}
!329 = distinct !{!329, !330, !"gsi_after_labels: argument 0"}
!330 = distinct !{!330, !"gsi_after_labels"}
!331 = !{!329}
!332 = !{!333, !335}
!333 = distinct !{!333, !334, !"gsi_start_bb: argument 0"}
!334 = distinct !{!334, !"gsi_start_bb"}
!335 = distinct !{!335, !336, !"gsi_after_labels: argument 0"}
!336 = distinct !{!336, !"gsi_after_labels"}
!337 = !{!335}
!338 = !{!"branch_weights", i32 127, i32 100737}
!339 = !{!"branch_weights", i32 0, i32 789}
!340 = !{!"branch_weights", i32 497, i32 292}
!341 = !{!"branch_weights", i32 254, i32 38}
!342 = !{!343, !99, i64 0}
!343 = !{!"loops", !99, i64 0, !94, i64 8, !94, i64 16, !94, i64 24}
!344 = !{!"branch_weights", i32 708, i32 81}
!345 = !{!"branch_weights", i32 43, i32 38}
!346 = !{!"branch_weights", i32 0, i32 38}
!347 = !{!"function_entry_count", i64 78}
!348 = !{!"tree-cfgcleanup.c;gate_merge_phi"}
!349 = !{!"tree-cfgcleanup.c;merge_phi_nodes"}
!350 = !{!128, !94, i64 56}
!351 = !{!"branch_weights", i32 1, i32 155}
!352 = !{!"branch_weights", i32 67, i32 11}
!353 = !{!"branch_weights", i32 496620, i32 178207}
!354 = !{!355}
!355 = distinct !{!355, !356, !"gsi_last_bb: argument 0"}
!356 = distinct !{!356, !"gsi_last_bb"}
!357 = !{!"branch_weights", i32 293215, i32 11}
!358 = !{!"branch_weights", i32 0, i32 11}
!359 = !{!"branch_weights", i32 11, i32 0}
!360 = !{!"branch_weights", i32 0, i32 33}
!361 = !{!"branch_weights", i32 11, i32 22}
!362 = !{!"branch_weights", i32 22, i32 0}
!363 = !{!"branch_weights", i32 0, i32 22}
!364 = !{!175, !94, i64 8}
!365 = distinct !{!365, !110, !111}
!366 = !{!"branch_weights", i32 155, i32 586297}
!367 = distinct !{!367, !110, !111}
!368 = !{!"branch_weights", i32 11, i32 11}
!369 = distinct !{!369, !110, !111}
!370 = !{!"branch_weights", i32 1, i32 175}
!371 = !{!"branch_weights", i32 0, i32 44}
!372 = !{!"branch_weights", i32 22, i32 22}
!373 = !{!374, !99, i64 0}
!374 = !{!"VEC_edge_var_map_base", !99, i64 0, !99, i64 4, !95, i64 8}
!375 = !{!376, !94, i64 0}
!376 = !{!"_edge_var_map", !94, i64 0, !94, i64 8, !99, i64 16}
!377 = !{!376, !94, i64 8}
!378 = !{!376, !99, i64 16}
!379 = distinct !{!379, !110, !111}
!380 = !{!"branch_weights", i32 175, i32 177}
!381 = distinct !{!381, !110, !111}
!382 = distinct !{!382, !110, !111}
!383 = !{!"tree-cfgcleanup.c;remove_fallthru_edge"}
!384 = !{!"function_entry_count", i64 50975}
!385 = !{!"tree-cfgcleanup.c;phi_alternatives_equal"}
!386 = !{!"branch_weights", i32 1, i32 427}
!387 = !{!"branch_weights", i32 0, i32 50975}
!388 = !{!"branch_weights", i32 50547, i32 428}
!389 = !{!"branch_weights", i32 427, i32 50548}
!390 = distinct !{!390, !110, !111}
