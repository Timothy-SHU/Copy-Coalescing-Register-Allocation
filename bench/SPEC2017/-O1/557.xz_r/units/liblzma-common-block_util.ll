; ModuleID = 'liblzma/common/block_util.c'
source_filename = "liblzma/common/block_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_block_compressed_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0), !range !38
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !39
  %8 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = tail call i32 @lzma_check_size(i32 noundef %9) #2
  %11 = add i32 %10, %7
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = sub i64 %1, %12
  %16 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i64 %17, -1
  %19 = icmp eq i64 %17, %15
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i64 %15, ptr %16, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %5, %14, %21, %2
  %23 = phi i32 [ 11, %2 ], [ 9, %5 ], [ 0, %21 ], [ 9, %14 ]
  ret i32 %23
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_block_unpadded_size(ptr noundef readonly %0) local_unnamed_addr #0 !prof !48 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3, !prof !49

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36, !prof !51

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %9, 1017
  %11 = and i32 %8, 3
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %36, !prof !51

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !47
  %17 = icmp slt i64 %16, -1
  %18 = icmp eq i64 %16, 0
  %19 = or i1 %17, %18
  br i1 %19, label %36, label %20, !prof !49

20:                                               ; preds = %14
  %21 = icmp eq i64 %16, -1
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp ugt i32 %23, 15
  %25 = or i1 %21, %24
  %26 = xor i1 %24, true
  %27 = sext i1 %26 to i64
  br i1 %25, label %36, label %28, !prof !52

28:                                               ; preds = %20
  %29 = zext i32 %8 to i64
  %30 = add i64 %16, %29
  %31 = tail call i32 @lzma_check_size(i32 noundef %23) #2
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = icmp ugt i64 %33, 9223372036854775804
  %35 = select i1 %34, i64 0, i64 %33, !prof !53
  br label %36

36:                                               ; preds = %20, %1, %3, %6, %14, %28
  %37 = phi i64 [ %35, %28 ], [ 0, %14 ], [ %27, %20 ], [ 0, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i64 %37
}

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_block_total_size(ptr noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0), !range !38
  %3 = icmp eq i64 %2, -1
  %4 = add nuw nsw i64 %2, 3
  %5 = and i64 %4, -4
  %6 = select i1 %3, i64 -1, i64 %5
  ret i64 %6
}

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @lzma_block_unpadded_size, ptr @lzma_check_size, i64 3}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{i64 -1, i64 9223372036854775805}
!39 = !{!40, !41, i64 4}
!40 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 16, !44, i64 24, !45, i64 32, !42, i64 40, !45, i64 104, !45, i64 112, !45, i64 120, !41, i64 128, !41, i64 132, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !42, i64 200, !42, i64 201, !42, i64 202, !42, i64 203, !42, i64 204, !42, i64 205, !42, i64 206, !42, i64 207}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"long", !42, i64 0}
!45 = !{!"any pointer", !42, i64 0}
!46 = !{!40, !41, i64 8}
!47 = !{!40, !44, i64 16}
!48 = !{!"function_entry_count", i64 6}
!49 = !{!"branch_weights", i32 0, i32 6}
!50 = !{!40, !41, i64 0}
!51 = !{!"branch_weights", i32 6, i32 0}
!52 = !{!"branch_weights", i32 3, i32 3}
!53 = !{!"branch_weights", i32 0, i32 3}
