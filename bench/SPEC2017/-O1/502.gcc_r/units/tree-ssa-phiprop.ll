; ModuleID = 'tree-ssa-phiprop.c'
source_filename = "tree-ssa-phiprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.phiprop_d = type { ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"phiprop\00", align 1
@pass_phiprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_phiprop, ptr @tree_ssa_phiprop, ptr null, ptr null, i32 0, i32 75, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_phiprop = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"tree-ssa-phiprop.c\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Inserting PHI for result of load \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  for edge defining \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" reusing PHI result \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" inserting load \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_phiprop() #9 !prof !63 !PGOFuncName !64 {
  %1 = load i32, ptr @flag_tree_phiprop, align 4, !tbaa !59
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_phiprop() #10 !prof !63 !PGOFuncName !65 {
  %1 = alloca %struct.immediate_use_iterator_d, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  %8 = load ptr, ptr @cfun, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !72

14:                                               ; preds = %0
  %15 = load i32, ptr %12, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %0, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %0 ]
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 16) #16
  %20 = load ptr, ptr @cfun, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27, !prof !72

27:                                               ; preds = %16
  %28 = load i32, ptr %25, align 8, !tbaa !80
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %31, label %30, !prof !82

30:                                               ; preds = %27, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 645, ptr noundef nonnull @.str.2) #16
  br label %31

31:                                               ; preds = %27, %30
  %32 = load ptr, ptr %24, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.VEC_edge_base, ptr %32, i64 0, i32 2, i64 0
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %36) #16
  %38 = icmp eq ptr %37, null
  br label %39

39:                                               ; preds = %776, %31
  %40 = phi i32 [ 0, %31 ], [ %778, %776 ]
  %41 = phi i8 [ 0, %31 ], [ %777, %776 ]
  br i1 %38, label %49, label %42, !prof !85

42:                                               ; preds = %39
  %43 = load i32, ptr %37, align 8, !tbaa !86
  %44 = icmp ugt i32 %43, %40
  br i1 %44, label %45, label %49, !prof !88

45:                                               ; preds = %42
  %46 = zext i32 %40 to i64
  %47 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %37, i64 0, i32 2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  br label %49

49:                                               ; preds = %39, %42, %45
  %50 = phi ptr [ %48, %45 ], [ null, %42 ], [ null, %39 ]
  %51 = phi i1 [ false, %45 ], [ true, %42 ], [ true, %39 ]
  br i1 %51, label %779, label %52, !prof !89

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %50) #16
  %53 = load ptr, ptr %7, align 8, !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  %54 = icmp eq ptr %53, null
  br i1 %54, label %776, label %55, !prof !91

55:                                               ; preds = %52, %770
  %56 = phi i8 [ %772, %770 ], [ %41, %52 ]
  %57 = phi ptr [ %774, %770 ], [ %53, %52 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !92
  %59 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !55
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %770 [
    i16 10, label %65
    i16 12, label %65
  ], !prof !94

65:                                               ; preds = %55, %55
  %66 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = call zeroext i8 @is_gimple_reg_type(ptr noundef %67) #16
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %770, label %70, !prof !95

70:                                               ; preds = %65
  %71 = load ptr, ptr %59, align 8, !tbaa !55
  %72 = call zeroext i8 @is_gimple_reg(ptr noundef %71) #16
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74, !prof !96

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !55
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %80, !prof !97

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 0
  br label %80

80:                                               ; preds = %78, %74, %70
  %81 = phi i32 [ 1, %78 ], [ 0, %70 ], [ 0, %74 ]
  %82 = phi i32 [ %76, %78 ], [ 0, %70 ], [ %76, %74 ]
  %83 = phi ptr [ %58, %78 ], [ null, %70 ], [ %58, %74 ]
  %84 = phi i1 [ true, %78 ], [ false, %70 ], [ false, %74 ]
  %85 = phi i8 [ 0, %78 ], [ 1, %70 ], [ 1, %74 ]
  %86 = phi ptr [ %79, %78 ], [ null, %70 ], [ null, %74 ]
  br i1 %84, label %87, label %243, !prof !98

87:                                               ; preds = %80, %238
  %88 = phi ptr [ %241, %238 ], [ %86, %80 ]
  %89 = phi i8 [ %240, %238 ], [ %85, %80 ]
  %90 = phi i32 [ %239, %238 ], [ %81, %80 ]
  %91 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %88, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !99
  %93 = load ptr, ptr %92, align 8, !tbaa !44
  br label %94

94:                                               ; preds = %131, %87
  %95 = phi ptr [ %93, %87 ], [ %132, %131 ]
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 4295032831
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %99, label %133, !prof !96

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 3
  %101 = load i32, ptr %100, align 8, !tbaa !55
  %102 = icmp ult i32 %101, %17
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = zext i32 %101 to i64
  %105 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !101
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %103, %99
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !55
  %111 = call zeroext i8 @gimple_assign_single_p(ptr noundef %110) #16
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %110, align 8
  %115 = and i32 %114, 255
  %116 = add nsw i32 %115, -10
  %117 = icmp ult i32 %116, -9
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = zext nneg i32 %115 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !59
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !103
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %127

127:                                              ; preds = %126, %118
  %128 = getelementptr inbounds i8, ptr %110, i64 %124
  %129 = getelementptr inbounds ptr, ptr %128, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !44
  br label %131

131:                                              ; preds = %127, %113, %108
  %132 = phi ptr [ %95, %108 ], [ %130, %127 ], [ null, %113 ]
  br i1 %112, label %770, label %94, !llvm.loop !104

133:                                              ; preds = %103, %94
  %134 = and i64 %96, 65535
  %135 = icmp eq i64 %134, 121
  br i1 %135, label %136, label %143, !prof !96

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_exp, ptr %95, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !55
  %139 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !55
  %141 = call zeroext i8 @is_gimple_reg_type(ptr noundef %140) #16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %227

143:                                              ; preds = %136, %133
  %144 = load i64, ptr %95, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 141
  br i1 %146, label %147, label %770, !prof !96

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 3
  %149 = load i32, ptr %148, align 8, !tbaa !55
  %150 = zext i32 %149 to i64
  %151 = icmp ult i32 %149, %17
  br i1 %151, label %152, label %770

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %150
  %154 = load ptr, ptr %153, align 8, !tbaa !101
  %155 = icmp eq ptr %154, null
  br i1 %155, label %770, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 1
  %158 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %159 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %150, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #16
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 113, ptr noundef nonnull @.str.2) #16
  br label %163

