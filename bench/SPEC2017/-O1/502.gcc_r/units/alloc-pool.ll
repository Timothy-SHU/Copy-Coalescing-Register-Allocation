; ModuleID = 'alloc-pool.c'
source_filename = "alloc-pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.alloc_pool_def = type { ptr, i64, ptr, ptr, i64, i64, i64, i64, ptr, i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"alloc-pool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !41
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !40 {
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
  br i1 %23, label %7, label %24, !llvm.loop !57

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @create_alloc_pool(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 !prof !60 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !61

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #14
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %9, !prof !61

8:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 155, ptr noundef nonnull @.str.1) #14
  br label %9

9:                                                ; preds = %6, %8
  %10 = tail call i64 @llvm.umax.i64(i64 %1, i64 8)
  %11 = add i64 %10, 7
  %12 = and i64 %11, -8
  %13 = tail call ptr @xmalloc(i64 noundef 88) #14
  store ptr %0, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 10
  store i64 %12, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 1
  store i64 %2, ptr %15, align 8, !tbaa !65
  %16 = mul i64 %12, %2
  %17 = add i64 %16, 8
  %18 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 9
  store i64 %17, ptr %18, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, i8 0, i64 56, i1 false)
  ret ptr %13
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @empty_alloc_pool(ptr noundef %0) local_unnamed_addr #8 !prof !40 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !61

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !68

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @free(ptr noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !prof !71, !llvm.loop !72

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @free_alloc_pool(ptr noundef %0) local_unnamed_addr #8 !prof !73 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !61

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %3, %1
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !68

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @free(ptr noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !prof !71, !llvm.loop !72

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_alloc_pool_if_empty(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !74 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 6
  %4 = load i64, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !76
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %21, !prof !77

8:                                                ; preds = %1
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %11, !prof !61

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !68

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %11 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  tail call void @free(ptr noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !prof !71, !llvm.loop !72

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, i8 0, i64 56, i1 false)
  tail call void @free(ptr noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @pool_alloc(ptr noundef %0) local_unnamed_addr #8 !prof !78 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !79

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %39, !prof !81

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !82
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31, !prof !83

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 9
  %14 = load i64, ptr %13, align 8, !tbaa !66
  %15 = tail call ptr @xmalloc(i64 noundef %14) #14
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  %17 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  store ptr %18, ptr %15, align 8, !tbaa !69
  store ptr %15, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 3
  store ptr %16, ptr %19, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !65
  store i64 %21, ptr %9, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !76
  %24 = add i64 %23, %21
  store i64 %24, ptr %22, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %26 = load i64, ptr %25, align 8, !tbaa !75
  %27 = add i64 %26, %21
  store i64 %27, ptr %25, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !85
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8, !tbaa !85
  br label %31

31:                                               ; preds = %12, %8
  %32 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  store ptr null, ptr %33, align 8, !tbaa !69
  store ptr %33, ptr %5, align 8, !tbaa !80
  %34 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 10
  %35 = load i64, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  store ptr %36, ptr %32, align 8, !tbaa !84
  %37 = load i64, ptr %9, align 8, !tbaa !82
  %38 = add i64 %37, -1
  store i64 %38, ptr %9, align 8, !tbaa !82
  br label %39

39:                                               ; preds = %31, %4
  %40 = load ptr, ptr %5, align 8, !tbaa !80
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  store ptr %41, ptr %5, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %43 = load i64, ptr %42, align 8, !tbaa !75
  %44 = add i64 %43, -1
  store i64 %44, ptr %42, align 8, !tbaa !75
  ret ptr %40
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @pool_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !86 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !87

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #14
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !76
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %12, label %11, !prof !88

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @.str.1) #14
  br label %12

12:                                               ; preds = %5, %11
  %13 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  store ptr %14, ptr %1, align 8, !tbaa !69
  store ptr %1, ptr %13, align 8, !tbaa !80
  %15 = load i64, ptr %6, align 8, !tbaa !75
  %16 = add i64 %15, 1
  store i64 %16, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_alloc_pool_statistics() local_unnamed_addr #11 !prof !40 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @create_alloc_pool, ptr @xmalloc, i64 907687}
!36 = !{ptr @free_alloc_pool, ptr @free, i64 2484027}
!37 = !{ptr @free_alloc_pool_if_empty, ptr @free, i64 3727}
!38 = !{ptr @pool_alloc, ptr @xmalloc, i64 1580067}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !42, i64 8}
!46 = !{!"_IO_FILE", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !43, i64 130, !43, i64 131, !42, i64 136, !48, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !48, i64 184, !47, i64 192, !43, i64 196}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!"short", !43, i64 0}
!50 = !{!46, !42, i64 16}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !42, i64 40}
!54 = !{!46, !42, i64 48}
!55 = !{!46, !47, i64 0}
!56 = !{!47, !47, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"function_entry_count", i64 907687}
!61 = !{!"branch_weights", i32 0, i32 907687}
!62 = !{!63, !42, i64 0}
!63 = !{!"alloc_pool_def", !42, i64 0, !48, i64 8, !42, i64 16, !42, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !42, i64 64, !48, i64 72, !48, i64 80}
!64 = !{!63, !48, i64 80}
!65 = !{!63, !48, i64 8}
!66 = !{!63, !48, i64 72}
!67 = !{!63, !42, i64 64}
!68 = !{!"branch_weights", i32 1, i32 907686}
!69 = !{!70, !42, i64 0}
!70 = !{!"alloc_pool_list_def", !42, i64 0}
!71 = !{!"branch_weights", i32 907686, i32 672381}
!72 = distinct !{!72, !58, !59}
!73 = !{!"function_entry_count", i64 906327}
!74 = !{!"function_entry_count", i64 2128}
!75 = !{!63, !48, i64 48}
!76 = !{!63, !48, i64 40}
!77 = !{!"branch_weights", i32 1360, i32 768}
!78 = !{!"function_entry_count", i64 85030714}
!79 = !{!"branch_weights", i32 0, i32 85030714}
!80 = !{!63, !42, i64 16}
!81 = !{!"branch_weights", i32 46840261, i32 38190453}
!82 = !{!63, !48, i64 32}
!83 = !{!"branch_weights", i32 1580067, i32 45260194}
!84 = !{!63, !42, i64 24}
!85 = !{!63, !48, i64 56}
!86 = !{!"function_entry_count", i64 53886338}
!87 = !{!"branch_weights", i32 0, i32 53886338}
!88 = !{!"branch_weights", i32 53886338, i32 0}
