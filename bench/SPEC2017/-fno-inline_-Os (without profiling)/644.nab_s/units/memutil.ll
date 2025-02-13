; ModuleID = 'memutil.c'
source_filename = "memutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"FATAL: %s\0A\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"allocation failure in vector: nh = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"allocation failure in ipvector()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @nrerror(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef %0) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @vector(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = sub i64 %1, %0
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 8
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr @nabout, align 8, !tbaa !6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %1) #11
  %11 = load ptr, ptr @nabout, align 8, !tbaa !6
  %12 = tail call i32 @fflush(ptr noundef %11) #11
  tail call void @nrerror(ptr noundef nonnull @.str.2) #11
  unreachable

13:                                               ; preds = %2
  %14 = sub i64 0, %0
  %15 = getelementptr inbounds double, ptr %6, i64 %14
  ret ptr %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @ivector(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sub i32 %1, %0
  %4 = add i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @nrerror(ptr noundef nonnull @.str.3) #11
  unreachable

10:                                               ; preds = %2
  %11 = sext i32 %0 to i64
  %12 = sub nsw i64 0, %11
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @ipvector(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sub i32 %1, %0
  %4 = add i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @nrerror(ptr noundef nonnull @.str.4) #11
  unreachable

10:                                               ; preds = %2
  %11 = sext i32 %0 to i64
  %12 = sub nsw i64 0, %11
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias nonnull ptr @matrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sub nsw i32 %1, %0
  %6 = sub nsw i32 %3, %2
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %5, 2
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @nrerror(ptr noundef nonnull @.str.5) #11
  unreachable

14:                                               ; preds = %4
  %15 = add nsw i32 %5, 1
  %16 = getelementptr inbounds ptr, ptr %11, i64 1
  %17 = sext i32 %0 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = mul nsw i32 %7, %15
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  tail call void @nrerror(ptr noundef nonnull @.str.6) #11
  unreachable

27:                                               ; preds = %14
  %28 = getelementptr inbounds double, ptr %24, i64 1
  %29 = sext i32 %2 to i64
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds double, ptr %28, i64 %30
  store ptr %31, ptr %16, align 8, !tbaa !6
  %32 = icmp slt i32 %0, %1
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = sext i32 %7 to i64
  %35 = sext i32 %1 to i64
  %36 = load ptr, ptr %16, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %36, %33 ], [ %41, %37 ]
  %39 = phi i64 [ %17, %33 ], [ %40, %37 ]
  %40 = add nsw i64 %39, 1
  %41 = getelementptr inbounds double, ptr %38, i64 %34
  %42 = getelementptr inbounds ptr, ptr %19, i64 %40
  store ptr %41, ptr %42, align 8, !tbaa !6
  %43 = icmp eq i64 %40, %35
  br i1 %43, label %44, label %37, !llvm.loop !10

44:                                               ; preds = %37, %27
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias nonnull ptr @imatrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sub nsw i32 %1, %0
  %6 = sub nsw i32 %3, %2
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %5, 2
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @nrerror(ptr noundef nonnull @.str.5) #11
  unreachable

14:                                               ; preds = %4
  %15 = add nsw i32 %5, 1
  %16 = getelementptr inbounds ptr, ptr %11, i64 1
  %17 = sext i32 %0 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = mul nsw i32 %7, %15
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  tail call void @nrerror(ptr noundef nonnull @.str.6) #11
  unreachable

27:                                               ; preds = %14
  %28 = getelementptr inbounds i32, ptr %24, i64 1
  %29 = sext i32 %2 to i64
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  store ptr %31, ptr %16, align 8, !tbaa !6
  %32 = icmp slt i32 %0, %1
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = sext i32 %7 to i64
  %35 = sext i32 %1 to i64
  %36 = load ptr, ptr %16, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %36, %33 ], [ %41, %37 ]
  %39 = phi i64 [ %17, %33 ], [ %40, %37 ]
  %40 = add nsw i64 %39, 1
  %41 = getelementptr inbounds i32, ptr %38, i64 %34
  %42 = getelementptr inbounds ptr, ptr %19, i64 %40
  store ptr %41, ptr %42, align 8, !tbaa !6
  %43 = icmp eq i64 %40, %35
  br i1 %43, label %44, label %37, !llvm.loop !12

44:                                               ; preds = %37, %27
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_vector(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @free(ptr noundef %4) #12
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_ivector(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  tail call void @free(ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_matrix(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  %11 = getelementptr inbounds double, ptr %10, i64 -1
  tail call void @free(ptr noundef nonnull %11) #12
  %12 = getelementptr inbounds ptr, ptr %7, i64 -1
  tail call void @free(ptr noundef nonnull %12) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_imatrix(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = getelementptr inbounds i32, ptr %10, i64 -1
  tail call void @free(ptr noundef nonnull %11) #12
  %12 = getelementptr inbounds ptr, ptr %7, i64 -1
  tail call void @free(ptr noundef nonnull %12) #12
  ret void
}

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind optsize allocsize(0) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
