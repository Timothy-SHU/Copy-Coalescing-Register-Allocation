; ModuleID = 'blender/source/blender/blenlib/intern/string.c'
source_filename = "blender/source/blender/blenlib/intern/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"strdupcat\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%.2d:%.2d:%.2d.%.2d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%.2d:%.2d.%.2d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_strdupn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = add i64 %1, 1
  %5 = tail call ptr %3(i64 noundef %4, ptr noundef nonnull @.str) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %1, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i64 %1
  store i8 0, ptr %6, align 1, !tbaa !38
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = add i64 %2, 1
  %5 = tail call ptr %3(i64 noundef %4, ptr noundef nonnull @.str) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %2, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i64 %2
  store i8 0, ptr %6, align 1, !tbaa !38
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_strdupcat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = add i64 %4, 1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = add i64 %5, %3
  %8 = tail call ptr %6(i64 noundef %7, ptr noundef nonnull @.str.1) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %0, i64 %3, i1 false)
  %9 = getelementptr inbounds i8, ptr %8, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %1, i64 %5, i1 false)
  ret ptr %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strncpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %11
  %7 = phi i64 [ %12, %11 ], [ 0, %3 ]
  %8 = phi ptr [ %13, %11 ], [ %1, %3 ]
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = add nuw i64 %7, 1
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = icmp eq i64 %12, %4
  br i1 %14, label %15, label %6, !llvm.loop !39

