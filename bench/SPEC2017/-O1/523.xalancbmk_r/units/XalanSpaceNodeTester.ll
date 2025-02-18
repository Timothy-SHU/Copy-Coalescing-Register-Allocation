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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !43
  ret void
}

declare void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !35
  store i32 %5, ptr %3, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !43
  store i32 %8, ptr %6, align 4, !tbaa !43
  ret void
}

declare void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterC2ENS0_5eTypeERNS_29StylesheetConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSpaceNodeTester", ptr %0, i64 0, i32 2
  store i32 %1, ptr %8, align 4, !tbaa !43
  %9 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5)
  store i32 %9, ptr %7, align 8, !tbaa !35
  ret void
}

declare noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1020XalanSpaceNodeTesterD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !34 {
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !41, i64 56}
!36 = !{!"_ZTSN11xalanc_1_1020XalanSpaceNodeTesterE", !37, i64 0, !41, i64 56, !42, i64 60}
!37 = !{!"_ZTSN11xalanc_1_105XPath10NodeTesterE", !38, i64 0, !38, i64 8, !38, i64 16, !39, i64 24, !39, i64 40}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !39, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1020XalanSpaceNodeTester5eTypeE", !39, i64 0}
!43 = !{!36, !42, i64 60}
