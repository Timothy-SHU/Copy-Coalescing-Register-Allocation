; ModuleID = 'dyn-string.c'
source_filename = "dyn-string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dyn_string = type { i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !50

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_init(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #17
  %6 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !53
  store i32 %3, ptr %0, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !56
  store i8 0, ptr %5, align 1, !tbaa !46
  ret i32 1
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @dyn_string_new(i32 noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #17
  %3 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #17
  %6 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !53
  store i32 %3, ptr %2, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !56
  store i8 0, ptr %5, align 1, !tbaa !46
  ret ptr %2
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @dyn_string_delete(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local ptr @dyn_string_release(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  store ptr null, ptr %2, align 8, !tbaa !53
  tail call void @free(ptr noundef %0)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @dyn_string_resize(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !55
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %3, %2 ], [ %7, %4 ]
  %6 = icmp sgt i32 %5, %1
  %7 = shl nsw i32 %5, 1
  br i1 %6, label %8, label %4, !llvm.loop !57

8:                                                ; preds = %4
  %9 = icmp eq i32 %5, %3
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  store i32 %5, ptr %0, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = sext i32 %5 to i64
  %14 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %13) #17
  store ptr %14, ptr %11, align 8, !tbaa !53
  br label %15

15:                                               ; preds = %10, %8
  ret ptr %0
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @dyn_string_clear(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  store i8 0, ptr %3, align 1, !tbaa !46
  %4 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !56
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_copy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @abort() #18
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = load i32, ptr %0, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %8, %5 ], [ %12, %9 ]
  %11 = icmp sgt i32 %10, %7
  %12 = shl nsw i32 %10, 1
  br i1 %11, label %13, label %9, !llvm.loop !57

13:                                               ; preds = %9
  %14 = icmp eq i32 %10, %8
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  store i32 %10, ptr %0, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = sext i32 %10 to i64
  %19 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %18) #17
  store ptr %19, ptr %16, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %15, %13
  %21 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %24)
  %26 = load i32, ptr %6, align 4, !tbaa !56
  %27 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_copy_cstr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr %0, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %5, %2 ], [ %9, %6 ]
  %8 = icmp sgt i32 %7, %4
  %9 = shl nsw i32 %7, 1
  br i1 %8, label %10, label %6, !llvm.loop !57

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, %5
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  store i32 %7, ptr %0, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = sext i32 %7 to i64
  %16 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %15) #17
  store ptr %16, ptr %13, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %12, %10
  %18 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1)
  %21 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %4, ptr %21, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_prepend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = tail call i32 @dyn_string_insert(ptr noundef %0, i32 noundef 0, ptr noundef %1), !range !58
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #7 !prof !34 {
  %4 = icmp eq ptr %2, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @abort() #18
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = add nsw i32 %10, %8
  %12 = load i32, ptr %0, align 8, !tbaa !55
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i32 [ %12, %6 ], [ %16, %13 ]
  %15 = icmp sgt i32 %14, %11
  %16 = shl nsw i32 %14, 1
  br i1 %15, label %17, label %13, !llvm.loop !57

17:                                               ; preds = %13
  %18 = icmp eq i32 %14, %12
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  store i32 %14, ptr %0, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = sext i32 %14 to i64
  %23 = tail call ptr @xrealloc(ptr noundef %21, i64 noundef %22) #17
  store ptr %23, ptr %20, align 8, !tbaa !53
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, ptr %7, align 4, !tbaa !56
  %26 = icmp slt i32 %25, %1
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %29 = sext i32 %25 to i64
  %30 = sext i32 %1 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ %29, %27 ], [ %40, %31 ]
  %33 = load ptr, ptr %28, align 8, !tbaa !53
  %34 = getelementptr inbounds i8, ptr %33, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !46
  %36 = load i32, ptr %9, align 4, !tbaa !56
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, ptr %33, i64 %32
  %39 = getelementptr i8, ptr %38, i64 %37
  store i8 %35, ptr %39, align 1, !tbaa !46
  %40 = add nsw i64 %32, -1
  %41 = icmp sgt i64 %32, %30
  br i1 %41, label %31, label %42, !llvm.loop !59

