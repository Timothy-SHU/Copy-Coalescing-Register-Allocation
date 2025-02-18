; ModuleID = 'liblzma/common/stream_flags_common.c'
source_filename = "liblzma/common/stream_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = dso_local local_unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1
@lzma_footer_magic = dso_local local_unnamed_addr constant [2 x i8] c"YZ", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @lzma_stream_flags_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %41, !prof !41

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8, !tbaa !35
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41, !prof !41

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp ugt i32 %10, 15
  br i1 %11, label %41, label %12, !prof !43

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lzma_stream_flags, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = icmp ugt i32 %14, 15
  br i1 %15, label %41, label %16, !prof !43

16:                                               ; preds = %12
  %17 = icmp eq i32 %10, %14
  br i1 %17, label %18, label %41, !prof !41

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %40, label %22, !prof !41

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.lzma_stream_flags, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !44
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = add i64 %20, -4
  %28 = icmp ult i64 %27, 17179869181
  %29 = and i64 %20, 3
  %30 = icmp eq i64 %29, 0
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = add i64 %24, -4
  %34 = icmp ult i64 %33, 17179869181
  %35 = and i64 %24, 3
  %36 = icmp eq i64 %35, 0
  %37 = and i1 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = icmp eq i64 %20, %24
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %22, %18
  br label %41

41:                                               ; preds = %38, %26, %32, %16, %8, %12, %2, %5, %40
  %42 = phi i32 [ 0, %40 ], [ 8, %5 ], [ 8, %2 ], [ 11, %12 ], [ 11, %8 ], [ 9, %16 ], [ 11, %32 ], [ 11, %26 ], [ 9, %38 ]
  ret i32 %42
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"function_entry_count", i64 2}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !38, i64 36, !38, i64 37, !38, i64 38, !38, i64 39, !38, i64 40, !38, i64 41, !38, i64 42, !38, i64 43, !37, i64 44, !37, i64 48}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"branch_weights", i32 2, i32 0}
!42 = !{!36, !37, i64 16}
!43 = !{!"branch_weights", i32 0, i32 2}
!44 = !{!36, !40, i64 8}
