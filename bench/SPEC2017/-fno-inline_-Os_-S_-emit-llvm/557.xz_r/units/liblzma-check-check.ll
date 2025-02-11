; ModuleID = 'liblzma/check/check.c'
source_filename = "liblzma/check/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

@lzma_check_is_supported.available_checks = internal unnamed_addr constant [16 x i8] c"\01\01\00\00\01\00\00\00\00\00\01\00\00\00\00\00", align 16
@lzma_check_size.check_sizes = internal unnamed_addr constant [16 x i8] c"\00\04\04\04\08\08\08\10\10\10   @@@", align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local zeroext i8 @lzma_check_is_supported(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 15
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x i8], ptr @lzma_check_is_supported.available_checks, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i8 [ %6, %3 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @lzma_check_size(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 15
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [16 x i8], ptr @lzma_check_size.check_sizes, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_check_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %8 [
    i32 10, label %7
    i32 1, label %3
    i32 4, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !5
  br label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !5
  br label %8

7:                                                ; preds = %2
  tail call void @lzma_sha256_init(ptr noundef %0) #3
  br label %8

8:                                                ; preds = %2, %7, %5, %3
  ret void
}

; Function Attrs: optsize
declare void @lzma_sha256_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_check_update(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  switch i32 %1, label %14 [
    i32 1, label %5
    i32 4, label %9
    i32 10, label %13
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = tail call i32 @lzma_crc32(ptr noundef %2, i64 noundef %3, i32 noundef %7) #3
  store i32 %8, ptr %6, align 8, !tbaa !5
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = tail call i64 @lzma_crc64(ptr noundef %2, i64 noundef %3, i64 noundef %11) #3
  store i64 %12, ptr %10, align 8, !tbaa !5
  br label %14

13:                                               ; preds = %4
  tail call void @lzma_sha256_update(ptr noundef %2, i64 noundef %3, ptr noundef %0) #3
  br label %14

14:                                               ; preds = %4, %13, %9, %5
  ret void
}

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_crc64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_sha256_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_check_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %10 [
    i32 1, label %3
    i32 4, label %6
    i32 10, label %9
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !5
  store i32 %5, ptr %0, align 8, !tbaa !5
  br label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_check_state, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !5
  store i64 %8, ptr %0, align 8, !tbaa !5
  br label %10

9:                                                ; preds = %2
  tail call void @lzma_sha256_finish(ptr noundef %0) #3
  br label %10

10:                                               ; preds = %2, %9, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @lzma_sha256_finish(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
