; ModuleID = 'src/bitcnts.c'
source_filename = "src/bitcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %5) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #10
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %12 = shl i64 %10, 32
  %13 = ashr exact i64 %12, 32
  %14 = icmp sgt i64 %13, 0
  br label %15

15:                                               ; preds = %7, %37
  %16 = phi i64 [ 0, %7 ], [ %54, %37 ]
  %17 = phi double [ 0x7FEFFFFFFFFFFFFF, %7 ], [ %46, %37 ]
  %18 = phi i32 [ undef, %7 ], [ %50, %37 ]
  %19 = phi i32 [ undef, %7 ], [ %45, %37 ]
  %20 = phi double [ 0.000000e+00, %7 ], [ %48, %37 ]
  %21 = tail call i64 @clock() #10
  %22 = tail call i32 @rand() #10
  br i1 %14, label %23, label %37

23:                                               ; preds = %15
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %16
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %24, %23 ], [ %35, %27 ]
  %29 = phi i64 [ 0, %23 ], [ %33, %27 ]
  %30 = phi i64 [ 0, %23 ], [ %34, %27 ]
  %31 = tail call i32 %26(i64 noundef %28) #10
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = add nuw nsw i64 %30, 1
  %35 = add nsw i64 %28, 13
  %36 = icmp eq i64 %34, %13
  br i1 %36, label %37, label %27, !llvm.loop !9

37:                                               ; preds = %27, %15
  %38 = phi i64 [ 0, %15 ], [ %33, %27 ]
  %39 = tail call i64 @clock() #10
  %40 = sub nsw i64 %39, %21
  %41 = sitofp i64 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = fcmp olt double %42, %17
  %44 = trunc i64 %16 to i32
  %45 = select i1 %43, i32 %44, i32 %19
  %46 = select i1 %43, double %42, double %17
  %47 = fcmp ogt double %42, %20
  %48 = select i1 %47, double %42, double %20
  %49 = trunc i64 %16 to i32
  %50 = select i1 %47, i32 %49, i32 %18
  %51 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %16
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %52, double noundef %42, i64 noundef %38)
  %54 = add nuw nsw i64 %16, 1
  %55 = icmp eq i64 %54, 7
  br i1 %55, label %56, label %15, !llvm.loop !11

56:                                               ; preds = %37
  %57 = sext i32 %45 to i64
  %58 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %59)
  %61 = sext i32 %50 to i64
  %62 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %63)
  ret i32 0
}

declare i32 @bit_count(i64 noundef) #1

declare i32 @bitcount(i64 noundef) #1

declare i32 @ntbl_bitcnt(i64 noundef) #1

declare i32 @ntbl_bitcount(i64 noundef) #1

declare i32 @BW_btbl_bitcount(i64 noundef) #1

declare i32 @AR_btbl_bitcount(i64 noundef) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal i32 @bit_shifter(i64 noundef %0) #2 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %9, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %10, %3 ], [ 0, %1 ]
  %6 = phi i64 [ %11, %3 ], [ %0, %1 ]
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 1
  %9 = add nuw nsw i32 %4, %8
  %10 = add nuw nsw i32 %5, 1
  %11 = ashr i64 %6, 1
  %12 = icmp ugt i64 %6, 1
  %13 = icmp ult i32 %5, 63
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %3, label %15, !llvm.loop !12

15:                                               ; preds = %3, %1
  %16 = phi i32 [ 0, %1 ], [ %9, %3 ]
  ret i32 %16
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