42:                                               ; preds = %31, %24
  %43 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = sext i32 %1 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  %49 = load i32, ptr %9, align 4, !tbaa !56
  %50 = sext i32 %49 to i64
  %51 = tail call ptr @strncpy(ptr noundef %46, ptr noundef %48, i64 noundef %50)
  %52 = load i32, ptr %9, align 4, !tbaa !56
  %53 = load i32, ptr %7, align 4, !tbaa !56
  %54 = add nsw i32 %53, %52
  store i32 %54, ptr %7, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_prepend_cstr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = tail call i32 @dyn_string_insert_cstr(ptr noundef %0, i32 noundef 0, ptr noundef %1), !range !58
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_insert_cstr(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 !prof !34 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = add nsw i32 %7, %5
  %9 = load i32, ptr %0, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi i32 [ %9, %3 ], [ %13, %10 ]
  %12 = icmp sgt i32 %11, %8
  %13 = shl nsw i32 %11, 1
  br i1 %12, label %14, label %10, !llvm.loop !57

14:                                               ; preds = %10
  %15 = icmp eq i32 %11, %9
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  store i32 %11, ptr %0, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = sext i32 %11 to i64
  %20 = tail call ptr @xrealloc(ptr noundef %18, i64 noundef %19) #17
  store ptr %20, ptr %17, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i32, ptr %6, align 4, !tbaa !56
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %26 = sext i32 %22 to i64
  %27 = shl i64 %4, 32
  %28 = ashr exact i64 %27, 32
  %29 = sext i32 %1 to i64
  br label %30

30:                                               ; preds = %24, %30
  %31 = phi i64 [ %26, %24 ], [ %37, %30 ]
  %32 = load ptr, ptr %25, align 8, !tbaa !53
  %33 = getelementptr inbounds i8, ptr %32, i64 %31
  %34 = load i8, ptr %33, align 1, !tbaa !46
  %35 = getelementptr i8, ptr %32, i64 %31
  %36 = getelementptr i8, ptr %35, i64 %28
  store i8 %34, ptr %36, align 1, !tbaa !46
  %37 = add nsw i64 %31, -1
  %38 = icmp sgt i64 %31, %29
  br i1 %38, label %30, label %39, !llvm.loop !60

39:                                               ; preds = %30, %21
  %40 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = shl i64 %4, 32
  %45 = ashr exact i64 %44, 32
  %46 = tail call ptr @strncpy(ptr noundef %43, ptr noundef %2, i64 noundef %45)
  %47 = load i32, ptr %6, align 4, !tbaa !56
  %48 = add nsw i32 %47, %5
  store i32 %48, ptr %6, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_insert_char(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !34 {
  %4 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = add nsw i32 %5, 1
  %7 = load i32, ptr %0, align 8, !tbaa !55
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %7, %3 ], [ %11, %8 ]
  %10 = icmp sgt i32 %9, %6
  %11 = shl nsw i32 %9, 1
  br i1 %10, label %12, label %8, !llvm.loop !57

12:                                               ; preds = %8
  %13 = icmp eq i32 %9, %7
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  store i32 %9, ptr %0, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = sext i32 %9 to i64
  %18 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %17) #17
  store ptr %18, ptr %15, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, ptr %4, align 4, !tbaa !56
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %24 = sext i32 %20 to i64
  %25 = sext i32 %1 to i64
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ %24, %22 ], [ %32, %26 ]
  %28 = load ptr, ptr %23, align 8, !tbaa !53
  %29 = getelementptr inbounds i8, ptr %28, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = getelementptr i8, ptr %29, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !46
  %32 = add nsw i64 %27, -1
  %33 = icmp sgt i64 %27, %25
  br i1 %33, label %26, label %34, !llvm.loop !61

34:                                               ; preds = %26, %19
  %35 = trunc i32 %2 to i8
  %36 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %35, ptr %39, align 1, !tbaa !46
  %40 = load i32, ptr %4, align 4, !tbaa !56
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = add nsw i32 %6, %4
  %8 = load i32, ptr %0, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %8, %2 ], [ %12, %9 ]
  %11 = icmp sgt i32 %10, %7
  %12 = shl nsw i32 %10, 1
  br i1 %11, label %13, label %9, !llvm.loop !57

