; ModuleID = 'src/memmove.c'
source_filename = "src/memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @memmove(ptr noundef nonnull returned %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  %5 = icmp eq ptr %0, %1
  %6 = or i1 %5, %4
  br i1 %6, label %122, label %7

7:                                                ; preds = %3
  %8 = icmp ult ptr %0, %1
  br i1 %8, label %9, label %65

9:                                                ; preds = %7
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = or i64 %10, %11
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = xor i64 %10, %11
  %17 = and i64 %16, 3
  %18 = icmp ne i64 %17, 0
  %19 = icmp ult i64 %2, 4
  %20 = or i1 %19, %18
  %21 = and i64 %10, 3
  %22 = sub nuw nsw i64 4, %21
  %23 = select i1 %20, i64 %2, i64 %22
  br label %24

24:                                               ; preds = %24, %15
  %25 = phi ptr [ %0, %15 ], [ %30, %24 ]
  %26 = phi ptr [ %1, %15 ], [ %28, %24 ]
  %27 = phi i64 [ %23, %15 ], [ %31, %24 ]
  %28 = getelementptr inbounds i8, ptr %26, i64 1
  %29 = load i8, ptr %26, align 1, !tbaa !5
  %30 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %29, ptr %25, align 1, !tbaa !5
  %31 = add i64 %27, -1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %24, !llvm.loop !8

33:                                               ; preds = %24
  %34 = sub i64 %2, %23
  br label %35

35:                                               ; preds = %33, %9
  %36 = phi i64 [ %2, %9 ], [ %34, %33 ]
  %37 = phi ptr [ %0, %9 ], [ %30, %33 ]
  %38 = phi ptr [ %1, %9 ], [ %28, %33 ]
  %39 = icmp ult i64 %36, 4
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = lshr i64 %36, 2
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %48, %42 ], [ %37, %40 ]
  %44 = phi ptr [ %47, %42 ], [ %38, %40 ]
  %45 = phi i64 [ %49, %42 ], [ %41, %40 ]
  %46 = load i32, ptr %44, align 4, !tbaa !10
  store i32 %46, ptr %43, align 4, !tbaa !10
  %47 = getelementptr inbounds i8, ptr %44, i64 4
  %48 = getelementptr inbounds i8, ptr %43, i64 4
  %49 = add nsw i64 %45, -1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %42, !llvm.loop !12

51:                                               ; preds = %42, %35
  %52 = phi ptr [ %37, %35 ], [ %48, %42 ]
  %53 = phi ptr [ %38, %35 ], [ %47, %42 ]
  %54 = and i64 %36, 3
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %122, label %56

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %62, %56 ], [ %52, %51 ]
  %58 = phi ptr [ %60, %56 ], [ %53, %51 ]
  %59 = phi i64 [ %63, %56 ], [ %54, %51 ]
  %60 = getelementptr inbounds i8, ptr %58, i64 1
  %61 = load i8, ptr %58, align 1, !tbaa !5
  %62 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %61, ptr %57, align 1, !tbaa !5
  %63 = add nsw i64 %59, -1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %122, label %56, !llvm.loop !13

65:                                               ; preds = %7
  %66 = getelementptr inbounds i8, ptr %1, i64 %2
  %67 = getelementptr inbounds i8, ptr %0, i64 %2
  %68 = ptrtoint ptr %66 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = or i64 %68, %69
  %71 = and i64 %70, 3
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %65
  %74 = xor i64 %68, %69
  %75 = and i64 %74, 3
  %76 = icmp ne i64 %75, 0
  %77 = icmp ult i64 %2, 5
  %78 = or i1 %77, %76
  %79 = and i64 %68, 3
  %80 = select i1 %78, i64 %2, i64 %79
  br label %81

81:                                               ; preds = %81, %73
  %82 = phi ptr [ %67, %73 ], [ %87, %81 ]
  %83 = phi ptr [ %66, %73 ], [ %85, %81 ]
  %84 = phi i64 [ %80, %73 ], [ %88, %81 ]
  %85 = getelementptr inbounds i8, ptr %83, i64 -1
  %86 = load i8, ptr %85, align 1, !tbaa !5
  %87 = getelementptr inbounds i8, ptr %82, i64 -1
  store i8 %86, ptr %87, align 1, !tbaa !5
  %88 = add i64 %84, -1
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %81, !llvm.loop !14

90:                                               ; preds = %81
  %91 = sub i64 %2, %80
  br label %92

92:                                               ; preds = %90, %65
  %93 = phi i64 [ %2, %65 ], [ %91, %90 ]
  %94 = phi ptr [ %67, %65 ], [ %87, %90 ]
  %95 = phi ptr [ %66, %65 ], [ %85, %90 ]
  %96 = icmp ult i64 %93, 4
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = lshr i64 %93, 2
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi ptr [ %104, %99 ], [ %94, %97 ]
  %101 = phi ptr [ %103, %99 ], [ %95, %97 ]
  %102 = phi i64 [ %106, %99 ], [ %98, %97 ]
  %103 = getelementptr inbounds i8, ptr %101, i64 -4
  %104 = getelementptr inbounds i8, ptr %100, i64 -4
  %105 = load i32, ptr %103, align 4, !tbaa !10
  store i32 %105, ptr %104, align 4, !tbaa !10
  %106 = add nsw i64 %102, -1
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %99, !llvm.loop !15

108:                                              ; preds = %99, %92
  %109 = phi ptr [ %94, %92 ], [ %104, %99 ]
  %110 = phi ptr [ %95, %92 ], [ %103, %99 ]
  %111 = and i64 %93, 3
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108, %113
  %114 = phi ptr [ %119, %113 ], [ %109, %108 ]
  %115 = phi ptr [ %117, %113 ], [ %110, %108 ]
  %116 = phi i64 [ %120, %113 ], [ %111, %108 ]
  %117 = getelementptr inbounds i8, ptr %115, i64 -1
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = getelementptr inbounds i8, ptr %114, i64 -1
  store i8 %118, ptr %119, align 1, !tbaa !5
  %120 = add nsw i64 %116, -1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %113, !llvm.loop !16

122:                                              ; preds = %113, %56, %51, %108, %3
  ret ptr %0
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
