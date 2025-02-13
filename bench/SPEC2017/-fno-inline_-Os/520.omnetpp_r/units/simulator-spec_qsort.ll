; ModuleID = 'simulator/spec_qsort.cc'
source_filename = "simulator/spec_qsort.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z10spec_qsortPvmmPFiPKvS1_E(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !34 {
  %5 = add i64 %1, 4294967295
  %6 = mul i64 %5, %2
  %7 = trunc i64 %6 to i32
  tail call fastcc void @_ZL9spec_sortPcmiiPFiPKvS1_E(ptr noundef %0, i64 noundef %2, i32 noundef 0, i32 noundef %7, ptr noundef %3) #2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL9spec_sortPcmiiPFiPKvS1_E(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !34 !PGOFuncName !35 {
  %6 = icmp sgt i32 %3, %2
  br i1 %6, label %7, label %39

7:                                                ; preds = %5
  %8 = trunc i64 %1 to i32
  br label %9

9:                                                ; preds = %7, %32
  %10 = phi i32 [ %2, %7 ], [ %34, %32 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = add i32 %10, %8
  %14 = icmp slt i32 %13, %3
  br i1 %14, label %15, label %32

15:                                               ; preds = %9, %28
  %16 = phi i32 [ %30, %28 ], [ %3, %9 ]
  %17 = phi i32 [ %29, %28 ], [ %13, %9 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = tail call noundef i32 %4(ptr noundef %19, ptr noundef %12) #2
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = add i32 %17, %8
  br label %28

24:                                               ; preds = %15
  %25 = sub i32 %16, %8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  tail call fastcc void @_ZL9spec_swapPvS_m(ptr noundef %19, ptr noundef %27, i64 noundef %1) #2
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %17, %24 ]
  %30 = phi i32 [ %16, %22 ], [ %25, %24 ]
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %15, label %32, !llvm.loop !36

32:                                               ; preds = %28, %9
  %33 = phi i32 [ %13, %9 ], [ %29, %28 ]
  %34 = phi i32 [ %3, %9 ], [ %30, %28 ]
  %35 = sub i32 %33, %8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  tail call fastcc void @_ZL9spec_swapPvS_m(ptr noundef %12, ptr noundef %37, i64 noundef %1) #2
  tail call fastcc void @_ZL9spec_sortPcmiiPFiPKvS1_E(ptr noundef %0, i64 noundef %1, i32 noundef %10, i32 noundef %35, ptr noundef %4) #2
  %38 = icmp slt i32 %34, %3
  br i1 %38, label %9, label %39

39:                                               ; preds = %32, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL9spec_swapPvS_m(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !38 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %9, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %13, %5 ], [ %1, %3 ]
  %8 = phi ptr [ %12, %5 ], [ %0, %3 ]
  %9 = add i64 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !39
  %11 = load i8, ptr %7, align 1, !tbaa !39
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %11, ptr %8, align 1, !tbaa !39
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %10, ptr %7, align 1, !tbaa !39
  %14 = icmp eq i64 %9, 0
  br i1 %14, label %15, label %5, !llvm.loop !42

15:                                               ; preds = %5, %3
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!"spec_qsort.cc:_ZL9spec_sortPcmiiPFiPKvS1_E"}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"spec_qsort.cc:_ZL9spec_swapPvS_m"}
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = distinct !{!42, !37}
