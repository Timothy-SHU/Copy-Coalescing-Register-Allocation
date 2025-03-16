; ModuleID = 'src/fftmisc.c'
source_filename = "src/fftmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @IsPowerOfTwo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !5
  %5 = icmp ult i32 %4, 2
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %0) #6
  tail call void @exit(i32 noundef 1) #7
  unreachable

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %11, %6 ], [ 0, %1 ]
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %0
  %10 = icmp eq i32 %9, 0
  %11 = add i32 %7, 1
  br i1 %10, label %6, label %12, !llvm.loop !10

12:                                               ; preds = %6
  ret i32 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %2 ]
  %7 = phi i32 [ %11, %4 ], [ %0, %2 ]
  %8 = shl i32 %5, 1
  %9 = and i32 %7, 1
  %10 = or disjoint i32 %8, %9
  %11 = lshr i32 %7, 1
  %12 = add nuw i32 %6, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !12

14:                                               ; preds = %4, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @Index_to_frequency(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, %0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = lshr i32 %0, 1
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = uitofp i32 %1 to double
  %9 = uitofp i32 %0 to double
  %10 = fdiv double %8, %9
  br label %17

11:                                               ; preds = %4
  %12 = sub i32 %0, %1
  %13 = uitofp i32 %12 to double
  %14 = fneg double %13
  %15 = uitofp i32 %0 to double
  %16 = fdiv double %14, %15
  br label %17

17:                                               ; preds = %2, %11, %7
  %18 = phi double [ %10, %7 ], [ %16, %11 ], [ 0.000000e+00, %2 ]
  ret double %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 33}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