163:                                              ; preds = %162, %156
  %164 = getelementptr inbounds %struct.tree_ssa_name, ptr %160, i64 0, i32 5
  store ptr %164, ptr %157, align 8, !tbaa !106
  %165 = getelementptr inbounds %struct.tree_ssa_name, ptr %160, i64 0, i32 5, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !108
  store ptr %166, ptr %1, align 8, !tbaa !109
  %167 = icmp eq ptr %166, %164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %158, i8 0, i64 40, i1 false)
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  call fastcc void @link_use_stmts_after(ptr noundef %166, ptr noundef nonnull %1)
  %169 = load ptr, ptr %1, align 8, !tbaa !109
  %170 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !55
  br label %172

172:                                              ; preds = %168, %163
  %173 = phi ptr [ %171, %168 ], [ null, %163 ]
  %174 = load ptr, ptr %1, align 8, !tbaa !109
  %175 = load ptr, ptr %157, align 8, !tbaa !106
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %226, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  br label %179

179:                                              ; preds = %177, %220
  %180 = phi ptr [ %221, %220 ], [ %173, %177 ]
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 254
  %183 = add nsw i32 %182, -10
  %184 = icmp ult i32 %183, -4
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %180, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !55
  br label %188

188:                                              ; preds = %185, %179
  %189 = phi ptr [ %187, %185 ], [ null, %179 ]
  %190 = icmp ne ptr %189, null
  %191 = and i32 %181, 255
  %192 = icmp eq i32 %191, 16
  %193 = or i1 %192, %190
  br i1 %193, label %194, label %206

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.gimple_statement_base, ptr %180, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !55
  %197 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %196, ptr noundef %50) #16
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load ptr, ptr %158, align 8, !tbaa !110
  %201 = icmp eq ptr %200, null
  br i1 %201, label %225, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %178, align 8, !tbaa !108
  %204 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %200, i64 0, i32 1
  store ptr %203, ptr %204, align 8, !tbaa !108
  %205 = load ptr, ptr %178, align 8, !tbaa !108
  store ptr %200, ptr %205, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, i8 0, i64 16, i1 false)
  br label %225

206:                                              ; preds = %188, %194
  %207 = load ptr, ptr %178, align 8, !tbaa !108
  store ptr %207, ptr %1, align 8, !tbaa !109
  %208 = load ptr, ptr %157, align 8, !tbaa !106
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load ptr, ptr %158, align 8, !tbaa !110
  %212 = icmp eq ptr %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %211, i64 0, i32 1
  store ptr %207, ptr %214, align 8, !tbaa !108
  %215 = load ptr, ptr %178, align 8, !tbaa !108
  store ptr %211, ptr %215, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, i8 0, i64 16, i1 false)
  br label %220

216:                                              ; preds = %206
  call fastcc void @link_use_stmts_after(ptr noundef %207, ptr noundef nonnull %1)
  %217 = load ptr, ptr %1, align 8, !tbaa !109
  %218 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %217, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !55
  br label %220

220:                                              ; preds = %216, %213, %210
  %221 = phi ptr [ %219, %216 ], [ null, %213 ], [ null, %210 ]
  %222 = load ptr, ptr %1, align 8, !tbaa !109
  %223 = load ptr, ptr %157, align 8, !tbaa !106
  %224 = icmp eq ptr %222, %223
  br i1 %224, label %226, label %179, !llvm.loop !111

225:                                              ; preds = %202, %199
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #16
  br label %770

226:                                              ; preds = %220, %172
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #16
  br label %227

227:                                              ; preds = %136, %226
  %228 = icmp slt i32 %90, %82
  br i1 %228, label %229, label %238

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.gimple_statement_phi, ptr %83, i64 0, i32 1
  %231 = add nsw i32 %90, 1
  %232 = load i32, ptr %230, align 8, !tbaa !55
  %233 = icmp ult i32 %232, %90
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %235

235:                                              ; preds = %234, %229
  %236 = zext i32 %90 to i64
  %237 = getelementptr inbounds %struct.gimple_statement_phi, ptr %83, i64 0, i32 4, i64 %236
  br label %238

238:                                              ; preds = %235, %227
  %239 = phi i32 [ %231, %235 ], [ %90, %227 ]
  %240 = phi i8 [ %89, %235 ], [ 1, %227 ]
  %241 = phi ptr [ %237, %235 ], [ null, %227 ]
  %242 = icmp eq i8 %240, 0
  br i1 %242, label %87, label %243, !prof !97, !llvm.loop !112

243:                                              ; preds = %238, %80
  br label %244

244:                                              ; preds = %292, %243
  %245 = phi ptr [ %60, %243 ], [ %293, %292 ]
  %246 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 5
  %247 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 5, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !108
  %249 = icmp eq ptr %246, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %262, %255, %244
  store ptr null, ptr %5, align 8, !tbaa !44
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %267

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %248, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !108
  %254 = icmp eq ptr %246, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %248, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !55
  %258 = load i32, ptr %257, align 8
  %259 = and i32 %258, 255
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %250, label %261

261:                                              ; preds = %255
  store ptr %248, ptr %5, align 8, !tbaa !44
  store ptr %257, ptr %2, align 8, !tbaa !44
  br label %267

262:                                              ; preds = %251
  %263 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !59
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %250, label %265

265:                                              ; preds = %262
  %266 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %246, ptr noundef nonnull %5, ptr noundef nonnull %2) #16
  br label %267

267:                                              ; preds = %265, %261, %250
  %268 = phi i8 [ 0, %250 ], [ 1, %261 ], [ %266, %265 ]
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %294, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr %2, align 8, !tbaa !44
  %272 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %271) #16
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %294, label %274