15:                                               ; preds = %6, %11, %3
  %16 = phi i64 [ 0, %3 ], [ %7, %6 ], [ %4, %11 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %16, i1 false)
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !38
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strnlen(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi i64 [ %10, %9 ], [ 0, %2 ]
  %6 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = add nuw i64 %5, 1
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  %12 = icmp eq i64 %10, %1
  br i1 %12, label %13, label %4, !llvm.loop !39

13:                                               ; preds = %9, %4, %2
  %14 = phi i64 [ 0, %2 ], [ %1, %9 ], [ %5, %4 ]
  ret i64 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strncpy_rlen(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %11
  %7 = phi i64 [ %12, %11 ], [ 0, %3 ]
  %8 = phi ptr [ %13, %11 ], [ %1, %3 ]
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = add nuw i64 %7, 1
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = icmp eq i64 %12, %4
  br i1 %14, label %15, label %6, !llvm.loop !39

15:                                               ; preds = %6, %11, %3
  %16 = phi i64 [ 0, %3 ], [ %7, %6 ], [ %4, %11 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %16, i1 false)
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !38
  ret i64 %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @BLI_strcpy_rlen(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = add i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret i64 %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @BLI_vsnprintf(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #7 {
  %5 = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #18
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, %1
  %8 = getelementptr i8, ptr %0, i64 %1
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = getelementptr inbounds i8, ptr %0, i64 %6
  %11 = select i1 %7, ptr %10, ptr %9
  store i8 0, ptr %11, align 1, !tbaa !38
  ret i64 %6
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @BLI_snprintf(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #7 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #18
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 %6
  %9 = getelementptr i8, ptr %0, i64 %1
  %10 = getelementptr i8, ptr %9, i64 -1
  %11 = select i1 %7, ptr %8, ptr %10
  store i8 0, ptr %11, align 1, !tbaa !38
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret i64 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_sprintfN(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @BLI_dynstr_new() #18
  call void @BLI_dynstr_vappendf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #18
  %4 = call ptr @BLI_dynstr_get_cstring(ptr noundef %3) #18
  call void @BLI_dynstr_free(ptr noundef %3) #18
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret ptr %4
}

declare ptr @BLI_dynstr_new() local_unnamed_addr #10

declare void @BLI_dynstr_vappendf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #10

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strescape(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3, %19
  %6 = phi i64 [ %24, %19 ], [ 0, %3 ]
  %7 = phi ptr [ %22, %19 ], [ %0, %3 ]
  %8 = phi ptr [ %23, %19 ], [ %1, %3 ]
  %9 = load i8, ptr %8, align 1, !tbaa !38
  switch i8 %9, label %15 [
    i8 0, label %26
    i8 92, label %10
    i8 34, label %10
    i8 9, label %10
    i8 10, label %10
    i8 13, label %10
  ]

10:                                               ; preds = %5, %5, %5, %5, %5
  %11 = add i64 %6, 1
  %12 = icmp ult i64 %11, %2
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 92, ptr %7, align 1, !tbaa !38
  br label %15

15:                                               ; preds = %5, %13
  %16 = phi ptr [ %7, %5 ], [ %14, %13 ]
  %17 = phi i64 [ %6, %5 ], [ %11, %13 ]
  %18 = load i8, ptr %8, align 1, !tbaa !38
  store i8 %18, ptr %16, align 1, !tbaa !38
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi ptr [ %16, %15 ], [ %7, %10 ]
  %21 = phi i64 [ %17, %15 ], [ %6, %10 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = getelementptr inbounds i8, ptr %8, i64 1
  %24 = add i64 %21, 1
  %25 = icmp ult i64 %24, %2
  br i1 %25, label %5, label %26, !llvm.loop !42

26:                                               ; preds = %5, %19, %3
  %27 = phi ptr [ %0, %3 ], [ %7, %5 ], [ %22, %19 ]
  %28 = phi i64 [ 0, %3 ], [ %6, %5 ], [ %24, %19 ]
  store i8 0, ptr %27, align 1, !tbaa !38
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_str_quoted_substrN(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = getelementptr inbounds i8, ptr %4, i64 %3
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 34) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2, %14
  %10 = phi ptr [ %16, %14 ], [ %7, %2 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = icmp eq i8 %12, 92
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  %16 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 34) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %9, !llvm.loop !43

18:                                               ; preds = %9
  %19 = ptrtoint ptr %10 to i64
  %20 = ptrtoint ptr %6 to i64
  %21 = sub i64 %19, %20
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %23 = add i64 %21, 1
  %24 = tail call ptr %22(i64 noundef %23, ptr noundef nonnull @.str) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr nonnull align 1 %6, i64 %21, i1 false)
  %25 = getelementptr inbounds i8, ptr %24, i64 %21
  br label %29

26:                                               ; preds = %14, %2
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 1, ptr noundef nonnull @.str) #18
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi ptr [ %28, %26 ], [ %25, %18 ]
  %31 = phi ptr [ %28, %26 ], [ %24, %18 ]
  store i8 0, ptr %30, align 1, !tbaa !38
  ret ptr %31
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_replacestrN(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %25, %22 ], [ %5, %3 ]
  %9 = phi ptr [ %24, %22 ], [ %0, %3 ]
  %10 = phi ptr [ %15, %22 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call ptr @BLI_dynstr_new() #18
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  %16 = icmp eq ptr %9, %8
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = ptrtoint ptr %8 to i64
  %19 = ptrtoint ptr %9 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  tail call void @BLI_dynstr_nappend(ptr noundef %15, ptr noundef %9, i32 noundef %21) #18
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi ptr [ %8, %17 ], [ %9, %14 ]
  tail call void @BLI_dynstr_append(ptr noundef %15, ptr noundef %2) #18
  %24 = getelementptr inbounds i8, ptr %23, i64 %4
  %25 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %1) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !44

27:                                               ; preds = %22, %3
  %28 = phi ptr [ null, %3 ], [ %15, %22 ]
  %29 = phi ptr [ %0, %3 ], [ %24, %22 ]
  %30 = icmp eq ptr %28, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void @BLI_dynstr_append(ptr noundef nonnull %28, ptr noundef %29) #18
  %32 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef nonnull %28) #18
  tail call void @BLI_dynstr_free(ptr noundef nonnull %28) #18
  br label %39

33:                                               ; preds = %27
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #19
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %36 = add i64 %34, 1
  %37 = tail call ptr %35(i64 noundef %36, ptr noundef nonnull @.str) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %29, i64 %34, i1 false)
  %38 = getelementptr inbounds i8, ptr %37, i64 %34
  store i8 0, ptr %38, align 1, !tbaa !38
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi ptr [ %32, %31 ], [ %37, %33 ]
  ret ptr %40
}

declare void @BLI_dynstr_nappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_strcaseeq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call ptr @__ctype_tolower_loc() #20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load i8, ptr %0, align 1, !tbaa !38
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = load i8, ptr %1, align 1, !tbaa !38
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, ptr %4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = and i32 %8, 255
  %14 = and i32 %12, 255
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %31, label %35

16:                                               ; preds = %31
  %17 = add nuw i64 %32, 1
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i32, ptr %4, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = getelementptr inbounds i8, ptr %1, i64 %17
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !45
  %28 = and i32 %22, 255
  %29 = and i32 %27, 255
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35, !llvm.loop !47

31:                                               ; preds = %2, %16
  %32 = phi i64 [ %17, %16 ], [ 0, %2 ]
  %33 = phi i32 [ %28, %16 ], [ %13, %2 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %16

35:                                               ; preds = %31, %16, %2
  %36 = phi i32 [ 0, %2 ], [ 1, %31 ], [ 0, %16 ]
  ret i32 %36
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_strcasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call ptr @__ctype_tolower_loc() #20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load i8, ptr %0, align 1, !tbaa !38
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = load i8, ptr %1, align 1, !tbaa !38
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, ptr %4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = and i32 %8, 255
  %14 = and i32 %12, 255
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %38, label %31

16:                                               ; preds = %36
  %17 = add nuw i64 %32, 1
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i32, ptr %4, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = getelementptr inbounds i8, ptr %1, i64 %17
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !45
  %28 = and i32 %22, 255
  %29 = and i32 %27, 255
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %38, label %31, !llvm.loop !47

31:                                               ; preds = %2, %16
  %32 = phi i64 [ %17, %16 ], [ 0, %2 ]
  %33 = phi i32 [ %29, %16 ], [ %14, %2 ]
  %34 = phi i32 [ %28, %16 ], [ %13, %2 ]
  %35 = icmp ugt i32 %34, %33
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %16

38:                                               ; preds = %16, %31, %36, %2
  %39 = phi i32 [ -1, %2 ], [ -1, %16 ], [ 1, %31 ], [ 0, %36 ]
  ret i32 %39
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strcasestr(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %1, align 1, !tbaa !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__ctype_tolower_loc() #20
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = zext i8 %4 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  %13 = icmp eq i64 %12, 0
  br label %14

14:                                               ; preds = %26, %6
  %15 = phi ptr [ %0, %6 ], [ %19, %26 ]
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = zext i8 %16 to i64
  %21 = getelementptr inbounds i32, ptr %8, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = xor i32 %22, %11
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %28, %18
  br label %14, !llvm.loop !48

27:                                               ; preds = %18
  br i1 %13, label %48, label %28, !llvm.loop !49

28:                                               ; preds = %27, %43
  %29 = phi i64 [ %45, %43 ], [ 0, %27 ]
  %30 = getelementptr inbounds i8, ptr %19, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i32, ptr %8, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !45
  %35 = getelementptr inbounds i8, ptr %3, i64 %29
  %36 = load i8, ptr %35, align 1, !tbaa !38
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, ptr %8, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !45
  %40 = and i32 %34, 255
  %41 = and i32 %39, 255
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %26

43:                                               ; preds = %28
  %44 = icmp ne i32 %40, 0
  %45 = add nuw i64 %29, 1
  %46 = icmp ult i64 %45, %12
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %28, label %48, !llvm.loop !50

48:                                               ; preds = %27, %14, %43, %2
  %49 = phi ptr [ %0, %2 ], [ %15, %43 ], [ %15, %27 ], [ null, %14 ]
  ret ptr %49
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_strncasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_tolower_loc() #20
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %25, %5
  %9 = phi i64 [ 0, %5 ], [ %27, %25 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !38
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds i8, ptr %1, i64 %9
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = and i32 %14, 255
  %21 = and i32 %19, 255
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %8
  %24 = icmp ugt i32 %20, %21
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32 %20, 0
  %27 = add nuw i64 %9, 1
  %28 = icmp eq i64 %27, %2
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %8, !llvm.loop !50

30:                                               ; preds = %8, %23, %25, %3
  %31 = phi i32 [ 0, %3 ], [ -1, %8 ], [ 1, %23 ], [ 0, %25 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_natstrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = tail call ptr @__ctype_tolower_loc() #20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @__ctype_b_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %178, %2
  %8 = phi i32 [ 0, %2 ], [ %157, %178 ]
  %9 = phi i32 [ 0, %2 ], [ %180, %178 ]
  %10 = phi i32 [ 0, %2 ], [ %179, %178 ]
  %11 = phi i32 [ undef, %2 ], [ %162, %178 ]
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !38
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i32, ptr %4, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !38
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i32, ptr %4, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !45
  %24 = and i32 %17, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %6, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !51
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %156, label %30

30:                                               ; preds = %7
  %31 = and i32 %23, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds i16, ptr %6, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !51
  %35 = and i16 %34, 2048
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %156, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr %13, align 1, !tbaa !38
  %39 = icmp eq i8 %38, 48
  br i1 %39, label %45, label %40

40:                                               ; preds = %45, %37
  %41 = phi ptr [ %13, %37 ], [ %48, %45 ]
  %42 = phi i32 [ 0, %37 ], [ %49, %45 ]
  %43 = load i8, ptr %19, align 1, !tbaa !38
  %44 = icmp eq i8 %43, 48
  br i1 %44, label %68, label %52

45:                                               ; preds = %37, %45
  %46 = phi i32 [ %49, %45 ], [ 0, %37 ]
  %47 = phi ptr [ %48, %45 ], [ %13, %37 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  %49 = add nuw nsw i32 %46, 1
  %50 = load i8, ptr %48, align 1, !tbaa !38
  %51 = icmp eq i8 %50, 48
  br i1 %51, label %45, label %40, !llvm.loop !53

52:                                               ; preds = %68, %40
  %53 = phi ptr [ %19, %40 ], [ %71, %68 ]
  %54 = phi i32 [ 0, %40 ], [ %72, %68 ]
  %55 = load i8, ptr %41, align 1, !tbaa !38
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i16, ptr %6, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !51
  %59 = and i16 %58, 2048
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %52
  %62 = load i8, ptr %53, align 1, !tbaa !38
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i16, ptr %6, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !51
  %66 = and i16 %65, 2048
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %83, label %97

68:                                               ; preds = %40, %68
  %69 = phi i32 [ %72, %68 ], [ 0, %40 ]
  %70 = phi ptr [ %71, %68 ], [ %19, %40 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = add nuw nsw i32 %69, 1
  %73 = load i8, ptr %71, align 1, !tbaa !38
  %74 = icmp eq i8 %73, 48
  br i1 %74, label %68, label %52, !llvm.loop !54

75:                                               ; preds = %97
  %76 = getelementptr inbounds i8, ptr %53, i64 %99
  %77 = load i8, ptr %76, align 1, !tbaa !38
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i16, ptr %6, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !51
  %81 = and i16 %80, 2048
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %97, !llvm.loop !55

83:                                               ; preds = %75, %61
  %84 = phi i64 [ 0, %61 ], [ %99, %75 ]
  %85 = phi i1 [ %60, %61 ], [ %106, %75 ]
  %86 = trunc i64 %84 to i32
  br i1 %85, label %87, label %119

87:                                               ; preds = %97, %52, %83
  %88 = phi i32 [ %86, %83 ], [ 0, %52 ], [ 1, %97 ]
  %89 = phi i64 [ %84, %83 ], [ 0, %52 ], [ %99, %97 ]
  %90 = getelementptr inbounds i8, ptr %53, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !38
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds i16, ptr %6, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !51
  %95 = and i16 %94, 2048
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %107, label %119

97:                                               ; preds = %61, %75
  %98 = phi i64 [ %99, %75 ], [ 0, %61 ]
  %99 = add nuw i64 %98, 1
  %100 = getelementptr inbounds i8, ptr %41, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !38
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i16, ptr %6, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !51
  %105 = and i16 %104, 2048
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %87, label %75, !llvm.loop !55

107:                                              ; preds = %87
  %108 = icmp eq i32 %88, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  %110 = tail call i32 @strncmp(ptr noundef nonnull %41, ptr noundef nonnull %53, i64 noundef %89) #19
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109, %107
  %113 = icmp eq i32 %8, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = icmp ugt i32 %42, %54
  br i1 %115, label %119, label %116

116:                                              ; preds = %114
  %117 = icmp ult i32 %42, %54
  %118 = select i1 %117, i32 -1, i32 %8
  br label %119

119:                                              ; preds = %116, %114, %83, %87, %109, %112
  %120 = phi i32 [ %8, %112 ], [ %8, %109 ], [ %8, %87 ], [ %8, %83 ], [ 1, %114 ], [ %118, %116 ]
  %121 = phi i32 [ 0, %112 ], [ %110, %109 ], [ -1, %87 ], [ 1, %83 ], [ 0, %114 ], [ 0, %116 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %119, %123
  %124 = phi i64 [ %125, %123 ], [ %12, %119 ]
  %125 = add i64 %124, 1
  %126 = getelementptr inbounds i8, ptr %0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !38
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i16, ptr %6, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !51
  %131 = and i16 %130, 2048
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %123, !llvm.loop !56

133:                                              ; preds = %123, %133
  %134 = phi i64 [ %135, %133 ], [ %18, %123 ]
  %135 = add i64 %134, 1
  %136 = getelementptr inbounds i8, ptr %1, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !38
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds i16, ptr %6, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !51
  %141 = and i16 %140, 2048
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %133, !llvm.loop !57

143:                                              ; preds = %133
  %144 = trunc i64 %125 to i32
  %145 = trunc i64 %135 to i32
  %146 = getelementptr inbounds i32, ptr %4, i64 %128
  %147 = load i32, ptr %146, align 4, !tbaa !45
  %148 = getelementptr inbounds i32, ptr %4, i64 %138
  %149 = load i32, ptr %148, align 4, !tbaa !45
  br label %150

150:                                              ; preds = %119, %143
  %151 = phi i32 [ %149, %143 ], [ %23, %119 ]
  %152 = phi i32 [ %147, %143 ], [ %17, %119 ]
  %153 = phi i32 [ %145, %143 ], [ %9, %119 ]
  %154 = phi i32 [ %144, %143 ], [ %10, %119 ]
  %155 = phi i32 [ %11, %143 ], [ %121, %119 ]
  br i1 %122, label %156, label %185

156:                                              ; preds = %150, %30, %7
  %157 = phi i32 [ %8, %7 ], [ %8, %30 ], [ %120, %150 ]
  %158 = phi i32 [ %23, %7 ], [ %23, %30 ], [ %151, %150 ]
  %159 = phi i32 [ %17, %7 ], [ %17, %30 ], [ %152, %150 ]
  %160 = phi i32 [ %9, %7 ], [ %9, %30 ], [ %153, %150 ]
  %161 = phi i32 [ %10, %7 ], [ %10, %30 ], [ %154, %150 ]
  %162 = phi i32 [ %11, %7 ], [ %11, %30 ], [ %155, %150 ]
  %163 = and i32 %159, 255
  %164 = icmp eq i32 %163, 46
  %165 = and i32 %158, 255
  %166 = icmp ne i32 %165, 46
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %185, label %168

168:                                              ; preds = %156
  %169 = icmp ne i32 %163, 46
  %170 = icmp eq i32 %165, 46
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %185, label %172

172:                                              ; preds = %168
  %173 = icmp ult i32 %163, %165
  br i1 %173, label %185, label %174

174:                                              ; preds = %172
  %175 = icmp ugt i32 %163, %165
  br i1 %175, label %185, label %176

176:                                              ; preds = %174
  %177 = icmp eq i32 %163, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %176
  %179 = add nsw i32 %161, 1
  %180 = add nsw i32 %160, 1
  br label %7, !llvm.loop !58

181:                                              ; preds = %176
  %182 = icmp eq i32 %157, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %181
  %184 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  br label %185

185:                                              ; preds = %174, %172, %168, %156, %150, %181, %183
  %186 = phi i32 [ %184, %183 ], [ %157, %181 ], [ %155, %150 ], [ -1, %156 ], [ 1, %168 ], [ -1, %172 ], [ 1, %174 ]
  ret i32 %186
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @BLI_timestr(double noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = fptosi double %0 to i32
  %5 = sdiv i32 %4, 60
  %6 = srem i32 %5, 60
  %7 = srem i32 %4, 60
  %8 = fmul double %0, 1.000000e+02
  %9 = fptosi double %8 to i32
  %10 = srem i32 %9, 100
  %11 = add i32 %4, 3599
  %12 = icmp ult i32 %11, 7199
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = sdiv i32 %4, 3600
  %15 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %6, i32 noundef %7, i32 noundef %10), !range !59
  br label %18

16:                                               ; preds = %3
  %17 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %7, i32 noundef %10), !range !59
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_ascii_strtolower(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #15 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %14
  %5 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = add i8 %7, -65
  %11 = icmp ult i8 %10, 26
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = or disjoint i8 %7, 32
  store i8 %13, ptr %6, align 1, !tbaa !38
  br label %14

14:                                               ; preds = %9, %12
  %15 = add nuw i64 %5, 1
  %16 = icmp eq i64 %15, %1
  br i1 %16, label %17, label %4, !llvm.loop !60

17:                                               ; preds = %4, %14, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_ascii_strtoupper(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #15 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %14
  %5 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = add i8 %7, -97
  %11 = icmp ult i8 %10, 26
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nsw i8 %7, -32
  store i8 %13, ptr %6, align 1, !tbaa !38
  br label %14

14:                                               ; preds = %9, %12
  %15 = add nuw i64 %5, 1
  %16 = icmp eq i64 %15, %1
  br i1 %16, label %17, label %4, !llvm.loop !61

17:                                               ; preds = %4, %14, %2
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_str_rstrip_float_zero(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #19
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %5, %14
  %10 = phi i64 [ %15, %14 ], [ %7, %5 ]
  %11 = getelementptr inbounds i8, ptr %3, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = icmp eq i8 %12, 48
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  store i8 %1, ptr %11, align 1, !tbaa !38
  %15 = add nsw i64 %10, -1
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %9, !llvm.loop !62

17:                                               ; preds = %14, %9, %5, %2
  ret i32 0
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_str_index_in_array_n(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3, %11
  %6 = phi ptr [ %12, %11 ], [ %1, %3 ]
  %7 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds ptr, ptr %6, i64 1
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %5, !llvm.loop !63

15:                                               ; preds = %5, %11, %3
  %16 = phi i32 [ -1, %3 ], [ %7, %5 ], [ -1, %11 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_str_index_in_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi ptr [ %12, %11 ], [ %1, %2 ]
  %8 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %6) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds ptr, ptr %7, i64 1
  %13 = add nuw nsw i32 %8, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !64

16:                                               ; preds = %5, %11, %2
  %17 = phi i32 [ -1, %2 ], [ %8, %5 ], [ -1, %11 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_partition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #17 {
  store ptr null, ptr %3, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !34
  %5 = load i8, ptr %1, align 1, !tbaa !38
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %19
  %8 = phi i8 [ %21, %19 ], [ %5, %4 ]
  %9 = phi ptr [ %20, %19 ], [ %1, %4 ]
  %10 = zext i8 %8 to i32
  %11 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %10) #18, !callees !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, %11
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store ptr %11, ptr %2, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %18, %13, %7
  %20 = getelementptr inbounds i8, ptr %9, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %7, !llvm.loop !66

23:                                               ; preds = %19, %4
  %24 = load ptr, ptr %2, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %27, ptr %3, align 8, !tbaa !34
  %28 = load ptr, ptr %2, align 8, !tbaa !34
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %0 to i64
  %31 = sub i64 %29, %30
  br label %34

32:                                               ; preds = %23
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi i64 [ %31, %26 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i64 @BLI_str_partition_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %4, 0
  %7 = select i1 %6, ptr @strchr, ptr @strrchr
  store ptr null, ptr %3, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !34
  %8 = load i8, ptr %1, align 1, !tbaa !38
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %5, %25
  %11 = phi i8 [ %27, %25 ], [ %8, %5 ]
  %12 = phi ptr [ %26, %25 ], [ %1, %5 ]
  %13 = zext i8 %11 to i32
  %14 = tail call ptr %7(ptr noundef %0, i32 noundef %13) #18, !callees !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !tbaa !34
  br i1 %6, label %20, label %18

18:                                               ; preds = %16
  %19 = icmp ult ptr %17, %14
  br i1 %19, label %24, label %25

20:                                               ; preds = %16
  %21 = icmp eq ptr %17, null
  %22 = icmp ugt ptr %17, %14
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %18
  store ptr %14, ptr %2, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %20, %24, %18, %10
  %26 = getelementptr inbounds i8, ptr %12, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !38
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %10, !llvm.loop !66

29:                                               ; preds = %25, %5
  %30 = load ptr, ptr %2, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %33, ptr %3, align 8, !tbaa !34
  %34 = load ptr, ptr %2, align 8, !tbaa !34
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %0 to i64
  %37 = sub i64 %35, %36
  br label %40

38:                                               ; preds = %29
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i64 [ %37, %32 ], [ %39, %38 ]
  ret i64 %41
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_str_rpartition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #17 {
  store ptr null, ptr %3, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !34
  %5 = load i8, ptr %1, align 1, !tbaa !38
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4, %17
  %8 = phi i8 [ %19, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %18, %17 ], [ %1, %4 ]
  %10 = zext i8 %8 to i32
  %11 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %10) #18, !callees !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = icmp ult ptr %14, %11
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr %11, ptr %2, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %16, %13, %7
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %7, !llvm.loop !66

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr %2, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !34
  %26 = load ptr, ptr %2, align 8, !tbaa !34
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %0 to i64
  %29 = sub i64 %27, %28
  br label %32

30:                                               ; preds = %21
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %32

32:                                               ; preds = %24, %30
  %33 = phi i64 [ %29, %24 ], [ %31, %30 ]
  ret i64 %33
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @BLI_str_format_int_grouped(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %1) #18
  %5 = load i8, ptr %3, align 16, !tbaa !38
  %6 = icmp eq i8 %5, 45
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %0, align 1, !tbaa !38
  %10 = add nsw i32 %4, -1
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %13 = phi ptr [ %8, %7 ], [ %3, %2 ]
  %14 = phi i32 [ %10, %7 ], [ %4, %2 ]
  %15 = load i8, ptr %13, align 1, !tbaa !38
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  %18 = srem i32 %14, 3
  %19 = sub nsw i32 2, %18
  br label %20

20:                                               ; preds = %17, %30
  %21 = phi i8 [ %34, %30 ], [ %15, %17 ]
  %22 = phi i32 [ %33, %30 ], [ %19, %17 ]
  %23 = phi ptr [ %25, %30 ], [ %13, %17 ]
  %24 = phi ptr [ %31, %30 ], [ %12, %17 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %21, ptr %24, align 1, !tbaa !38
  %27 = icmp eq i32 %22, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 44, ptr %26, align 1, !tbaa !38
  br label %30

30:                                               ; preds = %20, %28
  %31 = phi ptr [ %29, %28 ], [ %26, %20 ]
  %32 = add nuw nsw i32 %22, 1
  %33 = urem i32 %32, 3
  %34 = load i8, ptr %25, align 1, !tbaa !38
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %20, !llvm.loop !67

36:                                               ; preds = %30, %11
  %37 = phi ptr [ %12, %11 ], [ %31, %30 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 -1
  store i8 0, ptr %38, align 1, !tbaa !38
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %0 to i64
  %41 = sub i64 %39, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i64 %41
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !40, !41}
!43 = distinct !{!43, !40, !41}
!44 = distinct !{!44, !40, !41}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !36, i64 0}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !40, !41}
!49 = distinct !{!49, !40, !41}
!50 = distinct !{!50, !40, !41}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !36, i64 0}
!53 = distinct !{!53, !40, !41}
!54 = distinct !{!54, !40, !41}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !40, !41}
!57 = distinct !{!57, !40, !41}
!58 = distinct !{!58, !41}
!59 = !{i64 -2147483648, i64 2147483648}
!60 = distinct !{!60, !40, !41}
!61 = distinct !{!61, !40, !41}
!62 = distinct !{!62, !40, !41}
!63 = distinct !{!63, !40, !41}
!64 = distinct !{!64, !40, !41}
!65 = !{ptr @strchr, ptr @strrchr}
!66 = distinct !{!66, !40, !41}
!67 = distinct !{!67, !40, !41}
