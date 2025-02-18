; ModuleID = 'concat.c'
source_filename = "concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@libiberty_concat_ptr = dso_local local_unnamed_addr global ptr null, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

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
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nofree nounwind uwtable
define dso_local i64 @concat_length(ptr noundef readonly %0, ...) local_unnamed_addr #8 !prof !38 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.va_start(ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 16
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = load ptr, ptr %6, align 8
  br label %10

10:                                               ; preds = %4, %24
  %11 = phi ptr [ %9, %4 ], [ %25, %24 ]
  %12 = phi ptr [ %0, %4 ], [ %28, %24 ]
  %13 = phi i64 [ 0, %4 ], [ %16, %24 ]
  %14 = phi i32 [ %5, %4 ], [ %26, %24 ]
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12)
  %16 = add i64 %15, %13
  %17 = icmp ult i32 %14, 41
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = zext nneg i32 %14 to i64
  %20 = getelementptr i8, ptr %8, i64 %19
  %21 = add nuw nsw i32 %14, 8
  store i32 %21, ptr %2, align 16
  br label %24

22:                                               ; preds = %10
  %23 = getelementptr i8, ptr %11, i64 8
  store ptr %23, ptr %6, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %11, %18 ], [ %23, %22 ]
  %26 = phi i32 [ %21, %18 ], [ %14, %22 ]
  %27 = phi ptr [ %20, %18 ], [ %11, %22 ]
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %10, !llvm.loop !57

30:                                               ; preds = %24, %1
  %31 = phi i64 [ 0, %1 ], [ %16, %24 ]
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i64 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef ptr @concat_copy(ptr noundef returned writeonly %0, ptr noundef readonly %1, ...) local_unnamed_addr #8 !prof !38 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 16
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = load ptr, ptr %7, align 8
  br label %11

11:                                               ; preds = %5, %25
  %12 = phi ptr [ %10, %5 ], [ %26, %25 ]
  %13 = phi ptr [ %0, %5 ], [ %17, %25 ]
  %14 = phi ptr [ %1, %5 ], [ %29, %25 ]
  %15 = phi i32 [ %6, %5 ], [ %27, %25 ]
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr nonnull align 1 %14, i64 %16, i1 false)
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = icmp ult i32 %15, 41
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr i8, ptr %9, i64 %20
  %22 = add nuw nsw i32 %15, 8
  store i32 %22, ptr %3, align 16
  br label %25

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %12, i64 8
  store ptr %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %12, %19 ], [ %24, %23 ]
  %27 = phi i32 [ %22, %19 ], [ %15, %23 ]
  %28 = phi ptr [ %21, %19 ], [ %12, %23 ]
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !58

31:                                               ; preds = %25, %2
  %32 = phi ptr [ %0, %2 ], [ %17, %25 ]
  store i8 0, ptr %32, align 1, !tbaa !50
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local ptr @concat_copy2(ptr noundef readonly %0, ...) local_unnamed_addr #8 !prof !38 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @libiberty_concat_ptr, align 8, !tbaa !39
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %23
  %9 = phi ptr [ %3, %5 ], [ %12, %23 ]
  %10 = phi ptr [ %0, %5 ], [ %25, %23 ]
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr nonnull align 1 %10, i64 %11, i1 false)
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = load i32, ptr %2, align 16
  %14 = icmp ult i32 %13, 41
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 16
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr i8, ptr %16, i64 %17
  %19 = add nuw nsw i32 %13, 8
  store i32 %19, ptr %2, align 16
  br label %23

20:                                               ; preds = %8
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %6, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %18, %15 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !58

27:                                               ; preds = %23, %1
  %28 = phi ptr [ %3, %1 ], [ %12, %23 ]
  store i8 0, ptr %28, align 1, !tbaa !50
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %29 = load ptr, ptr @libiberty_concat_ptr, align 8, !tbaa !39
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @concat(ptr noundef readonly %0, ...) local_unnamed_addr #10 !prof !59 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.va_start(ptr nonnull %2)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5, !prof !60

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 16
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = load ptr, ptr %7, align 8
  br label %11

11:                                               ; preds = %5, %25
  %12 = phi ptr [ %10, %5 ], [ %26, %25 ]
  %13 = phi ptr [ %0, %5 ], [ %29, %25 ]
  %14 = phi i64 [ 0, %5 ], [ %17, %25 ]
  %15 = phi i32 [ %6, %5 ], [ %27, %25 ]
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13)
  %17 = add i64 %16, %14
  %18 = icmp ult i32 %15, 41
  br i1 %18, label %19, label %23, !prof !61

19:                                               ; preds = %11
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr i8, ptr %9, i64 %20
  %22 = add nuw nsw i32 %15, 8
  store i32 %22, ptr %2, align 16
  br label %25

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %12, i64 8
  store ptr %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %12, %19 ], [ %24, %23 ]
  %27 = phi i32 [ %22, %19 ], [ %15, %23 ]
  %28 = phi ptr [ %21, %19 ], [ %12, %23 ]
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !prof !62, !llvm.loop !57