274:                                              ; preds = %270
  %275 = load ptr, ptr %2, align 8, !tbaa !44
  %276 = load i32, ptr %275, align 8
  %277 = and i32 %276, 255
  %278 = add nsw i32 %277, -10
  %279 = icmp ult i32 %278, -9
  br i1 %279, label %292, label %280

280:                                              ; preds = %274
  %281 = zext nneg i32 %277 to i64
  %282 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !59
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %284
  %286 = load i64, ptr %285, align 8, !tbaa !103
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %280
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %289

289:                                              ; preds = %288, %280
  %290 = getelementptr inbounds i8, ptr %275, i64 %286
  %291 = load ptr, ptr %290, align 8, !tbaa !44
  br label %292

292:                                              ; preds = %289, %274
  %293 = phi ptr [ %291, %289 ], [ null, %274 ]
  br label %244, !llvm.loop !113

294:                                              ; preds = %270, %267
  %295 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 1
  %296 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 2
  %297 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 5, i32 1
  store ptr %246, ptr %295, align 8, !tbaa !106
  %298 = load ptr, ptr %297, align 8, !tbaa !108
  store ptr %298, ptr %4, align 8, !tbaa !109
  %299 = icmp eq ptr %298, %246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %296, i8 0, i64 40, i1 false)
  br i1 %299, label %304, label %300

300:                                              ; preds = %294
  call fastcc void @link_use_stmts_after(ptr noundef %298, ptr noundef nonnull %4)
  %301 = load ptr, ptr %4, align 8, !tbaa !109
  %302 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !55
  br label %304

304:                                              ; preds = %300, %294
  %305 = phi ptr [ %303, %300 ], [ null, %294 ]
  store ptr %305, ptr %2, align 8, !tbaa !44
  %306 = load ptr, ptr %4, align 8, !tbaa !109
  %307 = load ptr, ptr %295, align 8, !tbaa !106
  %308 = icmp eq ptr %306, %307
  br i1 %308, label %770, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %4, i64 0, i32 2, i32 1
  br label %311

311:                                              ; preds = %309, %765
  %312 = phi ptr [ null, %309 ], [ %751, %765 ]
  %313 = phi i8 [ 0, %309 ], [ %750, %765 ]
  %314 = phi ptr [ %305, %309 ], [ %766, %765 ]
  %315 = load i32, ptr %314, align 8
  %316 = and i32 %315, 255
  %317 = icmp eq i32 %316, 6
  br i1 %317, label %318, label %749

318:                                              ; preds = %311
  %319 = zext nneg i32 %316 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !59
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !103
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %327

327:                                              ; preds = %326, %318
  %328 = getelementptr inbounds i8, ptr %314, i64 %324
  %329 = load ptr, ptr %328, align 8, !tbaa !44
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 65535
  %332 = icmp eq i64 %331, 141
  br i1 %332, label %333, label %749

333:                                              ; preds = %327
  %334 = load ptr, ptr %2, align 8, !tbaa !44
  %335 = load i32, ptr %334, align 8
  %336 = trunc i32 %335 to i8
  switch i8 %336, label %339 [
    i8 6, label %337
    i8 1, label %337
    i8 8, label %340
  ]

337:                                              ; preds = %333, %333
  %338 = lshr i32 %335, 16
  br label %340

339:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.2) #16
  br label %340

340:                                              ; preds = %339, %337, %333
  %341 = phi i32 [ %338, %337 ], [ 0, %339 ], [ 59, %333 ]
  %342 = zext nneg i32 %341 to i64
  %343 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !55
  %345 = icmp eq i8 %344, 3
  br i1 %345, label %346, label %366

346:                                              ; preds = %340
  %347 = load i32, ptr %334, align 8
  %348 = and i32 %347, 255
  %349 = add nsw i32 %348, -1
  %350 = icmp ult i32 %349, 9
  call void @llvm.assume(i1 %350)
  %351 = zext nneg i32 %348 to i64
  %352 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !59
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %354
  %356 = load i64, ptr %355, align 8, !tbaa !103
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %346
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %359

359:                                              ; preds = %358, %346
  %360 = getelementptr inbounds i8, ptr %334, i64 %356
  %361 = getelementptr inbounds ptr, ptr %360, i64 1
  %362 = load ptr, ptr %361, align 8, !tbaa !44
  %363 = load i64, ptr %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = and i32 %364, 65535
  br label %366

366:                                              ; preds = %359, %340
  %367 = phi i32 [ %365, %359 ], [ %341, %340 ]
  %368 = icmp eq i32 %367, 47
  br i1 %368, label %369, label %749

369:                                              ; preds = %366
  %370 = load ptr, ptr %2, align 8, !tbaa !44
  %371 = load i32, ptr %370, align 8
  %372 = and i32 %371, 255
  %373 = add nsw i32 %372, -1
  %374 = icmp ult i32 %373, 9
  call void @llvm.assume(i1 %374)
  %375 = zext nneg i32 %372 to i64
  %376 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !59
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %378
  %380 = load i64, ptr %379, align 8, !tbaa !103
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %369
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %383

383:                                              ; preds = %382, %369
  %384 = getelementptr inbounds i8, ptr %370, i64 %380
  %385 = getelementptr inbounds ptr, ptr %384, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !44
  %387 = getelementptr inbounds %struct.tree_exp, ptr %386, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !55
  %389 = icmp eq ptr %388, %245
  br i1 %389, label %390, label %749

390:                                              ; preds = %383
  %391 = load ptr, ptr %2, align 8, !tbaa !44
  %392 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %391) #16
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %749

394:                                              ; preds = %390
  %395 = load ptr, ptr %2, align 8, !tbaa !44
  %396 = load i32, ptr %395, align 8
  %397 = and i32 %396, 254
  %398 = add nsw i32 %397, -10
  %399 = icmp ult i32 %398, -4
  br i1 %399, label %403, label %400

400:                                              ; preds = %394
  %401 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %395, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !55
  br label %403

403:                                              ; preds = %400, %394
  %404 = phi ptr [ %402, %400 ], [ null, %394 ]
  %405 = load i64, ptr %404, align 8
  %406 = and i64 %405, 4294967296
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %417

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.tree_ssa_name, ptr %404, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !55
  %411 = getelementptr inbounds %struct.gimple_statement_base, ptr %410, i64 0, i32 4
  %412 = load ptr, ptr %411, align 8, !tbaa !55
  %413 = icmp eq ptr %412, %50
  br i1 %413, label %749, label %414

