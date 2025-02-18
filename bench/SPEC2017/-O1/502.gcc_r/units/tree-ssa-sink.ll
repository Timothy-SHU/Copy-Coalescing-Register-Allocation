; ModuleID = 'tree-ssa-sink.c'
source_filename = "tree-ssa-sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-sink.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@pass_sink_code = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_sink, ptr @do_sink, ptr null, ptr null, i32 0, i32 72, i32 104, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_sink = external local_unnamed_addr global i32, align 4
@sink_stats.0 = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Sunk statements\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Sinking \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" from bb %d to bb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"Not moving store, common dominator post-dominates from block.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Common dominator of all uses is %d\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !62
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !61 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !61 {
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
  br i1 %23, label %7, label %24, !llvm.loop !78

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @is_hidden_global_store(ptr noundef %0) local_unnamed_addr #9 !prof !81 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 254
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -4
  br i1 %5, label %53, label %6, !prof !82

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10, !prof !83

10:                                               ; preds = %6
  %11 = trunc i32 %2 to i8
  switch i8 %11, label %12 [
    i8 6, label %13
    i8 8, label %13
  ], !prof !84

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #16
  br label %13

13:                                               ; preds = %10, %10, %12
  %14 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #16
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !77
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %22, !prof !85

20:                                               ; preds = %13
  %21 = tail call ptr @get_base_address(ptr noundef nonnull %14) #16
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi ptr [ %21, %20 ], [ %14, %13 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25, !prof !86

25:                                               ; preds = %22
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !77
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %39, !prof !86

31:                                               ; preds = %25
  %32 = and i64 %26, 67108864
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 33554432
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %49, label %50

39:                                               ; preds = %25
  %40 = trunc i64 %26 to i32
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -47
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %48, !prof !85

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef %46) #16
  br label %50

48:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.1) #16
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %31, %34, %22, %49, %44
  %51 = phi i8 [ undef, %49 ], [ %47, %44 ], [ 1, %22 ], [ 1, %34 ], [ 1, %31 ]
  %52 = phi i1 [ true, %49 ], [ false, %44 ], [ false, %22 ], [ false, %34 ], [ false, %31 ]
  br i1 %52, label %53, label %54, !prof !86

53:                                               ; preds = %1, %50, %6
  br label %54

54:                                               ; preds = %50, %53
  %55 = phi i8 [ %51, %50 ], [ 0, %53 ]
  ret i8 %55
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_sink() #10 !prof !87 !PGOFuncName !88 {
  %1 = load i32, ptr @flag_tree_sink, align 4, !tbaa !77
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @do_sink() #11 !prof !87 !PGOFuncName !89 {
  tail call void @loop_optimizer_init(i32 noundef 7) #16
  tail call void @connect_infinite_loops_to_exit() #16
  store i32 0, ptr @sink_stats.0, align 4
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  tail call void @calculate_dominance_info(i32 noundef 2) #16
  %1 = load ptr, ptr @cfun, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  tail call fastcc void @sink_code_in_bb(ptr noundef %5)
  %6 = load ptr, ptr @cfun, align 8, !tbaa !62
  %7 = load i32, ptr @sink_stats.0, align 4, !tbaa !94
  tail call void @statistics_counter_event(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %7) #16
  tail call void @free_dominance_info(i32 noundef 2) #16
  tail call void @remove_fake_exit_edges() #16
  tail call void @loop_optimizer_finalize() #16
  ret i32 0
}

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @connect_infinite_loops_to_exit() local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sink_code_in_bb(ptr noundef %0) unnamed_addr #9 !prof !96 !PGOFuncName !97 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %5 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %817, label %7, !prof !98

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %37, %7
  %10 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !99

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !100
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %22, label %18, !prof !102

18:                                               ; preds = %15
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds %struct.VEC_edge_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ]
  br i1 %17, label %39, label %24, !prof !102

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !103
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %817, !prof !105

29:                                               ; preds = %24
  %30 = icmp eq ptr %11, null
  br i1 %30, label %33, label %31, !prof !106

31:                                               ; preds = %29
  %32 = load i32, ptr %11, align 8, !tbaa !100
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ 0, %29 ]
  %35 = icmp ult i32 %10, %34
  br i1 %35, label %37, label %36, !prof !105

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %37

37:                                               ; preds = %33, %36
  %38 = add i32 %10, 1
  br label %9, !llvm.loop !107

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !108, !noalias !110
  %42 = and i32 %41, 512
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50, !prof !113

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !73, !noalias !110
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !114

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !115, !noalias !110
  br label %50

50:                                               ; preds = %48, %44, %39
  %51 = phi ptr [ %49, %48 ], [ null, %44 ], [ null, %39 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !114

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.gimple_seq_d, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !117, !noalias !110
  br label %56

56:                                               ; preds = %50, %53
  %57 = phi ptr [ %55, %53 ], [ null, %50 ]
  store ptr %57, ptr %3, align 8, !tbaa.struct !119
  %58 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %51, ptr %58, align 8, !tbaa.struct !120
  %59 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %0, ptr %59, align 8, !tbaa.struct !121
  %60 = icmp eq ptr %57, null
  br i1 %60, label %817, label %61, !prof !122

61:                                               ; preds = %56, %813
  %62 = phi ptr [ %815, %813 ], [ %57, %56 ]
  %63 = phi i8 [ %814, %813 ], [ 1, %56 ]
  %64 = load ptr, ptr %62, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -10
  %68 = icmp ult i32 %67, -9
  br i1 %68, label %72, label %69, !prof !125

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %64, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  br label %72

72:                                               ; preds = %69, %61
  %73 = phi ptr [ %71, %69 ], [ null, %61 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75, !prof !126

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.def_optype_d, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !127
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = load ptr, ptr %73, align 8, !tbaa !129
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i8 [ 0, %75 ], [ 1, %72 ]
  %82 = phi ptr [ %79, %75 ], [ %73, %72 ]
  %83 = phi ptr [ %78, %75 ], [ null, %72 ]
  br i1 %74, label %123, label %84, !prof !130

84:                                               ; preds = %80, %118
  %85 = phi ptr [ %121, %118 ], [ %83, %80 ]
  %86 = phi ptr [ %120, %118 ], [ %82, %80 ]
  %87 = phi i8 [ %119, %118 ], [ %81, %80 ]
  %88 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 5
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 5, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !131
  %91 = icmp eq ptr %90, %88
  %92 = select i1 %91, ptr null, ptr %90, !prof !133
  %93 = icmp eq ptr %90, %88
  br i1 %93, label %108, label %94, !prof !134

94:                                               ; preds = %84, %102
  %95 = phi ptr [ %106, %102 ], [ %92, %84 ]
  %96 = phi ptr [ %104, %102 ], [ %90, %84 ]
  %97 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %95, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !73
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 255
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %108, !prof !135

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %96, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !131
  %105 = icmp eq ptr %104, %88
  %106 = select i1 %105, ptr null, ptr %104
  %107 = icmp eq ptr %104, %88
  br i1 %107, label %108, label %94, !prof !136, !llvm.loop !137

108:                                              ; preds = %102, %94, %84
  %109 = phi ptr [ %92, %84 ], [ %106, %102 ], [ %95, %94 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %123, !prof !133

111:                                              ; preds = %108
  %112 = icmp eq ptr %86, null
  br i1 %112, label %118, label %113, !prof !138

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.def_optype_d, ptr %86, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !127
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  %117 = load ptr, ptr %86, align 8, !tbaa !129
  br label %118

118:                                              ; preds = %113, %111
  %119 = phi i8 [ %87, %113 ], [ 1, %111 ]
  %120 = phi ptr [ %117, %113 ], [ %86, %111 ]
  %121 = phi ptr [ %116, %113 ], [ null, %111 ]
  %122 = icmp eq i8 %119, 0
  br i1 %122, label %84, label %123, !prof !139, !llvm.loop !140

123:                                              ; preds = %118, %108, %80
  %124 = phi ptr [ null, %80 ], [ null, %118 ], [ %109, %108 ]
  %125 = icmp ne ptr %124, null
  %126 = icmp eq i32 %66, 6
  %127 = and i1 %126, %125
  br i1 %127, label %128, label %758, !prof !141

128:                                              ; preds = %123
  %129 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %64) #16
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %758, !prof !142

131:                                              ; preds = %128
  %132 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %64) #16
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %758, !prof !142

134:                                              ; preds = %131
  %135 = load i32, ptr %64, align 8
  %136 = and i32 %135, 254
  %137 = add nsw i32 %136, -10
  %138 = icmp ult i32 %137, -4
  br i1 %138, label %186, label %139, !prof !82

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %64, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !73
  %142 = icmp eq ptr %141, null
  br i1 %142, label %186, label %143, !prof !83

143:                                              ; preds = %139
  %144 = trunc i32 %135 to i8
  switch i8 %144, label %145 [
    i8 6, label %146
    i8 8, label %146
  ], !prof !84

145:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #16
  br label %146

146:                                              ; preds = %145, %143, %143
  %147 = call ptr @gimple_get_lhs(ptr noundef nonnull %64) #16
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !77
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %155, !prof !85

153:                                              ; preds = %146
  %154 = call ptr @get_base_address(ptr noundef nonnull %147) #16
  br label %155

155:                                              ; preds = %153, %146
  %156 = phi ptr [ %154, %153 ], [ %147, %146 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %183, label %158, !prof !86

158:                                              ; preds = %155
  %159 = load i64, ptr %156, align 8
  %160 = and i64 %159, 65535
  %161 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !77
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %172, !prof !86

164:                                              ; preds = %158
  %165 = and i64 %159, 67108864
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.tree_decl_common, ptr %156, i64 0, i32 2
  %169 = load i64, ptr %168, align 8
  %170 = and i64 %169, 33554432
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %182, label %183

172:                                              ; preds = %158
  %173 = trunc i64 %159 to i32
  %174 = and i32 %173, 65535
  %175 = add nsw i32 %174, -47
  %176 = icmp ult i32 %175, 3
  br i1 %176, label %177, label %181, !prof !85

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.tree_exp, ptr %156, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !73
  %180 = call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef %179) #16
  br label %183

181:                                              ; preds = %172
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.1) #16
  br label %182

