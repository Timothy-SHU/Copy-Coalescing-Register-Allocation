; ModuleID = 'treeup.c'
source_filename = "treeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_tree(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readnone %8, ptr noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = getelementptr inbounds %struct.arc, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, %5
  %16 = icmp slt i64 %10, 0
  %17 = and i1 %16, %15
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = icmp eq ptr %14, %4
  %20 = icmp sgt i64 %10, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %12
  %23 = tail call i64 @llvm.abs.i64(i64 %10, i1 true)
  br label %27

24:                                               ; preds = %18
  %25 = tail call i64 @llvm.abs.i64(i64 %10, i1 true)
  %26 = sub nsw i64 0, %25
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i64 [ %23, %22 ], [ %26, %24 ]
  br label %29

29:                                               ; preds = %36, %27
  %30 = phi ptr [ %6, %27 ], [ %37, %36 ]
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = add nsw i64 %31, %28
  store i64 %32, ptr %30, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.node, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %40, %29
  %37 = phi ptr [ %34, %29 ], [ %43, %40 ]
  br label %29

38:                                               ; preds = %29
  %39 = icmp eq ptr %30, %6
  br i1 %39, label %49, label %40

40:                                               ; preds = %38, %45
  %41 = phi ptr [ %47, %45 ], [ %30, %38 ]
  %42 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !18
  %48 = icmp eq ptr %47, %6
  br i1 %48, label %49, label %40

49:                                               ; preds = %38, %45
  %50 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 11
  %51 = load i64, ptr %50, align 8, !tbaa !19
  %52 = icmp eq ptr %4, %7
  br i1 %52, label %100, label %53

53:                                               ; preds = %49
  %54 = sub i64 0, %2
  br label %55

55:                                               ; preds = %53, %82
  %56 = phi i64 [ %98, %82 ], [ %51, %53 ]
  %57 = phi i64 [ %86, %82 ], [ %1, %53 ]
  %58 = phi i64 [ %91, %82 ], [ %3, %53 ]
  %59 = phi ptr [ %60, %82 ], [ %5, %53 ]
  %60 = phi ptr [ %63, %82 ], [ %4, %53 ]
  %61 = phi ptr [ %93, %82 ], [ %9, %53 ]
  %62 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  %64 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !17
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  br i1 %66, label %71, label %69

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.node, ptr %65, i64 0, i32 5
  store ptr %68, ptr %70, align 8, !tbaa !20
  br label %71

71:                                               ; preds = %55, %69
  %72 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 5
  %73 = icmp eq ptr %68, null
  %74 = getelementptr inbounds %struct.node, ptr %63, i64 0, i32 2
  %75 = getelementptr inbounds %struct.node, ptr %68, i64 0, i32 4
  %76 = select i1 %73, ptr %74, ptr %75
  store ptr %65, ptr %76, align 8, !tbaa !21
  store ptr %59, ptr %62, align 8, !tbaa !18
  %77 = getelementptr inbounds %struct.node, ptr %59, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !16
  store ptr %78, ptr %64, align 8, !tbaa !17
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.node, ptr %78, i64 0, i32 5
  store ptr %60, ptr %81, align 8, !tbaa !20
  br label %82

82:                                               ; preds = %80, %71
  store ptr %60, ptr %77, align 8, !tbaa !16
  store ptr null, ptr %72, align 8, !tbaa !20
  %83 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !22
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = icmp eq i64 %86, %0
  %88 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 10
  %89 = load i64, ptr %88, align 8, !tbaa !23
  %90 = select i1 %87, i64 %2, i64 %54
  %91 = add i64 %89, %90
  %92 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !24
  %94 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 11
  %95 = load i64, ptr %94, align 8, !tbaa !19
  %96 = trunc i64 %57 to i32
  store i32 %96, ptr %83, align 8, !tbaa !22
  %97 = getelementptr inbounds %struct.node, ptr %60, i64 0, i32 10
  store i64 %58, ptr %97, align 8, !tbaa !23
  store ptr %61, ptr %92, align 8, !tbaa !24
  store i64 %56, ptr %94, align 8, !tbaa !19
  %98 = sub nsw i64 %51, %95
  %99 = icmp eq ptr %63, %7
  br i1 %99, label %100, label %55, !llvm.loop !25

100:                                              ; preds = %82, %49
  %101 = icmp sgt i64 %2, %11
  %102 = icmp eq ptr %7, %8
  br i1 %101, label %104, label %103

