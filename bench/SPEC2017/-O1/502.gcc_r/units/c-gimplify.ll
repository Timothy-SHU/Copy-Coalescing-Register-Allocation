; ModuleID = 'c-gimplify.c'
source_filename = "c-gimplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0A;; Function %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c";; enabled by -%s\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@warn_init_self = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !39 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !40
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !39 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !40
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !39 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !50

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !44
  %11 = load i8, ptr %3, align 1, !tbaa !51
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !39 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !50

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !44
  %11 = load i8, ptr %3, align 1, !tbaa !51
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !39 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !50

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !44
  %11 = load i8, ptr %3, align 1, !tbaa !51
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !39 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !40
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !39 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !50

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !52
  store i8 %12, ptr %4, align 1, !tbaa !51
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !39 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !50

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !52
  store i8 %12, ptr %4, align 1, !tbaa !51
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !39 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !50

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !52
  store i8 %12, ptr %4, align 1, !tbaa !51
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !39 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !39 {
  %2 = load i32, ptr %0, align 8, !tbaa !54
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !39 {
  %2 = load i32, ptr %0, align 8, !tbaa !54
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !39 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !39 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !39 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !56

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !39 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @c_genericize(ptr noundef %0) local_unnamed_addr #9 !prof !59 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %3 = call ptr @dump_begin(i32 noundef 4, ptr noundef nonnull %2) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5, !prof !60

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !61
  %7 = call ptr %6(ptr noundef %0, i32 noundef 2) #13
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef %7)
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %10, i64 13
  %12 = load i8, ptr %11, align 1, !tbaa !51
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = call ptr @decl_assembler_name(ptr noundef nonnull %0) #13
  %20 = getelementptr inbounds %struct.tree_identifier, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %5, %14, %18
  %23 = phi ptr [ %21, %18 ], [ @.str.2, %14 ], [ @.str.2, %5 ]
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef %23)
  %25 = call ptr @dump_flag_name(i32 noundef 4) #13
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef %25)
  %27 = call i32 @fputc(i32 10, ptr nonnull %3)
  %28 = load i32, ptr %2, align 4, !tbaa !55
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  br i1 %30, label %35, label %33

33:                                               ; preds = %22
  %34 = or i32 %28, 2
  call void @dump_node(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %3) #13
  br label %36

35:                                               ; preds = %22
  call void @print_c_tree(ptr noundef nonnull %3, ptr noundef %32) #13
  br label %36

36:                                               ; preds = %35, %33
  %37 = call i32 @fputc(i32 10, ptr nonnull %3)
  call void @dump_end(i32 noundef 4, ptr noundef nonnull %3) #13
  br label %38

38:                                               ; preds = %36, %1
  %39 = call ptr @cgraph_node(ptr noundef %0) #13
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43, !prof !69

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %47, %43 ], [ %41, %38 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  call void @c_genericize(ptr noundef %45)
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %44, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %43, !prof !69, !llvm.loop !78

49:                                               ; preds = %43, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @dump_flag_name(i32 noundef) local_unnamed_addr #3

declare void @dump_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @print_c_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @c_build_bind_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !79 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %45, label %5, !prof !80

5:                                                ; preds = %3
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %12, !prof !81

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  br label %45

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 4096
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = tail call ptr @make_node_stat(i32 noundef 4) #13
  %19 = getelementptr inbounds %struct.tree_block, ptr %18, i64 0, i32 3
  store ptr %1, ptr %19, align 8, !tbaa !51
  %20 = tail call ptr @gimple_bind_expr_stack() #13
  %21 = icmp eq ptr %20, null
  br label %22

22:                                               ; preds = %34, %17
  %23 = phi i32 [ 0, %17 ], [ %38, %34 ]
  br i1 %21, label %31, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %20, align 8, !tbaa !82
  %26 = icmp ugt i32 %25, %23
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = zext i32 %23 to i64
  %29 = getelementptr inbounds %struct.VEC_gimple_base, ptr %20, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  br label %31

31:                                               ; preds = %27, %24, %22
  %32 = phi ptr [ %30, %27 ], [ null, %24 ], [ null, %22 ]
  %33 = phi i1 [ false, %27 ], [ true, %24 ], [ true, %22 ]
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.gimple_statement_bind, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  %38 = add i32 %23, 1
  br i1 %37, label %22, label %39, !llvm.loop !84

39:                                               ; preds = %31, %34
  %40 = getelementptr inbounds %struct.gimple_statement_bind, ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.tree_block, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = tail call ptr @chainon(ptr noundef %43, ptr noundef %18) #13
  store ptr %44, ptr %42, align 8, !tbaa !51
  br label %45

45:                                               ; preds = %12, %3, %9, %39
  %46 = phi ptr [ %1, %9 ], [ %18, %39 ], [ null, %3 ], [ null, %12 ]
  %47 = phi ptr [ %11, %9 ], [ %1, %39 ], [ null, %3 ], [ %1, %12 ]
  %48 = icmp eq ptr %2, null
  br i1 %48, label %49, label %51, !prof !85

49:                                               ; preds = %45
  %50 = tail call ptr @build_empty_stmt(i32 noundef %0) #13
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi ptr [ %2, %45 ], [ %50, %49 ]
  %53 = icmp ne ptr %47, null
  %54 = icmp ne ptr %46, null
  %55 = or i1 %54, %53
  br i1 %55, label %56, label %62, !prof !86

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !40
  %58 = tail call ptr @build3_stat(i32 noundef 58, ptr noundef %57, ptr noundef %47, ptr noundef %52, ptr noundef %46) #13
  %59 = load i64, ptr %58, align 8
  %60 = or i64 %59, 65536
  store i64 %60, ptr %58, align 8
  %61 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 1
  store i32 %0, ptr %61, align 8, !tbaa !51
  br label %62

62:                                               ; preds = %51, %56
  %63 = phi ptr [ %58, %56 ], [ %52, %51 ]
  ret ptr %63
}

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @c_gimplify_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #11 !prof !87 {
  %4 = load ptr, ptr %0, align 8, !tbaa !40
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 132
  br i1 %7, label %8, label %30, !prof !88

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %30, !prof !89

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = and i64 %11, 67108864
  %19 = or disjoint i64 %17, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30, !prof !90

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp ne ptr %23, %10
  %25 = load i32, ptr @warn_init_self, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = or i64 %11, 8388608
  store i64 %29, ptr %10, align 8
  br label %30