182:                                              ; preds = %181, %167
  br label %183

183:                                              ; preds = %182, %177, %167, %164, %155
  %184 = phi i8 [ undef, %182 ], [ %180, %177 ], [ 1, %155 ], [ 1, %167 ], [ 1, %164 ]
  %185 = phi i1 [ true, %182 ], [ false, %177 ], [ false, %155 ], [ false, %167 ], [ false, %164 ]
  br i1 %185, label %186, label %187, !prof !86

186:                                              ; preds = %183, %139, %134
  br label %187

187:                                              ; preds = %183, %186
  %188 = phi i8 [ %184, %183 ], [ 0, %186 ]
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %758, !prof !142

190:                                              ; preds = %187
  %191 = load i32, ptr %64, align 8
  %192 = and i32 %191, 254
  %193 = add nsw i32 %192, -10
  %194 = icmp ult i32 %193, -4
  %195 = and i32 %191, 16384
  %196 = icmp eq i32 %195, 0
  %197 = or i1 %196, %194
  br i1 %197, label %198, label %758, !prof !142

198:                                              ; preds = %190
  br i1 %194, label %202, label %199, !prof !143

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %64, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !73
  br label %202

202:                                              ; preds = %199, %198
  %203 = phi ptr [ %201, %199 ], [ null, %198 ]
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %758, !prof !144

205:                                              ; preds = %202
  %206 = load ptr, ptr @cfun, align 8, !tbaa !62
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 20
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 536870912
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %264, label %211, !prof !145

211:                                              ; preds = %205
  %212 = and i32 %191, 255
  %213 = add nsw i32 %212, -1
  %214 = icmp ult i32 %213, 9
  call void @llvm.assume(i1 %214)
  %215 = zext nneg i32 %212 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !77
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !146
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %223

223:                                              ; preds = %222, %211
  %224 = getelementptr inbounds i8, ptr %64, i64 %220
  %225 = load ptr, ptr %224, align 8, !tbaa !62
  %226 = getelementptr inbounds %struct.tree_common, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !73
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 14
  %231 = load i32, ptr %64, align 8
  %232 = and i32 %231, 255
  %233 = add nsw i32 %232, -1
  %234 = icmp ult i32 %233, 9
  call void @llvm.assume(i1 %234)
  %235 = zext nneg i32 %232 to i64
  %236 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !77
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !146
  %241 = icmp eq i64 %240, 0
  br i1 %230, label %242, label %250

242:                                              ; preds = %223
  br i1 %241, label %243, label %244

243:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %244

244:                                              ; preds = %243, %242
  %245 = getelementptr inbounds i8, ptr %64, i64 %240
  %246 = load ptr, ptr %245, align 8, !tbaa !62
  %247 = getelementptr inbounds %struct.tree_common, ptr %246, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !73
  %249 = call i32 @vector_type_mode(ptr noundef %248) #16
  br label %261

250:                                              ; preds = %223
  br i1 %241, label %251, label %252

251:                                              ; preds = %250
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %252

252:                                              ; preds = %251, %250
  %253 = getelementptr inbounds i8, ptr %64, i64 %240
  %254 = load ptr, ptr %253, align 8, !tbaa !62
  %255 = getelementptr inbounds %struct.tree_common, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !73
  %257 = getelementptr inbounds %struct.tree_type, ptr %256, i64 0, i32 6
  %258 = load i32, ptr %257, align 4
  %259 = lshr i32 %258, 16
  %260 = and i32 %259, 255
  br label %261

261:                                              ; preds = %252, %244
  %262 = phi i32 [ %249, %244 ], [ %260, %252 ]
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %758, label %264

264:                                              ; preds = %261, %205
  %265 = load i32, ptr %64, align 8
  %266 = and i32 %265, 255
  %267 = add nsw i32 %266, -10
  %268 = icmp ult i32 %267, -9
  br i1 %268, label %272, label %269, !prof !147

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %64, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !73
  br label %272

272:                                              ; preds = %269, %264
  %273 = phi ptr [ %271, %269 ], [ null, %264 ]
  %274 = icmp eq ptr %273, null
  br i1 %274, label %279, label %275, !prof !147

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.def_optype_d, ptr %273, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !127
  %278 = load ptr, ptr %273, align 8, !tbaa !129
  br label %279

279:                                              ; preds = %275, %272
  %280 = phi i8 [ 0, %275 ], [ 1, %272 ]
  %281 = phi ptr [ %278, %275 ], [ %273, %272 ]
  %282 = phi ptr [ %277, %275 ], [ null, %272 ]
  br i1 %274, label %317, label %283, !prof !148

283:                                              ; preds = %279, %312
  %284 = phi ptr [ %315, %312 ], [ %282, %279 ]
  %285 = phi ptr [ %314, %312 ], [ %281, %279 ]
  %286 = phi i8 [ %313, %312 ], [ %280, %279 ]
  %287 = load ptr, ptr %284, align 8, !tbaa !62
  %288 = getelementptr inbounds %struct.tree_ssa_name, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !73
  %290 = load i64, ptr %289, align 8
  %291 = and i64 %290, 67108864
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %299, !prof !145

293:                                              ; preds = %283
  %294 = getelementptr inbounds %struct.tree_decl_common, ptr %289, i64 0, i32 2
  %295 = load i64, ptr %294, align 8
  %296 = lshr i64 %295, 25
  %297 = trunc i64 %296 to i8
  %298 = and i8 %297, 1
  br label %299

