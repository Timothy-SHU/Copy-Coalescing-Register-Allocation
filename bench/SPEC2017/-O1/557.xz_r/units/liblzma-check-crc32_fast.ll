; ModuleID = 'liblzma/check/crc32_fast.c'
source_filename = "liblzma/check/crc32_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = xor i32 %2, -1
  %5 = icmp ugt i64 %1, 8
  br i1 %5, label %6, label %88, !prof !35

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10, !prof !36

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %0, %6 ]
  %12 = phi i64 [ %24, %10 ], [ %1, %6 ]
  %13 = phi i32 [ %23, %10 ], [ %4, %6 ]
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %11, align 1, !tbaa !37
  %16 = zext i8 %15 to i32
  %17 = and i32 %13, 255
  %18 = xor i32 %17, %16
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !40
  %22 = lshr i32 %13, 8
  %23 = xor i32 %21, %22
  %24 = add i64 %12, -1
  %25 = ptrtoint ptr %14 to i64
  %26 = and i64 %25, 7
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %10, !prof !36, !llvm.loop !42

28:                                               ; preds = %10, %6
  %29 = phi i32 [ %4, %6 ], [ %23, %10 ]
  %30 = phi i64 [ %1, %6 ], [ %24, %10 ]
  %31 = phi ptr [ %0, %6 ], [ %14, %10 ]
  %32 = and i64 %30, -8
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = and i64 %30, 7
  %35 = icmp sgt i64 %32, 0
  br i1 %35, label %36, label %88, !prof !45

36:                                               ; preds = %28, %36
  %37 = phi ptr [ %61, %36 ], [ %31, %28 ]
  %38 = phi i32 [ %86, %36 ], [ %29, %28 ]
  %39 = load i32, ptr %37, align 4, !tbaa !40
  %40 = xor i32 %39, %38
  %41 = getelementptr inbounds i8, ptr %37, i64 4
  %42 = and i32 %40, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 7, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !40
  %46 = lshr i32 %40, 8
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 6, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = lshr i32 %40, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 5, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !40
  %56 = lshr i32 %40, 24
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 4, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !40
  %60 = load i32, ptr %41, align 4, !tbaa !40
  %61 = getelementptr inbounds i8, ptr %37, i64 8
  %62 = and i32 %60, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 3, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !40
  %66 = lshr i32 %60, 8
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 2, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !40
  %71 = lshr i32 %60, 16
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 1, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !40
  %76 = lshr i32 %60, 24
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !40
  %80 = xor i32 %50, %45
  %81 = xor i32 %80, %55
  %82 = xor i32 %81, %59
  %83 = xor i32 %82, %65
  %84 = xor i32 %83, %70
  %85 = xor i32 %84, %75
  %86 = xor i32 %85, %79
  %87 = icmp ult ptr %61, %33
  br i1 %87, label %36, label %88, !prof !46, !llvm.loop !47

88:                                               ; preds = %36, %28, %3
  %89 = phi i32 [ %4, %3 ], [ %29, %28 ], [ %86, %36 ]
  %90 = phi i64 [ %1, %3 ], [ %34, %28 ], [ %34, %36 ]
  %91 = phi ptr [ %0, %3 ], [ %31, %28 ], [ %61, %36 ]
  %92 = icmp eq i64 %90, 0
  br i1 %92, label %109, label %93, !prof !46

93:                                               ; preds = %88, %93
  %94 = phi ptr [ %98, %93 ], [ %91, %88 ]
  %95 = phi i64 [ %97, %93 ], [ %90, %88 ]
  %96 = phi i32 [ %107, %93 ], [ %89, %88 ]
  %97 = add nsw i64 %95, -1
  %98 = getelementptr inbounds i8, ptr %94, i64 1
  %99 = load i8, ptr %94, align 1, !tbaa !37
  %100 = zext i8 %99 to i32
  %101 = and i32 %96, 255
  %102 = xor i32 %101, %100
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !40
  %106 = lshr i32 %96, 8
  %107 = xor i32 %105, %106
  %108 = icmp eq i64 %97, 0
  br i1 %108, label %109, label %93, !prof !48, !llvm.loop !49

109:                                              ; preds = %93, %88
  %110 = phi i32 [ %89, %88 ], [ %107, %93 ]
  %111 = xor i32 %110, -1
  ret i32 %111
}

attributes #0 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"function_entry_count", i64 12}
!35 = !{!"branch_weights", i32 3, i32 9}
!36 = !{!"branch_weights", i32 1, i32 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"branch_weights", i32 191, i32 1}
!46 = !{!"branch_weights", i32 1, i32 191}
!47 = distinct !{!47, !43, !44}
!48 = !{!"branch_weights", i32 191, i32 769}
!49 = distinct !{!49, !43, !44}
