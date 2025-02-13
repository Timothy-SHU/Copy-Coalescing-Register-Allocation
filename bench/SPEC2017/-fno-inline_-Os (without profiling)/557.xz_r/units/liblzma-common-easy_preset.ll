; ModuleID = 'liblzma/common/easy_preset.c'
source_filename = "liblzma/common/easy_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_options_easy = type { [5 x %struct.lzma_filter], %struct.lzma_options_lzma }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @lzma_easy_preset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_options_easy, ptr %0, i64 0, i32 1
  %4 = tail call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %3, i32 noundef %1) #2
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  store i64 33, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !11
  %8 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %0, i64 0, i64 1
  store i64 -1, ptr %8, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %2, %6
  ret i1 %5
}

; Function Attrs: optsize
declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
