; ModuleID = 'src/jfdctfst.c'
source_filename = "src/jfdctfst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_fdct_ifast(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 7, %1 ], [ %70, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %69, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %4, i64 7
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = add nsw i32 %7, %5
  %9 = sub nsw i32 %5, %7
  %10 = getelementptr inbounds i32, ptr %4, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, ptr %4, i64 6
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, %11
  %15 = sub nsw i32 %11, %13
  %16 = getelementptr inbounds i32, ptr %4, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds i32, ptr %4, i64 5
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = add nsw i32 %19, %17
  %21 = sub nsw i32 %17, %19
  %22 = getelementptr inbounds i32, ptr %4, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, ptr %4, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %23
  %27 = sub nsw i32 %23, %25
  %28 = add nsw i32 %26, %8
  %29 = sub nsw i32 %8, %26
  %30 = add nsw i32 %20, %14
  %31 = sub i32 %14, %20
  %32 = add nsw i32 %28, %30
  store i32 %32, ptr %4, align 4, !tbaa !5
  %33 = sub nsw i32 %28, %30
  store i32 %33, ptr %24, align 4, !tbaa !5
  %34 = add nsw i32 %31, %29
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 181
  %37 = lshr i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %29, %38
  store i32 %39, ptr %16, align 4, !tbaa !5
  %40 = sub nsw i32 %29, %38
  store i32 %40, ptr %12, align 4, !tbaa !5
  %41 = add nsw i32 %27, %21
  %42 = add nsw i32 %21, %15
  %43 = add nsw i32 %15, %9
  %44 = sub nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 98
  %47 = lshr i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %41 to i64
  %50 = mul nsw i64 %49, 139
  %51 = lshr i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %48, %52
  %54 = sext i32 %43 to i64
  %55 = mul nsw i64 %54, 334
  %56 = lshr i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %48, %57
  %59 = sext i32 %42 to i64
  %60 = mul nsw i64 %59, 181
  %61 = lshr i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = add nsw i32 %9, %62
  %64 = sub nsw i32 %9, %62
  %65 = add nsw i32 %53, %64
  store i32 %65, ptr %18, align 4, !tbaa !5
  %66 = sub nsw i32 %64, %53
  store i32 %66, ptr %22, align 4, !tbaa !5
  %67 = add nsw i32 %58, %63
  store i32 %67, ptr %10, align 4, !tbaa !5
  %68 = sub nsw i32 %63, %58
  store i32 %68, ptr %6, align 4, !tbaa !5
  %69 = getelementptr inbounds i32, ptr %4, i64 8
  %70 = add nsw i32 %3, -1
  %71 = icmp eq i32 %3, 0
  br i1 %71, label %72, label %2, !llvm.loop !9

72:                                               ; preds = %2, %72
  %73 = phi i32 [ %140, %72 ], [ 7, %2 ]
  %74 = phi ptr [ %139, %72 ], [ %0, %2 ]
  %75 = load i32, ptr %74, align 4, !tbaa !5
  %76 = getelementptr inbounds i32, ptr %74, i64 56
  %77 = load i32, ptr %76, align 4, !tbaa !5
  %78 = add nsw i32 %77, %75
  %79 = sub nsw i32 %75, %77
  %80 = getelementptr inbounds i32, ptr %74, i64 8
  %81 = load i32, ptr %80, align 4, !tbaa !5
  %82 = getelementptr inbounds i32, ptr %74, i64 48
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = add nsw i32 %83, %81
  %85 = sub nsw i32 %81, %83
  %86 = getelementptr inbounds i32, ptr %74, i64 16
  %87 = load i32, ptr %86, align 4, !tbaa !5
  %88 = getelementptr inbounds i32, ptr %74, i64 40
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = add nsw i32 %89, %87
  %91 = sub nsw i32 %87, %89
  %92 = getelementptr inbounds i32, ptr %74, i64 24
  %93 = load i32, ptr %92, align 4, !tbaa !5
  %94 = getelementptr inbounds i32, ptr %74, i64 32
  %95 = load i32, ptr %94, align 4, !tbaa !5
  %96 = add nsw i32 %95, %93
  %97 = sub nsw i32 %93, %95
  %98 = add nsw i32 %96, %78
  %99 = sub nsw i32 %78, %96
  %100 = add nsw i32 %90, %84
  %101 = sub i32 %84, %90
  %102 = add nsw i32 %98, %100
  store i32 %102, ptr %74, align 4, !tbaa !5
  %103 = sub nsw i32 %98, %100
  store i32 %103, ptr %94, align 4, !tbaa !5
  %104 = add nsw i32 %101, %99
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 181
  %107 = lshr i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = add nsw i32 %99, %108
  store i32 %109, ptr %86, align 4, !tbaa !5
  %110 = sub nsw i32 %99, %108
  store i32 %110, ptr %82, align 4, !tbaa !5
  %111 = add nsw i32 %97, %91
  %112 = add nsw i32 %91, %85
  %113 = add nsw i32 %85, %79
  %114 = sub nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, 98
  %117 = lshr i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = sext i32 %111 to i64
  %120 = mul nsw i64 %119, 139
  %121 = lshr i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = add nsw i32 %118, %122
  %124 = sext i32 %113 to i64
  %125 = mul nsw i64 %124, 334
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = add nsw i32 %118, %127
  %129 = sext i32 %112 to i64
  %130 = mul nsw i64 %129, 181
  %131 = lshr i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = add nsw i32 %79, %132
  %134 = sub nsw i32 %79, %132
  %135 = add nsw i32 %123, %134
  store i32 %135, ptr %88, align 4, !tbaa !5
  %136 = sub nsw i32 %134, %123
  store i32 %136, ptr %92, align 4, !tbaa !5
  %137 = add nsw i32 %128, %133
  store i32 %137, ptr %80, align 4, !tbaa !5
  %138 = sub nsw i32 %133, %128
  store i32 %138, ptr %76, align 4, !tbaa !5
  %139 = getelementptr inbounds i32, ptr %74, i64 1
  %140 = add nsw i32 %73, -1
  %141 = icmp eq i32 %73, 0
  br i1 %141, label %142, label %72, !llvm.loop !11

142:                                              ; preds = %72
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
