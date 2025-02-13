; ModuleID = 'blender/source/blender/blenlib/intern/string.c'
source_filename = "blender/source/blender/blenlib/intern/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"strdupcat\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%.2d:%.2d:%.2d.%.2d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%.2d:%.2d.%.2d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_strdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %3 = tail call ptr @BLI_strdupn(ptr noundef %0, i64 noundef %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strncpy(ptr noundef returned writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = add i64 %2, -1
  %5 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef %4) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %5, i1 false)
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  store i8 0, ptr %6, align 1, !tbaa !38
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %14 = phi i64 [ 0, %2 ], [ %5, %4 ], [ %1, %9 ]
  ret i64 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strncpy_rlen(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = add i64 %2, -1
  %5 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef %4) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %5, i1 false)
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  store i8 0, ptr %6, align 1, !tbaa !38
  ret i64 %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @BLI_strcpy_rlen(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = add i64 %3, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret i64 %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
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

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @BLI_snprintf(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #7 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i64 @BLI_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #20, !range !41
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_sprintfN(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @BLI_dynstr_new() #18
  call void @BLI_dynstr_vappendf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #18
  %4 = call ptr @BLI_dynstr_get_cstring(ptr noundef %3) #18
  call void @BLI_dynstr_free(ptr noundef %3) #18
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #10

; Function Attrs: optsize
declare void @BLI_dynstr_vappendf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @BLI_strescape(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %3, %21
  %6 = phi i64 [ %22, %21 ], [ 0, %3 ]
  %7 = phi ptr [ %24, %21 ], [ %0, %3 ]
  %8 = phi ptr [ %25, %21 ], [ %1, %3 ]
  %9 = load i8, ptr %8, align 1, !tbaa !38
  switch i8 %9, label %16 [
    i8 0, label %27
    i8 92, label %10
    i8 34, label %10
    i8 9, label %10
    i8 10, label %10
    i8 13, label %10
  ]

10:                                               ; preds = %5, %5, %5, %5, %5
  %11 = add i64 %6, 1
  %12 = icmp ult i64 %11, %2
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 92, ptr %7, align 1, !tbaa !38
  %15 = load i8, ptr %8, align 1, !tbaa !38
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i8 [ %9, %5 ], [ %15, %13 ]
  %18 = phi ptr [ %7, %5 ], [ %14, %13 ]
  %19 = phi i64 [ %6, %5 ], [ %11, %13 ]
  store i8 %17, ptr %18, align 1, !tbaa !38
  %20 = add nuw i64 %19, 1
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i64 [ %11, %10 ], [ %20, %16 ]
  %23 = phi ptr [ %7, %10 ], [ %18, %16 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = getelementptr inbounds i8, ptr %8, i64 1
  %26 = icmp ult i64 %22, %2
  br i1 %26, label %5, label %27, !llvm.loop !42

27:                                               ; preds = %5, %21, %3
  %28 = phi ptr [ %0, %3 ], [ %24, %21 ], [ %7, %5 ]
  %29 = phi i64 [ 0, %3 ], [ %22, %21 ], [ %6, %5 ]
  store i8 0, ptr %28, align 1, !tbaa !38
  ret i64 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_str_quoted_substrN(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = getelementptr inbounds i8, ptr %4, i64 %3
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 34) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

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
  br i1 %17, label %23, label %9, !llvm.loop !43

18:                                               ; preds = %9
  %19 = ptrtoint ptr %10 to i64
  %20 = ptrtoint ptr %6 to i64
  %21 = sub i64 %19, %20
  %22 = tail call ptr @BLI_strdupn(ptr noundef nonnull %6, i64 noundef %21) #20
  br label %25

23:                                               ; preds = %14, %2
  %24 = tail call ptr @BLI_strdupn(ptr noundef nonnull @.str.2, i64 noundef 0) #20
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %22, %18 ], [ %24, %23 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_replacestrN(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %24, %22 ], [ %5, %3 ]
  %9 = phi ptr [ %23, %22 ], [ %0, %3 ]
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
  tail call void @BLI_dynstr_append(ptr noundef %15, ptr noundef %2) #18
  %23 = getelementptr inbounds i8, ptr %8, i64 %4
  %24 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %1) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !44

26:                                               ; preds = %22
  %27 = icmp eq ptr %15, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  tail call void @BLI_dynstr_append(ptr noundef nonnull %15, ptr noundef nonnull %23) #18
  %29 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef nonnull %15) #18
  tail call void @BLI_dynstr_free(ptr noundef nonnull %15) #18
  br label %33

30:                                               ; preds = %3, %26
  %31 = phi ptr [ %23, %26 ], [ %0, %3 ]
  %32 = tail call ptr @BLI_strdup(ptr noundef %31) #20
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi ptr [ %29, %28 ], [ %32, %30 ]
  ret ptr %34
}

; Function Attrs: optsize
declare void @BLI_dynstr_nappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_strcaseeq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call i32 @BLI_strcasecmp(ptr noundef %0, ptr noundef %1) #20, !range !45
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_strcasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call ptr @__ctype_tolower_loc() #22
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load i8, ptr %0, align 1, !tbaa !38
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = load i8, ptr %1, align 1, !tbaa !38
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i32, ptr %4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !46
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
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = getelementptr inbounds i8, ptr %1, i64 %17
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = and i32 %22, 255
  %29 = and i32 %27, 255
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %38, label %31

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
  %39 = phi i32 [ -1, %2 ], [ 0, %36 ], [ 1, %31 ], [ -1, %16 ]
  ret i32 %39
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @BLI_strcasestr(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %1, align 1, !tbaa !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__ctype_tolower_loc() #22
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = zext i8 %4 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  br label %13

13:                                               ; preds = %25, %6
  %14 = phi ptr [ %0, %6 ], [ %18, %25 ]
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = zext i8 %15 to i64
  %20 = getelementptr inbounds i32, ptr %8, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = xor i32 %21, %11
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %26
  br label %13, !llvm.loop !48

26:                                               ; preds = %17
  %27 = tail call i32 @BLI_strncasecmp(ptr noundef nonnull %18, ptr noundef nonnull %3, i64 noundef %12) #20, !range !45
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %26, %13, %2
  %30 = phi ptr [ %0, %2 ], [ %14, %26 ], [ null, %13 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #14

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_strncasecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_tolower_loc() #22
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %25, %5
  %9 = phi i64 [ 0, %5 ], [ %27, %25 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !38
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = getelementptr inbounds i8, ptr %1, i64 %9
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !46
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
  br i1 %29, label %30, label %8, !llvm.loop !49

30:                                               ; preds = %8, %23, %25, %3
  %31 = phi i32 [ 0, %3 ], [ 0, %25 ], [ 1, %23 ], [ -1, %8 ]
  ret i32 %31
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_natstrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !46
  %4 = tail call ptr @__ctype_tolower_loc() #22
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @__ctype_b_loc() #22
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %86, %2
  %9 = phi i32 [ 0, %2 ], [ %88, %86 ]
  %10 = phi i32 [ 0, %2 ], [ %87, %86 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i32, ptr %5, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds i8, ptr %1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i32, ptr %5, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = and i32 %16, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i16, ptr %7, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !50
  %27 = and i16 %26, 2048
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %8
  %30 = and i32 %22, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i16, ptr %7, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = and i16 %33, 2048
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %29
  %37 = call fastcc i32 @left_number_strcmp(ptr noundef nonnull %12, ptr noundef nonnull %18, ptr noundef nonnull %3) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %36, %39
  %40 = phi i64 [ %41, %39 ], [ %11, %36 ]
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i16, ptr %7, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !50
  %47 = and i16 %46, 2048
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %39, !llvm.loop !52

49:                                               ; preds = %39, %49
  %50 = phi i64 [ %51, %49 ], [ %17, %39 ]
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !38
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i16, ptr %7, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !50
  %57 = and i16 %56, 2048
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %49, !llvm.loop !53

59:                                               ; preds = %49
  %60 = trunc i64 %41 to i32
  %61 = trunc i64 %51 to i32
  %62 = getelementptr inbounds i32, ptr %5, i64 %44
  %63 = load i32, ptr %62, align 4, !tbaa !46
  %64 = getelementptr inbounds i32, ptr %5, i64 %54
  %65 = load i32, ptr %64, align 4, !tbaa !46
  br label %66

66:                                               ; preds = %59, %29, %8
  %67 = phi i32 [ %65, %59 ], [ %22, %29 ], [ %22, %8 ]
  %68 = phi i32 [ %63, %59 ], [ %16, %29 ], [ %16, %8 ]
  %69 = phi i32 [ %61, %59 ], [ %9, %29 ], [ %9, %8 ]
  %70 = phi i32 [ %60, %59 ], [ %10, %29 ], [ %10, %8 ]
  %71 = and i32 %68, 255
  %72 = icmp eq i32 %71, 46
  %73 = and i32 %67, 255
  %74 = icmp ne i32 %73, 46
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %94, label %76

76:                                               ; preds = %66
  %77 = icmp ne i32 %71, 46
  %78 = icmp eq i32 %73, 46
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = icmp ult i32 %71, %73
  br i1 %81, label %94, label %82

82:                                               ; preds = %80
  %83 = icmp ugt i32 %71, %73
  br i1 %83, label %94, label %84

84:                                               ; preds = %82
  %85 = icmp eq i32 %71, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %84
  %87 = add nsw i32 %70, 1
  %88 = add nsw i32 %69, 1
  br label %8

89:                                               ; preds = %84
  %90 = load i32, ptr %3, align 4, !tbaa !46
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  br label %94

94:                                               ; preds = %36, %82, %80, %76, %66, %89, %92
  %95 = phi i32 [ %93, %92 ], [ %90, %89 ], [ %37, %36 ], [ 1, %82 ], [ -1, %80 ], [ 1, %76 ], [ -1, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %95
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @left_number_strcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #15 !PGOFuncName !54 {
  %4 = load i8, ptr %0, align 1, !tbaa !38
  %5 = icmp eq i8 %4, 48
  br i1 %5, label %12, label %6

6:                                                ; preds = %12, %3
  %7 = phi i8 [ %4, %3 ], [ %17, %12 ]
  %8 = phi ptr [ %0, %3 ], [ %15, %12 ]
  %9 = phi i32 [ 0, %3 ], [ %16, %12 ]
  %10 = load i8, ptr %1, align 1, !tbaa !38
  %11 = icmp eq i8 %10, 48
  br i1 %11, label %30, label %19

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %14 = phi ptr [ %15, %12 ], [ %0, %3 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = add nuw nsw i32 %13, 1
  %17 = load i8, ptr %15, align 1, !tbaa !38
  %18 = icmp eq i8 %17, 48
  br i1 %18, label %12, label %6, !llvm.loop !55

19:                                               ; preds = %30, %6
  %20 = phi i8 [ %10, %6 ], [ %35, %30 ]
  %21 = phi ptr [ %1, %6 ], [ %33, %30 ]
  %22 = phi i32 [ 0, %6 ], [ %34, %30 ]
  %23 = tail call ptr @__ctype_b_loc() #22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = zext i8 %7 to i64
  %26 = getelementptr inbounds i16, ptr %24, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %54, label %37

30:                                               ; preds = %6, %30
  %31 = phi i32 [ %34, %30 ], [ 0, %6 ]
  %32 = phi ptr [ %33, %30 ], [ %1, %6 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = add nuw nsw i32 %31, 1
  %35 = load i8, ptr %33, align 1, !tbaa !38
  %36 = icmp eq i8 %35, 48
  br i1 %36, label %30, label %19, !llvm.loop !56

37:                                               ; preds = %19, %60
  %38 = phi i64 [ %61, %60 ], [ 0, %19 ]
  %39 = getelementptr inbounds i8, ptr %21, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i16, ptr %24, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !50
  %44 = and i16 %43, 2048
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %82, label %60

46:                                               ; preds = %60
  %47 = getelementptr inbounds i8, ptr %21, i64 %61
  %48 = load i8, ptr %47, align 1, !tbaa !38
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds i16, ptr %24, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !50
  %52 = and i16 %51, 2048
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %69, label %82

54:                                               ; preds = %19
  %55 = zext i8 %20 to i64
  %56 = getelementptr inbounds i16, ptr %24, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !50
  %58 = and i16 %57, 2048
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %73, label %82

60:                                               ; preds = %37
  %61 = add nuw i64 %38, 1
  %62 = getelementptr inbounds i8, ptr %8, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !38
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i16, ptr %24, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !50
  %67 = and i16 %66, 2048
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %46, label %37

69:                                               ; preds = %46
  br i1 %29, label %73, label %70

70:                                               ; preds = %69
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %21, i64 noundef %61) #19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %54, %70, %69
  %74 = load i32, ptr %2, align 4, !tbaa !46
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = icmp ugt i32 %9, %22
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = icmp ult i32 %9, %22
  br i1 %79, label %80, label %82

80:                                               ; preds = %78, %76
  %81 = phi i32 [ 1, %76 ], [ -1, %78 ]
  store i32 %81, ptr %2, align 4, !tbaa !46
  br label %82

82:                                               ; preds = %37, %80, %54, %73, %78, %46, %70
  %83 = phi i32 [ %71, %70 ], [ -1, %46 ], [ 0, %78 ], [ 0, %73 ], [ -1, %54 ], [ 0, %80 ], [ 1, %37 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
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
  %15 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %6, i32 noundef %7, i32 noundef %10) #20, !range !41
  br label %18

16:                                               ; preds = %3
  %17 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %7, i32 noundef %10) #20, !range !41
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_ascii_strtolower(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #16 {
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
  br i1 %16, label %17, label %4, !llvm.loop !57

17:                                               ; preds = %4, %14, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_ascii_strtoupper(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #16 {
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
  br i1 %16, label %17, label %4, !llvm.loop !58

17:                                               ; preds = %4, %14, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BLI_str_rstrip_float_zero(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #17 {
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
  br i1 %16, label %17, label %9, !llvm.loop !59

17:                                               ; preds = %14, %9, %5, %2
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br i1 %14, label %15, label %5, !llvm.loop !60

15:                                               ; preds = %5, %11, %3
  %16 = phi i32 [ -1, %3 ], [ -1, %11 ], [ %7, %5 ]
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br i1 %15, label %16, label %5, !llvm.loop !61

16:                                               ; preds = %5, %11, %2
  %17 = phi i32 [ -1, %2 ], [ -1, %11 ], [ %8, %5 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLI_str_partition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i64 @BLI_str_partition_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #20
  ret i64 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLI_str_partition_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %4, 0
  %7 = select i1 %6, ptr @strchr, ptr @strrchr
  store ptr null, ptr %3, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !34
  %8 = load i8, ptr %1, align 1, !tbaa !38
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %5, %25
  %11 = phi i8 [ %27, %25 ], [ %8, %5 ]
  %12 = phi ptr [ %26, %25 ], [ %1, %5 ]
  %13 = zext i8 %11 to i32
  %14 = tail call ptr %7(ptr noundef %0, i32 noundef %13) #18, !callees !62
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
  br i1 %28, label %29, label %10, !llvm.loop !63

29:                                               ; preds = %25
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

38:                                               ; preds = %5, %29
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i64 [ %37, %32 ], [ %39, %38 ]
  ret i64 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLI_str_rpartition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i64 @BLI_str_partition_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #20
  ret i64 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i64 @BLI_str_format_int_grouped(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %1) #18
  %5 = load i8, ptr %3, align 16, !tbaa !38
  %6 = icmp eq i8 %5, 45
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !38
  %10 = add nsw i32 %4, -1
  %11 = load i8, ptr %8, align 1, !tbaa !38
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i8 [ %11, %7 ], [ %5, %2 ]
  %14 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %15 = phi ptr [ %8, %7 ], [ %3, %2 ]
  %16 = phi i32 [ %10, %7 ], [ %4, %2 ]
  %17 = icmp eq i8 %13, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %12
  %19 = srem i32 %16, 3
  %20 = sub nsw i32 2, %19
  br label %21

21:                                               ; preds = %18, %31
  %22 = phi i8 [ %35, %31 ], [ %13, %18 ]
  %23 = phi i32 [ %34, %31 ], [ %20, %18 ]
  %24 = phi ptr [ %26, %31 ], [ %15, %18 ]
  %25 = phi ptr [ %32, %31 ], [ %14, %18 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %22, ptr %25, align 1, !tbaa !38
  %28 = icmp eq i32 %23, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 44, ptr %27, align 1, !tbaa !38
  br label %31

31:                                               ; preds = %21, %29
  %32 = phi ptr [ %30, %29 ], [ %27, %21 ]
  %33 = add nuw nsw i32 %23, 1
  %34 = urem i32 %33, 3
  %35 = load i8, ptr %26, align 1, !tbaa !38
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %21, !llvm.loop !64

37:                                               ; preds = %31, %12
  %38 = phi ptr [ %14, %12 ], [ %32, %31 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  store i8 0, ptr %39, align 1, !tbaa !38
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %0 to i64
  %42 = sub i64 %40, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret i64 %42
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{i64 -2147483648, i64 2147483648}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !40}
!45 = !{i32 -1, i32 2}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !36, i64 0}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !36, i64 0}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = !{!"string.c:left_number_strcmp"}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = !{ptr @strchr, ptr @strrchr}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