414:                                              ; preds = %408
  %415 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %50, ptr noundef %412) #16
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %749, label %417

417:                                              ; preds = %414, %403
  %418 = icmp eq i8 %313, 0
  %419 = load ptr, ptr %2, align 8, !tbaa !44
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 255
  br i1 %418, label %422, label %721

422:                                              ; preds = %417
  %423 = icmp eq ptr %50, null
  %424 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 1
  %425 = icmp eq i32 %421, 6
  br i1 %425, label %426, label %451

426:                                              ; preds = %422
  %427 = lshr i32 %420, 16
  %428 = zext nneg i32 %427 to i64
  %429 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !55
  %431 = icmp eq i8 %430, 3
  br i1 %431, label %432, label %448

432:                                              ; preds = %426
  %433 = zext nneg i32 %421 to i64
  %434 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !59
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %436
  %438 = load i64, ptr %437, align 8, !tbaa !103
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %432
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %441

441:                                              ; preds = %440, %432
  %442 = getelementptr inbounds i8, ptr %419, i64 %438
  %443 = getelementptr inbounds ptr, ptr %442, i64 1
  %444 = load ptr, ptr %443, align 8, !tbaa !44
  %445 = load i64, ptr %444, align 8
  %446 = trunc i64 %445 to i32
  %447 = and i32 %446, 65535
  br label %448

448:                                              ; preds = %441, %426
  %449 = phi i32 [ %447, %441 ], [ %427, %426 ]
  %450 = icmp eq i32 %449, 47
  br i1 %450, label %452, label %451

451:                                              ; preds = %448, %422
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 143, ptr noundef nonnull @.str.2) #16
  br label %452

452:                                              ; preds = %451, %448
  %453 = load i32, ptr %419, align 8
  %454 = and i32 %453, 255
  %455 = add nsw i32 %454, -10
  %456 = icmp ult i32 %455, -9
  br i1 %456, label %469, label %457

457:                                              ; preds = %452
  %458 = zext nneg i32 %454 to i64
  %459 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %458
  %460 = load i32, ptr %459, align 4, !tbaa !59
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %461
  %463 = load i64, ptr %462, align 8, !tbaa !103
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %457
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %466

466:                                              ; preds = %465, %457
  %467 = getelementptr inbounds i8, ptr %419, i64 %463
  %468 = load ptr, ptr %467, align 8, !tbaa !44
  br label %469

469:                                              ; preds = %466, %452
  %470 = phi ptr [ %468, %466 ], [ null, %452 ]
  %471 = call ptr @create_phi_node(ptr noundef %470, ptr noundef %50) #16
  %472 = getelementptr inbounds %struct.tree_ssa_name, ptr %470, i64 0, i32 2
  store ptr %471, ptr %472, align 8, !tbaa !55
  %473 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %474 = icmp eq ptr %473, null
  br i1 %474, label %482, label %475

475:                                              ; preds = %469
  %476 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %477 = and i32 %476, 8
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %475
  %480 = call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr nonnull %473)
  %481 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call void @print_gimple_stmt(ptr noundef %481, ptr noundef nonnull %419, i32 noundef 0, i32 noundef 0) #16
  br label %482

482:                                              ; preds = %479, %475, %469
  br label %483

483:                                              ; preds = %482, %696
  %484 = phi i32 [ %697, %696 ], [ 0, %482 ]
  br i1 %423, label %485, label %486

485:                                              ; preds = %483
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 687, ptr noundef nonnull @.str.2) #16
  br label %486

486:                                              ; preds = %485, %483
  %487 = load ptr, ptr %50, align 8, !tbaa !44
  %488 = icmp eq ptr %487, null
  br i1 %488, label %491, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr %487, align 8, !tbaa !80
  br label %491

491:                                              ; preds = %489, %486
  %492 = phi i32 [ %490, %489 ], [ 0, %486 ]
  %493 = icmp eq i32 %492, %484
  br i1 %493, label %498, label %494

494:                                              ; preds = %491
  %495 = zext i32 %484 to i64
  %496 = getelementptr inbounds %struct.VEC_edge_base, ptr %487, i64 0, i32 2, i64 %495
  %497 = load ptr, ptr %496, align 8, !tbaa !44
  br label %498

498:                                              ; preds = %494, %491
  %499 = phi ptr [ %497, %494 ], [ null, %491 ]
  br i1 %493, label %698, label %500

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.edge_def, ptr %499, i64 0, i32 6
  %502 = load i32, ptr %501, align 4, !tbaa !114
  %503 = load i32, ptr %424, align 8, !tbaa !55
  %504 = icmp ult i32 %503, %502
  br i1 %504, label %505, label %506

505:                                              ; preds = %500
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %506

506:                                              ; preds = %505, %500
  %507 = zext i32 %502 to i64
  %508 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 %507, i32 0, i32 3
  %509 = load ptr, ptr %508, align 8, !tbaa !99
  %510 = load ptr, ptr %509, align 8, !tbaa !44
  %511 = load i32, ptr %501, align 4, !tbaa !114
  %512 = load i32, ptr %424, align 8, !tbaa !55
  %513 = icmp ult i32 %512, %511
  br i1 %513, label %514, label %515

514:                                              ; preds = %506
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %515

515:                                              ; preds = %514, %506
  %516 = zext i32 %511 to i64
  %517 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 %516, i32 2
  %518 = load i32, ptr %517, align 8, !tbaa !55
  %519 = load i64, ptr %510, align 8
  %520 = and i64 %519, 65535
  %521 = icmp eq i64 %520, 141
  br i1 %521, label %522, label %561

522:                                              ; preds = %515, %554
  %523 = phi i64 [ %558, %554 ], [ %519, %515 ]
  %524 = phi i32 [ %557, %554 ], [ %518, %515 ]
  %525 = phi ptr [ %555, %554 ], [ %510, %515 ]
  %526 = getelementptr inbounds %struct.tree_ssa_name, ptr %525, i64 0, i32 3
  %527 = load i32, ptr %526, align 8, !tbaa !55
  %528 = icmp ult i32 %527, %17
  br i1 %528, label %529, label %534