299:                                              ; preds = %293, %283
  %300 = phi i8 [ 1, %283 ], [ %298, %293 ]
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %758, !prof !145

302:                                              ; preds = %299
  %303 = load i64, ptr %287, align 8
  %304 = and i64 %303, 4194304
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %758, !prof !145

306:                                              ; preds = %302
  %307 = icmp eq ptr %285, null
  br i1 %307, label %312, label %308, !prof !145

308:                                              ; preds = %306
  %309 = getelementptr inbounds %struct.def_optype_d, ptr %285, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !127
  %311 = load ptr, ptr %285, align 8, !tbaa !129
  br label %312

312:                                              ; preds = %308, %306
  %313 = phi i8 [ %286, %308 ], [ 1, %306 ]
  %314 = phi ptr [ %311, %308 ], [ %285, %306 ]
  %315 = phi ptr [ %310, %308 ], [ null, %306 ]
  %316 = icmp eq i8 %313, 0
  br i1 %316, label %283, label %317, !prof !148, !llvm.loop !149

317:                                              ; preds = %312, %279
  br i1 %268, label %321, label %318, !prof !147

318:                                              ; preds = %317
  %319 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %64, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !73
  br label %321

321:                                              ; preds = %318, %317
  %322 = phi ptr [ %320, %318 ], [ null, %317 ]
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324, !prof !147

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.use_optype_d, ptr %322, i64 0, i32 1
  %326 = load ptr, ptr %322, align 8, !tbaa !150
  br label %327

327:                                              ; preds = %324, %321
  %328 = phi i8 [ 0, %324 ], [ 1, %321 ]
  %329 = phi ptr [ %326, %324 ], [ %322, %321 ]
  %330 = phi ptr [ %325, %324 ], [ null, %321 ]
  br i1 %323, label %351, label %331, !prof !148

331:                                              ; preds = %327, %346
  %332 = phi ptr [ %349, %346 ], [ %330, %327 ]
  %333 = phi ptr [ %348, %346 ], [ %329, %327 ]
  %334 = phi i8 [ %347, %346 ], [ %328, %327 ]
  %335 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %332, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !152
  %337 = load ptr, ptr %336, align 8, !tbaa !62
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 4194304
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %758, !prof !153

341:                                              ; preds = %331
  %342 = icmp eq ptr %333, null
  br i1 %342, label %346, label %343, !prof !154

343:                                              ; preds = %341
  %344 = getelementptr inbounds %struct.use_optype_d, ptr %333, i64 0, i32 1
  %345 = load ptr, ptr %333, align 8, !tbaa !150
  br label %346

346:                                              ; preds = %341, %343
  %347 = phi i8 [ %334, %343 ], [ 1, %341 ]
  %348 = phi ptr [ %345, %343 ], [ %333, %341 ]
  %349 = phi ptr [ %344, %343 ], [ null, %341 ]
  %350 = icmp eq i8 %347, 0
  br i1 %350, label %331, label %351, !prof !155, !llvm.loop !156

351:                                              ; preds = %346, %327
  %352 = load i32, ptr %64, align 8
  %353 = and i32 %352, 255
  %354 = add nsw i32 %353, -10
  %355 = icmp ult i32 %354, -9
  br i1 %355, label %359, label %356, !prof !147

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %64, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !73
  br label %359

359:                                              ; preds = %356, %351
  %360 = phi ptr [ %358, %356 ], [ null, %351 ]
  %361 = icmp eq ptr %360, null
  br i1 %361, label %367, label %362, !prof !147

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.def_optype_d, ptr %360, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !127
  %365 = load ptr, ptr %364, align 8, !tbaa !62
  %366 = load ptr, ptr %360, align 8, !tbaa !129
  br label %367

367:                                              ; preds = %362, %359
  %368 = phi i8 [ 0, %362 ], [ 1, %359 ]
  %369 = phi ptr [ %366, %362 ], [ %360, %359 ]
  %370 = phi ptr [ %365, %362 ], [ null, %359 ]
  br i1 %361, label %663, label %371, !prof !157

371:                                              ; preds = %367, %407
  %372 = phi ptr [ %410, %407 ], [ %370, %367 ]
  %373 = phi ptr [ %400, %407 ], [ null, %367 ]
  %374 = phi ptr [ %409, %407 ], [ %369, %367 ]
  %375 = phi i8 [ %408, %407 ], [ %368, %367 ]
  %376 = getelementptr inbounds %struct.tree_ssa_name, ptr %372, i64 0, i32 5
  %377 = getelementptr inbounds %struct.tree_ssa_name, ptr %372, i64 0, i32 5, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !131
  %379 = icmp eq ptr %378, %376
  br i1 %379, label %399, label %380, !prof !157

380:                                              ; preds = %371, %393
  %381 = phi ptr [ %398, %393 ], [ %378, %371 ]
  %382 = phi ptr [ %394, %393 ], [ %373, %371 ]
  %383 = phi ptr [ %396, %393 ], [ %378, %371 ]
  %384 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %381, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !73
  %386 = load i32, ptr %385, align 8
  %387 = and i32 %386, 255
  %388 = icmp eq i32 %387, 2
  br i1 %388, label %393, label %389, !prof !158

389:                                              ; preds = %380
  %390 = icmp eq ptr %382, null
  br i1 %390, label %393, label %391, !prof !159

391:                                              ; preds = %389
  %392 = icmp eq ptr %382, %385
  br i1 %392, label %393, label %412, !prof !160

393:                                              ; preds = %391, %389, %380
  %394 = phi ptr [ %382, %380 ], [ %382, %391 ], [ %385, %389 ]
  %395 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %383, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !131
  %397 = icmp eq ptr %396, %376
  %398 = select i1 %397, ptr null, ptr %396, !prof !161
  br i1 %397, label %399, label %380, !prof !162, !llvm.loop !163

399:                                              ; preds = %393, %371
  %400 = phi ptr [ %373, %371 ], [ %394, %393 ]
  %401 = icmp eq ptr %374, null
  br i1 %401, label %407, label %402, !prof !164

402:                                              ; preds = %399
  %403 = getelementptr inbounds %struct.def_optype_d, ptr %374, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !127
  %405 = load ptr, ptr %404, align 8, !tbaa !62
  %406 = load ptr, ptr %374, align 8, !tbaa !129
  br label %407

407:                                              ; preds = %402, %399
  %408 = phi i8 [ %375, %402 ], [ 1, %399 ]
  %409 = phi ptr [ %406, %402 ], [ %374, %399 ]
  %410 = phi ptr [ %405, %402 ], [ null, %399 ]
  %411 = icmp eq i8 %408, 0
  br i1 %411, label %371, label %663, !prof !165, !llvm.loop !166

412:                                              ; preds = %391
  %413 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  call void @bitmap_clear(ptr noundef %413) #16
  %414 = load i32, ptr %64, align 8
  %415 = and i32 %414, 255
  %416 = add nsw i32 %415, -10
  %417 = icmp ult i32 %416, -9
  br i1 %417, label %421, label %418, !prof !167

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %64, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !73
  br label %421

421:                                              ; preds = %418, %412
  %422 = phi ptr [ %420, %418 ], [ null, %412 ]
  %423 = icmp eq ptr %422, null
  br i1 %423, label %429, label %424, !prof !167

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.def_optype_d, ptr %422, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !127
  %427 = load ptr, ptr %426, align 8, !tbaa !62
  %428 = load ptr, ptr %422, align 8, !tbaa !129
  br label %429

429:                                              ; preds = %424, %421
  %430 = phi ptr [ %428, %424 ], [ %422, %421 ]
  %431 = phi i8 [ 0, %424 ], [ 1, %421 ]
  %432 = phi ptr [ %427, %424 ], [ null, %421 ]
  br i1 %423, label %498, label %433, !prof !168

