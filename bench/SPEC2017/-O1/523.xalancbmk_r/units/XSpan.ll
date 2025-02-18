; ModuleID = 'XSpan.cpp'
source_filename = "XSpan.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XSpan" = type { %"class.xalanc_1_10::XNodeSet", i32, i32 }
%"class.xalanc_1_10::XNodeSet" = type { %"class.xalanc_1_10::XNodeSetBase", %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" }
%"class.xalanc_1_10::XNodeSetBase" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

@_ZTVN11xalanc_1_105XSpanE = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_105XSpanE, ptr @_ZN11xalanc_1_105XSpanD2Ev, ptr @_ZN11xalanc_1_105XSpanD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3numEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv, ptr @_ZNK11xalanc_1_108XNodeSet7nodesetEv, ptr @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv, ptr @_ZNK11xalanc_1_108XNodeSet4itemEj, ptr @_ZNK11xalanc_1_108XNodeSet9getLengthEv, ptr @_ZNK11xalanc_1_105XSpan8getStartEv, ptr @_ZN11xalanc_1_105XSpan8setStartEi, ptr @_ZNK11xalanc_1_105XSpan6getEndEv, ptr @_ZN11xalanc_1_105XSpan6setEndEi, ptr @_ZN11xalanc_1_105XSpan7setSpanEii] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_105XSpanE = dso_local constant [22 x i8] c"N11xalanc_1_105XSpanE\00", align 1
@_ZTIN11xalanc_1_108XNodeSetE = external constant ptr
@_ZTIN11xalanc_1_105XSpanE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_105XSpanE, ptr @_ZTIN11xalanc_1_108XNodeSetE }, align 8

@_ZN11xalanc_1_105XSpanC1ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XSpanC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_105XSpanC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XSpanC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_105XSpanD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_105XSpanD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XSpanC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XNodeSetC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN11xalanc_1_105XSpanE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 1
  store i32 -1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 2
  store i32 -1, ptr %5, align 4, !tbaa !57
  ret void
}

declare void @_ZN11xalanc_1_108XNodeSetC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XSpanC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XNodeSetC2ERKS0_RN11xercesc_2_713MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN11xalanc_1_105XSpanE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !38
  store i32 %6, ptr %4, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !57
  store i32 %9, ptr %7, align 4, !tbaa !57
  ret void
}

declare void @_ZN11xalanc_1_108XNodeSetC2ERKS0_RN11xercesc_2_713MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108XNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_105XSpanD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_105XSpanD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_108XNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XSpan8getStartEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_105XSpan8setStartEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XSpan6getEndEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !57
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_105XSpan6setEndEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 4, !tbaa !57
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_105XSpan7setSpanEii(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSpan", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 4, !tbaa !57
  ret void
}

declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !58
  ret i32 %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase3numEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) unnamed_addr #1

declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_108XNodeSet7nodesetEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare void @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_108XNodeSet4itemEj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_108XNodeSet9getLengthEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !44, i64 104}
!39 = !{!"_ZTSN11xalanc_1_105XSpanE", !40, i64 0, !44, i64 104, !44, i64 108}
!40 = !{!"_ZTSN11xalanc_1_108XNodeSetE", !41, i64 0, !56, i64 88}
!41 = !{!"_ZTSN11xalanc_1_1012XNodeSetBaseE", !42, i64 0, !48, i64 24, !52, i64 40, !55, i64 80}
!42 = !{!"_ZTSN11xalanc_1_107XObjectE", !43, i64 0, !46, i64 12, !47, i64 16}
!43 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !44, i64 8}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !37, i64 0}
!46 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !45, i64 0}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE", !49, i64 0, !47, i64 8}
!49 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE", !50, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !51, i64 0}
!51 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!52 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !53, i64 0, !44, i64 32}
!53 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !47, i64 0, !54, i64 8, !54, i64 16, !47, i64 24}
!54 = !{!"long", !45, i64 0}
!55 = !{!"double", !45, i64 0}
!56 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !47, i64 0, !47, i64 8}
!57 = !{!39, !44, i64 108}
!58 = !{!43, !44, i64 8}
