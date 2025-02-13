; ModuleID = 'XalanSpaceNodeTester.cpp'
source_filename = "XalanSpaceNodeTester.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanSpaceNodeTester" = type { %"class.xalanc_1_10::XPath::NodeTester", i32, i32 }
%"class.xalanc_1_10::XPath::NodeTester" = type { ptr, ptr, ptr, { i64, i64 }, { i64, i64 } }

@_ZN11xalanc_1_1020XalanSpaceNodeTesterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2Ev
@_ZN11xalanc_1_1020XalanSpaceNodeTesterC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2ERKS0_
@_ZN11xalanc_1_1020XalanSpaceNodeTesterC1ENS0_5eTypeERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2ENS0_5eTypeERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE
@_ZN11xalanc_1_1020XalanSpaceNodeTesterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XalanSpaceNodeTesterD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #3
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #3
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %1, i64 0, i32 1
  %5 = load <2 x i32>, ptr %4, align 8, !tbaa !45
  store <2 x i32> %5, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2ENS0_5eTypeERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 2
  store i32 %1, ptr %8, align 4, !tbaa !44
  %9 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) #3
  store i32 %9, ptr %7, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }

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
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !42, i64 56}
!37 = !{!"_ZTSN11xalanc_1_1020XalanSpaceNodeTesterE", !38, i64 0, !42, i64 56, !43, i64 60}
!38 = !{!"_ZTSN11xalanc_1_105XPath10NodeTesterE", !39, i64 0, !39, i64 8, !39, i64 16, !40, i64 24, !40, i64 40}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !40, i64 0}
!43 = !{!"_ZTSN11xalanc_1_1020XalanSpaceNodeTester5eTypeE", !40, i64 0}
!44 = !{!37, !43, i64 60}
!45 = !{!40, !40, i64 0}