433:                                              ; preds = %429, %493
  %434 = phi ptr [ %486, %493 ], [ %413, %429 ]
  %435 = phi ptr [ %496, %493 ], [ %432, %429 ]
  %436 = phi i8 [ %495, %493 ], [ %431, %429 ]
  %437 = phi ptr [ %494, %493 ], [ %430, %429 ]
  %438 = getelementptr inbounds %struct.tree_ssa_name, ptr %435, i64 0, i32 5
  %439 = getelementptr inbounds %struct.tree_ssa_name, ptr %435, i64 0, i32 5, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !131
  %441 = icmp eq ptr %440, %438
  br i1 %441, label %485, label %442, !prof !168

442:                                              ; preds = %433, %480
  %443 = phi ptr [ %478, %480 ], [ %434, %433 ]
  %444 = phi ptr [ %484, %480 ], [ %440, %433 ]
  %445 = phi ptr [ %482, %480 ], [ %440, %433 ]
  %446 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %444, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !73
  %448 = load i32, ptr %447, align 8
  %449 = trunc i32 %448 to i8
  switch i8 %449, label %462 [
    i8 16, label %450
    i8 2, label %477
  ], !prof !169

450:                                              ; preds = %442
  %451 = getelementptr inbounds %struct.gimple_statement_phi, ptr %447, i64 0, i32 4, i64 0
  %452 = ptrtoint ptr %444 to i64
  %453 = ptrtoint ptr %451 to i64
  %454 = sub i64 %452, %453
  %455 = sdiv exact i64 %454, 48
  %456 = and i64 %455, 4294967295
  %457 = getelementptr inbounds %struct.gimple_statement_base, ptr %447, i64 0, i32 4
  %458 = load ptr, ptr %457, align 8, !tbaa !73
  %459 = load ptr, ptr %458, align 8, !tbaa !170, !nonnull !171, !noundef !171
  %460 = getelementptr inbounds %struct.VEC_edge_base, ptr %459, i64 0, i32 2, i64 %456
  %461 = load ptr, ptr %460, align 8, !tbaa !62
  br label %464

462:                                              ; preds = %442
  %463 = getelementptr inbounds %struct.gimple_statement_base, ptr %447, i64 0, i32 4
  br label %464

464:                                              ; preds = %462, %450
  %465 = phi ptr [ %461, %450 ], [ %463, %462 ]
  %466 = load ptr, ptr %465, align 8, !tbaa !73
  %467 = load ptr, ptr @cfun, align 8, !tbaa !62
  %468 = getelementptr inbounds %struct.function, ptr %467, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !90
  %470 = load ptr, ptr %469, align 8, !tbaa !172
  %471 = icmp eq ptr %466, %470
  br i1 %471, label %472, label %473, !prof !173

472:                                              ; preds = %464
  call void @bitmap_obstack_free(ptr noundef %443) #16
  br label %477

473:                                              ; preds = %464
  %474 = getelementptr inbounds %struct.basic_block_def, ptr %466, i64 0, i32 9
  %475 = load i32, ptr %474, align 8, !tbaa !174
  %476 = call zeroext i8 @bitmap_set_bit(ptr noundef %443, i32 noundef %475) #16
  br label %477

477:                                              ; preds = %442, %473, %472
  %478 = phi ptr [ null, %472 ], [ %443, %473 ], [ %443, %442 ]
  %479 = phi i32 [ 1, %472 ], [ 0, %473 ], [ 7, %442 ]
  switch i32 %479, label %595 [
    i32 0, label %480
    i32 7, label %480
  ], !prof !175

480:                                              ; preds = %477, %477
  %481 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %445, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !131
  %483 = icmp eq ptr %482, %438
  %484 = select i1 %483, ptr null, ptr %482, !prof !176
  br i1 %483, label %485, label %442, !prof !177, !llvm.loop !178

485:                                              ; preds = %480, %433
  %486 = phi ptr [ %434, %433 ], [ %478, %480 ]
  %487 = icmp eq ptr %437, null
  br i1 %487, label %493, label %488, !prof !179

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.def_optype_d, ptr %437, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !127
  %491 = load ptr, ptr %490, align 8, !tbaa !62
  %492 = load ptr, ptr %437, align 8, !tbaa !129
  br label %493

493:                                              ; preds = %488, %485
  %494 = phi ptr [ %492, %488 ], [ %437, %485 ]
  %495 = phi i8 [ %436, %488 ], [ 1, %485 ]
  %496 = phi ptr [ %491, %488 ], [ null, %485 ]
  %497 = icmp eq i8 %495, 0
  br i1 %497, label %433, label %498, !prof !168, !llvm.loop !180

498:                                              ; preds = %493, %429
  %499 = phi ptr [ %413, %429 ], [ %486, %493 ]
  %500 = load ptr, ptr @cfun, align 8, !tbaa !62
  %501 = getelementptr inbounds %struct.function, ptr %500, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !90
  %503 = getelementptr inbounds %struct.control_flow_graph, ptr %502, i64 0, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !181
  %505 = call i32 @bitmap_first_set_bit(ptr noundef %499) #16
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %504, i64 0, i32 2, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !62
  %509 = load ptr, ptr %499, align 8, !tbaa !182
  %510 = icmp eq ptr %509, null
  %511 = select i1 %510, ptr @bitmap_zero_bits, ptr %509, !prof !167
  %512 = getelementptr inbounds %struct.bitmap_element_def, ptr %511, i64 0, i32 2
  %513 = load i32, ptr %512, align 8, !tbaa !184
  %514 = shl i32 %513, 7
  %515 = getelementptr inbounds %struct.bitmap_element_def, ptr %511, i64 0, i32 3
  %516 = load i64, ptr %515, align 8, !tbaa !146
  %517 = icmp eq i64 %516, 0
  %518 = zext i1 %517 to i32
  %519 = or disjoint i32 %514, %518
  br label %520

520:                                              ; preds = %582, %498
  %521 = phi ptr [ %511, %498 ], [ %577, %582 ]
  %522 = phi i32 [ 0, %498 ], [ %578, %582 ]
  %523 = phi i64 [ %516, %498 ], [ %592, %582 ]
  %524 = phi i32 [ %519, %498 ], [ %593, %582 ]
  %525 = phi ptr [ %508, %498 ], [ %591, %582 ]
  %526 = icmp eq i64 %523, 0
  br i1 %526, label %541, label %527, !prof !186

527:                                              ; preds = %555, %520
  %528 = phi ptr [ %521, %520 ], [ %546, %555 ]
  %529 = phi i32 [ %522, %520 ], [ %556, %555 ]
  %530 = phi i64 [ %523, %520 ], [ %560, %555 ]
  %531 = phi i32 [ %524, %520 ], [ %557, %555 ]
  %532 = and i64 %530, 1
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %576, !prof !187

534:                                              ; preds = %527, %534
  %535 = phi i32 [ %538, %534 ], [ %531, %527 ]
  %536 = phi i64 [ %537, %534 ], [ %530, %527 ]
  %537 = lshr exact i64 %536, 1
  %538 = add i32 %535, 1
  %539 = and i64 %536, 2
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %534, label %576, !prof !188, !llvm.loop !189

541:                                              ; preds = %520
  %542 = add i32 %524, 63
  %543 = and i32 %542, -64
  %544 = add i32 %522, 1
  br label %545

545:                                              ; preds = %572, %541
  %546 = phi ptr [ %521, %541 ], [ %570, %572 ]
  %547 = phi i64 [ %523, %541 ], [ %567, %572 ]
  %548 = phi i32 [ %543, %541 ], [ %575, %572 ]
  %549 = phi i32 [ %544, %541 ], [ 0, %572 ]
  %550 = icmp eq i32 %549, 2
  br i1 %550, label %566, label %551, !prof !190

