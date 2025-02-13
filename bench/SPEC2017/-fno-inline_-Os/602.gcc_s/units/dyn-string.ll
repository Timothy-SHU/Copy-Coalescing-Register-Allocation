; ModuleID = 'dyn-string.c'
source_filename = "dyn-string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dyn_string = type { i32, i32, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_init(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #11
  %6 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !36
  store i32 %3, ptr %0, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !43
  store i8 0, ptr %5, align 1, !tbaa !44
  ret i32 1
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @dyn_string_new(i32 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #11
  %3 = tail call i32 @dyn_string_init(ptr noundef %2, i32 noundef %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @dyn_string_delete(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  tail call void @free(ptr noundef %3) #12
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local ptr @dyn_string_release(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !35 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  tail call void @free(ptr noundef %0) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @dyn_string_resize(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load i32, ptr %0, align 8, !tbaa !42
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %3, %2 ], [ %7, %4 ]
  %6 = icmp sgt i32 %5, %1
  %7 = shl nsw i32 %5, 1
  br i1 %6, label %8, label %4, !llvm.loop !45

8:                                                ; preds = %4
  %9 = icmp eq i32 %5, %3
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  store i32 %5, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = sext i32 %5 to i64
  %14 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %13) #11
  store ptr %14, ptr %11, align 8, !tbaa !36
  br label %15

15:                                               ; preds = %10, %8
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @dyn_string_clear(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !35 {
  %2 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  store i8 0, ptr %3, align 1, !tbaa !44
  %4 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_copy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @abort() #13
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %7) #12
  %9 = icmp eq ptr %0, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %14) #12
  %16 = load i32, ptr %6, align 4, !tbaa !43
  %17 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !43
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
define dso_local noundef i32 @dyn_string_copy_cstr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %4) #12
  %6 = icmp eq ptr %0, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #12
  %11 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %4, ptr %11, align 4, !tbaa !43
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_prepend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call i32 @dyn_string_insert(ptr noundef %0, i32 noundef 0, ptr noundef %1) #12, !range !47
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_insert(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = icmp eq ptr %2, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @abort() #13
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = add nsw i32 %10, %8
  %12 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %11) #12
  %13 = load i32, ptr %7, align 4, !tbaa !43
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
  %23 = load ptr, ptr %18, align 8, !tbaa !36
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !44
  %26 = load i32, ptr %9, align 4, !tbaa !43
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, ptr %23, i64 %22
  %29 = getelementptr i8, ptr %28, i64 %27
  store i8 %25, ptr %29, align 1, !tbaa !44
  %30 = add nsw i64 %22, -1
  %31 = icmp sgt i64 %22, %20
  br i1 %31, label %21, label %32, !llvm.loop !48

32:                                               ; preds = %21, %15
  %33 = phi i64 [ %16, %15 ], [ %20, %21 ]
  %34 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = getelementptr inbounds i8, ptr %35, i64 %33
  %37 = getelementptr inbounds %struct.dyn_string, ptr %2, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  %39 = load i32, ptr %9, align 4, !tbaa !43
  %40 = sext i32 %39 to i64
  %41 = tail call ptr @strncpy(ptr noundef %36, ptr noundef %38, i64 noundef %40) #12
  %42 = load i32, ptr %9, align 4, !tbaa !43
  %43 = load i32, ptr %7, align 4, !tbaa !43
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr %7, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_prepend_cstr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call i32 @dyn_string_insert_cstr(ptr noundef %0, i32 noundef 0, ptr noundef %1) #12, !range !47
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_insert_cstr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !35 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = add nsw i32 %7, %5
  %9 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %8) #12
  %10 = load i32, ptr %6, align 4, !tbaa !43
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
  %22 = load ptr, ptr %15, align 8, !tbaa !36
  %23 = getelementptr inbounds i8, ptr %22, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !44
  %25 = getelementptr i8, ptr %22, i64 %21
  %26 = getelementptr i8, ptr %25, i64 %18
  store i8 %24, ptr %26, align 1, !tbaa !44
  %27 = add nsw i64 %21, -1
  %28 = icmp sgt i64 %21, %19
  br i1 %28, label %20, label %29, !llvm.loop !49

29:                                               ; preds = %20, %12
  %30 = phi i64 [ %13, %12 ], [ %19, %20 ]
  %31 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = getelementptr inbounds i8, ptr %32, i64 %30
  %34 = shl i64 %4, 32
  %35 = ashr exact i64 %34, 32
  %36 = tail call ptr @strncpy(ptr noundef %33, ptr noundef %2, i64 noundef %35) #12
  %37 = load i32, ptr %6, align 4, !tbaa !43
  %38 = add nsw i32 %37, %5
  store i32 %38, ptr %6, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_insert_char(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = add nsw i32 %5, 1
  %7 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %6) #12
  %8 = load i32, ptr %4, align 4, !tbaa !43
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
  %18 = load ptr, ptr %13, align 8, !tbaa !36
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  %20 = load i8, ptr %19, align 1, !tbaa !44
  %21 = getelementptr i8, ptr %19, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !44
  %22 = add nsw i64 %17, -1
  %23 = icmp sgt i64 %17, %15
  br i1 %23, label %16, label %24, !llvm.loop !50

24:                                               ; preds = %16, %10
  %25 = phi i64 [ %11, %10 ], [ %15, %16 ]
  %26 = trunc i32 %2 to i8
  %27 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds i8, ptr %28, i64 %25
  store i8 %26, ptr %29, align 1, !tbaa !44
  %30 = load i32, ptr %4, align 4, !tbaa !43
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %4, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_append(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = add nsw i32 %6, %4
  %8 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %7) #12
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = load i32, ptr %3, align 4, !tbaa !43
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %15) #12
  %17 = load i32, ptr %5, align 4, !tbaa !43
  %18 = load i32, ptr %3, align 4, !tbaa !43
  %19 = add nsw i32 %18, %17
  store i32 %19, ptr %3, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_append_cstr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = add nsw i32 %6, %4
  %8 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %7) #12
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = load i32, ptr %5, align 4, !tbaa !43
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #12
  %15 = load i32, ptr %5, align 4, !tbaa !43
  %16 = add nsw i32 %15, %4
  store i32 %16, ptr %5, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_append_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = add nsw i32 %4, 1
  %6 = tail call ptr @dyn_string_resize(ptr noundef %0, i32 noundef %5) #12
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = load i32, ptr %3, align 4, !tbaa !43
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  store i8 %7, ptr %12, align 1, !tbaa !44
  %13 = load ptr, ptr %8, align 8, !tbaa !36
  %14 = load i32, ptr %3, align 4, !tbaa !43
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, ptr %13, i64 %15
  %17 = getelementptr i8, ptr %16, i64 1
  store i8 0, ptr %17, align 1, !tbaa !44
  %18 = load i32, ptr %3, align 4, !tbaa !43
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4, !tbaa !43
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dyn_string_substring(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = sub i32 %3, %2
  %6 = icmp sgt i32 %2, %3
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !43
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
  %27 = load ptr, ptr %20, align 8, !tbaa !36
  %28 = getelementptr i8, ptr %27, i64 %26
  %29 = getelementptr i8, ptr %28, i64 %23
  %30 = load i8, ptr %29, align 1, !tbaa !44
  %31 = load ptr, ptr %21, align 8, !tbaa !36
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  store i8 %30, ptr %32, align 1, !tbaa !44
  %33 = icmp ugt i64 %25, 1
  br i1 %33, label %24, label %34, !llvm.loop !51

34:                                               ; preds = %24, %17
  %35 = phi i64 [ %18, %17 ], [ %22, %24 ]
  %36 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds i8, ptr %37, i64 %35
  store i8 0, ptr %38, align 1, !tbaa !44
  %39 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  store i32 %5, ptr %39, align 4, !tbaa !43
  br label %40

40:                                               ; preds = %12, %34
  %41 = phi i32 [ 1, %34 ], [ 0, %12 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dyn_string_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !35 {
  %3 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dyn_string, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.dyn_string, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !41, i64 8}
!37 = !{!"dyn_string", !38, i64 0, !38, i64 4, !41, i64 8}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!37, !38, i64 0}
!43 = !{!37, !38, i64 4}
!44 = !{!39, !39, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{i32 0, i32 2}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
