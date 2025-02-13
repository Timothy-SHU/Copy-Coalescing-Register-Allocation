; ModuleID = 'XalanMatchPatternData.cpp'
source_filename = "XalanMatchPatternData.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XalanMatchPatternData" = type <{ ptr, i64, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, double }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%struct.anon = type { i32, i32 }

$_ZNK11xalanc_1_1012ElemTemplate11getPriorityEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd = comdat any

$_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

$_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv = comdat any

@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_1021XalanMatchPatternData20getPriorityOrDefaultEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(76) %0) local_unnamed_addr #0 align 2 !prof !42 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = tail call noundef double @_ZNK11xalanc_1_1012ElemTemplate11getPriorityEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #2
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd(double noundef %3) #2
  br i1 %4, label %5, label %9, !prof !53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = tail call noundef double @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE(i32 noundef %7) #2
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi double [ %8, %5 ], [ %3, %1 ]
  ret double %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_1012ElemTemplate11getPriorityEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 4
  %3 = load double, ptr %2, align 8, !tbaa !55
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd(double noundef %0) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, double noundef %0) #2
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !prof !75 {
  switch i32 %0, label %7 [
    i32 0, label %2
    i32 1, label %8
    i32 2, label %4
    i32 4, label %5
    i32 3, label %6
  ], !prof !76

2:                                                ; preds = %1
  %3 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() #2
  br label %8

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7, %6, %5, %4, %2
  %9 = phi double [ 0.000000e+00, %7 ], [ 0.000000e+00, %6 ], [ 5.000000e-01, %5 ], [ -2.500000e-01, %4 ], [ %3, %2 ], [ -5.000000e-01, %1 ]
  ret double %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !77 {
  %3 = load i32, ptr %0, align 8, !tbaa !78
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !79
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() local_unnamed_addr #1 comdat align 2 !prof !80 {
  %1 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !78
  ret double %1
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_ZNK11xalanc_1_1021XalanMatchPatternData20getPriorityOrDefaultEv, ptr @_ZNK11xalanc_1_1012ElemTemplate11getPriorityEv, i64 24}
!37 = !{ptr @_ZNK11xalanc_1_1021XalanMatchPatternData20getPriorityOrDefaultEv, ptr @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd, i64 24}
!38 = !{ptr @_ZNK11xalanc_1_1021XalanMatchPatternData20getPriorityOrDefaultEv, ptr @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE, i64 23}
!39 = !{ptr @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 156790587}
!40 = !{ptr @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv, i64 28}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 24}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1021XalanMatchPatternDataE", !45, i64 0, !48, i64 8, !49, i64 16, !45, i64 56, !45, i64 64, !52, i64 72}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"long", !46, i64 0}
!49 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !50, i64 0, !51, i64 32}
!50 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!51 = !{!"int", !46, i64 0}
!52 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !46, i64 0}
!53 = !{!"branch_weights", i32 25, i32 1}
!54 = !{!44, !52, i64 72}
!55 = !{!56, !73, i64 352}
!56 = !{!"_ZTSN11xalanc_1_1012ElemTemplateE", !57, i64 0, !45, i64 328, !45, i64 336, !45, i64 344, !73, i64 352}
!57 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !58, i64 0, !45, i64 8, !59, i64 16, !51, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !46, i64 280, !69, i64 288, !72, i64 320}
!58 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!59 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !60, i64 0, !61, i64 32, !62, i64 64, !63, i64 96}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!63 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !64, i64 0, !65, i64 1, !45, i64 8, !66, i64 16, !48, i64 24, !48, i64 32, !67, i64 40, !67, i64 64, !68, i64 88, !48, i64 120, !48, i64 128}
!64 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!65 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!66 = !{!"float", !46, i64 0}
!67 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !45, i64 0, !45, i64 8, !45, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !45, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!69 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !70, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!70 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !71, i64 0}
!71 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!72 = !{!"short", !46, i64 0}
!73 = !{!"double", !46, i64 0}
!74 = !{!"function_entry_count", i64 156790587}
!75 = !{!"function_entry_count", i64 54}
!76 = !{!"branch_weights", i32 1, i32 31, i32 1, i32 1, i32 13, i32 13}
!77 = !{!"function_entry_count", i64 740164859}
!78 = !{!46, !46, i64 0}
!79 = !{!"branch_weights", i32 740024103, i32 140758}
!80 = !{!"function_entry_count", i64 30}
