; ModuleID = 'pbeampp.c'
source_filename = "pbeampp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.basket = type { ptr, i64, i64, i64 }

@full_group_end_arc = internal unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_static_vars(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 31
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %6 = load i64, ptr %5, align 8, !tbaa !12
  %7 = mul nsw i64 %6, %4
  %8 = getelementptr inbounds %struct.arc, ptr %1, i64 %7
  store ptr %8, ptr @full_group_end_arc, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @bea_is_dual_infeasible(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %2
  %7 = phi i16 [ 1, %2 ], [ 2, %4 ]
  %8 = getelementptr inbounds %struct.arc, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !14
  %10 = icmp eq i16 %9, %7
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ 0, %4 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cost_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.basket, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !18
  %6 = load ptr, ptr %1, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.basket, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !18
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i64 %5, %8
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !tbaa !20
  %14 = load i32, ptr %13, align 8, !tbaa !21
  %15 = load ptr, ptr %6, align 8, !tbaa !20
  %16 = load i32, ptr %15, align 8, !tbaa !21
  %17 = icmp sgt i32 %14, %16
  %18 = select i1 %17, i32 1, i32 -1
  br label %19

19:                                               ; preds = %12, %10, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @primal_bea_mpp(i64 noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #3 {
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds i64, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %10, %56
  %14 = phi i64 [ 0, %10 ], [ %57, %56 ]
  %15 = phi i64 [ 1, %10 ], [ %58, %56 ]
  %16 = load i64, ptr %12, align 8, !tbaa !22
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %60, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.basket, ptr %20, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = load i64, ptr %27, align 8, !tbaa !26
  %29 = sub nsw i64 %25, %28
  %30 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = load i64, ptr %31, align 8, !tbaa !26
  %33 = add nsw i64 %32, %29
  %34 = icmp sgt i64 %23, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %18
  %36 = icmp slt i64 %33, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !14
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %47, label %56

41:                                               ; preds = %35
  %42 = icmp eq i64 %33, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.arc, ptr %21, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !14
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %43, %37
  %48 = add nsw i64 %14, 1
  %49 = getelementptr inbounds ptr, ptr %4, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  store ptr %21, ptr %50, align 8, !tbaa !20
  %51 = load ptr, ptr %49, align 8, !tbaa !13
  %52 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 1
  store i64 %33, ptr %52, align 8, !tbaa !29
  %53 = tail call i64 @llvm.abs.i64(i64 %33, i1 true)
  %54 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 2
  store i64 %53, ptr %54, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.basket, ptr %51, i64 0, i32 3
  store i64 0, ptr %55, align 8, !tbaa !23
  br label %56

56:                                               ; preds = %37, %18, %41, %43, %47
  %57 = phi i64 [ %48, %47 ], [ %14, %43 ], [ %14, %41 ], [ %14, %18 ], [ %14, %37 ]
  %58 = add nuw nsw i64 %15, 1
  %59 = icmp eq i64 %58, 61
  br i1 %59, label %60, label %13, !llvm.loop !30

60:                                               ; preds = %56, %13
  %61 = phi i64 [ %57, %56 ], [ %14, %13 ]
  store i64 %61, ptr %12, align 8, !tbaa !22
  %62 = load ptr, ptr %6, align 8, !tbaa !13
  %63 = load ptr, ptr @full_group_end_arc, align 8, !tbaa !13
  %64 = icmp sgt i64 %8, 0
  br label %65

65:                                               ; preds = %129, %60
  %66 = phi ptr [ %118, %129 ], [ %62, %60 ]
  %67 = getelementptr inbounds %struct.arc, ptr %66, i64 %7
  %68 = icmp uge ptr %66, %63
  %69 = getelementptr inbounds %struct.arc, ptr %66, i64 %9
  %70 = sext i1 %68 to i64
  %71 = getelementptr inbounds %struct.arc, ptr %69, i64 %70
  store ptr %71, ptr %6, align 8, !tbaa !13
  %72 = icmp ult ptr %67, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %65, %109
  %74 = phi ptr [ %110, %109 ], [ %71, %65 ]
  %75 = phi ptr [ %111, %109 ], [ %67, %65 ]
  %76 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 4
  %77 = load i16, ptr %76, align 8, !tbaa !14
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !24
  %82 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !25
  %84 = load i64, ptr %83, align 8, !tbaa !26
  %85 = sub nsw i64 %81, %84
  %86 = getelementptr inbounds %struct.arc, ptr %75, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !28
  %88 = load i64, ptr %87, align 8, !tbaa !26
  %89 = add nsw i64 %88, %85
  %90 = tail call i32 @bea_is_dual_infeasible(ptr noundef nonnull %75, i64 noundef %89) #6, !range !32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %79
  %93 = load i64, ptr %12, align 8, !tbaa !22
  %94 = add nsw i64 %93, 1
  store i64 %94, ptr %12, align 8, !tbaa !22
  %95 = getelementptr inbounds ptr, ptr %4, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !13
  store ptr %75, ptr %96, align 8, !tbaa !20
  %97 = load ptr, ptr %95, align 8, !tbaa !13
  %98 = getelementptr inbounds %struct.basket, ptr %97, i64 0, i32 1
  store i64 %89, ptr %98, align 8, !tbaa !29
  %99 = tail call i64 @llvm.abs.i64(i64 %89, i1 true)
  %100 = load i64, ptr %12, align 8, !tbaa !22
  %101 = getelementptr inbounds ptr, ptr %4, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !13
  %103 = getelementptr inbounds %struct.basket, ptr %102, i64 0, i32 2
  store i64 %99, ptr %103, align 8, !tbaa !18
  %104 = load i64, ptr %12, align 8, !tbaa !22
  %105 = getelementptr inbounds ptr, ptr %4, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = getelementptr inbounds %struct.basket, ptr %106, i64 0, i32 3
  store i64 0, ptr %107, align 8, !tbaa !23
  %108 = load ptr, ptr %6, align 8, !tbaa !13
  br label %109

109:                                              ; preds = %73, %92, %79
  %110 = phi ptr [ %74, %73 ], [ %108, %92 ], [ %74, %79 ]
  %111 = getelementptr inbounds %struct.arc, ptr %75, i64 %8
  %112 = icmp ult ptr %111, %110
  br i1 %112, label %73, label %113, !llvm.loop !33

113:                                              ; preds = %109, %65
  %114 = phi ptr [ %71, %65 ], [ %110, %109 ]
  %115 = icmp ult ptr %114, %2
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store ptr %1, ptr %6, align 8, !tbaa !13
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi ptr [ %1, %116 ], [ %114, %113 ]
  %119 = icmp eq ptr %118, %62
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  br i1 %64, label %121, label %129

121:                                              ; preds = %120, %121
  %122 = phi i64 [ %126, %121 ], [ 0, %120 ]
  %123 = phi i64 [ %127, %121 ], [ 0, %120 ]
  %124 = getelementptr inbounds i64, ptr %3, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !22
  %126 = add nsw i64 %125, %122
  %127 = add nuw nsw i64 %123, 1
  %128 = icmp eq i64 %127, %8
  br i1 %128, label %129, label %121, !llvm.loop !34

129:                                              ; preds = %121, %120
  %130 = phi i64 [ 0, %120 ], [ %126, %121 ]
  %131 = icmp sgt i64 %130, 59
  br i1 %131, label %132, label %65

132:                                              ; preds = %117, %129
  %133 = load i64, ptr %12, align 8, !tbaa !22
  %134 = getelementptr ptr, ptr %4, i64 %133
  %135 = getelementptr ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !13
  %137 = getelementptr inbounds %struct.basket, ptr %136, i64 0, i32 3
  store i64 -1, ptr %137, align 8, !tbaa !23
  %138 = load i64, ptr %12, align 8, !tbaa !22
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %132
  %141 = getelementptr inbounds ptr, ptr %4, i64 1
  tail call void @spec_qsort(ptr noundef nonnull %141, i64 noundef %138, i64 noundef 8, ptr noundef nonnull @cost_compare) #7
  %142 = load ptr, ptr %141, align 8, !tbaa !13
  br label %143

143:                                              ; preds = %132, %140
  %144 = phi ptr [ %142, %140 ], [ null, %132 ]
  ret ptr %144
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 632}
!6 = !{!"network", !7, i64 0, !7, i64 200, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !10, i64 536, !9, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !9, i64 640}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !17, i64 32}
!15 = !{!"arc", !16, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !17, i64 32, !11, i64 40, !11, i64 48, !9, i64 56, !9, i64 64}
!16 = !{!"int", !7, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = !{!19, !9, i64 16}
!19 = !{!"basket", !11, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!20 = !{!19, !11, i64 0}
!21 = !{!15, !16, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!19, !9, i64 24}
!24 = !{!15, !9, i64 8}
!25 = !{!15, !11, i64 16}
!26 = !{!27, !9, i64 0}
!27 = !{!"node", !9, i64 0, !16, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !16, i64 96, !16, i64 100}
!28 = !{!15, !11, i64 24}
!29 = !{!19, !9, i64 8}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{i32 0, i32 2}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
