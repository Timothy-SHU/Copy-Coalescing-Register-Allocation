; ModuleID = 'XalanMatchPatternData.cpp'
source_filename = "XalanMatchPatternData.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
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
%"class.xalanc_1_10::XalanMatchPatternData" = type <{ ptr, i64, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }

@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZNK11xalanc_1_1021XalanMatchPatternData20getPriorityOrDefaultEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(76) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %2, i64 0, i32 4
  %4 = load double, ptr %3, align 8, !tbaa !45
  %5 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !64
  %6 = bitcast double %4 to i64
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %5, %7
  %9 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, i64 0, i32 1), align 4
  %10 = lshr i64 %6, 32
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %9, %11
  %13 = select i1 %8, i1 %12, i1 false, !prof !65
  br i1 %13, label %14, label %23, !prof !65

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !66
  switch i32 %16, label %22 [
    i32 0, label %17
    i32 1, label %23
    i32 2, label %19
    i32 4, label %20
    i32 3, label %21
  ], !prof !67

17:                                               ; preds = %14
  %18 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !64
  br label %23

19:                                               ; preds = %14
  br label %23

20:                                               ; preds = %14
  br label %23

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %17, %14, %1
  %24 = phi double [ %4, %1 ], [ 0.000000e+00, %22 ], [ 0.000000e+00, %21 ], [ 5.000000e-01, %20 ], [ -2.500000e-01, %19 ], [ %18, %17 ], [ -5.000000e-01, %14 ]
  ret double %24
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"function_entry_count", i64 24}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xalanc_1_1021XalanMatchPatternDataE", !37, i64 0, !40, i64 8, !41, i64 16, !37, i64 56, !37, i64 64, !44, i64 72}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !42, i64 0, !43, i64 32}
!42 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!43 = !{!"int", !38, i64 0}
!44 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !38, i64 0}
!45 = !{!46, !63, i64 352}
!46 = !{!"_ZTSN11xalanc_1_1012ElemTemplateE", !47, i64 0, !37, i64 328, !37, i64 336, !37, i64 344, !63, i64 352}
!47 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !48, i64 0, !37, i64 8, !49, i64 16, !43, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !38, i64 280, !59, i64 288, !62, i64 320}
!48 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!49 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !50, i64 0, !51, i64 32, !52, i64 64, !53, i64 96}
!50 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!53 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !54, i64 0, !55, i64 1, !37, i64 8, !56, i64 16, !40, i64 24, !40, i64 32, !57, i64 40, !57, i64 64, !58, i64 88, !40, i64 120, !40, i64 128}
!54 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!55 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!56 = !{!"float", !38, i64 0}
!57 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !37, i64 0, !37, i64 8, !37, i64 16}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!59 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !60, i64 0, !40, i64 8, !40, i64 16, !37, i64 24}
!60 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !61, i64 0}
!61 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!62 = !{!"short", !38, i64 0}
!63 = !{!"double", !38, i64 0}
!64 = !{!38, !38, i64 0}
!65 = !{!"branch_weights", i32 24, i32 0}
!66 = !{!36, !44, i64 72}
!67 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 12, i32 12}
