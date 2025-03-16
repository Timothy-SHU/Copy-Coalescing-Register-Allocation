; ModuleID = 'src/zfile_io.c'
source_filename = "src/zfile_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@FillInBuf.eofonce = internal unnamed_addr global i1 false, align 4
@zipfd = external local_unnamed_addr global i32, align 4
@inbuf = external local_unnamed_addr global ptr, align 8
@incnt = external local_unnamed_addr global i32, align 4
@inptr = external local_unnamed_addr global ptr, align 8
@outcnt = external local_unnamed_addr global i32, align 4
@outfd = external local_unnamed_addr global i32, align 4
@outout = external local_unnamed_addr global ptr, align 8
@outpos = external local_unnamed_addr global i64, align 8
@outbuf = external local_unnamed_addr global ptr, align 8
@outptr = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @FillInBuf() local_unnamed_addr #0 {
  %1 = load i32, ptr @zipfd, align 4, !tbaa !5
  %2 = load ptr, ptr @inbuf, align 8, !tbaa !9
  %3 = tail call i64 @read(i32 noundef %1, ptr noundef %2, i64 noundef 8192) #2
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr @incnt, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr @inbuf, align 8, !tbaa !9
  store ptr %7, ptr @inptr, align 8, !tbaa !9
  %8 = add nsw i32 %4, -1
  store i32 %8, ptr @incnt, align 4, !tbaa !5
  br label %15

9:                                                ; preds = %0
  %10 = icmp ne i32 %4, 0
  %11 = load i1, ptr @FillInBuf.eofonce, align 4
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  store i1 true, ptr @FillInBuf.eofonce, align 4
  store i32 2, ptr @incnt, align 4, !tbaa !5
  %14 = load ptr, ptr @inbuf, align 8, !tbaa !9
  store ptr %14, ptr @inptr, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %9, %13, %6
  %16 = phi i32 [ 0, %6 ], [ 0, %13 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @FlushOutput() local_unnamed_addr #0 {
  %1 = load i32, ptr @outcnt, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @outfd, align 4, !tbaa !5
  %5 = load ptr, ptr @outout, align 8, !tbaa !9
  %6 = sext i32 %1 to i64
  %7 = tail call i64 @write(i32 noundef %4, ptr noundef %5, i64 noundef %6) #2
  %8 = icmp eq i64 %7, %6
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, ptr @outcnt, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %12 = load i64, ptr @outpos, align 8, !tbaa !11
  %13 = add nsw i64 %12, %11
  store i64 %13, ptr @outpos, align 8, !tbaa !11
  store i32 0, ptr @outcnt, align 4, !tbaa !5
  %14 = load ptr, ptr @outbuf, align 8, !tbaa !9
  store ptr %14, ptr @outptr, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %0, %9, %3
  %16 = phi i32 [ 50, %3 ], [ 0, %9 ], [ 0, %0 ]
  ret i32 %16
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