551:                                              ; preds = %545
  %552 = add i32 %548, 128
  %553 = shl i32 %549, 6
  %554 = sub i32 %552, %553
  br label %555

555:                                              ; preds = %562, %551
  %556 = phi i32 [ %564, %562 ], [ %549, %551 ]
  %557 = phi i32 [ %563, %562 ], [ %548, %551 ]
  %558 = zext i32 %556 to i64
  %559 = getelementptr inbounds %struct.bitmap_element_def, ptr %546, i64 0, i32 3, i64 %558
  %560 = load i64, ptr %559, align 8, !tbaa !146
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %527, !prof !191

562:                                              ; preds = %555
  %563 = add i32 %557, 64
  %564 = add i32 %556, 1
  %565 = icmp eq i32 %564, 2
  br i1 %565, label %566, label %555, !prof !192, !llvm.loop !193

566:                                              ; preds = %562, %545
  %567 = phi i64 [ %547, %545 ], [ %560, %562 ]
  %568 = phi i32 [ %548, %545 ], [ %554, %562 ]
  %569 = phi i32 [ %549, %545 ], [ 2, %562 ]
  %570 = load ptr, ptr %546, align 8, !tbaa !194
  %571 = icmp eq ptr %570, null
  br i1 %571, label %576, label %572, !prof !195

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.bitmap_element_def, ptr %570, i64 0, i32 2
  %574 = load i32, ptr %573, align 8, !tbaa !184
  %575 = shl i32 %574, 7
  br label %545, !llvm.loop !196

576:                                              ; preds = %566, %534, %527
  %577 = phi ptr [ %528, %527 ], [ %528, %534 ], [ %570, %566 ]
  %578 = phi i32 [ %529, %527 ], [ %529, %534 ], [ %569, %566 ]
  %579 = phi i64 [ %530, %527 ], [ %537, %534 ], [ %567, %566 ]
  %580 = phi i32 [ %531, %527 ], [ %538, %534 ], [ %568, %566 ]
  %581 = phi i1 [ false, %527 ], [ false, %534 ], [ true, %566 ]
  br i1 %581, label %594, label %582, !prof !197

582:                                              ; preds = %576
  %583 = load ptr, ptr @cfun, align 8, !tbaa !62
  %584 = getelementptr inbounds %struct.function, ptr %583, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !90
  %586 = getelementptr inbounds %struct.control_flow_graph, ptr %585, i64 0, i32 2
  %587 = load ptr, ptr %586, align 8, !tbaa !181
  %588 = zext i32 %580 to i64
  %589 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %587, i64 0, i32 2, i64 %588
  %590 = load ptr, ptr %589, align 8, !tbaa !62
  %591 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %525, ptr noundef %590) #16
  %592 = lshr i64 %579, 1
  %593 = add i32 %580, 1
  br label %520, !llvm.loop !198

594:                                              ; preds = %576
  call void @bitmap_obstack_free(ptr noundef nonnull %499) #16
  br label %595

595:                                              ; preds = %477, %594
  %596 = phi ptr [ %525, %594 ], [ null, %477 ]
  %597 = icmp eq ptr %596, %0
  br i1 %597, label %758, label %598, !prof !179

598:                                              ; preds = %595
  %599 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %596, ptr noundef %0) #16
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %758, label %601

601:                                              ; preds = %598
  %602 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %0, ptr noundef %596) #16
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %613, label %604

604:                                              ; preds = %601
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %606 = icmp eq ptr %605, null
  br i1 %606, label %758, label %607

607:                                              ; preds = %604
  %608 = load i32, ptr @dump_flags, align 4, !tbaa !77
  %609 = and i32 %608, 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %758, label %611

611:                                              ; preds = %607
  %612 = call i64 @fwrite(ptr nonnull @.str.7, i64 62, i64 1, ptr nonnull %605)
  br label %758

613:                                              ; preds = %601
  %614 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %615 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 10
  %616 = load i32, ptr %615, align 4, !tbaa !199
  %617 = load i32, ptr %614, align 4, !tbaa !199
  %618 = icmp sgt i32 %616, %617
  br i1 %618, label %758, label %619

619:                                              ; preds = %613
  %620 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %621 = icmp eq ptr %620, null
  br i1 %621, label %630, label %622

622:                                              ; preds = %619
  %623 = load i32, ptr @dump_flags, align 4, !tbaa !77
  %624 = and i32 %623, 8
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %630, label %626

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 9
  %628 = load i32, ptr %627, align 8, !tbaa !174
  %629 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %620, ptr noundef nonnull @.str.8, i32 noundef %628)
  br label %630

630:                                              ; preds = %626, %622, %619
  %631 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 13
  %632 = load i32, ptr %631, align 8, !tbaa !108, !noalias !200
  %633 = and i32 %632, 512
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %641

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 7
  %637 = load ptr, ptr %636, align 8, !tbaa !73, !noalias !200
  %638 = icmp eq ptr %637, null
  br i1 %638, label %641, label %639

639:                                              ; preds = %635
  %640 = load ptr, ptr %637, align 8, !tbaa !115, !noalias !200
  br label %641

641:                                              ; preds = %639, %635, %630
  %642 = phi ptr [ %640, %639 ], [ null, %635 ], [ null, %630 ]
  %643 = icmp eq ptr %642, null
  br i1 %643, label %646, label %644

644:                                              ; preds = %641
  %645 = load ptr, ptr %642, align 8, !tbaa !205, !noalias !200
  br label %646

646:                                              ; preds = %644, %641
  %647 = phi ptr [ %645, %644 ], [ null, %641 ]
  %648 = icmp eq ptr %647, null
  br i1 %648, label %659, label %649

649:                                              ; preds = %646, %655
  %650 = phi ptr [ %657, %655 ], [ %647, %646 ]
  %651 = load ptr, ptr %650, align 8, !tbaa !123, !noalias !206
  %652 = load i32, ptr %651, align 8, !noalias !206
  %653 = and i32 %652, 255
  %654 = icmp eq i32 %653, 4
  br i1 %654, label %655, label %659

655:                                              ; preds = %649
  %656 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %650, i64 0, i32 2
  %657 = load ptr, ptr %656, align 8, !tbaa !207, !noalias !206
  %658 = icmp eq ptr %657, null
  br i1 %658, label %659, label %649, !llvm.loop !208

659:                                              ; preds = %655, %649, %646
  %660 = phi ptr [ %647, %646 ], [ %657, %655 ], [ %650, %649 ]
  %661 = getelementptr inbounds i8, ptr %4, i64 8
  %662 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %660, ptr %4, align 8, !tbaa.struct !119
  store ptr %642, ptr %661, align 8, !tbaa.struct !120
  store ptr %596, ptr %662, align 8, !tbaa.struct !121
  br label %764

663:                                              ; preds = %407, %367
  %664 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %124, i64 0, i32 2
  %665 = load ptr, ptr %664, align 8, !tbaa !73
  %666 = load i32, ptr %665, align 8
  %667 = and i32 %666, 255
  %668 = icmp eq i32 %667, 16
  br i1 %668, label %689, label %669, !prof !209

669:                                              ; preds = %663
  %670 = getelementptr inbounds %struct.gimple_statement_base, ptr %665, i64 0, i32 4
  %671 = load ptr, ptr %670, align 8, !tbaa !73
  %672 = icmp eq ptr %671, %0
  br i1 %672, label %758, label %673, !prof !164

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %675 = getelementptr inbounds %struct.basic_block_def, ptr %671, i64 0, i32 10
  %676 = load i32, ptr %675, align 4, !tbaa !199
  %677 = load i32, ptr %674, align 4, !tbaa !199
  %678 = icmp sgt i32 %676, %677
  br i1 %678, label %758, label %679

