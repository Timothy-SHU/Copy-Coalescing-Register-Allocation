; ModuleID = 'tree-iterator.c'
source_filename = "tree-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stmt_list_cache = internal global ptr null, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gt_ggc_rd_gt_tree_iterator_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @stmt_list_cache, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @alloc_stmt_list() local_unnamed_addr #8 !prof !58 {
  %1 = load ptr, ptr @stmt_list_cache, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3, !prof !59

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  store ptr %5, ptr @stmt_list_cache, align 8, !tbaa !39
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !60

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %3, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i64 147, ptr %1, align 8
  br label %11

9:                                                ; preds = %0
  %10 = tail call ptr @make_node_stat(i32 noundef 147) #14
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi ptr [ %1, %8 ], [ %10, %9 ]
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !39
  %14 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !50
  ret ptr %12
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @free_stmt_list(ptr noundef %0) local_unnamed_addr #8 !prof !61 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !62

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.1) #14
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !62

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %6, %10
  %12 = load ptr, ptr @stmt_list_cache, align 8
  %13 = icmp ne ptr %12, %0
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16, !prof !62

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.1) #14
  br label %17

17:                                               ; preds = %11, %16
  %18 = load ptr, ptr @stmt_list_cache, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !50
  store ptr %0, ptr @stmt_list_cache, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @tsi_link_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !38 {
  %4 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 147
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  tail call void @free_stmt_list(ptr noundef nonnull %1)
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, %16
  br i1 %21, label %59, label %22

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #14
  br label %59

23:                                               ; preds = %8
  %24 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %25 = getelementptr inbounds %struct.tree_statement_list_node, ptr %24, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store ptr %1, ptr %25, align 8, !tbaa !65
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %16, %12 ], [ %24, %23 ]
  %28 = phi ptr [ %14, %12 ], [ %24, %23 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !63
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 65536
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %0, align 8, !tbaa !67
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %32, align 8, !tbaa !68
  store ptr %35, ptr %28, align 8, !tbaa !68
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_statement_list_node, ptr %35, i64 0, i32 1
  br label %42

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !63
  %41 = getelementptr inbounds %struct.tree_statement_list, ptr %40, i64 0, i32 1
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %41, %39 ], [ %38, %37 ]
  store ptr %28, ptr %43, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.tree_statement_list_node, ptr %27, i64 0, i32 1
  store ptr %32, ptr %44, align 8, !tbaa !69
  br label %55

45:                                               ; preds = %26
  %46 = load ptr, ptr %4, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct.tree_statement_list, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  store ptr %48, ptr %28, align 8, !tbaa !68
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.tree_statement_list, ptr %46, i64 0, i32 1
  %51 = getelementptr inbounds %struct.tree_statement_list_node, ptr %48, i64 0, i32 1
  %52 = select i1 %49, ptr %50, ptr %51
  store ptr %28, ptr %52, align 8, !tbaa !50
  %53 = load ptr, ptr %4, align 8, !tbaa !63
  %54 = getelementptr inbounds %struct.tree_statement_list, ptr %53, i64 0, i32 2
  br label %55

55:                                               ; preds = %45, %42
  %56 = phi ptr [ %54, %45 ], [ %32, %42 ]
  store ptr %27, ptr %56, align 8, !tbaa !50
  switch i32 %2, label %59 [
    i32 0, label %57
    i32 4, label %57
    i32 2, label %57
    i32 3, label %58
  ]

57:                                               ; preds = %55, %55, %55
  store ptr %28, ptr %0, align 8, !tbaa !67
  br label %59

58:                                               ; preds = %55
  store ptr %27, ptr %0, align 8, !tbaa !67
  br label %59

59:                                               ; preds = %57, %58, %55, %22, %20
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @tsi_link_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 !prof !70 {
  %4 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %8, !prof !71

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 147
  br i1 %11, label %12, label %29, !prof !72

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %17 = load ptr, ptr @stmt_list_cache, align 8
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20, !prof !60

19:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @.str.1) #14
  br label %20

20:                                               ; preds = %12, %19
  %21 = load ptr, ptr @stmt_list_cache, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !50
  store ptr %1, ptr @stmt_list_cache, align 8, !tbaa !39
  %23 = icmp ne ptr %14, null
  %24 = icmp ne ptr %16, null
  %25 = select i1 %23, i1 %24, i1 false, !prof !73
  br i1 %25, label %32, label %26, !prof !73

26:                                               ; preds = %20
  %27 = icmp eq ptr %14, %16
  br i1 %27, label %66, label %28

28:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @.str.1) #14
  br label %66

29:                                               ; preds = %8
  %30 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %31 = getelementptr inbounds %struct.tree_statement_list_node, ptr %30, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store ptr %1, ptr %31, align 8, !tbaa !65
  br label %32

32:                                               ; preds = %20, %29
  %33 = phi ptr [ %16, %20 ], [ %30, %29 ]
  %34 = phi ptr [ %14, %20 ], [ %30, %29 ]
  %35 = load ptr, ptr %4, align 8, !tbaa !63
  %36 = load i64, ptr %35, align 8
  %37 = or i64 %36, 65536
  store i64 %37, ptr %35, align 8
  %38 = load ptr, ptr %0, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40, !prof !74

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_statement_list_node, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = getelementptr inbounds %struct.tree_statement_list_node, ptr %33, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !69
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %48, !prof !75

45:                                               ; preds = %40
  %46 = load ptr, ptr %4, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct.tree_statement_list, ptr %46, i64 0, i32 2
  br label %48

