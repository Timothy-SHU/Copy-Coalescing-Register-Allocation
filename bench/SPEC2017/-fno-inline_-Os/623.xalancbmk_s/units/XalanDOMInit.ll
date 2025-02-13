; ModuleID = 'XalanDOMInit.cpp'
source_filename = "XalanDOMInit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN11xalanc_1_1012XalanDOMInit13s_initCounterE = dso_local local_unnamed_addr global i64 0, align 8

@_ZN11xalanc_1_1012XalanDOMInitC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1012XalanDOMInitC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1012XalanDOMInitD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012XalanDOMInitD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1012XalanDOMInitC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 1 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #0 align 2 !prof !35 {
  %3 = load i64, ptr @_ZN11xalanc_1_1012XalanDOMInit13s_initCounterE, align 8, !tbaa !36
  %4 = add i64 %3, 1
  store i64 %4, ptr @_ZN11xalanc_1_1012XalanDOMInit13s_initCounterE, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1012XalanDOMInit10initializeERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !40 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1012XalanDOMInitD2Ev(ptr nocapture nonnull readnone align 1 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = load i64, ptr @_ZN11xalanc_1_1012XalanDOMInit13s_initCounterE, align 8, !tbaa !36
  %3 = add i64 %2, -1
  store i64 %3, ptr @_ZN11xalanc_1_1012XalanDOMInit13s_initCounterE, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1012XalanDOMInit9terminateEv() local_unnamed_addr #1 align 2 !prof !40 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 10}
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"function_entry_count", i64 1}
