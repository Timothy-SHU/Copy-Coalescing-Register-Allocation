; ModuleID = 'dyn-string.c'
source_filename = "dyn-string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dyn_string = type { i32, i32, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_init(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #11
  %6 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !5
  store i32 %3, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !12
  store i8 0, ptr %5, align 1, !tbaa !13
  ret i32 1
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @dyn_string_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #11
  %3 = tail call i32 @dyn_string_init(ptr noundef %2, i32 noundef %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @dyn_string_delete(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void @free(ptr noundef %3) #12
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local ptr @dyn_string_release(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void @free(ptr noundef %0) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @dyn_string_resize(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !11
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %3, %2 ], [ %7, %4 ]
  %6 = icmp sgt i32 %5, %1
  %7 = shl nsw i32 %5, 1
  br i1 %6, label %8, label %4, !llvm.loop !14

8:                                                ; preds = %4
  %9 = icmp eq i32 %5, %3
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  store i32 %5, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = sext i32 %5 to i64
  %14 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %13) #11
  store ptr %14, ptr %11, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %10, %8
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @dyn_string_clear(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store i8 0, ptr %3, align 1, !tbaa !13
  %4 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_copy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @abort() #13
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %7) #12
  %9 = icmp eq ptr %0, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %14) #12
  %16 = load i32, ptr %6, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !12
  br label %18

18:                                               ; preds = %5, %10
  %19 = phi i32 [ 1, %10 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_copy_cstr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %4) #12
  %6 = icmp eq ptr %0, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #12
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %4, ptr %11, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_prepend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @dyn_string_insert(ptr noundef %0, i32 noundef 0, ptr noundef %1) #12, !range !16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @abort() #13
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !12
  %11 = add nsw i32 %10, %8
  %12 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %11) #12
  %13 = load i32, ptr %7, align 4, !tbaa !12
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = sext i32 %1 to i64
  br label %32

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %19 = sext i32 %13 to i64
  %20 = sext i32 %1 to i64
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi i64 [ %19, %17 ], [ %30, %21 ]
  %23 = load ptr, ptr %18, align 8, !tbaa !5
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = load i32, ptr %9, align 4, !tbaa !12
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, ptr %23, i64 %22
  %29 = getelementptr i8, ptr %28, i64 %27
  store i8 %25, ptr %29, align 1, !tbaa !13
  %30 = add nsw i64 %22, -1
  %31 = icmp sgt i64 %22, %20
  br i1 %31, label %21, label %32, !llvm.loop !17

32:                                               ; preds = %21, %15
  %33 = phi i64 [ %16, %15 ], [ %20, %21 ]
  %34 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds i8, ptr %35, i64 %33
  %37 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i32, ptr %9, align 4, !tbaa !12
  %40 = sext i32 %39 to i64
  %41 = tail call ptr @strncpy(ptr noundef %36, ptr noundef %38, i64 noundef %40) #12
  %42 = load i32, ptr %9, align 4, !tbaa !12
  %43 = load i32, ptr %7, align 4, !tbaa !12
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr %7, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_prepend_cstr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @dyn_string_insert_cstr(ptr noundef %0, i32 noundef 0, ptr noundef %1) #12, !range !16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_insert_cstr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = add nsw i32 %7, %5
  %9 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %8) #12
  %10 = load i32, ptr %6, align 4, !tbaa !12
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = sext i32 %1 to i64
  br label %29

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %16 = sext i32 %10 to i64
  %17 = shl i64 %4, 32
  %18 = ashr exact i64 %17, 32
  %19 = sext i32 %1 to i64
  br label %20

