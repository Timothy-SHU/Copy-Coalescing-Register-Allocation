; ModuleID = 'src/gsm_option.c'
source_filename = "src/gsm_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gsm_option(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !5
  %8 = sext i8 %7 to i32
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 4, !tbaa !12
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %6, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %3, %5, %10
  %14 = phi i32 [ %8, %10 ], [ %8, %5 ], [ -1, %3 ]
  ret i32 %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 652}
!6 = !{!"gsm_state", !7, i64 0, !9, i64 560, !10, i64 568, !11, i64 576, !7, i64 580, !7, i64 596, !9, i64 628, !9, i64 630, !7, i64 632, !9, i64 650, !7, i64 652, !7, i64 653}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"short", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
