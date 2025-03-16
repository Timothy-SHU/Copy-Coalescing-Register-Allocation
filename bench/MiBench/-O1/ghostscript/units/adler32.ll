; ModuleID = 'adler32.c'
source_filename = "adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %141, label %5

5:                                                ; preds = %3
  %6 = lshr i64 %0, 16
  %7 = and i64 %6, 65535
  %8 = and i64 %0, 65535
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %136, label %10

10:                                               ; preds = %5, %129
  %11 = phi i64 [ %134, %129 ], [ %7, %5 ]
  %12 = phi i64 [ %133, %129 ], [ %8, %5 ]
  %13 = phi i32 [ %16, %129 ], [ %2, %5 ]
  %14 = phi ptr [ %130, %129 ], [ %1, %5 ]
  %15 = tail call i32 @llvm.umin.i32(i32 %13, i32 5552)
  %16 = sub i32 %13, %15
  %17 = icmp ugt i32 %13, 15
  br i1 %17, label %18, label %105

18:                                               ; preds = %10, %18
  %19 = phi i32 [ %103, %18 ], [ %15, %10 ]
  %20 = phi i64 [ %101, %18 ], [ %11, %10 ]
  %21 = phi i64 [ %100, %18 ], [ %12, %10 ]
  %22 = phi ptr [ %102, %18 ], [ %14, %10 ]
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = zext i8 %23 to i64
  %25 = add i64 %21, %24
  %26 = add i64 %25, %20
  %27 = getelementptr inbounds i8, ptr %22, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i64
  %30 = add i64 %25, %29
  %31 = add i64 %26, %30
  %32 = getelementptr inbounds i8, ptr %22, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i64
  %35 = add i64 %30, %34
  %36 = add i64 %31, %35
  %37 = getelementptr inbounds i8, ptr %22, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i64
  %40 = add i64 %35, %39
  %41 = add i64 %36, %40
  %42 = getelementptr inbounds i8, ptr %22, i64 4
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = zext i8 %43 to i64
  %45 = add i64 %40, %44
  %46 = add i64 %41, %45
  %47 = getelementptr inbounds i8, ptr %22, i64 5
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = zext i8 %48 to i64
  %50 = add i64 %45, %49
  %51 = add i64 %46, %50
  %52 = getelementptr inbounds i8, ptr %22, i64 6
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = zext i8 %53 to i64
  %55 = add i64 %50, %54
  %56 = add i64 %51, %55
  %57 = getelementptr inbounds i8, ptr %22, i64 7
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = zext i8 %58 to i64
  %60 = add i64 %55, %59
  %61 = add i64 %56, %60
  %62 = getelementptr inbounds i8, ptr %22, i64 8
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = zext i8 %63 to i64
  %65 = add i64 %60, %64
  %66 = add i64 %61, %65
  %67 = getelementptr inbounds i8, ptr %22, i64 9
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = zext i8 %68 to i64
  %70 = add i64 %65, %69
  %71 = add i64 %66, %70
  %72 = getelementptr inbounds i8, ptr %22, i64 10
  %73 = load i8, ptr %72, align 1, !tbaa !5
  %74 = zext i8 %73 to i64
  %75 = add i64 %70, %74
  %76 = add i64 %71, %75
  %77 = getelementptr inbounds i8, ptr %22, i64 11
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = zext i8 %78 to i64
  %80 = add i64 %75, %79
  %81 = add i64 %76, %80
  %82 = getelementptr inbounds i8, ptr %22, i64 12
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = zext i8 %83 to i64
  %85 = add i64 %80, %84
  %86 = add i64 %81, %85
  %87 = getelementptr inbounds i8, ptr %22, i64 13
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = zext i8 %88 to i64
  %90 = add i64 %85, %89
  %91 = add i64 %86, %90
  %92 = getelementptr inbounds i8, ptr %22, i64 14
  %93 = load i8, ptr %92, align 1, !tbaa !5
  %94 = zext i8 %93 to i64
  %95 = add i64 %90, %94
  %96 = add i64 %91, %95
  %97 = getelementptr inbounds i8, ptr %22, i64 15
  %98 = load i8, ptr %97, align 1, !tbaa !5
  %99 = zext i8 %98 to i64
  %100 = add i64 %95, %99
  %101 = add i64 %96, %100
  %102 = getelementptr inbounds i8, ptr %22, i64 16
  %103 = add nsw i32 %19, -16
  %104 = icmp sgt i32 %19, 31
  br i1 %104, label %18, label %105, !llvm.loop !8

105:                                              ; preds = %18, %10
  %106 = phi ptr [ %14, %10 ], [ %102, %18 ]
  %107 = phi i64 [ %12, %10 ], [ %100, %18 ]
  %108 = phi i64 [ %11, %10 ], [ %101, %18 ]
  %109 = phi i32 [ %15, %10 ], [ %103, %18 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = add nsw i32 %109, -1
  %113 = zext i32 %112 to i64
  br label %114

114:                                              ; preds = %111, %114
  %115 = phi ptr [ %119, %114 ], [ %106, %111 ]
  %116 = phi i64 [ %122, %114 ], [ %107, %111 ]
  %117 = phi i64 [ %123, %114 ], [ %108, %111 ]
  %118 = phi i32 [ %124, %114 ], [ %109, %111 ]
  %119 = getelementptr inbounds i8, ptr %115, i64 1
  %120 = load i8, ptr %115, align 1, !tbaa !5
  %121 = zext i8 %120 to i64
  %122 = add i64 %116, %121
  %123 = add i64 %122, %117
  %124 = add nsw i32 %118, -1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %114, !llvm.loop !10

126:                                              ; preds = %114
  %127 = getelementptr i8, ptr %106, i64 1
  %128 = getelementptr i8, ptr %127, i64 %113
  br label %129

129:                                              ; preds = %126, %105
  %130 = phi ptr [ %106, %105 ], [ %128, %126 ]
  %131 = phi i64 [ %107, %105 ], [ %122, %126 ]
  %132 = phi i64 [ %108, %105 ], [ %123, %126 ]
  %133 = urem i64 %131, 65521
  %134 = urem i64 %132, 65521
  %135 = icmp eq i32 %16, 0
  br i1 %135, label %136, label %10, !llvm.loop !11

136:                                              ; preds = %129, %5
  %137 = phi i64 [ %8, %5 ], [ %133, %129 ]
  %138 = phi i64 [ %7, %5 ], [ %134, %129 ]
  %139 = shl nuw nsw i64 %138, 16
  %140 = or disjoint i64 %139, %137
  br label %141

141:                                              ; preds = %3, %136
  %142 = phi i64 [ %140, %136 ], [ 1, %3 ]
  ret i64 %142
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
