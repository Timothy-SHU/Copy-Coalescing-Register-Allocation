; ModuleID = 'xz/util.c'
source_filename = "xz/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: Value is not a non-negative decimal integer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"iB\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: Invalid multiplier suffix\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30).\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Value of the option `%s' must be in the range [%lu, %lu]\00", align 1
@bufs = internal global [4 x [128 x i8]] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@uint64_to_nicestr.suffix = internal constant [5 x [4 x i8]] [[4 x i8] c"B\00\00\00", [4 x i8] c"KiB\00", [4 x i8] c"MiB\00", [4 x i8] c"GiB\00", [4 x i8] c"TiB\00"], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" (%lu B)\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Empty filename, skipping\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #15
  %7 = load i32, ptr %6, align 4, !tbaa !6
  tail call void @free(ptr noundef %0) #16
  %8 = tail call ptr @strerror(i32 noundef %7) #16
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str, ptr noundef %8) #16
  br label %9

9:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @message_fatal(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %3 = add i64 %2, 1
  %4 = tail call ptr @xrealloc(ptr noundef null, i64 noundef %3) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %0, i64 %3, i1 false)
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @str_to_uint64(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi ptr [ %1, %4 ], [ %9, %8 ]
  %7 = load i8, ptr %6, align 1, !tbaa !10
  switch i8 %7, label %10 [
    i8 32, label %8
    i8 9, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  br label %5, !llvm.loop !11

10:                                               ; preds = %5
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(4) @.str.1) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %10
  %14 = add i8 %7, -58
  %15 = icmp ult i8 %14, -10
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #16
  br label %17

17:                                               ; preds = %13, %16
  br label %18

18:                                               ; preds = %17, %30
  %19 = phi ptr [ %31, %30 ], [ %6, %17 ]
  %20 = phi i64 [ %32, %30 ], [ 0, %17 ]
  %21 = icmp ugt i64 %20, 1844674407370955161
  br i1 %21, label %68, label %22

22:                                               ; preds = %18
  %23 = mul nuw i64 %20, 10
  %24 = load i8, ptr %19, align 1, !tbaa !10
  %25 = sext i8 %24 to i64
  %26 = add nsw i64 %25, 4294967248
  %27 = and i64 %26, 4294967295
  %28 = xor i64 %27, -1
  %29 = icmp ugt i64 %23, %28
  br i1 %29, label %68, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, ptr %19, i64 1
  %32 = add i64 %27, %23
  %33 = load i8, ptr %31, align 1, !tbaa !10
  %34 = add i8 %33, -48
  %35 = icmp ult i8 %34, 10
  br i1 %35, label %18, label %36, !llvm.loop !13

36:                                               ; preds = %30
  switch i8 %33, label %39 [
    i8 0, label %63
    i8 107, label %40
    i8 75, label %40
    i8 109, label %37
    i8 77, label %37
    i8 103, label %38
    i8 71, label %38
  ]

37:                                               ; preds = %36, %36
  br label %40

38:                                               ; preds = %36, %36
  br label %40

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %36, %36, %39, %37, %38
  %41 = phi i1 [ false, %37 ], [ false, %38 ], [ false, %36 ], [ false, %36 ], [ true, %39 ]
  %42 = phi i64 [ 1048576, %37 ], [ 1073741824, %38 ], [ 1024, %36 ], [ 1024, %36 ], [ 0, %39 ]
  %43 = getelementptr inbounds i8, ptr %19, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(2) @.str.3) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(3) @.str.4) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(2) @.str.5) #17
  %54 = icmp ne i32 %53, 0
  %55 = or i1 %41, %54
  br i1 %55, label %57, label %58

56:                                               ; preds = %49, %46, %40
  br i1 %41, label %57, label %58

57:                                               ; preds = %52, %56
  tail call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull %31) #16
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.7) #16
  br label %58

58:                                               ; preds = %52, %57, %56
  %59 = phi i64 [ 0, %57 ], [ %42, %56 ], [ %42, %52 ]
  %60 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %59, i64 %32)
  %61 = extractvalue { i64, i1 } %60, 1
  %62 = mul i64 %59, %32
  br i1 %61, label %68, label %63

63:                                               ; preds = %58, %36
  %64 = phi i64 [ %62, %58 ], [ %32, %36 ]
  %65 = icmp ult i64 %64, %2
  %66 = icmp ugt i64 %64, %3
  %67 = or i1 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %22, %18, %58, %63
  tail call void (ptr, ...) @message_fatal(ptr noundef nonnull @.str.8, ptr noundef %0, i64 noundef %2, i64 noundef %3) #16
  br label %69

69:                                               ; preds = %63, %10, %68
  %70 = phi i64 [ 0, %68 ], [ %3, %10 ], [ %64, %63 ]
  ret i64 %70
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @message(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @round_up_to_mib(i64 noundef %0) local_unnamed_addr #9 {
  %2 = lshr i64 %0, 20
  %3 = and i64 %0, 1048575
  %4 = icmp ne i64 %3, 0
  %5 = zext i1 %4 to i64
  %6 = add nuw nsw i64 %2, %5
  ret i64 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @uint64_to_str(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %3
  %5 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef 128, ptr noundef nonnull @.str.9, i64 noundef %0) #16
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local nonnull ptr @uint64_to_nicestr(i64 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #10 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %8
  store ptr %9, ptr %6, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 128, ptr %7, align 8, !tbaa !16
  %10 = icmp eq i32 %1, 0
  %11 = icmp ult i64 %0, 10000
  %12 = and i1 %11, %10
  %13 = icmp eq i32 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = trunc i64 %0 to i32
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i32 noundef %16) #18
  br label %32

17:                                               ; preds = %5
  %18 = uitofp i64 %0 to double
  br label %19

19:                                               ; preds = %29, %17
  %20 = phi i32 [ 0, %17 ], [ %23, %29 ]
  %21 = phi double [ %18, %17 ], [ %22, %29 ]
  %22 = fmul double %21, 0x3F50000000000000
  %23 = add nuw i32 %20, 1
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = fcmp ogt double %22, 0x40C387F333333333
  %27 = icmp ult i32 %23, %2
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %19
  br label %19, !llvm.loop !18

30:                                               ; preds = %25
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @.str.11, double noundef %22) #18
  %31 = zext i32 %23 to i64
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi i64 [ 0, %15 ], [ %31, %30 ]
  %34 = getelementptr inbounds [5 x [4 x i8]], ptr @uint64_to_nicestr.suffix, i64 0, i64 %33
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @.str.12, ptr noundef nonnull %34) #18
  %35 = icmp ugt i64 %0, 9999
  %36 = and i1 %35, %3
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr %6, align 8, !tbaa !14
  %39 = load i64, ptr %7, align 8, !tbaa !16
  %40 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %38, i64 noundef %39, ptr noundef nonnull @.str.13, i64 noundef %0) #16
  br label %41

41:                                               ; preds = %37, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret ptr %9
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @my_snprintf(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #10 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = load i64, ptr %1, align 8, !tbaa !16
  %7 = call i32 @vsnprintf(ptr noundef %5, i64 noundef %6, ptr noundef %2, ptr noundef nonnull %4) #16
  call void @llvm.va_end(ptr nonnull %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %7 to i64
  %11 = load i64, ptr %1, align 8, !tbaa !16
  %12 = icmp ugt i64 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !14
  %15 = getelementptr inbounds i8, ptr %14, i64 %10
  store ptr %15, ptr %0, align 8, !tbaa !14
  %16 = sub i64 %11, %10
  br label %17

17:                                               ; preds = %3, %9, %13
  %18 = phi i64 [ %16, %13 ], [ 0, %9 ], [ 0, %3 ]
  store i64 %18, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @is_empty_filename(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !10
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @message_error(ptr noundef nonnull @.str.14) #16
  br label %5

5:                                                ; preds = %1, %4
  ret i1 %3
}

; Function Attrs: optsize
declare void @message_error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @is_tty_stdin() local_unnamed_addr #9 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @is_tty_stdout() local_unnamed_addr #9 {
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize allocsize(1) }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = distinct !{!18, !12}