31:                                               ; preds = %25
  %32 = add i64 %17, 1
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi i64 [ 1, %1 ], [ %32, %31 ]
  %35 = call ptr @xmalloc(i64 noundef %34) #15
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.va_start(ptr nonnull %3)
  %36 = icmp eq ptr %0, null
  br i1 %36, label %59, label %37, !prof !60

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %55
  %40 = phi ptr [ %35, %37 ], [ %43, %55 ]
  %41 = phi ptr [ %0, %37 ], [ %57, %55 ]
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr nonnull align 1 %41, i64 %42, i1 false), !prof !63
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  %44 = load i32, ptr %3, align 16
  %45 = icmp ult i32 %44, 41
  br i1 %45, label %46, label %51, !prof !61

46:                                               ; preds = %39
  %47 = load ptr, ptr %38, align 16
  %48 = zext nneg i32 %44 to i64
  %49 = getelementptr i8, ptr %47, i64 %48
  %50 = add nuw nsw i32 %44, 8
  store i32 %50, ptr %3, align 16
  br label %55

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i64 8
  store ptr %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi ptr [ %49, %46 ], [ %53, %51 ]
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %39, !prof !62, !llvm.loop !58

59:                                               ; preds = %55, %33
  %60 = phi ptr [ %35, %33 ], [ %43, %55 ]
  store i8 0, ptr %60, align 1, !tbaa !50
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %35
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @reconcat(ptr noundef %0, ptr noundef readonly %1, ...) local_unnamed_addr #11 !prof !38 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.va_start(ptr nonnull %3)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 16
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 16
  %11 = load ptr, ptr %8, align 8
  br label %12

12:                                               ; preds = %6, %26
  %13 = phi ptr [ %11, %6 ], [ %27, %26 ]
  %14 = phi ptr [ %1, %6 ], [ %30, %26 ]
  %15 = phi i64 [ 0, %6 ], [ %18, %26 ]
  %16 = phi i32 [ %7, %6 ], [ %28, %26 ]
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %18 = add i64 %17, %15
  %19 = icmp ult i32 %16, 41
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = zext nneg i32 %16 to i64
  %22 = getelementptr i8, ptr %10, i64 %21
  %23 = add nuw nsw i32 %16, 8
  store i32 %23, ptr %3, align 16
  br label %26

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %13, i64 8
  store ptr %25, ptr %8, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %13, %20 ], [ %25, %24 ]
  %28 = phi i32 [ %23, %20 ], [ %16, %24 ]
  %29 = phi ptr [ %22, %20 ], [ %13, %24 ]
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %12, !llvm.loop !57

32:                                               ; preds = %26
  %33 = add i64 %18, 1
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i64 [ 1, %2 ], [ %33, %32 ]
  %36 = call ptr @xmalloc(i64 noundef %35) #15
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  %37 = icmp eq ptr %1, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %40 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  br label %41

41:                                               ; preds = %38, %56
  %42 = phi ptr [ %36, %38 ], [ %45, %56 ]
  %43 = phi ptr [ %1, %38 ], [ %58, %56 ]
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr nonnull align 1 %43, i64 %44, i1 false)
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  %46 = load i32, ptr %4, align 16
  %47 = icmp ult i32 %46, 41
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %40, align 16
  %50 = zext nneg i32 %46 to i64
  %51 = getelementptr i8, ptr %49, i64 %50
  %52 = add nuw nsw i32 %46, 8
  store i32 %52, ptr %4, align 16
  br label %56

53:                                               ; preds = %41
  %54 = load ptr, ptr %39, align 8
  %55 = getelementptr i8, ptr %54, i64 8
  store ptr %55, ptr %39, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi ptr [ %51, %48 ], [ %54, %53 ]
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %41, !llvm.loop !58

60:                                               ; preds = %56, %34
  %61 = phi ptr [ %36, %34 ], [ %45, %56 ]
  store i8 0, ptr %61, align 1, !tbaa !50
  %62 = icmp eq ptr %0, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @free(ptr noundef %0)
  br label %64

64:                                               ; preds = %63, %60
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret ptr %36
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }

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
!35 = !{ptr @concat, ptr @strlen, i64 3440}
!36 = !{ptr @concat, ptr @xmalloc, i64 644}
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
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = distinct !{!58, !55, !56}
!59 = !{!"function_entry_count", i64 644}
!60 = !{!"branch_weights", i32 1, i32 643}
!61 = !{!"branch_weights", i32 1720, i32 0}
!62 = !{!"branch_weights", i32 643, i32 1077}
!63 = !{!"VP", i32 1, i64 1720, i64 1, i64 328, i64 0, i64 316, i64 5, i64 313, i64 4, i64 242}