529:                                              ; preds = %522
  %530 = zext i32 %527 to i64
  %531 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !101
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %561

534:                                              ; preds = %529, %522
  %535 = getelementptr inbounds %struct.tree_ssa_name, ptr %525, i64 0, i32 2
  %536 = load ptr, ptr %535, align 8, !tbaa !55
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, 255
  %539 = add nsw i32 %538, -10
  %540 = icmp ult i32 %539, -9
  br i1 %540, label %554, label %541

541:                                              ; preds = %534
  %542 = zext nneg i32 %538 to i64
  %543 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !59
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %545
  %547 = load i64, ptr %546, align 8, !tbaa !103
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %541
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %550

550:                                              ; preds = %549, %541
  %551 = getelementptr inbounds i8, ptr %536, i64 %547
  %552 = getelementptr inbounds ptr, ptr %551, i64 1
  %553 = load ptr, ptr %552, align 8, !tbaa !44
  br label %554

554:                                              ; preds = %550, %534
  %555 = phi ptr [ %553, %550 ], [ null, %534 ]
  %556 = getelementptr inbounds %struct.gimple_statement_base, ptr %536, i64 0, i32 2
  %557 = load i32, ptr %556, align 8, !tbaa !55
  %558 = load i64, ptr %555, align 8
  %559 = and i64 %558, 65535
  %560 = icmp eq i64 %559, 141
  br i1 %560, label %522, label %561, !llvm.loop !115

561:                                              ; preds = %554, %529, %515
  %562 = phi ptr [ %510, %515 ], [ %555, %554 ], [ %525, %529 ]
  %563 = phi i32 [ %518, %515 ], [ %557, %554 ], [ %524, %529 ]
  %564 = phi i64 [ %519, %515 ], [ %558, %554 ], [ %523, %529 ]
  %565 = trunc i64 %564 to i16
  switch i16 %565, label %601 [
    i16 141, label %566
    i16 121, label %602
  ]

566:                                              ; preds = %561
  %567 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %568 = icmp eq ptr %567, null
  br i1 %568, label %595, label %569

569:                                              ; preds = %566
  %570 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %571 = and i32 %570, 8
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %595, label %573

573:                                              ; preds = %569
  %574 = call i64 @fwrite(ptr nonnull @.str.7, i64 20, i64 1, ptr nonnull %567)
  %575 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %576 = load i32, ptr %501, align 4, !tbaa !114
  %577 = load i32, ptr %424, align 8, !tbaa !55
  %578 = icmp ult i32 %577, %576
  br i1 %578, label %579, label %580

579:                                              ; preds = %573
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %580

580:                                              ; preds = %579, %573
  %581 = zext i32 %576 to i64
  %582 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 %581, i32 0, i32 3
  %583 = load ptr, ptr %582, align 8, !tbaa !99
  %584 = load ptr, ptr %583, align 8, !tbaa !44
  call void @print_generic_expr(ptr noundef %575, ptr noundef %584, i32 noundef 0) #16
  %585 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %586 = call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr %585)
  %587 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %588 = getelementptr inbounds %struct.tree_ssa_name, ptr %562, i64 0, i32 3
  %589 = load i32, ptr %588, align 8, !tbaa !55
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %590
  %592 = load ptr, ptr %591, align 8, !tbaa !101
  call void @print_generic_expr(ptr noundef %587, ptr noundef %592, i32 noundef 0) #16
  %593 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %594 = call i32 @fputc(i32 10, ptr %593)
  br label %595

595:                                              ; preds = %580, %569, %566
  %596 = getelementptr inbounds %struct.tree_ssa_name, ptr %562, i64 0, i32 3
  %597 = load i32, ptr %596, align 8, !tbaa !55
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %598
  %600 = load ptr, ptr %599, align 8, !tbaa !101
  br label %686

601:                                              ; preds = %561
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 191, ptr noundef nonnull @.str.2) #16
  br label %602

602:                                              ; preds = %601, %561
  %603 = getelementptr inbounds %struct.tree_exp, ptr %562, i64 0, i32 3
  %604 = load ptr, ptr %603, align 8, !tbaa !55
  %605 = getelementptr inbounds %struct.tree_common, ptr %604, i64 0, i32 2
  %606 = load ptr, ptr %605, align 8, !tbaa !55
  %607 = call ptr @create_tmp_var(ptr noundef %606, ptr noundef null) #16
  %608 = call ptr @unshare_expr(ptr noundef %604) #16
  %609 = call ptr @gimple_build_assign_stat(ptr noundef %607, ptr noundef %608) #16
  %610 = load ptr, ptr %605, align 8, !tbaa !55
  %611 = load i64, ptr %610, align 8
  %612 = trunc i64 %611 to i32
  %613 = and i32 %612, 65535
  %614 = add nsw i32 %613, -13
  %615 = icmp ult i32 %614, 2
  br i1 %615, label %616, label %620

616:                                              ; preds = %602
  %617 = getelementptr inbounds %struct.tree_decl_common, ptr %607, i64 0, i32 2
  %618 = load i64, ptr %617, align 8
  %619 = or i64 %618, 134217728
  store i64 %619, ptr %617, align 8
  br label %620

620:                                              ; preds = %616, %602
  %621 = call zeroext i8 @is_gimple_reg(ptr noundef %607) #16
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %623, label %624

623:                                              ; preds = %620
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 198, ptr noundef nonnull @.str.2) #16
  br label %624

624:                                              ; preds = %623, %620
  %625 = call zeroext i8 @add_referenced_var(ptr noundef %607) #16
  %626 = load ptr, ptr @cfun, align 8, !tbaa !44
  %627 = call ptr @make_ssa_name_fn(ptr noundef %626, ptr noundef %607, ptr noundef %609) #16
  %628 = load i32, ptr %609, align 8
  %629 = and i32 %628, 255
  %630 = add nsw i32 %629, -10
  %631 = icmp ult i32 %630, -9
  br i1 %631, label %636, label %632