20:                                               ; preds = %14, %20
  %21 = phi i64 [ %16, %14 ], [ %27, %20 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !5
  %23 = getelementptr inbounds i8, ptr %22, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = getelementptr i8, ptr %22, i64 %21
  %26 = getelementptr i8, ptr %25, i64 %18
  store i8 %24, ptr %26, align 1, !tbaa !13
  %27 = add nsw i64 %21, -1
  %28 = icmp sgt i64 %21, %19
  br i1 %28, label %20, label %29, !llvm.loop !18

29:                                               ; preds = %20, %12
  %30 = phi i64 [ %13, %12 ], [ %19, %20 ]
  %31 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds i8, ptr %32, i64 %30
  %34 = shl i64 %4, 32
  %35 = ashr exact i64 %34, 32
  %36 = tail call ptr @strncpy(ptr noundef %33, ptr noundef %2, i64 noundef %35) #12
  %37 = load i32, ptr %6, align 4, !tbaa !12
  %38 = add nsw i32 %37, %5
  store i32 %38, ptr %6, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_insert_char(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = add nsw i32 %5, 1
  %7 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %6) #12
  %8 = load i32, ptr %4, align 4, !tbaa !12
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = sext i32 %1 to i64
  br label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %14 = sext i32 %8 to i64
  %15 = sext i32 %1 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ %14, %12 ], [ %22, %16 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !5
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = getelementptr i8, ptr %19, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !13
  %22 = add nsw i64 %17, -1
  %23 = icmp sgt i64 %17, %15
  br i1 %23, label %16, label %24, !llvm.loop !19

24:                                               ; preds = %16, %10
  %25 = phi i64 [ %11, %10 ], [ %15, %16 ]
  %26 = trunc i32 %2 to i8
  %27 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds i8, ptr %28, i64 %25
  store i8 %26, ptr %29, align 1, !tbaa !13
  %30 = load i32, ptr %4, align 4, !tbaa !12
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %4, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_append(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = add nsw i32 %6, %4
  %8 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %7) #12
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i32, ptr %3, align 4, !tbaa !12
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %15) #12
  %17 = load i32, ptr %5, align 4, !tbaa !12
  %18 = load i32, ptr %3, align 4, !tbaa !12
  %19 = add nsw i32 %18, %17
  store i32 %19, ptr %3, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_append_cstr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = add nsw i32 %6, %4
  %8 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %7) #12
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i32, ptr %5, align 4, !tbaa !12
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #12
  %15 = load i32, ptr %5, align 4, !tbaa !12
  %16 = add nsw i32 %15, %4
  store i32 %16, ptr %5, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_append_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = add nsw i32 %4, 1
  %6 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %5) #12
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i32, ptr %3, align 4, !tbaa !12
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  store i8 %7, ptr %12, align 1, !tbaa !13
  %13 = load ptr, ptr %8, align 8, !tbaa !5
  %14 = load i32, ptr %3, align 4, !tbaa !12
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, ptr %13, i64 %15
  %17 = getelementptr i8, ptr %16, i64 1
  store i8 0, ptr %17, align 1, !tbaa !13
  %18 = load i32, ptr %3, align 4, !tbaa !12
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4, !tbaa !12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_substring(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub i32 %3, %2
  %6 = icmp sgt i32 %2, %3
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = icmp slt i32 %9, %3
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %4
  tail call void @abort() #13
  unreachable

12:                                               ; preds = %7
  %13 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %5) #12
  %14 = icmp eq ptr %0, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = icmp sgt i32 %5, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = sext i32 %5 to i64
  br label %34

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %22 = zext nneg i32 %5 to i64
  %23 = sext i32 %2 to i64
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %22, %19 ], [ %26, %24 ]
  %26 = add nsw i64 %25, -1
  %27 = load ptr, ptr %20, align 8, !tbaa !5
  %28 = getelementptr i8, ptr %27, i64 %26
  %29 = getelementptr i8, ptr %28, i64 %23
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = load ptr, ptr %21, align 8, !tbaa !5
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  store i8 %30, ptr %32, align 1, !tbaa !13
  %33 = icmp ugt i64 %25, 1
  br i1 %33, label %24, label %34, !llvm.loop !20

34:                                               ; preds = %24, %17
  %35 = phi i64 [ %18, %17 ], [ %22, %24 ]
  %36 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, ptr %37, i64 %35
  store i8 0, ptr %38, align 1, !tbaa !13
  %39 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %5, ptr %39, align 4, !tbaa !12
  br label %40

40:                                               ; preds = %12, %34
  %41 = phi i32 [ 1, %34 ], [ 0, %12 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dyn_string_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi i32 [ %15, %8 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"dyn_string", !7, i64 0, !7, i64 4, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 4}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i32 0, i32 2}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