103:                                              ; preds = %100
  br i1 %102, label %143, label %145

104:                                              ; preds = %100
  br i1 %102, label %107, label %105

105:                                              ; preds = %104
  %106 = sub i64 0, %2
  br label %111

107:                                              ; preds = %111, %104
  %108 = icmp eq ptr %5, %8
  br i1 %108, label %161, label %109

109:                                              ; preds = %107
  %110 = sub i64 0, %2
  br label %127

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %125, %111 ], [ %7, %105 ]
  %113 = getelementptr inbounds %struct.node, ptr %112, i64 0, i32 11
  %114 = load i64, ptr %113, align 8, !tbaa !19
  %115 = sub nsw i64 %114, %51
  store i64 %115, ptr %113, align 8, !tbaa !19
  %116 = getelementptr inbounds %struct.node, ptr %112, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !22
  %118 = sext i32 %117 to i64
  %119 = icmp eq i64 %118, %0
  %120 = getelementptr inbounds %struct.node, ptr %112, i64 0, i32 10
  %121 = load i64, ptr %120, align 8, !tbaa !23
  %122 = select i1 %119, i64 %106, i64 %2
  %123 = add i64 %121, %122
  store i64 %123, ptr %120, align 8, !tbaa !23
  %124 = getelementptr inbounds %struct.node, ptr %112, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !18
  %126 = icmp eq ptr %125, %8
  br i1 %126, label %107, label %111, !llvm.loop !27

127:                                              ; preds = %109, %127
  %128 = phi ptr [ %141, %127 ], [ %5, %109 ]
  %129 = getelementptr inbounds %struct.node, ptr %128, i64 0, i32 11
  %130 = load i64, ptr %129, align 8, !tbaa !19
  %131 = add nsw i64 %130, %51
  store i64 %131, ptr %129, align 8, !tbaa !19
  %132 = getelementptr inbounds %struct.node, ptr %128, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !22
  %134 = sext i32 %133 to i64
  %135 = icmp eq i64 %134, %0
  %136 = getelementptr inbounds %struct.node, ptr %128, i64 0, i32 10
  %137 = load i64, ptr %136, align 8, !tbaa !23
  %138 = select i1 %135, i64 %2, i64 %110
  %139 = add i64 %137, %138
  store i64 %139, ptr %136, align 8, !tbaa !23
  %140 = getelementptr inbounds %struct.node, ptr %128, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !18
  %142 = icmp eq ptr %141, %8
  br i1 %142, label %161, label %127, !llvm.loop !28

143:                                              ; preds = %145, %103
  %144 = icmp eq ptr %5, %8
  br i1 %144, label %161, label %153

145:                                              ; preds = %103, %145
  %146 = phi ptr [ %151, %145 ], [ %7, %103 ]
  %147 = getelementptr inbounds %struct.node, ptr %146, i64 0, i32 11
  %148 = load i64, ptr %147, align 8, !tbaa !19
  %149 = sub nsw i64 %148, %51
  store i64 %149, ptr %147, align 8, !tbaa !19
  %150 = getelementptr inbounds %struct.node, ptr %146, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !18
  %152 = icmp eq ptr %151, %8
  br i1 %152, label %143, label %145, !llvm.loop !29

153:                                              ; preds = %143, %153
  %154 = phi ptr [ %159, %153 ], [ %5, %143 ]
  %155 = getelementptr inbounds %struct.node, ptr %154, i64 0, i32 11
  %156 = load i64, ptr %155, align 8, !tbaa !19
  %157 = add nsw i64 %156, %51
  store i64 %157, ptr %155, align 8, !tbaa !19
  %158 = getelementptr inbounds %struct.node, ptr %154, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !18
  %160 = icmp eq ptr %159, %8
  br i1 %160, label %161, label %153, !llvm.loop !30

161:                                              ; preds = %153, %127, %143, %107
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 16}
!7 = !{!"arc", !8, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !12, i64 40, !12, i64 48, !11, i64 56, !11, i64 64}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"node", !11, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !11, i64 80, !11, i64 88, !8, i64 96, !8, i64 100}
!16 = !{!15, !12, i64 16}
!17 = !{!15, !12, i64 32}
!18 = !{!15, !12, i64 24}
!19 = !{!15, !11, i64 88}
!20 = !{!15, !12, i64 40}
!21 = !{!12, !12, i64 0}
!22 = !{!15, !8, i64 8}
!23 = !{!15, !11, i64 80}
!24 = !{!15, !12, i64 48}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