632:                                              ; preds = %624
  %633 = getelementptr inbounds %struct.gimple_statement_base, ptr %609, i64 0, i32 3
  %634 = load i32, ptr %633, align 4, !tbaa !55
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %637

636:                                              ; preds = %632, %624
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.2) #16
  br label %637

637:                                              ; preds = %636, %632
  %638 = load i32, ptr %609, align 8
  %639 = and i32 %638, 255
  %640 = zext nneg i32 %639 to i64
  %641 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %640
  %642 = load i32, ptr %641, align 4, !tbaa !59
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %643
  %645 = load i64, ptr %644, align 8, !tbaa !103
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %647, label %648

647:                                              ; preds = %637
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %648

648:                                              ; preds = %647, %637
  %649 = getelementptr inbounds i8, ptr %609, i64 %645
  store ptr %627, ptr %649, align 8, !tbaa !44
  %650 = icmp eq ptr %627, null
  br i1 %650, label %657, label %651

651:                                              ; preds = %648
  %652 = load i64, ptr %627, align 8
  %653 = and i64 %652, 65535
  %654 = icmp eq i64 %653, 141
  br i1 %654, label %655, label %657

655:                                              ; preds = %651
  %656 = getelementptr inbounds %struct.tree_ssa_name, ptr %627, i64 0, i32 2
  store ptr %609, ptr %656, align 8, !tbaa !55
  br label %657

657:                                              ; preds = %655, %651, %648
  %658 = getelementptr inbounds %struct.gimple_statement_base, ptr %609, i64 0, i32 2
  store i32 %563, ptr %658, align 8, !tbaa !55
  call void @gsi_insert_on_edge(ptr noundef %499, ptr noundef nonnull %609) #16
  %659 = load i32, ptr %609, align 8
  %660 = and i32 %659, 255
  %661 = add nsw i32 %660, -10
  %662 = icmp ult i32 %661, -9
  br i1 %662, label %664, label %663

663:                                              ; preds = %657
  call void @gimple_set_modified(ptr noundef nonnull %609, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %609) #16
  br label %664

664:                                              ; preds = %663, %657
  %665 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %666 = icmp eq ptr %665, null
  br i1 %666, label %686, label %667

667:                                              ; preds = %664
  %668 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %669 = and i32 %668, 8
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %686, label %671

671:                                              ; preds = %667
  %672 = call i64 @fwrite(ptr nonnull @.str.7, i64 20, i64 1, ptr nonnull %665)
  %673 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %674 = load i32, ptr %501, align 4, !tbaa !114
  %675 = load i32, ptr %424, align 8, !tbaa !55
  %676 = icmp ult i32 %675, %674
  br i1 %676, label %677, label %678

677:                                              ; preds = %671
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %678

678:                                              ; preds = %677, %671
  %679 = zext i32 %674 to i64
  %680 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 4, i64 %679, i32 0, i32 3
  %681 = load ptr, ptr %680, align 8, !tbaa !99
  %682 = load ptr, ptr %681, align 8, !tbaa !44
  call void @print_generic_expr(ptr noundef %673, ptr noundef %682, i32 noundef 0) #16
  %683 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %684 = call i64 @fwrite(ptr nonnull @.str.10, i64 16, i64 1, ptr %683)
  %685 = load ptr, ptr @dump_file, align 8, !tbaa !44
  call void @print_gimple_stmt(ptr noundef %685, ptr noundef nonnull %609, i32 noundef 0, i32 noundef 0) #16
  br label %686

686:                                              ; preds = %678, %667, %664, %595
  %687 = phi ptr [ %600, %595 ], [ %627, %678 ], [ %627, %667 ], [ %627, %664 ]
  call void @add_phi_arg(ptr noundef %471, ptr noundef %687, ptr noundef %499, i32 noundef %563) #16
  %688 = load ptr, ptr %50, align 8, !tbaa !44
  %689 = icmp eq ptr %688, null
  br i1 %689, label %692, label %690

690:                                              ; preds = %686
  %691 = load i32, ptr %688, align 8, !tbaa !80
  br label %692

692:                                              ; preds = %690, %686
  %693 = phi i32 [ %691, %690 ], [ 0, %686 ]
  %694 = icmp ult i32 %484, %693
  br i1 %694, label %696, label %695

695:                                              ; preds = %692
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 738, ptr noundef nonnull @.str.2) #16
  br label %696

696:                                              ; preds = %695, %692
  %697 = add i32 %484, 1
  br label %483, !llvm.loop !116

698:                                              ; preds = %498
  %699 = load i32, ptr %471, align 8
  %700 = and i32 %699, 255
  %701 = add nsw i32 %700, -10
  %702 = icmp ult i32 %701, -9
  br i1 %702, label %704, label %703

703:                                              ; preds = %698
  call void @gimple_set_modified(ptr noundef nonnull %471, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %471) #16
  br label %704

704:                                              ; preds = %703, %698
  %705 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %706 = icmp eq ptr %705, null
  br i1 %706, label %712, label %707

707:                                              ; preds = %704
  %708 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %709 = and i32 %708, 8
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %712, label %711

711:                                              ; preds = %707
  call void @print_gimple_stmt(ptr noundef nonnull %705, ptr noundef nonnull %471, i32 noundef 0, i32 noundef 0) #16
  br label %712

712:                                              ; preds = %704, %707, %711
  %713 = getelementptr inbounds %struct.tree_ssa_name, ptr %245, i64 0, i32 3
  %714 = load i32, ptr %713, align 8, !tbaa !55
  %715 = zext i32 %714 to i64
  %716 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %715
  store ptr %470, ptr %716, align 8, !tbaa !101
  %717 = load i32, ptr %713, align 8, !tbaa !55
  %718 = zext i32 %717 to i64
  %719 = getelementptr inbounds %struct.phiprop_d, ptr %19, i64 %718, i32 1
  store ptr %404, ptr %719, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %720 = load ptr, ptr %2, align 8, !tbaa !44
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %720) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #16
  br label %749

721:                                              ; preds = %417
  %722 = add nsw i32 %421, -10
  %723 = icmp ult i32 %722, -9
  br i1 %723, label %728, label %724

