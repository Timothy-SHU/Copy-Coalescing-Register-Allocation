; ModuleID = 'src/jfdctint.c'
source_filename = "src/jfdctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_fdct_islow(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 7, %1 ], [ %95, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %94, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %4, i64 7
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = add nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = sub nsw i32 %5, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %4, i64 6
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = add nsw i32 %15, %13
  %17 = sext i32 %16 to i64
  %18 = sub nsw i32 %13, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %4, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, ptr %4, i64 5
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = add nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = sub nsw i32 %21, %23
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 3
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %4, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = add nsw i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = sub nsw i32 %29, %31
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %9
  %37 = sub nsw i64 %9, %33
  %38 = add nsw i64 %25, %17
  %39 = sub nsw i64 %17, %25
  %40 = add nsw i64 %36, %38
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 2
  store i32 %42, ptr %4, align 4, !tbaa !5
  %43 = sub nsw i64 %36, %38
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 2
  store i32 %45, ptr %30, align 4, !tbaa !5
  %46 = add nsw i64 %37, %39
  %47 = mul nsw i64 %46, 4433
  %48 = mul nsw i64 %37, 6270
  %49 = add nsw i64 %47, 1024
  %50 = add nsw i64 %49, %48
  %51 = lshr i64 %50, 11
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %20, align 4, !tbaa !5
  %53 = mul i64 %39, 8796093007071
  %54 = add nsw i64 %47, 1024
  %55 = add i64 %54, %53
  %56 = lshr i64 %55, 11
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %14, align 4, !tbaa !5
  %58 = add nsw i64 %35, %11
  %59 = add nsw i64 %27, %19
  %60 = add nsw i64 %35, %19
  %61 = add nsw i64 %27, %11
  %62 = add nsw i64 %60, %61
  %63 = mul nsw i64 %62, 9633
  %64 = mul nsw i64 %35, 2446
  %65 = mul nsw i64 %27, 16819
  %66 = mul nsw i64 %19, 25172
  %67 = mul nsw i64 %11, 12299
  %68 = mul nsw i64 %58, -7373
  %69 = mul nsw i64 %59, -20995
  %70 = mul nsw i64 %60, -16069
  %71 = mul nsw i64 %61, -3196
  %72 = add nsw i64 %63, %70
  %73 = add nsw i64 %63, %71
  %74 = add nsw i64 %68, 1024
  %75 = add nsw i64 %74, %64
  %76 = add nsw i64 %75, %72
  %77 = lshr i64 %76, 11
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %6, align 4, !tbaa !5
  %79 = add nsw i64 %69, 1024
  %80 = add nsw i64 %79, %65
  %81 = add nsw i64 %80, %73
  %82 = lshr i64 %81, 11
  %83 = trunc i64 %82 to i32
  store i32 %83, ptr %22, align 4, !tbaa !5
  %84 = add nsw i64 %69, 1024
  %85 = add nsw i64 %84, %66
  %86 = add nsw i64 %85, %72
  %87 = lshr i64 %86, 11
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %28, align 4, !tbaa !5
  %89 = add nsw i64 %68, 1024
  %90 = add nsw i64 %89, %67
  %91 = add nsw i64 %90, %73
  %92 = lshr i64 %91, 11
  %93 = trunc i64 %92 to i32
  store i32 %93, ptr %12, align 4, !tbaa !5
  %94 = getelementptr inbounds i32, ptr %4, i64 8
  %95 = add nsw i32 %3, -1
  %96 = icmp eq i32 %3, 0
  br i1 %96, label %97, label %2, !llvm.loop !9