30:                                               ; preds = %28, %21, %14, %8, %3
  ret i32 -1
}

declare ptr @gimple_bind_expr_stack() local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

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
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @c_genericize, ptr @dump_begin, i64 655}
!36 = !{ptr @c_genericize, ptr @cgraph_node, i64 655}
!37 = !{ptr @c_build_bind_expr, ptr @build3_stat, i64 683}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !41, i64 8}
!45 = !{!"_IO_FILE", !46, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !46, i64 112, !46, i64 116, !47, i64 120, !48, i64 128, !42, i64 130, !42, i64 131, !41, i64 136, !47, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !47, i64 184, !46, i64 192, !42, i64 196}
!46 = !{!"int", !42, i64 0}
!47 = !{!"long", !42, i64 0}
!48 = !{!"short", !42, i64 0}
!49 = !{!45, !41, i64 16}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!42, !42, i64 0}
!52 = !{!45, !41, i64 40}
!53 = !{!45, !41, i64 48}
!54 = !{!45, !46, i64 0}
!55 = !{!46, !46, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"function_entry_count", i64 655}
!60 = !{!"branch_weights", i32 655, i32 0}
!61 = !{!62, !41, i64 176}
!62 = !{!"lang_hooks", !41, i64 0, !47, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !63, i64 240, !64, i64 248, !65, i64 256, !66, i64 272, !67, i64 432, !68, i64 560, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !41, i64 616, !41, i64 624, !41, i64 632, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !42, i64 672}
!63 = !{!"lang_hooks_for_tree_inlining", !41, i64 0}
!64 = !{!"lang_hooks_for_callgraph", !41, i64 0}
!65 = !{!"lang_hooks_for_tree_dump", !41, i64 0, !41, i64 8}
!66 = !{!"lang_hooks_for_decls", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152}
!67 = !{!"lang_hooks_for_types", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !42, i64 120}
!68 = !{!"lang_hooks_for_lto", !41, i64 0, !41, i64 8, !41, i64 16}
!69 = !{!"branch_weights", i32 1, i32 0}
!70 = !{!71, !41, i64 0}
!71 = !{!"cgraph_node", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !72, i64 144, !74, i64 184, !75, i64 224, !76, i64 232, !77, i64 256, !47, i64 288, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 308, !46, i64 308, !46, i64 308, !46, i64 308, !46, i64 308, !46, i64 308, !46, i64 308, !46, i64 309, !46, i64 309}
!72 = !{!"cgraph_local_info", !41, i64 0, !73, i64 8, !46, i64 32, !46, i64 32, !46, i64 32, !46, i64 32, !46, i64 32, !46, i64 32, !46, i64 32, !46, i64 32}
!73 = !{!"inline_summary", !47, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20}
!74 = !{!"cgraph_global_info", !47, i64 0, !47, i64 8, !41, i64 16, !46, i64 24, !46, i64 28, !46, i64 32, !42, i64 36}
!75 = !{!"cgraph_rtl_info", !46, i64 0}
!76 = !{!"cgraph_clone_info", !41, i64 0, !41, i64 8, !41, i64 16}
!77 = !{!"cgraph_thunk_info", !47, i64 0, !47, i64 8, !41, i64 16, !42, i64 24, !42, i64 25, !42, i64 26}
!78 = distinct !{!78, !57, !58}
!79 = !{!"function_entry_count", i64 166650}
!80 = !{!"branch_weights", i32 165967, i32 683}
!81 = !{!"branch_weights", i32 683, i32 0}
!82 = !{!83, !46, i64 0}
!83 = !{!"VEC_gimple_base", !46, i64 0, !46, i64 4, !42, i64 8}
!84 = distinct !{!84, !57, !58}
!85 = !{!"branch_weights", i32 0, i32 166650}
!86 = !{!"branch_weights", i32 683, i32 165967}
!87 = !{!"function_entry_count", i64 2740962}
!88 = !{!"branch_weights", i32 38, i32 2740924}
!89 = !{!"branch_weights", i32 38, i32 0}
!90 = !{!"branch_weights", i32 0, i32 38}