724:                                              ; preds = %721
  %725 = getelementptr inbounds %struct.gimple_statement_base, ptr %419, i64 0, i32 3
  %726 = load i32, ptr %725, align 4, !tbaa !55
  %727 = icmp ugt i32 %726, 1
  br i1 %727, label %729, label %728

728:                                              ; preds = %724, %721
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.2) #16
  br label %729

729:                                              ; preds = %728, %724
  %730 = load i32, ptr %419, align 8
  %731 = and i32 %730, 255
  %732 = zext nneg i32 %731 to i64
  %733 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %732
  %734 = load i32, ptr %733, align 4, !tbaa !59
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %735
  %737 = load i64, ptr %736, align 8, !tbaa !103
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %739, label %740

739:                                              ; preds = %729
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %740

740:                                              ; preds = %739, %729
  %741 = getelementptr inbounds i8, ptr %419, i64 %737
  %742 = getelementptr inbounds ptr, ptr %741, i64 1
  store ptr %312, ptr %742, align 8, !tbaa !44
  %743 = load ptr, ptr %2, align 8, !tbaa !44
  %744 = load i32, ptr %743, align 8
  %745 = and i32 %744, 255
  %746 = add nsw i32 %745, -10
  %747 = icmp ult i32 %746, -9
  br i1 %747, label %749, label %748

748:                                              ; preds = %740
  call void @gimple_set_modified(ptr noundef nonnull %743, i8 noundef zeroext 1) #16
  call void @update_stmt_operands(ptr noundef nonnull %743) #16
  br label %749

749:                                              ; preds = %748, %740, %712, %414, %408, %390, %383, %366, %327, %311
  %750 = phi i8 [ %313, %390 ], [ %313, %383 ], [ %313, %366 ], [ %313, %327 ], [ %313, %311 ], [ 1, %712 ], [ %313, %408 ], [ %313, %414 ], [ 1, %740 ], [ 1, %748 ]
  %751 = phi ptr [ %312, %390 ], [ %312, %383 ], [ %312, %366 ], [ %312, %327 ], [ %312, %311 ], [ %470, %712 ], [ %312, %408 ], [ %312, %414 ], [ %312, %740 ], [ %312, %748 ]
  %752 = load ptr, ptr %310, align 8, !tbaa !108
  store ptr %752, ptr %4, align 8, !tbaa !109
  %753 = load ptr, ptr %295, align 8, !tbaa !106
  %754 = icmp eq ptr %752, %753
  br i1 %754, label %755, label %761

755:                                              ; preds = %749
  %756 = load ptr, ptr %296, align 8, !tbaa !110
  %757 = icmp eq ptr %756, null
  br i1 %757, label %765, label %758

758:                                              ; preds = %755
  %759 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %756, i64 0, i32 1
  store ptr %752, ptr %759, align 8, !tbaa !108
  %760 = load ptr, ptr %310, align 8, !tbaa !108
  store ptr %756, ptr %760, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %296, i8 0, i64 16, i1 false)
  br label %765

761:                                              ; preds = %749
  call fastcc void @link_use_stmts_after(ptr noundef %752, ptr noundef nonnull %4)
  %762 = load ptr, ptr %4, align 8, !tbaa !109
  %763 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %762, i64 0, i32 2
  %764 = load ptr, ptr %763, align 8, !tbaa !55
  br label %765

765:                                              ; preds = %761, %758, %755
  %766 = phi ptr [ %764, %761 ], [ null, %758 ], [ null, %755 ]
  store ptr %766, ptr %2, align 8, !tbaa !44
  %767 = load ptr, ptr %4, align 8, !tbaa !109
  %768 = load ptr, ptr %295, align 8, !tbaa !106
  %769 = icmp eq ptr %767, %768
  br i1 %769, label %770, label %311, !llvm.loop !117

