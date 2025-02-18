; ModuleID = 'cgraphbuild.c'
source_filename = "cgraphbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"*build_cgraph_edges\00", align 1
@pass_build_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @build_cgraph_edges, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"cgraphbuild.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"*rebuild_cgraph_edges\00", align 1
@pass_rebuild_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr null, ptr @rebuild_cgraph_edges, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"*remove_cgraph_callee_edges\00", align 1
@pass_remove_cgraph_callee_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @remove_cgraph_callee_edges, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !53 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !54
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !53 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !54
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !53 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !64

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !58
  %11 = load i8, ptr %3, align 1, !tbaa !65
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !53 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !64

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !58
  %11 = load i8, ptr %3, align 1, !tbaa !65
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !53 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !54
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !64

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !58
  %11 = load i8, ptr %3, align 1, !tbaa !65
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !53 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !54
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !53 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !64

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !66
  store i8 %12, ptr %4, align 1, !tbaa !65
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !53 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !64

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !66
  store i8 %12, ptr %4, align 1, !tbaa !65
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !53 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !64

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !66
  store i8 %12, ptr %4, align 1, !tbaa !65
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !53 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !53 {
  %2 = load i32, ptr %0, align 8, !tbaa !68
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !53 {
  %2 = load i32, ptr %0, align 8, !tbaa !68
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !53 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !69
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !53 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !69
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !53 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !53 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !53 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !53 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !70

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !53 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_inline_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !53 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  br label %8

8:                                                ; preds = %5, %37
  %9 = phi ptr [ %3, %5 ], [ %39, %37 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 19, i32 2
  store ptr null, ptr %12, align 8, !tbaa !75
  %13 = load i16, ptr %6, align 4
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 3, ptr %17, align 8, !tbaa !83
  br label %37

18:                                               ; preds = %8
  %19 = load i8, ptr %7, align 8
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 4, ptr %23, align 8, !tbaa !83
  br label %37

24:                                               ; preds = %18
  %25 = and i8 %19, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  store i32 5, ptr %28, align 8, !tbaa !83
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 14
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  br i1 %33, label %36, label %35

35:                                               ; preds = %29
  store i32 17, ptr %34, align 8, !tbaa !83
  br label %37

36:                                               ; preds = %29
  store i32 2, ptr %34, align 8, !tbaa !83
  br label %37

37:                                               ; preds = %16, %27, %36, %35, %22
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8, !llvm.loop !84

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compute_call_stmt_bb_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !85 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !88
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10, !prof !90

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = load ptr, ptr %6, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = icmp eq i32 %15, 0
  %17 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %18 = zext i1 %16 to i32
  %19 = add nsw i32 %12, %18
  %20 = mul nsw i32 %19, 1000
  %21 = sdiv i32 %20, %17
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 100000)
  br label %23

23:                                               ; preds = %2, %10
  %24 = phi i32 [ %22, %10 ], [ 1000, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @build_cgraph_edges() #11 !prof !94 !PGOFuncName !95 {
  %1 = alloca %struct.walk_stmt_info, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !54
  %3 = tail call ptr @cgraph_node(ptr noundef %2) #15
  %4 = tail call ptr @pointer_set_create() #15
  %5 = load ptr, ptr @cfun, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %205, label %14, !prof !98

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 2
  br label %26

17:                                               ; preds = %201, %43
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = load ptr, ptr @cfun, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %205, label %26, !prof !99, !llvm.loop !100

26:                                               ; preds = %14, %17
  %27 = phi ptr [ %10, %14 ], [ %19, %17 ]
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !101, !noalias !102
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38, !prof !105

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !65, !noalias !102
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !106

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 8, !tbaa !107, !noalias !102
  br label %38

38:                                               ; preds = %36, %32, %26
  %39 = phi ptr [ %37, %36 ], [ null, %32 ], [ null, %26 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !106

41:                                               ; preds = %38
  %42 = load ptr, ptr %39, align 8, !tbaa !109, !noalias !102
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi ptr [ %42, %41 ], [ null, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %17, label %46, !prof !111

46:                                               ; preds = %43, %201
  %47 = phi ptr [ %203, %201 ], [ %44, %43 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !112
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %173, !prof !114

52:                                               ; preds = %46
  %53 = zext nneg i32 %50 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !69
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !115
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61, !prof !116

60:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %61

61:                                               ; preds = %60, %52
  %62 = getelementptr inbounds i8, ptr %48, i64 %58
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 121
  br i1 %67, label %68, label %71, !prof !117

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  br label %71

71:                                               ; preds = %61, %68
  %72 = phi ptr [ %70, %68 ], [ null, %61 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %173, label %74, !prof !116

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 8
  %76 = getelementptr inbounds %struct.gimple_statement_base, ptr %48, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !65
  %78 = add i32 %77, -3
  %79 = zext i32 %78 to i64
  %80 = call ptr @cgraph_node(ptr noundef nonnull %72) #15
  %81 = load i64, ptr %75, align 8, !tbaa !118
  %82 = load ptr, ptr @current_function_decl, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.tree_function_decl, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !65
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !88
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %103, label %90, !prof !117

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 11
  %92 = load i32, ptr %91, align 8, !tbaa !91
  %93 = load ptr, ptr %86, align 8, !tbaa !93
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 11
  %95 = load i32, ptr %94, align 8, !tbaa !91
  %96 = icmp eq i32 %95, 0
  %97 = call i32 @llvm.umax.i32(i32 %95, i32 1)
  %98 = zext i1 %96 to i32
  %99 = add nsw i32 %92, %98
  %100 = mul nsw i32 %99, 1000
  %101 = sdiv i32 %100, %97
  %102 = call i32 @llvm.smin.i32(i32 %101, i32 100000)
  br label %103

103:                                              ; preds = %74, %90
  %104 = phi i32 [ %102, %90 ], [ 1000, %74 ]
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 10
  %106 = load i32, ptr %105, align 4, !tbaa !119
  %107 = call ptr @cgraph_create_edge(ptr noundef %3, ptr noundef %80, ptr noundef nonnull %48, i64 noundef %81, i32 noundef %104, i32 noundef %106) #15
  %108 = icmp eq i32 %78, 0
  br i1 %108, label %134, label %109, !prof !120

109:                                              ; preds = %103, %129
  %110 = phi i64 [ %132, %129 ], [ 0, %103 ]
  %111 = add nuw nsw i64 %110, 3
  %112 = load i32, ptr %48, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -10
  %115 = icmp ult i32 %114, -9
  br i1 %115, label %129, label %116, !prof !121

116:                                              ; preds = %109
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !69
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !115
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125, !prof !121

124:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %125

125:                                              ; preds = %124, %116
  %126 = getelementptr inbounds i8, ptr %48, i64 %122
  %127 = and i64 %111, 4294967295
  %128 = getelementptr inbounds ptr, ptr %126, i64 %127
  br label %129

129:                                              ; preds = %109, %125
  %130 = phi ptr [ %128, %125 ], [ null, %109 ]
  %131 = call ptr @walk_tree_1(ptr noundef %130, ptr noundef nonnull @record_reference, ptr noundef %3, ptr noundef %4, ptr noundef null) #15
  %132 = add nuw nsw i64 %110, 1
  %133 = icmp eq i64 %132, %79
  br i1 %133, label %134, label %109, !prof !122, !llvm.loop !123

134:                                              ; preds = %129, %103
  %135 = load i32, ptr %48, align 8
  %136 = and i32 %135, 255
  %137 = add nsw i32 %136, -10
  %138 = icmp ult i32 %137, -9
  br i1 %138, label %151, label %139, !prof !116

139:                                              ; preds = %134
  %140 = zext nneg i32 %136 to i64
  %141 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !69
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !115
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148, !prof !116

147:                                              ; preds = %139
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %148

148:                                              ; preds = %147, %139
  %149 = getelementptr inbounds i8, ptr %48, i64 %145
  %150 = load ptr, ptr %149, align 8, !tbaa !54
  br label %151

151:                                              ; preds = %134, %148
  %152 = phi ptr [ %150, %148 ], [ null, %134 ]
  %153 = icmp eq ptr %152, null
  br i1 %153, label %201, label %154, !prof !124

154:                                              ; preds = %151
  %155 = load i32, ptr %48, align 8
  %156 = and i32 %155, 255
  %157 = add nsw i32 %156, -10
  %158 = icmp ult i32 %157, -9
  br i1 %158, label %170, label %159, !prof !125

159:                                              ; preds = %154
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !69
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !115
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168, !prof !125

167:                                              ; preds = %159
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %168

168:                                              ; preds = %167, %159
  %169 = getelementptr inbounds i8, ptr %48, i64 %165
  br label %170

170:                                              ; preds = %154, %168
  %171 = phi ptr [ %169, %168 ], [ null, %154 ]
  %172 = call ptr @walk_tree_1(ptr noundef %171, ptr noundef nonnull @record_reference, ptr noundef %3, ptr noundef %4, ptr noundef null) #15
  br label %201

173:                                              ; preds = %71, %46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  store ptr %3, ptr %15, align 8, !tbaa !126
  store ptr %4, ptr %16, align 8, !tbaa !129
  %174 = call ptr @walk_gimple_op(ptr noundef nonnull %48, ptr noundef nonnull @record_reference, ptr noundef nonnull %1) #15
  %175 = load i32, ptr %48, align 8
  %176 = and i32 %175, 255
  %177 = icmp eq i32 %176, 26
  br i1 %177, label %178, label %184, !prof !130

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %48, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !65
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call ptr @cgraph_node(ptr noundef nonnull %180) #15
  call void @cgraph_mark_needed_node(ptr noundef %183) #15
  br label %184

184:                                              ; preds = %182, %178, %173
  %185 = load i32, ptr %48, align 8
  %186 = and i32 %185, 255
  %187 = icmp eq i32 %186, 27
  br i1 %187, label %188, label %200, !prof !130

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %48, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !65
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = call ptr @cgraph_node(ptr noundef nonnull %190) #15
  call void @cgraph_mark_needed_node(ptr noundef %193) #15
  br label %194

194:                                              ; preds = %192, %188
  %195 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %48, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !65
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = call ptr @cgraph_node(ptr noundef nonnull %196) #15
  call void @cgraph_mark_needed_node(ptr noundef %199) #15
  br label %200

200:                                              ; preds = %194, %198, %184
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #15
  br label %201

201:                                              ; preds = %151, %170, %200
  %202 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %47, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !131
  %204 = icmp eq ptr %203, null
  br i1 %204, label %17, label %46, !prof !132, !llvm.loop !133

205:                                              ; preds = %17, %0
  %206 = phi ptr [ %5, %0 ], [ %20, %17 ]
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 9
  %208 = load ptr, ptr %207, align 8, !tbaa !65
  %209 = icmp eq ptr %208, null
  br i1 %209, label %236, label %210, !prof !98

210:                                              ; preds = %205, %232
  %211 = phi ptr [ %234, %232 ], [ %208, %205 ]
  %212 = getelementptr inbounds %struct.tree_list, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !65
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 67174399
  %216 = icmp eq i64 %215, 67108896
  br i1 %216, label %217, label %223, !prof !134

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.tree_decl_common, ptr %213, i64 0, i32 2
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 33554432
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223, !prof !135

222:                                              ; preds = %217
  call void @varpool_finalize_decl(ptr noundef nonnull %213) #15
  br label %232

223:                                              ; preds = %217, %210
  %224 = and i64 %214, 65535
  %225 = icmp eq i64 %224, 32
  br i1 %225, label %226, label %232, !prof !136

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.tree_decl_common, ptr %213, i64 0, i32 5
  %228 = load ptr, ptr %227, align 8, !tbaa !65
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230, !prof !136

230:                                              ; preds = %226
  %231 = call ptr @walk_tree_1(ptr noundef nonnull %227, ptr noundef nonnull @record_reference, ptr noundef %3, ptr noundef %4, ptr noundef null) #15
  br label %232

232:                                              ; preds = %223, %226, %230, %222
  %233 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !65
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %210, !prof !137, !llvm.loop !138

236:                                              ; preds = %232, %205
  call void @pointer_set_destroy(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @record_references_in_initializer(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #11 !prof !139 {
  %3 = tail call ptr @pointer_set_create() #15
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %5 = icmp eq i8 %1, 0
  %6 = select i1 %5, ptr %0, ptr null, !prof !140
  %7 = tail call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @record_reference, ptr noundef %6, ptr noundef %3, ptr noundef null) #15
  tail call void @pointer_set_destroy(ptr noundef %3) #15
  ret void
}

declare ptr @pointer_set_create() local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @record_reference(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #12 !prof !141 !PGOFuncName !142 {
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %31 [
    i16 32, label %7
    i16 122, label %21
    i16 121, label %21
  ], !prof !143

7:                                                ; preds = %3
  %8 = and i64 %5, 67108864
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !144

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %44, label %15, !prof !145

15:                                               ; preds = %10, %7
  %16 = tail call ptr @varpool_node(ptr noundef nonnull %4) #15
  tail call void @varpool_mark_needed_node(ptr noundef %16) #15
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !146
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19, !prof !154

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %1) #15, !prof !155
  br label %44

21:                                               ; preds = %3, %3
  %22 = icmp ne ptr %2, null
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 29
  %28 = and i1 %22, %27
  br i1 %28, label %29, label %44, !prof !156

29:                                               ; preds = %21
  %30 = tail call ptr @cgraph_node(ptr noundef nonnull %24) #15
  tail call void @cgraph_mark_address_taken_node(ptr noundef %30) #15
  br label %44

31:                                               ; preds = %3
  %32 = and i64 %5, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38, !prof !157

37:                                               ; preds = %31
  store i32 0, ptr %1, align 4, !tbaa !69
  br label %44

38:                                               ; preds = %31
  %39 = and i64 %5, 65532
  %40 = icmp ugt i64 %39, 187
  br i1 %40, label %41, label %44, !prof !158

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !146
  %43 = tail call ptr %42(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %44

44:                                               ; preds = %37, %15, %10, %29, %21, %38, %41, %19
  %45 = phi ptr [ %43, %41 ], [ %20, %19 ], [ null, %38 ], [ null, %21 ], [ null, %29 ], [ null, %10 ], [ null, %15 ], [ null, %37 ]
  ret ptr %45
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rebuild_cgraph_edges() #11 !prof !159 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !54
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #15
  tail call void @cgraph_node_remove_callees(ptr noundef %2) #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 23
  store i64 %8, ptr %9, align 8, !tbaa !160
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = load ptr, ptr @cfun, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %109, label %27, !prof !98

18:                                               ; preds = %105, %44
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = load ptr, ptr @cfun, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %109, label %27, !prof !161, !llvm.loop !162

27:                                               ; preds = %0, %18
  %28 = phi ptr [ %20, %18 ], [ %11, %0 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !101, !noalias !163
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39, !prof !166

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !65, !noalias !163
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !167

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !107, !noalias !163
  br label %39

39:                                               ; preds = %37, %33, %27
  %40 = phi ptr [ %38, %37 ], [ null, %33 ], [ null, %27 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !167

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !109, !noalias !163
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %43, %42 ], [ null, %39 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %18, label %47, !prof !168

47:                                               ; preds = %44, %105
  %48 = phi ptr [ %107, %105 ], [ %45, %44 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !112
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %105, !prof !169

53:                                               ; preds = %47
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !69
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !115
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62, !prof !170

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %62

62:                                               ; preds = %61, %53
  %63 = getelementptr inbounds i8, ptr %49, i64 %59
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 121
  br i1 %68, label %69, label %72, !prof !171

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  br label %72

72:                                               ; preds = %62, %69
  %73 = phi ptr [ %71, %69 ], [ null, %62 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %105, label %75, !prof !170

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %77 = tail call ptr @cgraph_node(ptr noundef nonnull %73) #15
  %78 = load i64, ptr %76, align 8, !tbaa !118
  %79 = load ptr, ptr @current_function_decl, align 8, !tbaa !54
  %80 = getelementptr inbounds %struct.tree_function_decl, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !86
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %83, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !88
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %100, label %87, !prof !172

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  %89 = load i32, ptr %88, align 8, !tbaa !91
  %90 = load ptr, ptr %83, align 8, !tbaa !93
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 11
  %92 = load i32, ptr %91, align 8, !tbaa !91
  %93 = icmp eq i32 %92, 0
  %94 = tail call i32 @llvm.umax.i32(i32 %92, i32 1)
  %95 = zext i1 %93 to i32
  %96 = add nsw i32 %89, %95
  %97 = mul nsw i32 %96, 1000
  %98 = sdiv i32 %97, %94
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 100000)
  br label %100

100:                                              ; preds = %75, %87
  %101 = phi i32 [ %99, %87 ], [ 1000, %75 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  %103 = load i32, ptr %102, align 4, !tbaa !119
  %104 = tail call ptr @cgraph_create_edge(ptr noundef %2, ptr noundef %77, ptr noundef nonnull %49, i64 noundef %78, i32 noundef %101, i32 noundef %103) #15
  br label %105

105:                                              ; preds = %100, %72, %47
  %106 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %48, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !131
  %108 = icmp eq ptr %107, null
  br i1 %108, label %18, label %47, !prof !173, !llvm.loop !174

109:                                              ; preds = %18, %0
  %110 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 19, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113, !prof !175

113:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 265, ptr noundef nonnull @.str.2) #15
  br label %114

114:                                              ; preds = %109, %113
  ret i32 0
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_cgraph_callee_edges() #11 !prof !139 !PGOFuncName !176 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !54
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #15
  tail call void @cgraph_node_remove_callees(ptr noundef %2) #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_address_taken_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @build_cgraph_edges, ptr @cgraph_node, i64 69174}
!36 = !{ptr @build_cgraph_edges, ptr @pointer_set_create, i64 40}
!37 = !{ptr @build_cgraph_edges, ptr @cgraph_create_edge, i64 69134}
!38 = !{ptr @build_cgraph_edges, ptr @walk_tree_1, i64 148700}
!39 = !{ptr @build_cgraph_edges, ptr @walk_gimple_op, i64 334678}
!40 = !{ptr @build_cgraph_edges, ptr @varpool_finalize_decl, i64 38}
!41 = !{ptr @build_cgraph_edges, ptr @pointer_set_destroy, i64 40}
!42 = !{ptr @record_references_in_initializer, ptr @pointer_set_create, i64 78}
!43 = !{ptr @record_references_in_initializer, ptr @walk_tree_1, i64 78}
!44 = !{ptr @record_references_in_initializer, ptr @pointer_set_destroy, i64 78}
!45 = !{ptr @record_reference, ptr @varpool_node, i64 163}
!46 = !{ptr @record_reference, ptr @varpool_mark_needed_node, i64 163}
!47 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_node, i64 138342}
!48 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_node_remove_callees, i64 80}
!49 = !{ptr @rebuild_cgraph_edges, ptr @cgraph_create_edge, i64 138262}
!50 = !{ptr @remove_cgraph_callee_edges, ptr @cgraph_node, i64 78}
!51 = !{ptr @remove_cgraph_callee_edges, ptr @cgraph_node_remove_callees, i64 78}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !55, i64 8}
!59 = !{!"_IO_FILE", !60, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !60, i64 112, !60, i64 116, !61, i64 120, !62, i64 128, !56, i64 130, !56, i64 131, !55, i64 136, !61, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !61, i64 184, !60, i64 192, !56, i64 196}
!60 = !{!"int", !56, i64 0}
!61 = !{!"long", !56, i64 0}
!62 = !{!"short", !56, i64 0}
!63 = !{!59, !55, i64 16}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!56, !56, i64 0}
!66 = !{!59, !55, i64 40}
!67 = !{!59, !55, i64 48}
!68 = !{!59, !60, i64 0}
!69 = !{!60, !60, i64 0}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!74, !55, i64 16}
!74 = !{!"cgraph_edge", !61, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !60, i64 72, !60, i64 76, !60, i64 80, !60, i64 84, !62, i64 88, !60, i64 90, !60, i64 90, !60, i64 90}
!75 = !{!76, !55, i64 200}
!76 = !{!"cgraph_node", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !77, i64 144, !79, i64 184, !80, i64 224, !81, i64 232, !82, i64 256, !61, i64 288, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 308, !60, i64 308, !60, i64 308, !60, i64 308, !60, i64 308, !60, i64 308, !60, i64 308, !60, i64 309, !60, i64 309}
!77 = !{!"cgraph_local_info", !55, i64 0, !78, i64 8, !60, i64 32, !60, i64 32, !60, i64 32, !60, i64 32, !60, i64 32, !60, i64 32, !60, i64 32, !60, i64 32}
!78 = !{!"inline_summary", !61, i64 0, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20}
!79 = !{!"cgraph_global_info", !61, i64 0, !61, i64 8, !55, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !56, i64 36}
!80 = !{!"cgraph_rtl_info", !60, i64 0}
!81 = !{!"cgraph_clone_info", !55, i64 0, !55, i64 8, !55, i64 16}
!82 = !{!"cgraph_thunk_info", !61, i64 0, !61, i64 8, !55, i64 16, !56, i64 24, !56, i64 25, !56, i64 26}
!83 = !{!74, !60, i64 72}
!84 = distinct !{!84, !71, !72}
!85 = !{!"function_entry_count", i64 480517}
!86 = !{!87, !55, i64 8}
!87 = !{!"function", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !60, i64 104, !60, i64 108, !60, i64 112, !60, i64 116, !60, i64 120, !60, i64 124, !55, i64 128, !60, i64 136, !60, i64 137, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139}
!88 = !{!89, !60, i64 48}
!89 = !{!"control_flow_graph", !55, i64 0, !55, i64 8, !55, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !55, i64 40, !60, i64 48, !56, i64 52, !56, i64 60, !60, i64 68, !60, i64 72}
!90 = !{!"branch_weights", i32 187326, i32 293191}
!91 = !{!92, !60, i64 88}
!92 = !{!"basic_block_def", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !56, i64 32, !55, i64 48, !55, i64 56, !56, i64 64, !61, i64 72, !60, i64 80, !60, i64 84, !60, i64 88, !60, i64 92, !60, i64 96}
!93 = !{!89, !55, i64 0}
!94 = !{!"function_entry_count", i64 40}
!95 = !{!"cgraphbuild.c;build_cgraph_edges"}
!96 = !{!92, !55, i64 56}
!97 = !{!89, !55, i64 8}
!98 = !{!"branch_weights", i32 1, i32 159}
!99 = !{!"branch_weights", i32 159, i32 749145}
!100 = distinct !{!100, !71, !72}
!101 = !{!92, !60, i64 96}
!102 = !{!103}
!103 = distinct !{!103, !104, !"gsi_start_bb: argument 0"}
!104 = distinct !{!104, !"gsi_start_bb"}
!105 = !{!"branch_weights", i32 187326, i32 0}
!106 = !{!"branch_weights", i32 0, i32 187326}
!107 = !{!108, !55, i64 0}
!108 = !{!"gimple_bb_info", !55, i64 0, !55, i64 8}
!109 = !{!110, !55, i64 0}
!110 = !{!"gimple_seq_d", !55, i64 0, !55, i64 8, !55, i64 16}
!111 = !{!"branch_weights", i32 1, i32 187325}
!112 = !{!113, !55, i64 0}
!113 = !{!"gimple_seq_node_d", !55, i64 0, !55, i64 8, !55, i64 16}
!114 = !{!"branch_weights", i32 69134, i32 334678}
!115 = !{!61, !61, i64 0}
!116 = !{!"branch_weights", i32 0, i32 69134}
!117 = !{!"branch_weights", i32 69134, i32 0}
!118 = !{!92, !61, i64 72}
!119 = !{!92, !60, i64 84}
!120 = !{!"branch_weights", i32 1, i32 69133}
!121 = !{!"branch_weights", i32 0, i32 81764}
!122 = !{!"branch_weights", i32 69133, i32 12631}
!123 = distinct !{!123, !71, !72}
!124 = !{!"branch_weights", i32 2198, i32 66936}
!125 = !{!"branch_weights", i32 0, i32 66936}
!126 = !{!127, !55, i64 24}
!127 = !{!"walk_stmt_info", !128, i64 0, !55, i64 24, !55, i64 32, !56, i64 40, !56, i64 41, !56, i64 42, !56, i64 43, !55, i64 48}
!128 = !{!"", !55, i64 0, !55, i64 8, !55, i64 16}
!129 = !{!127, !55, i64 32}
!130 = !{!"branch_weights", i32 0, i32 334678}
!131 = !{!113, !55, i64 16}
!132 = !{!"branch_weights", i32 187325, i32 216487}
!133 = distinct !{!133, !71, !72}
!134 = !{!"branch_weights", i32 38, i32 111282}
!135 = !{!"branch_weights", i32 38, i32 0}
!136 = !{!"branch_weights", i32 111282, i32 0}
!137 = !{!"branch_weights", i32 159, i32 445121}
!138 = distinct !{!138, !71, !72}
!139 = !{!"function_entry_count", i64 78}
!140 = !{!"branch_weights", i32 39, i32 39}
!141 = !{!"function_entry_count", i64 166876}
!142 = !{!"cgraphbuild.c;record_reference"}
!143 = !{!"branch_weights", i32 55465, i32 111282, i32 0, i32 129}
!144 = !{!"branch_weights", i32 111244, i32 38}
!145 = !{!"branch_weights", i32 111119, i32 125}
!146 = !{!147, !55, i64 248}
!147 = !{!"lang_hooks", !55, i64 0, !61, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !55, i64 232, !148, i64 240, !149, i64 248, !150, i64 256, !151, i64 272, !152, i64 432, !153, i64 560, !55, i64 584, !55, i64 592, !55, i64 600, !55, i64 608, !55, i64 616, !55, i64 624, !55, i64 632, !55, i64 640, !55, i64 648, !55, i64 656, !55, i64 664, !56, i64 672}
!148 = !{!"lang_hooks_for_tree_inlining", !55, i64 0}
!149 = !{!"lang_hooks_for_callgraph", !55, i64 0}
!150 = !{!"lang_hooks_for_tree_dump", !55, i64 0, !55, i64 8}
!151 = !{!"lang_hooks_for_decls", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152}
!152 = !{!"lang_hooks_for_types", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !56, i64 120}
!153 = !{!"lang_hooks_for_lto", !55, i64 0, !55, i64 8, !55, i64 16}
!154 = !{!"branch_weights", i32 0, i32 163}
!155 = !{!"VP", i32 0, i64 163, i64 -6518431999767552407, i64 163}
!156 = !{!"branch_weights", i32 0, i32 129}
!157 = !{!"branch_weights", i32 3177, i32 52288}
!158 = !{!"branch_weights", i32 0, i32 52288}
!159 = !{!"function_entry_count", i64 80}
!160 = !{!76, !61, i64 288}
!161 = !{!"branch_weights", i32 159, i32 667641}
!162 = distinct !{!162, !71, !72}
!163 = !{!164}
!164 = distinct !{!164, !165, !"gsi_start_bb: argument 0"}
!165 = distinct !{!165, !"gsi_start_bb"}
!166 = !{!"branch_weights", i32 333900, i32 0}
!167 = !{!"branch_weights", i32 0, i32 333900}
!168 = !{!"branch_weights", i32 1, i32 333899}
!169 = !{!"branch_weights", i32 138262, i32 620713}
!170 = !{!"branch_weights", i32 0, i32 138262}
!171 = !{!"branch_weights", i32 138262, i32 0}
!172 = !{!"branch_weights", i32 69134, i32 69128}
!173 = !{!"branch_weights", i32 333899, i32 425076}
!174 = distinct !{!174, !71, !72}
!175 = !{!"branch_weights", i32 80, i32 0}
!176 = !{!"cgraphbuild.c;remove_cgraph_callee_edges"}