13:                                               ; preds = %9
  %14 = icmp eq i32 %10, %8
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  store i32 %10, ptr %0, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = sext i32 %10 to i64
  %19 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %18) #17
  store ptr %19, ptr %16, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %15, %13
  %21 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = load i32, ptr %3, align 4, !tbaa !56
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %27)
  %29 = load i32, ptr %5, align 4, !tbaa !56
  %30 = load i32, ptr %3, align 4, !tbaa !56
  %31 = add nsw i32 %30, %29
  store i32 %31, ptr %3, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_append_cstr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = add nsw i32 %6, %4
  %8 = load i32, ptr %0, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %8, %2 ], [ %12, %9 ]
  %11 = icmp sgt i32 %10, %7
  %12 = shl nsw i32 %10, 1
  br i1 %11, label %13, label %9, !llvm.loop !57

13:                                               ; preds = %9
  %14 = icmp eq i32 %10, %8
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  store i32 %10, ptr %0, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = sext i32 %10 to i64
  %19 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %18) #17
  store ptr %19, ptr %16, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %15, %13
  %21 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = load i32, ptr %5, align 4, !tbaa !56
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1)
  %27 = load i32, ptr %5, align 4, !tbaa !56
  %28 = add nsw i32 %27, %4
  store i32 %28, ptr %5, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_append_char(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = add nsw i32 %4, 1
  %6 = load i32, ptr %0, align 8, !tbaa !55
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %6, %2 ], [ %10, %7 ]
  %9 = icmp sgt i32 %8, %5
  %10 = shl nsw i32 %8, 1
  br i1 %9, label %11, label %7, !llvm.loop !57

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, %6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  store i32 %8, ptr %0, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = sext i32 %8 to i64
  %17 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %16) #17
  store ptr %17, ptr %14, align 8, !tbaa !53
  br label %18

18:                                               ; preds = %13, %11
  %19 = trunc i32 %1 to i8
  %20 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = load i32, ptr %3, align 4, !tbaa !56
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  store i8 %19, ptr %24, align 1, !tbaa !46
  %25 = load ptr, ptr %20, align 8, !tbaa !53
  %26 = load i32, ptr %3, align 4, !tbaa !56
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, ptr %25, i64 %27
  %29 = getelementptr i8, ptr %28, i64 1
  store i8 0, ptr %29, align 1, !tbaa !46
  %30 = load i32, ptr %3, align 4, !tbaa !56
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %3, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dyn_string_substring(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 !prof !34 {
  %5 = sub i32 %3, %2
  %6 = icmp sgt i32 %2, %3
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = icmp slt i32 %9, %2
  %11 = icmp slt i32 %9, %3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %4
  tail call void @abort() #18
  unreachable

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !55
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %15, %14 ], [ %19, %16 ]
  %18 = icmp sgt i32 %17, %5
  %19 = shl nsw i32 %17, 1
  br i1 %18, label %20, label %16, !llvm.loop !57

20:                                               ; preds = %16
  %21 = icmp eq i32 %17, %15
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  store i32 %17, ptr %0, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = sext i32 %17 to i64
  %26 = tail call ptr @xrealloc(ptr noundef %24, i64 noundef %25) #17
  store ptr %26, ptr %23, align 8, !tbaa !53
  br label %27

27:                                               ; preds = %20, %22
  %28 = icmp sgt i32 %5, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %31 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %32 = zext nneg i32 %5 to i64
  %33 = sext i32 %2 to i64
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %32, %29 ], [ %36, %34 ]
  %36 = add nsw i64 %35, -1
  %37 = load ptr, ptr %30, align 8, !tbaa !53
  %38 = getelementptr i8, ptr %37, i64 %36
  %39 = getelementptr i8, ptr %38, i64 %33
  %40 = load i8, ptr %39, align 1, !tbaa !46
  %41 = load ptr, ptr %31, align 8, !tbaa !53
  %42 = getelementptr inbounds i8, ptr %41, i64 %36
  store i8 %40, ptr %42, align 1, !tbaa !46
  %43 = icmp sgt i64 %35, 1
  br i1 %43, label %34, label %44, !llvm.loop !62

44:                                               ; preds = %34, %27
  %45 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = sext i32 %5 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !46
  %49 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %5, ptr %49, align 4, !tbaa !56
  ret i32 1
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dyn_string_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !34 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi i32 [ %15, %8 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !36, i64 8}
!54 = !{!"dyn_string", !41, i64 0, !41, i64 4, !36, i64 8}
!55 = !{!54, !41, i64 0}
!56 = !{!54, !41, i64 4}
!57 = distinct !{!57, !51, !52}
!58 = !{i32 0, i32 2}
!59 = distinct !{!59, !51, !52}
!60 = distinct !{!60, !51, !52}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51, !52}
