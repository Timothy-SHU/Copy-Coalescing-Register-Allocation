; ModuleID = 'liblzma/check/crc32_fast.c'
source_filename = "liblzma/check/crc32_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_crc32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = xor i32 %2, -1
  %5 = icmp ugt i64 %1, 8
  br i1 %5, label %6, label %88

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %0, %6 ]
  %12 = phi i64 [ %24, %10 ], [ %1, %6 ]
  %13 = phi i32 [ %23, %10 ], [ %4, %6 ]
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %11, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = and i32 %13, 255
  %18 = xor i32 %17, %16
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = lshr i32 %13, 8
  %23 = xor i32 %21, %22
  %24 = add i64 %12, -1
  %25 = ptrtoint ptr %14 to i64
  %26 = and i64 %25, 7
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %10, !llvm.loop !10

28:                                               ; preds = %10, %6
  %29 = phi i32 [ %4, %6 ], [ %23, %10 ]
  %30 = phi i64 [ %1, %6 ], [ %24, %10 ]
  %31 = phi ptr [ %0, %6 ], [ %14, %10 ]
  %32 = and i64 %30, -8
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = and i64 %30, 7
  %35 = icmp sgt i64 %32, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %28, %36
  %37 = phi ptr [ %61, %36 ], [ %31, %28 ]
  %38 = phi i32 [ %86, %36 ], [ %29, %28 ]
  %39 = load i32, ptr %37, align 4, !tbaa !8
  %40 = xor i32 %39, %38
  %41 = getelementptr inbounds i8, ptr %37, i64 4
  %42 = and i32 %40, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 7, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %46 = lshr i32 %40, 8
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 6, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %51 = lshr i32 %40, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 5, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = lshr i32 %40, 24
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 4, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = load i32, ptr %41, align 4, !tbaa !8
  %61 = getelementptr inbounds i8, ptr %37, i64 8
  %62 = and i32 %60, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 3, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %66 = lshr i32 %60, 8
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 2, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %71 = lshr i32 %60, 16
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [8 x [256 x i32]], ptr @lzma_crc32_table, i64 0, i64 1, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !8
  %76 = lshr i32 %60, 24
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !8
  %80 = xor i32 %50, %45
  %81 = xor i32 %80, %55
  %82 = xor i32 %81, %59
  %83 = xor i32 %82, %65
  %84 = xor i32 %83, %70
  %85 = xor i32 %84, %75
  %86 = xor i32 %85, %79
  %87 = icmp ult ptr %61, %33
  br i1 %87, label %36, label %88, !llvm.loop !12

88:                                               ; preds = %36, %28, %3
  %89 = phi i32 [ %4, %3 ], [ %29, %28 ], [ %86, %36 ]
  %90 = phi i64 [ %1, %3 ], [ %34, %28 ], [ %34, %36 ]
  %91 = phi ptr [ %0, %3 ], [ %31, %28 ], [ %61, %36 ]
  %92 = icmp eq i64 %90, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %88, %93
  %94 = phi ptr [ %98, %93 ], [ %91, %88 ]
  %95 = phi i64 [ %97, %93 ], [ %90, %88 ]
  %96 = phi i32 [ %107, %93 ], [ %89, %88 ]
  %97 = add nsw i64 %95, -1
  %98 = getelementptr inbounds i8, ptr %94, i64 1
  %99 = load i8, ptr %94, align 1, !tbaa !5
  %100 = zext i8 %99 to i32
  %101 = and i32 %96, 255
  %102 = xor i32 %101, %100
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %106 = lshr i32 %96, 8
  %107 = xor i32 %105, %106
  %108 = icmp eq i64 %97, 0
  br i1 %108, label %109, label %93, !llvm.loop !13

109:                                              ; preds = %93, %88
  %110 = phi i32 [ %89, %88 ], [ %107, %93 ]
  %111 = xor i32 %110, -1
  ret i32 %111
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
