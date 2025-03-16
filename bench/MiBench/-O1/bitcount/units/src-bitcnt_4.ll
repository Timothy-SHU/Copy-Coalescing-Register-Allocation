; ModuleID = 'src/bitcnt_4.c'
source_filename = "src/bitcnt_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@bits = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %4 = phi i64 [ %0, %1 ], [ %11, %10 ]
  %5 = and i64 %4, 15
  %6 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = sext i8 %7 to i32
  %9 = icmp ult i64 %4, 16
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = ashr i64 %4, 4
  %12 = add nsw i32 %3, %8
  br label %2

13:                                               ; preds = %2
  %14 = add nsw i32 %3, %8
  ret i32 %14
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %4 = phi i64 [ %0, %1 ], [ %11, %10 ]
  %5 = and i64 %4, 255
  %6 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = sext i8 %7 to i32
  %9 = icmp ult i64 %4, 256
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = ashr i64 %4, 8
  %12 = add nsw i32 %3, %8
  br label %2

13:                                               ; preds = %2
  %14 = add nsw i32 %3, %8
  ret i32 %14
}

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