48:                                               ; preds = %40, %45
  %49 = phi ptr [ %47, %45 ], [ %42, %40 ]
  store ptr %33, ptr %49, align 8, !tbaa !50
  store ptr %38, ptr %34, align 8, !tbaa !68
  store ptr %34, ptr %41, align 8, !tbaa !69
  br label %61

50:                                               ; preds = %32
  %51 = load ptr, ptr %4, align 8, !tbaa !63
  %52 = getelementptr inbounds %struct.tree_statement_list, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !76

55:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.1) #14
  br label %56

56:                                               ; preds = %50, %55
  %57 = load ptr, ptr %4, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.tree_statement_list, ptr %57, i64 0, i32 1
  store ptr %34, ptr %58, align 8, !tbaa !50
  %59 = load ptr, ptr %4, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.tree_statement_list, ptr %59, i64 0, i32 2
  store ptr %33, ptr %60, align 8, !tbaa !50
  br label %61

61:                                               ; preds = %56, %48
  switch i32 %2, label %66 [
    i32 0, label %62
    i32 2, label %62
    i32 4, label %63
    i32 3, label %63
    i32 1, label %64
  ], !prof !77

62:                                               ; preds = %61, %61
  store ptr %34, ptr %0, align 8, !tbaa !67
  br label %66

63:                                               ; preds = %61, %61
  store ptr %33, ptr %0, align 8, !tbaa !67
  br label %66

64:                                               ; preds = %61
  br i1 %39, label %65, label %66

65:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.1) #14
  br label %66

66:                                               ; preds = %62, %63, %61, %64, %65, %28, %26
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @tsi_delink(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !78 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = load ptr, ptr %2, align 8, !tbaa !68
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %9, !prof !79

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_statement_list_node, ptr %5, i64 0, i32 1
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.tree_statement_list, ptr %11, i64 0, i32 1
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %12, %9 ], [ %8, %7 ]
  store ptr %4, ptr %14, align 8, !tbaa !50
  %15 = icmp ne ptr %4, null
  br i1 %15, label %20, label %16, !prof !80

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.tree_statement_list, ptr %18, i64 0, i32 2
  br label %20

20:                                               ; preds = %13, %16
  %21 = phi ptr [ %19, %16 ], [ %4, %13 ]
  store ptr %5, ptr %21, align 8, !tbaa !50
  %22 = or i1 %15, %6
  br i1 %22, label %28, label %23, !prof !80

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, -65537
  store i64 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %23, %20
  store ptr %4, ptr %0, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @expr_first(ptr noundef readonly %0) local_unnamed_addr #12 !prof !38 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 147
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 52
  br i1 %10, label %18, label %25

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_statement_list_node, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  br label %25

18:                                               ; preds = %7, %18
  %19 = phi ptr [ %21, %18 ], [ %0, %7 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 52
  br i1 %24, label %18, label %25, !llvm.loop !81

25:                                               ; preds = %18, %7, %15, %11, %1
  %26 = phi ptr [ null, %1 ], [ %17, %15 ], [ null, %11 ], [ %0, %7 ], [ %21, %18 ]
  ret ptr %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @expr_last(ptr noundef readonly %0) local_unnamed_addr #13 !prof !82 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3, !prof !83

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 147
  br i1 %6, label %11, label %7, !prof !84

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 52
  br i1 %10, label %18, label %25, !prof !85

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15, !prof !86

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_statement_list_node, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  br label %25

18:                                               ; preds = %7, %18
  %19 = phi ptr [ %21, %18 ], [ %0, %7 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 52
  br i1 %24, label %18, label %25, !prof !85, !llvm.loop !87

25:                                               ; preds = %18, %7, %15, %11, %1
  %26 = phi ptr [ null, %1 ], [ %17, %15 ], [ null, %11 ], [ %0, %7 ], [ %21, %18 ]
  ret ptr %26
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @alloc_stmt_list, ptr @make_node_stat, i64 38474}
!36 = !{ptr @tsi_link_after, ptr @ggc_alloc_stat, i64 481076}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"function_entry_count", i64 252520}
!59 = !{!"branch_weights", i32 38474, i32 214046}
!60 = !{!"branch_weights", i32 0, i32 214046}
!61 = !{!"function_entry_count", i64 166599}
!62 = !{!"branch_weights", i32 214046, i32 0}
!63 = !{!64, !40, i64 8}
!64 = !{!"", !40, i64 0, !40, i64 8}
!65 = !{!66, !40, i64 16}
!66 = !{!"tree_statement_list_node", !40, i64 0, !40, i64 8, !40, i64 16}
!67 = !{!64, !40, i64 0}
!68 = !{!66, !40, i64 0}
!69 = !{!66, !40, i64 8}
!70 = !{!"function_entry_count", i64 528523}
!71 = !{!"branch_weights", i32 0, i32 528523}
!72 = !{!"branch_weights", i32 47447, i32 481076}
!73 = !{!"branch_weights", i32 47447, i32 0}
!74 = !{!"branch_weights", i32 252520, i32 276003}
!75 = !{!"branch_weights", i32 276003, i32 0}
!76 = !{!"branch_weights", i32 252520, i32 0}
!77 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 528523, i32 0, i32 0}
!78 = !{!"function_entry_count", i64 479092}
!79 = !{!"branch_weights", i32 0, i32 479092}
!80 = !{!"branch_weights", i32 274504, i32 204588}
!81 = distinct !{!81, !56, !57}
!82 = !{!"function_entry_count", i64 76055}
!83 = !{!"branch_weights", i32 0, i32 76055}
!84 = !{!"branch_weights", i32 219, i32 75836}
!85 = !{!"branch_weights", i32 0, i32 1}
!86 = !{!"branch_weights", i32 5, i32 214}
!87 = distinct !{!87, !56, !57}