770:                                              ; preds = %143, %147, %152, %765, %131, %304, %65, %225, %55
  %771 = phi i8 [ 0, %55 ], [ 0, %225 ], [ 0, %65 ], [ 0, %304 ], [ 0, %131 ], [ %750, %765 ], [ 0, %152 ], [ 0, %147 ], [ 0, %143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %772 = or i8 %771, %56
  %773 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %57, i64 0, i32 2
  %774 = load ptr, ptr %773, align 8, !tbaa !118
  %775 = icmp eq ptr %774, null
  br i1 %775, label %776, label %55, !prof !119, !llvm.loop !120

776:                                              ; preds = %770, %52
  %777 = phi i8 [ %41, %52 ], [ %772, %770 ]
  %778 = add i32 %40, 1
  br label %39, !llvm.loop !121

779:                                              ; preds = %49
  %780 = icmp eq i8 %41, 0
  br i1 %780, label %782, label %781, !prof !82

781:                                              ; preds = %779
  call void @gsi_commit_edge_inserts() #16
  br label %782

782:                                              ; preds = %781, %779
  br i1 %38, label %784, label %783, !prof !72

783:                                              ; preds = %782
  call void @free(ptr noundef %37)
  br label %784

784:                                              ; preds = %782, %783
  call void @free(ptr noundef %19)
  ret i32 0
}

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #16
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #16
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !55
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
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !108
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !110
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !108
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !108
  %56 = load ptr, ptr %53, align 8, !tbaa !108
  store ptr %50, ptr %56, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !110
  %58 = load ptr, ptr %46, align 8, !tbaa !108
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !108
  %60 = load ptr, ptr %46, align 8, !tbaa !108
  store ptr %35, ptr %60, align 8, !tbaa !110
  store ptr %35, ptr %46, align 8, !tbaa !108
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !55
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
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
  br i1 %76, label %34, label %188, !llvm.loop !122

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
  %85 = load ptr, ptr %84, align 8, !tbaa !55
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
  %95 = load ptr, ptr %94, align 8, !tbaa !55
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !123
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !123
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
  %115 = load ptr, ptr %114, align 8, !tbaa !99
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !108
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !110
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !108
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !108
  %131 = load ptr, ptr %128, align 8, !tbaa !108
  store ptr %125, ptr %131, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !110
  %133 = load ptr, ptr %121, align 8, !tbaa !108
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !108
  %135 = load ptr, ptr %121, align 8, !tbaa !108
  store ptr %110, ptr %135, align 8, !tbaa !110
  store ptr %110, ptr %121, align 8, !tbaa !108
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !123
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !125

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !55
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !126
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
  %167 = load ptr, ptr %166, align 8, !tbaa !99
  %168 = load ptr, ptr %167, align 8, !tbaa !44
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !108
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !110
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !108
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !108
  %183 = load ptr, ptr %180, align 8, !tbaa !108
  store ptr %177, ptr %183, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !110
  %185 = load ptr, ptr %173, align 8, !tbaa !108
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !108
  %187 = load ptr, ptr %173, align 8, !tbaa !108
  store ptr %163, ptr %187, align 8, !tbaa !110
  store ptr %163, ptr %173, align 8, !tbaa !108
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !110
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !108
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !108
  %197 = load ptr, ptr %194, align 8, !tbaa !108
  store ptr %191, ptr %197, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !110
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !108
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !108
  %202 = load ptr, ptr %199, align 8, !tbaa !108
  store ptr %190, ptr %202, align 8, !tbaa !110
  store ptr %190, ptr %199, align 8, !tbaa !108
  ret void
}

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @tree_ssa_phiprop, ptr @calculate_dominance_info, i64 38}
!36 = !{ptr @tree_ssa_phiprop, ptr @xcalloc, i64 38}
!37 = !{ptr @tree_ssa_phiprop, ptr @get_all_dominated_blocks, i64 38}
!38 = !{ptr @tree_ssa_phiprop, ptr @gsi_start_phis, i64 146652}
!39 = !{ptr @tree_ssa_phiprop, ptr @is_gimple_reg_type, i64 18}
!40 = !{ptr @tree_ssa_phiprop, ptr @is_gimple_reg, i64 6}
!41 = !{ptr @tree_ssa_phiprop, ptr @free, i64 76}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 38}
!64 = !{!"tree-ssa-phiprop.c;gate_phiprop"}
!65 = !{!"tree-ssa-phiprop.c;tree_ssa_phiprop"}
!66 = !{!67, !45, i64 24}
!67 = !{!"function", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !45, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!68 = !{!69, !45, i64 16}
!69 = !{!"gimple_df", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !70, i64 32, !70, i64 48, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !50, i64 96, !71, i64 104}
!70 = !{!"pt_solution", !50, i64 0, !50, i64 0, !50, i64 0, !50, i64 0, !50, i64 0, !50, i64 0, !45, i64 8}
!71 = !{!"ssa_operands", !45, i64 0, !50, i64 8, !50, i64 12, !46, i64 16, !45, i64 24, !45, i64 32}
!72 = !{!"branch_weights", i32 0, i32 38}
!73 = !{!74, !50, i64 0}
!74 = !{!"VEC_tree_base", !50, i64 0, !50, i64 4, !46, i64 8}
!75 = !{!67, !45, i64 8}
!76 = !{!77, !45, i64 0}
!77 = !{!"control_flow_graph", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !45, i64 40, !50, i64 48, !46, i64 52, !46, i64 60, !50, i64 68, !50, i64 72}
!78 = !{!79, !45, i64 8}
!79 = !{!"basic_block_def", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !46, i64 32, !45, i64 48, !45, i64 56, !46, i64 64, !51, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96}
!80 = !{!81, !50, i64 0}
!81 = !{!"VEC_edge_base", !50, i64 0, !50, i64 4, !46, i64 8}
!82 = !{!"branch_weights", i32 38, i32 0}
!83 = !{!84, !45, i64 8}
!84 = !{!"edge_def", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !45, i64 32, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !51, i64 56}
!85 = !{!"branch_weights", i32 0, i32 146690}
!86 = !{!87, !50, i64 0}
!87 = !{!"VEC_basic_block_base", !50, i64 0, !50, i64 4, !46, i64 8}
!88 = !{!"branch_weights", i32 146652, i32 38}
!89 = !{!"branch_weights", i32 38, i32 146652}
!90 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!91 = !{!"branch_weights", i32 105532, i32 41120}
!92 = !{!93, !45, i64 0}
!93 = !{!"gimple_seq_node_d", !45, i64 0, !45, i64 8, !45, i64 16}
!94 = !{!"branch_weights", i32 41102, i32 18, i32 0}
!95 = !{!"branch_weights", i32 12, i32 6}
!96 = !{!"branch_weights", i32 0, i32 6}
!97 = !{!"branch_weights", i32 6, i32 0}
!98 = !{!"branch_weights", i32 1, i32 0}
!99 = !{!100, !45, i64 24}
!100 = !{!"ssa_use_operand_d", !45, i64 0, !45, i64 8, !46, i64 16, !45, i64 24}
!101 = !{!102, !45, i64 0}
!102 = !{!"phiprop_d", !45, i64 0, !45, i64 8}
!103 = !{!51, !51, i64 0}
!104 = distinct !{!104, !61, !62}
!105 = !{!102, !45, i64 8}
!106 = !{!107, !45, i64 8}
!107 = !{!"immediate_use_iterator_d", !45, i64 0, !45, i64 8, !100, i64 16, !45, i64 48}
!108 = !{!100, !45, i64 8}
!109 = !{!107, !45, i64 0}
!110 = !{!100, !45, i64 0}
!111 = distinct !{!111, !61, !62}
!112 = distinct !{!112, !61, !62}
!113 = distinct !{!113, !61, !62}
!114 = !{!84, !50, i64 44}
!115 = distinct !{!115, !61, !62}
!116 = distinct !{!116, !61, !62}
!117 = distinct !{!117, !61, !62}
!118 = !{!93, !45, i64 16}
!119 = !{!"branch_weights", i32 41120, i32 0}
!120 = distinct !{!120, !61, !62}
!121 = distinct !{!121, !61, !62}
!122 = distinct !{!122, !61, !62}
!123 = !{!124, !45, i64 0}
!124 = !{!"use_optype_d", !45, i64 0, !100, i64 8}
!125 = distinct !{!125, !61, !62}
!126 = !{!124, !45, i64 32}
