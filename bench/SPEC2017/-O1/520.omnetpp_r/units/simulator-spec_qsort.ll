; ModuleID = 'simulator/spec_qsort.cc'
source_filename = "simulator/spec_qsort.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z10spec_qsortPvmmPFiPKvS1_E(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = add i64 %1, 4294967295
  %6 = mul i64 %5, %2
  %7 = trunc i64 %6 to i32
  tail call fastcc void @_ZL9spec_sortPcmiiPFiPKvS1_E(ptr noundef %0, i64 noundef %2, i32 noundef 0, i32 noundef %7, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL9spec_sortPcmiiPFiPKvS1_E(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 {
  br label %6

6:                                                ; preds = %63, %5
  %7 = phi i32 [ %2, %5 ], [ %47, %63 ]
  %8 = icmp sgt i32 %3, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = trunc i64 %1 to i32
  %13 = add i32 %12, %7
  %14 = icmp slt i32 %13, %3
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = icmp eq i64 %1, 0
  br label %17

17:                                               ; preds = %15, %41
  %18 = phi i32 [ %3, %15 ], [ %43, %41 ]
  %19 = phi i32 [ %13, %15 ], [ %42, %41 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = tail call noundef i32 %4(ptr noundef %21, ptr noundef %11)
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = add i32 %19, %12
  br label %41

26:                                               ; preds = %17
  %27 = sub i32 %18, %12
  br i1 %16, label %41, label %28

28:                                               ; preds = %26
  %29 = sext i32 %27 to i64
  %30 = getelementptr i8, ptr %0, i64 %29
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ %35, %31 ], [ %1, %28 ]
  %33 = phi ptr [ %39, %31 ], [ %30, %28 ]
  %34 = phi ptr [ %38, %31 ], [ %21, %28 ]
  %35 = add i64 %32, -1
  %36 = load i8, ptr %34, align 1, !tbaa !35
  %37 = load i8, ptr %33, align 1, !tbaa !35
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %37, ptr %34, align 1, !tbaa !35
  %39 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %33, align 1, !tbaa !35
  %40 = icmp eq i64 %35, 0
  br i1 %40, label %41, label %31, !llvm.loop !38

41:                                               ; preds = %31, %26, %24
  %42 = phi i32 [ %25, %24 ], [ %19, %26 ], [ %19, %31 ]
  %43 = phi i32 [ %18, %24 ], [ %27, %26 ], [ %27, %31 ]
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %17, label %45, !llvm.loop !41

45:                                               ; preds = %41, %9
  %46 = phi i32 [ %13, %9 ], [ %42, %41 ]
  %47 = phi i32 [ %3, %9 ], [ %43, %41 ]
  %48 = sub i32 %46, %12
  %49 = icmp eq i64 %1, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %45
  %51 = sext i32 %48 to i64
  %52 = getelementptr i8, ptr %0, i64 %51
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %57, %53 ], [ %1, %50 ]
  %55 = phi ptr [ %61, %53 ], [ %52, %50 ]
  %56 = phi ptr [ %60, %53 ], [ %11, %50 ]
  %57 = add i64 %54, -1
  %58 = load i8, ptr %56, align 1, !tbaa !35
  %59 = load i8, ptr %55, align 1, !tbaa !35
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %59, ptr %56, align 1, !tbaa !35
  %61 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %58, ptr %55, align 1, !tbaa !35
  %62 = icmp eq i64 %57, 0
  br i1 %62, label %63, label %53, !llvm.loop !38

63:                                               ; preds = %53, %45
  tail call fastcc void @_ZL9spec_sortPcmiiPFiPKvS1_E(ptr noundef %0, i64 noundef %1, i32 noundef %7, i32 noundef %48, ptr noundef %4)
  br label %6

64:                                               ; preds = %6
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