679:                                              ; preds = %673
  %680 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %681 = getelementptr inbounds %struct.basic_block_def, ptr %671, i64 0, i32 3
  %682 = load ptr, ptr %681, align 8, !tbaa !210
  %683 = load ptr, ptr %680, align 8, !tbaa !210
  %684 = icmp eq ptr %682, %683
  br i1 %684, label %685, label %758

685:                                              ; preds = %679
  %686 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %0, ptr noundef %671) #16
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %688, label %758

688:                                              ; preds = %685
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %665) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  br label %764

689:                                              ; preds = %663
  br i1 %355, label %693, label %690

690:                                              ; preds = %689
  %691 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %64, i64 0, i32 1
  %692 = load ptr, ptr %691, align 8, !tbaa !73
  br label %693

693:                                              ; preds = %690, %689
  %694 = phi ptr [ %692, %690 ], [ null, %689 ]
  %695 = icmp eq ptr %694, null
  br i1 %695, label %700, label %696

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.def_optype_d, ptr %694, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !127
  %699 = load ptr, ptr %698, align 8, !tbaa !62
  br label %700

700:                                              ; preds = %696, %693
  %701 = phi ptr [ %699, %696 ], [ null, %693 ]
  %702 = call fastcc ptr @find_bb_for_arg(ptr noundef nonnull %665, ptr noundef %701)
  %703 = icmp eq ptr %702, null
  br i1 %703, label %758, label %704

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.gimple_statement_base, ptr %665, i64 0, i32 4
  %706 = load ptr, ptr %705, align 8, !tbaa !73
  %707 = icmp eq ptr %706, %0
  %708 = icmp eq ptr %702, %0
  %709 = or i1 %708, %707
  br i1 %709, label %758, label %710

710:                                              ; preds = %704
  %711 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %712 = getelementptr inbounds %struct.basic_block_def, ptr %702, i64 0, i32 10
  %713 = load i32, ptr %712, align 4, !tbaa !199
  %714 = load i32, ptr %711, align 4, !tbaa !199
  %715 = icmp sgt i32 %713, %714
  br i1 %715, label %758, label %716

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %718 = getelementptr inbounds %struct.basic_block_def, ptr %702, i64 0, i32 3
  %719 = load ptr, ptr %718, align 8, !tbaa !210
  %720 = load ptr, ptr %717, align 8, !tbaa !210
  %721 = icmp eq ptr %719, %720
  br i1 %721, label %722, label %758

722:                                              ; preds = %716
  %723 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %0, ptr noundef nonnull %702) #16
  %724 = icmp eq i8 %723, 0
  br i1 %724, label %725, label %758

725:                                              ; preds = %722
  %726 = getelementptr inbounds %struct.basic_block_def, ptr %702, i64 0, i32 13
  %727 = load i32, ptr %726, align 8, !tbaa !108, !noalias !211
  %728 = and i32 %727, 512
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %736

730:                                              ; preds = %725
  %731 = getelementptr inbounds %struct.basic_block_def, ptr %702, i64 0, i32 7
  %732 = load ptr, ptr %731, align 8, !tbaa !73, !noalias !211
  %733 = icmp eq ptr %732, null
  br i1 %733, label %736, label %734

734:                                              ; preds = %730
  %735 = load ptr, ptr %732, align 8, !tbaa !115, !noalias !211
  br label %736

736:                                              ; preds = %734, %730, %725
  %737 = phi ptr [ %735, %734 ], [ null, %730 ], [ null, %725 ]
  %738 = icmp eq ptr %737, null
  br i1 %738, label %741, label %739

739:                                              ; preds = %736
  %740 = load ptr, ptr %737, align 8, !tbaa !205, !noalias !211
  br label %741

741:                                              ; preds = %739, %736
  %742 = phi ptr [ %740, %739 ], [ null, %736 ]
  %743 = icmp eq ptr %742, null
  br i1 %743, label %754, label %744

744:                                              ; preds = %741, %750
  %745 = phi ptr [ %752, %750 ], [ %742, %741 ]
  %746 = load ptr, ptr %745, align 8, !tbaa !123, !noalias !216
  %747 = load i32, ptr %746, align 8, !noalias !216
  %748 = and i32 %747, 255
  %749 = icmp eq i32 %748, 4
  br i1 %749, label %750, label %754

750:                                              ; preds = %744
  %751 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %745, i64 0, i32 2
  %752 = load ptr, ptr %751, align 8, !tbaa !207, !noalias !216
  %753 = icmp eq ptr %752, null
  br i1 %753, label %754, label %744, !llvm.loop !208

754:                                              ; preds = %750, %744, %741
  %755 = phi ptr [ %742, %741 ], [ %752, %750 ], [ %745, %744 ]
  %756 = getelementptr inbounds i8, ptr %4, i64 8
  %757 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %755, ptr %4, align 8, !tbaa.struct !119
  store ptr %737, ptr %756, align 8, !tbaa.struct !120
  store ptr %702, ptr %757, align 8, !tbaa.struct !121
  br label %764

758:                                              ; preds = %302, %299, %331, %613, %604, %607, %611, %598, %595, %722, %710, %716, %704, %700, %685, %669, %673, %679, %128, %131, %187, %190, %202, %261, %123
  %759 = load ptr, ptr %3, align 8
  %760 = icmp eq ptr %759, null
  br i1 %760, label %813, label %761, !prof !125, !llvm.loop !217

761:                                              ; preds = %758
  %762 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %759, i64 0, i32 1
  %763 = load ptr, ptr %762, align 8, !tbaa !218
  store ptr %763, ptr %3, align 8, !tbaa !219
  br label %813, !llvm.loop !217

764:                                              ; preds = %754, %688, %659
  %765 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %766 = icmp eq ptr %765, null
  br i1 %766, label %778, label %767

767:                                              ; preds = %764
  %768 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %769 = getelementptr inbounds i8, ptr %4, i64 16
  %770 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr nonnull %765)
  %771 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_gimple_stmt(ptr noundef %771, ptr noundef nonnull %64, i32 noundef 0, i32 noundef 64) #16
  %772 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %773 = load i32, ptr %768, align 8, !tbaa !174
  %774 = load ptr, ptr %769, align 8
  %775 = getelementptr inbounds %struct.basic_block_def, ptr %774, i64 0, i32 9
  %776 = load i32, ptr %775, align 8, !tbaa !174
  %777 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %772, ptr noundef nonnull @.str.5, i32 noundef %773, i32 noundef %776)
  br label %778

778:                                              ; preds = %767, %764
  %779 = load ptr, ptr %4, align 8
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %784

781:                                              ; preds = %778
  %782 = getelementptr inbounds i8, ptr %4, i64 16
  %783 = load ptr, ptr %782, align 8
  call void @gsi_move_to_bb_end(ptr noundef nonnull %3, ptr noundef %783) #16
  br label %785

