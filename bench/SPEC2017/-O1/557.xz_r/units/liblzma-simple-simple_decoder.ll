; ModuleID = 'liblzma/simple/simple_decoder.c'
source_filename = "liblzma/simple/simple_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_simple_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 !prof !34 {
  switch i64 %3, label %5 [
    i64 0, label %30
    i64 4, label %6
  ]

5:                                                ; preds = %4
  br label %30

6:                                                ; preds = %4
  %7 = tail call ptr @lzma_alloc(i64 noundef 4, ptr noundef %1) #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %2, align 1, !tbaa !35
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr inbounds i8, ptr %2, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr inbounds i8, ptr %2, i64 3
  %23 = load i8, ptr %22, align 1, !tbaa !35
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = or disjoint i32 %21, %25
  store i32 %26, ptr %7, align 4, !tbaa !38
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  tail call void @lzma_free(ptr noundef nonnull %7, ptr noundef %1) #2
  br label %30

29:                                               ; preds = %9
  store ptr %7, ptr %0, align 8, !tbaa !41
  br label %30

30:                                               ; preds = %6, %29, %28, %4, %5
  %31 = phi i32 [ 8, %5 ], [ 0, %4 ], [ 5, %6 ], [ 0, %29 ], [ 0, %28 ]
  ret i32 %31
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"", !40, i64 0}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !36, i64 0}