97:                                               ; preds = %2, %97
  %98 = phi i32 [ %192, %97 ], [ 7, %2 ]
  %99 = phi ptr [ %191, %97 ], [ %0, %2 ]
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = getelementptr inbounds i32, ptr %99, i64 56
  %102 = load i32, ptr %101, align 4, !tbaa !5
  %103 = add nsw i32 %102, %100
  %104 = sext i32 %103 to i64
  %105 = sub nsw i32 %100, %102
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %99, i64 8
  %108 = load i32, ptr %107, align 4, !tbaa !5
  %109 = getelementptr inbounds i32, ptr %99, i64 48
  %110 = load i32, ptr %109, align 4, !tbaa !5
  %111 = add nsw i32 %110, %108
  %112 = sext i32 %111 to i64
  %113 = sub nsw i32 %108, %110
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %99, i64 16
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = getelementptr inbounds i32, ptr %99, i64 40
  %118 = load i32, ptr %117, align 4, !tbaa !5
  %119 = add nsw i32 %118, %116
  %120 = sext i32 %119 to i64
  %121 = sub nsw i32 %116, %118
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %99, i64 24
  %124 = load i32, ptr %123, align 4, !tbaa !5
  %125 = getelementptr inbounds i32, ptr %99, i64 32
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = add nsw i32 %126, %124
  %128 = sext i32 %127 to i64
  %129 = sub nsw i32 %124, %126
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %104
  %132 = sub nsw i64 %104, %128
  %133 = add nsw i64 %120, %112
  %134 = sub nsw i64 %112, %120
  %135 = add nsw i64 %133, 2
  %136 = add nsw i64 %135, %131
  %137 = lshr i64 %136, 2
  %138 = trunc i64 %137 to i32
  store i32 %138, ptr %99, align 4, !tbaa !5
  %139 = sub nsw i64 %131, %133
  %140 = add nsw i64 %139, 2
  %141 = lshr i64 %140, 2
  %142 = trunc i64 %141 to i32
  store i32 %142, ptr %125, align 4, !tbaa !5
  %143 = add nsw i64 %132, %134
  %144 = mul nsw i64 %143, 4433
  %145 = mul nsw i64 %132, 6270
  %146 = add nsw i64 %144, 16384
  %147 = add nsw i64 %146, %145
  %148 = lshr i64 %147, 15
  %149 = trunc i64 %148 to i32
  store i32 %149, ptr %115, align 4, !tbaa !5
  %150 = mul i64 %134, 140737488340191
  %151 = add nsw i64 %144, 16384
  %152 = add i64 %151, %150
  %153 = lshr i64 %152, 15
  %154 = trunc i64 %153 to i32
  store i32 %154, ptr %109, align 4, !tbaa !5
  %155 = add nsw i64 %130, %106
  %156 = add nsw i64 %122, %114
  %157 = add nsw i64 %130, %114
  %158 = add nsw i64 %122, %106
  %159 = add nsw i64 %157, %158
  %160 = mul nsw i64 %159, 9633
  %161 = mul nsw i64 %130, 2446
  %162 = mul nsw i64 %122, 16819
  %163 = mul nsw i64 %114, 25172
  %164 = mul nsw i64 %106, 12299
  %165 = mul nsw i64 %155, -7373
  %166 = mul nsw i64 %156, -20995
  %167 = mul nsw i64 %157, -16069
  %168 = mul nsw i64 %158, -3196
  %169 = add nsw i64 %160, %167
  %170 = add nsw i64 %160, %168
  %171 = add nsw i64 %165, 16384
  %172 = add nsw i64 %171, %161
  %173 = add nsw i64 %172, %169
  %174 = lshr i64 %173, 15
  %175 = trunc i64 %174 to i32
  store i32 %175, ptr %101, align 4, !tbaa !5
  %176 = add nsw i64 %166, 16384
  %177 = add nsw i64 %176, %162
  %178 = add nsw i64 %177, %170
  %179 = lshr i64 %178, 15
  %180 = trunc i64 %179 to i32
  store i32 %180, ptr %117, align 4, !tbaa !5
  %181 = add nsw i64 %166, 16384
  %182 = add nsw i64 %181, %163
  %183 = add nsw i64 %182, %169
  %184 = lshr i64 %183, 15
  %185 = trunc i64 %184 to i32
  store i32 %185, ptr %123, align 4, !tbaa !5
  %186 = add nsw i64 %165, 16384
  %187 = add nsw i64 %186, %164
  %188 = add nsw i64 %187, %170
  %189 = lshr i64 %188, 15
  %190 = trunc i64 %189 to i32
  store i32 %190, ptr %107, align 4, !tbaa !5
  %191 = getelementptr inbounds i32, ptr %99, i64 1
  %192 = add nsw i32 %98, -1
  %193 = icmp eq i32 %98, 0
  br i1 %193, label %194, label %97, !llvm.loop !11

194:                                              ; preds = %97
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