784:                                              ; preds = %778
  call void @gsi_move_before(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  br label %785

785:                                              ; preds = %784, %781
  %786 = load i32, ptr @sink_stats.0, align 4, !tbaa !94
  %787 = add nsw i32 %786, 1
  store i32 %787, ptr @sink_stats.0, align 4, !tbaa !94
  %788 = icmp eq i8 %63, 0
  br i1 %788, label %807, label %789

789:                                              ; preds = %785
  %790 = load i32, ptr %40, align 8, !tbaa !108, !noalias !221
  %791 = and i32 %790, 512
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %795 = load ptr, ptr %794, align 8, !tbaa !73, !noalias !221
  %796 = icmp eq ptr %795, null
  br i1 %796, label %799, label %797

797:                                              ; preds = %793
  %798 = load ptr, ptr %795, align 8, !tbaa !115, !noalias !221
  br label %799

799:                                              ; preds = %797, %793, %789
  %800 = phi ptr [ %798, %797 ], [ null, %793 ], [ null, %789 ]
  %801 = icmp eq ptr %800, null
  br i1 %801, label %805, label %802

802:                                              ; preds = %799
  %803 = getelementptr inbounds %struct.gimple_seq_d, ptr %800, i64 0, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !117, !noalias !221
  br label %805

805:                                              ; preds = %799, %802
  %806 = phi ptr [ %804, %802 ], [ null, %799 ]
  store ptr %806, ptr %3, align 8, !tbaa.struct !119
  store ptr %800, ptr %58, align 8, !tbaa.struct !120
  store ptr %0, ptr %59, align 8, !tbaa.struct !121
  br label %813, !llvm.loop !217

807:                                              ; preds = %785
  %808 = load ptr, ptr %3, align 8
  %809 = icmp eq ptr %808, null
  br i1 %809, label %813, label %810

810:                                              ; preds = %807
  %811 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %808, i64 0, i32 1
  %812 = load ptr, ptr %811, align 8, !tbaa !218
  store ptr %812, ptr %3, align 8, !tbaa !219
  br label %813

813:                                              ; preds = %807, %810, %758, %761, %805
  %814 = phi i8 [ 1, %805 ], [ 0, %761 ], [ 0, %758 ], [ 0, %810 ], [ 0, %807 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %815 = load ptr, ptr %3, align 8
  %816 = icmp eq ptr %815, null
  br i1 %816, label %817, label %61, !prof !224

817:                                              ; preds = %24, %813, %56, %1
  %818 = call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #16
  %819 = icmp eq ptr %818, null
  br i1 %819, label %824, label %820, !prof !225

820:                                              ; preds = %817, %820
  %821 = phi ptr [ %822, %820 ], [ %818, %817 ]
  call fastcc void @sink_code_in_bb(ptr noundef nonnull %821)
  %822 = call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %821) #16
  %823 = icmp eq ptr %822, null
  br i1 %823, label %824, label %820, !prof !226, !llvm.loop !227

824:                                              ; preds = %820, %817
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_move_to_bb_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_bb_for_arg(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #13 !prof !61 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !73
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %6, %30
  %10 = phi ptr [ null, %6 ], [ %32, %30 ]
  %11 = phi i8 [ 0, %6 ], [ %31, %30 ]
  %12 = phi i64 [ 0, %6 ], [ %33, %30 ]
  %13 = trunc i64 %12 to i32
  %14 = load i32, ptr %7, align 8, !tbaa !73
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %9, %16
  %18 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %12, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = icmp eq i8 %11, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = load ptr, ptr %8, align 8, !tbaa !73
  %26 = load ptr, ptr %25, align 8, !tbaa !170, !nonnull !171, !noundef !171
  %27 = getelementptr inbounds %struct.VEC_edge_base, ptr %26, i64 0, i32 2, i64 %12
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = load ptr, ptr %28, align 8, !tbaa !228
  br label %30

30:                                               ; preds = %17, %24
  %31 = phi i8 [ 1, %24 ], [ %11, %17 ]
  %32 = phi ptr [ %29, %24 ], [ %10, %17 ]
  %33 = add nuw nsw i64 %12, 1
  %34 = load i32, ptr %3, align 4, !tbaa !73
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %9, label %37, !llvm.loop !229

37:                                               ; preds = %22, %30, %2
  %38 = phi ptr [ null, %2 ], [ null, %22 ], [ %32, %30 ]
  ret ptr %38
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @is_hidden_global_store, ptr @gimple_get_lhs, i64 98}
!36 = !{ptr @is_hidden_global_store, ptr @get_base_address, i64 98}
!37 = !{ptr @is_hidden_global_store, ptr @ptr_deref_may_alias_global_p, i64 98}
!38 = !{ptr @do_sink, ptr @loop_optimizer_init, i64 38}
!39 = !{ptr @do_sink, ptr @connect_infinite_loops_to_exit, i64 38}
!40 = !{ptr @do_sink, ptr @calculate_dominance_info, i64 76}
!41 = !{ptr @do_sink, ptr @sink_code_in_bb, i64 38}
!42 = !{ptr @do_sink, ptr @statistics_counter_event, i64 38}
!43 = !{ptr @do_sink, ptr @free_dominance_info, i64 38}
!44 = !{ptr @do_sink, ptr @remove_fake_exit_edges, i64 38}
!45 = !{ptr @do_sink, ptr @loop_optimizer_finalize, i64 38}
!46 = !{ptr @sink_code_in_bb, ptr @first_dom_son, i64 683934}
!47 = !{ptr @sink_code_in_bb, ptr @stmt_ends_bb_p, i64 122761}
!48 = !{ptr @sink_code_in_bb, ptr @gimple_has_side_effects, i64 122761}
!49 = !{ptr @sink_code_in_bb, ptr @gimple_get_lhs, i64 7}
!50 = !{ptr @sink_code_in_bb, ptr @get_base_address, i64 7}
!51 = !{ptr @sink_code_in_bb, ptr @ptr_deref_may_alias_global_p, i64 7}
!52 = !{ptr @sink_code_in_bb, ptr @bitmap_obstack_alloc_stat, i64 303}
!53 = !{ptr @sink_code_in_bb, ptr @bitmap_clear, i64 303}
!54 = !{ptr @sink_code_in_bb, ptr @bitmap_set_bit, i64 734}
!55 = !{ptr @sink_code_in_bb, ptr @bitmap_first_set_bit, i64 303}
!56 = !{ptr @sink_code_in_bb, ptr @nearest_common_dominator, i64 734}
!57 = !{ptr @sink_code_in_bb, ptr @bitmap_obstack_free, i64 303}
!58 = !{ptr @sink_code_in_bb, ptr @sink_code_in_bb, i64 341929}
!59 = !{ptr @sink_code_in_bb, ptr @next_dom_son, i64 341929}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !63, i64 8}
!67 = !{!"_IO_FILE", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !68, i64 112, !68, i64 116, !69, i64 120, !70, i64 128, !64, i64 130, !64, i64 131, !63, i64 136, !69, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !69, i64 184, !68, i64 192, !64, i64 196}
!68 = !{!"int", !64, i64 0}
!69 = !{!"long", !64, i64 0}
!70 = !{!"short", !64, i64 0}
!71 = !{!67, !63, i64 16}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!64, !64, i64 0}
!74 = !{!67, !63, i64 40}
!75 = !{!67, !63, i64 48}
!76 = !{!67, !68, i64 0}
!77 = !{!68, !68, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"function_entry_count", i64 1669053}
!82 = !{!"branch_weights", i32 849490, i32 942324}
!83 = !{!"branch_weights", i32 1791613, i32 201}
!84 = !{!"branch_weights", i32 0, i32 402, i32 0}
!85 = !{!"branch_weights", i32 201, i32 0}
!86 = !{!"branch_weights", i32 0, i32 201}
!87 = !{!"function_entry_count", i64 38}
!88 = !{!"tree-ssa-sink.c;gate_sink"}
!89 = !{!"tree-ssa-sink.c;do_sink"}
!90 = !{!91, !63, i64 8}
!91 = !{!"function", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !68, i64 104, !68, i64 108, !68, i64 112, !68, i64 116, !68, i64 120, !68, i64 124, !63, i64 128, !68, i64 136, !68, i64 137, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139}
!92 = !{!93, !63, i64 8}
!93 = !{!"control_flow_graph", !63, i64 0, !63, i64 8, !63, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !63, i64 40, !68, i64 48, !64, i64 52, !64, i64 60, !68, i64 68, !68, i64 72}
!94 = !{!95, !68, i64 0}
!95 = !{!"", !68, i64 0}
!96 = !{!"function_entry_count", i64 341967}
!97 = !{!"tree-ssa-sink.c;sink_code_in_bb"}
!98 = !{!"branch_weights", i32 200913, i32 141054}
!99 = !{!"branch_weights", i32 0, i32 426025}
!100 = !{!101, !68, i64 0}
!101 = !{!"VEC_edge_base", !68, i64 0, !68, i64 4, !64, i64 8}
!102 = !{!"branch_weights", i32 141054, i32 284971}
!103 = !{!104, !68, i64 48}
!104 = !{!"edge_def", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 24, !63, i64 32, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !69, i64 56}
!105 = !{!"branch_weights", i32 284971, i32 0}
!106 = !{!"branch_weights", i32 0, i32 284971}
!107 = distinct !{!107, !79, !80}
!108 = !{!109, !68, i64 96}
!109 = !{!"basic_block_def", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !64, i64 32, !63, i64 48, !63, i64 56, !64, i64 64, !69, i64 72, !68, i64 80, !68, i64 84, !68, i64 88, !68, i64 92, !68, i64 96}
!110 = !{!111}
!111 = distinct !{!111, !112, !"gsi_last_bb: argument 0"}
!112 = distinct !{!112, !"gsi_last_bb"}
!113 = !{!"branch_weights", i32 141054, i32 0}
!114 = !{!"branch_weights", i32 0, i32 141054}
!115 = !{!116, !63, i64 0}
!116 = !{!"gimple_bb_info", !63, i64 0, !63, i64 8}
!117 = !{!118, !63, i64 8}
!118 = !{!"gimple_seq_d", !63, i64 0, !63, i64 8, !63, i64 16}
!119 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62}
!120 = !{i64 0, i64 8, !62, i64 8, i64 8, !62}
!121 = !{i64 0, i64 8, !62}
!122 = !{!"branch_weights", i32 1, i32 141053}
!123 = !{!124, !63, i64 0}
!124 = !{!"gimple_seq_node_d", !63, i64 0, !63, i64 8, !63, i64 16}
!125 = !{!"branch_weights", i32 0, i32 334314}
!126 = !{!"branch_weights", i32 143612, i32 190702}
!127 = !{!128, !63, i64 8}
!128 = !{!"def_optype_d", !63, i64 0, !63, i64 8}
!129 = !{!128, !63, i64 0}
!130 = !{!"branch_weights", i32 1, i32 143760}
!131 = !{!132, !63, i64 8}
!132 = !{!"ssa_use_operand_d", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 24}
!133 = !{!"branch_weights", i32 1425, i32 190553}
!134 = !{!"branch_weights", i32 1, i32 1424}
!135 = !{!"branch_weights", i32 0, i32 190553}
!136 = !{!"branch_weights", i32 1424, i32 189129}
!137 = distinct !{!137, !79, !80}
!138 = !{!"branch_weights", i32 149, i32 1276}
!139 = !{!"branch_weights", i32 48218, i32 143760}
!140 = distinct !{!140, !79, !80}
!141 = !{!"branch_weights", i32 1462029802, i32 -1775463621}
!142 = !{!"branch_weights", i32 122761, i32 0}
!143 = !{!"branch_weights", i32 0, i32 122761}
!144 = !{!"branch_weights", i32 46091, i32 76670}
!145 = !{!"branch_weights", i32 46091, i32 0}
!146 = !{!69, !69, i64 0}
!147 = !{!"branch_weights", i32 0, i32 46091}
!148 = !{!"branch_weights", i32 1, i32 46090}
!149 = distinct !{!149, !79, !80}
!150 = !{!151, !63, i64 0}
!151 = !{!"use_optype_d", !63, i64 0, !132, i64 8}
!152 = !{!132, !63, i64 24}
!153 = !{!"branch_weights", i32 55479, i32 0}
!154 = !{!"branch_weights", i32 46091, i32 9388}
!155 = !{!"branch_weights", i32 9389, i32 46090}
!156 = distinct !{!156, !79, !80}
!157 = !{!"branch_weights", i32 1, i32 45791}
!158 = !{!"branch_weights", i32 0, i32 46479}
!159 = !{!"branch_weights", i32 46091, i32 388}
!160 = !{!"branch_weights", i32 89, i32 299}
!161 = !{!"branch_weights", i32 45792, i32 388}
!162 = !{!"branch_weights", i32 45791, i32 688}
!163 = distinct !{!163, !79, !80}
!164 = !{!"branch_weights", i32 45792, i32 0}
!165 = !{!"branch_weights", i32 300, i32 45791}
!166 = distinct !{!166, !79, !80}
!167 = !{!"branch_weights", i32 0, i32 299}
!168 = !{!"branch_weights", i32 1, i32 298}
!169 = !{!"branch_weights", i32 281961, i32 103014, i32 0}
!170 = !{!109, !63, i64 0}
!171 = !{}
!172 = !{!93, !63, i64 0}
!173 = !{!"branch_weights", i32 0, i32 725}
!174 = !{!109, !68, i64 80}
!175 = !{!"branch_weights", i32 0, i32 725, i32 0}
!176 = !{!"branch_weights", i32 299, i32 426}
!177 = !{!"branch_weights", i32 298, i32 427}
!178 = distinct !{!178, !79, !80}
!179 = !{!"branch_weights", i32 299, i32 0}
!180 = distinct !{!180, !79, !80}
!181 = !{!93, !63, i64 16}
!182 = !{!183, !63, i64 0}
!183 = !{!"bitmap_head_def", !63, i64 0, !63, i64 8, !68, i64 16, !63, i64 24}
!184 = !{!185, !68, i64 16}
!185 = !{!"bitmap_element_def", !63, i64 0, !63, i64 8, !68, i64 16, !64, i64 24}
!186 = !{!"branch_weights", i32 551, i32 473}
!187 = !{!"branch_weights", i32 724, i32 1}
!188 = !{!"branch_weights", i32 12430, i32 724}
!189 = distinct !{!189, !79, !80}
!190 = !{!"branch_weights", i32 1, i32 405}
!191 = !{!"branch_weights", i32 261, i32 252}
!192 = !{!"branch_weights", i32 405, i32 108}
!193 = distinct !{!193, !79, !80}
!194 = !{!185, !63, i64 0}
!195 = !{!"branch_weights", i32 299, i32 107}
!196 = distinct !{!196, !80}
!197 = !{!"branch_weights", i32 299, i32 725}
!198 = distinct !{!198, !79, !80}
!199 = !{!109, !68, i64 84}
!200 = !{!201, !203}
!201 = distinct !{!201, !202, !"gsi_start_bb: argument 0"}
!202 = distinct !{!202, !"gsi_start_bb"}
!203 = distinct !{!203, !204, !"gsi_after_labels: argument 0"}
!204 = distinct !{!204, !"gsi_after_labels"}
!205 = !{!118, !63, i64 0}
!206 = !{!203}
!207 = !{!124, !63, i64 16}
!208 = distinct !{!208, !79, !80}
!209 = !{!"branch_weights", i32 0, i32 45792}
!210 = !{!109, !63, i64 24}
!211 = !{!212, !214}
!212 = distinct !{!212, !213, !"gsi_start_bb: argument 0"}
!213 = distinct !{!213, !"gsi_start_bb"}
!214 = distinct !{!214, !215, !"gsi_after_labels: argument 0"}
!215 = distinct !{!215, !"gsi_after_labels"}
!216 = !{!214}
!217 = distinct !{!217, !79, !80}
!218 = !{!124, !63, i64 8}
!219 = !{!220, !63, i64 0}
!220 = !{!"", !63, i64 0, !63, i64 8, !63, i64 16}
!221 = !{!222}
!222 = distinct !{!222, !223, !"gsi_last_bb: argument 0"}
!223 = distinct !{!223, !"gsi_last_bb"}
!224 = !{!"branch_weights", i32 141053, i32 193261}
!225 = !{!"branch_weights", i32 38, i32 341929}
!226 = !{!"branch_weights", i32 341929, i32 0}
!227 = distinct !{!227, !79, !80}
!228 = !{!104, !63, i64 0}
!229 = distinct !{!229, !79, !80}
