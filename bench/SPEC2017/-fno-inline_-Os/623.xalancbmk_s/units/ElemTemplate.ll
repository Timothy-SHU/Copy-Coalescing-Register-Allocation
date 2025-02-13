; ModuleID = 'ElemTemplate.cpp'
source_filename = "ElemTemplate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::ElemTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, double }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.6", i64, %"class.xalanc_1_10::XalanDeque", %"class.xalanc_1_10::XalanDeque.8", i8, %"class.xalanc_1_10::XalanMap.10", ptr, %"class.xalanc_1_10::XalanVector.15", %"class.xalanc_1_10::XalanMap.16", %"class.xalanc_1_10::XalanVector.21", double, %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", i64, %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.7", %"class.xalanc_1_10::XalanVector.7" }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.8" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.9", %"class.xalanc_1_10::XalanVector.9" }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.10" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.13", %"class.xalanc_1_10::XalanList.13", %"class.xalanc_1_10::XalanVector.14", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.13" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.14" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.16" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.17", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.19", %"class.xalanc_1_10::XalanList.19", %"class.xalanc_1_10::XalanVector.20", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.17" = type { i8 }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.20" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.22" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanVector.24", i64, i64 }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.24" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.25" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.26" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }

$_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isEmptyEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

@_ZTVN11xalanc_1_1012ElemTemplateE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012ElemTemplateE, ptr @_ZN11xalanc_1_1012ElemTemplateD2Ev, ptr @_ZN11xalanc_1_1012ElemTemplateD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1012ElemTemplate10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1012ElemTemplate10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1012ElemTemplate14getElementNameEv, ptr @_ZNK11xalanc_1_1012ElemTemplate16getNameAttributeEv, ptr @_ZN11xalanc_1_1012ElemTemplate15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1012ElemTemplate8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1012ElemTemplate16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1012ElemTemplateE = dso_local constant [30 x i8] c"N11xalanc_1_1012ElemTemplateE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1012ElemTemplateE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012ElemTemplateE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_10L7s_emptyE = internal global %"class.xalanc_1_10::XalanQNameByValue" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_109Constants14ATTRNAME_MATCHE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants17ATTRNAME_PRIORITYE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_MODEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemTemplate.cpp, ptr null }]

@_ZN11xalanc_1_1012ElemTemplateC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1012ElemTemplateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012ElemTemplateD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplateD0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1012ElemTemplateD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !63 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 60
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !64
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1012ElemTemplate10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !63 {
  %3 = load ptr, ptr %1, align 8, !tbaa !64
  %4 = getelementptr inbounds ptr, ptr %3, i64 61
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = getelementptr inbounds ptr, ptr %6, i64 20
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate10getInvokerERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !67 {
  %3 = load ptr, ptr %1, align 8, !tbaa !64
  %4 = getelementptr inbounds ptr, ptr %3, i64 136
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  ret ptr %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012ElemTemplate14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !68 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE, align 8, !tbaa !69
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012ElemTemplate16getNameAttributeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(360) %0) unnamed_addr #4 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplate15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2) unnamed_addr #2 align 2 !prof !68 {
  tail call void @_ZN11xalanc_1_1010Stylesheet11addTemplateEPNS_12ElemTemplateERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012ElemTemplate8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #4 align 2 !prof !93 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1012ElemTemplate16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !94 {
  %3 = icmp ne i32 %1, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #6 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) @_ZN11xalanc_1_10L7s_emptyE, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, ptr nonnull @_ZN11xalanc_1_10L7s_emptyE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 20) #11
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1012ElemTemplateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_10L7s_emptyE, ptr %8, align 8, !tbaa !72
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 3
  store ptr @_ZN11xalanc_1_10L7s_emptyE, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %0, i64 0, i32 4
  %11 = invoke noundef double @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE(i32 noundef 0) #11
          to label %12 unwind label %24

12:                                               ; preds = %6
  store double %11, ptr %10, align 8, !tbaa !98
  %13 = load ptr, ptr %3, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
          to label %17 unwind label %26

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %21, label %19, !prof !99

19:                                               ; preds = %17
  %20 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_MATCHE, align 8
  br label %28

21:                                               ; preds = %139, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  br i1 %23, label %142, label %148, !prof !100

24:                                               ; preds = %6
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %149

26:                                               ; preds = %146, %142, %12
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %149

28:                                               ; preds = %19, %139
  %29 = phi i32 [ 0, %19 ], [ %140, %139 ]
  %30 = load ptr, ptr %3, align 8, !tbaa !64
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29) #11
          to label %34 unwind label %53

34:                                               ; preds = %28
  %35 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(36) %20) #11
          to label %36 unwind label %53

36:                                               ; preds = %34
  br i1 %35, label %37, label %55, !prof !101

37:                                               ; preds = %36
  %38 = load ptr, ptr %0, align 8, !tbaa !64
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
          to label %42 unwind label %53

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29) #11
          to label %47 unwind label %53

47:                                               ; preds = %42
  %48 = load ptr, ptr %1, align 8, !tbaa !64
  %49 = getelementptr inbounds ptr, ptr %48, i64 19
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %41, ptr noundef %46, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #11
          to label %52 unwind label %53

52:                                               ; preds = %47
  store ptr %51, ptr %7, align 8, !tbaa !96
  br label %139

53:                                               ; preds = %116, %135, %133, %130, %127, %121, %113, %108, %101, %96, %92, %88, %83, %79, %76, %71, %64, %59, %55, %47, %42, %37, %34, %28
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %149

55:                                               ; preds = %36
  %56 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %57 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(36) %56) #11
          to label %58 unwind label %53

58:                                               ; preds = %55
  br i1 %57, label %59, label %79, !prof !102

59:                                               ; preds = %58
  %60 = load ptr, ptr %3, align 8, !tbaa !64
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29) #11
          to label %64 unwind label %53

64:                                               ; preds = %59
  %65 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  %66 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %65) #11
  %67 = load ptr, ptr %0, align 8, !tbaa !64
  %68 = getelementptr inbounds ptr, ptr %67, i64 4
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
          to label %71 unwind label %53

71:                                               ; preds = %64
  %72 = load ptr, ptr %1, align 8, !tbaa !64
  %73 = getelementptr inbounds ptr, ptr %72, i64 41
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %63, ptr noundef nonnull align 8 dereferenceable(80) %66, ptr noundef %70, i1 noundef zeroext false) #11
          to label %76 unwind label %53

76:                                               ; preds = %71
  store ptr %75, ptr %8, align 8, !tbaa !72
  %77 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %75) #11
          to label %78 unwind label %53

78:                                               ; preds = %76
  br i1 %77, label %139, label %116, !prof !102

79:                                               ; preds = %58
  %80 = load ptr, ptr @_ZN11xalanc_1_109Constants17ATTRNAME_PRIORITYE, align 8
  %81 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(36) %80) #11
          to label %82 unwind label %53

82:                                               ; preds = %79
  br i1 %81, label %83, label %92

83:                                               ; preds = %82
  %84 = load ptr, ptr %3, align 8, !tbaa !64
  %85 = getelementptr inbounds ptr, ptr %84, i64 5
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29) #11
          to label %88 unwind label %53

88:                                               ; preds = %83
  %89 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %90 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %87, ptr noundef nonnull align 8 dereferenceable(8) %89) #11
          to label %91 unwind label %53

91:                                               ; preds = %88
  store double %90, ptr %10, align 8, !tbaa !98
  br label %139

92:                                               ; preds = %82
  %93 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_MODEE, align 8
  %94 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(36) %93) #11
          to label %95 unwind label %53

95:                                               ; preds = %92
  br i1 %94, label %96, label %121

96:                                               ; preds = %95
  %97 = load ptr, ptr %3, align 8, !tbaa !64
  %98 = getelementptr inbounds ptr, ptr %97, i64 5
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29) #11
          to label %101 unwind label %53

101:                                              ; preds = %96
  %102 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  %103 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %102) #11
  %104 = load ptr, ptr %0, align 8, !tbaa !64
  %105 = getelementptr inbounds ptr, ptr %104, i64 4
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
          to label %108 unwind label %53

108:                                              ; preds = %101
  %109 = load ptr, ptr %1, align 8, !tbaa !64
  %110 = getelementptr inbounds ptr, ptr %109, i64 41
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %100, ptr noundef nonnull align 8 dereferenceable(80) %103, ptr noundef %107, i1 noundef zeroext false) #11
          to label %113 unwind label %53

113:                                              ; preds = %108
  store ptr %112, ptr %9, align 8, !tbaa !97
  %114 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %112) #11
          to label %115 unwind label %53

115:                                              ; preds = %113
  br i1 %114, label %139, label %116

116:                                              ; preds = %115, %78
  %117 = load ptr, ptr %3, align 8, !tbaa !64
  %118 = getelementptr inbounds ptr, ptr %117, i64 5
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29) #11
          to label %135 unwind label %53

121:                                              ; preds = %95
  %122 = load ptr, ptr %0, align 8, !tbaa !64
  %123 = getelementptr inbounds ptr, ptr %122, i64 5
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef zeroext i1 %124(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29, ptr noundef nonnull align 8 dereferenceable(16) %1) #11
          to label %126 unwind label %53

126:                                              ; preds = %121
  br i1 %125, label %139, label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE, align 8
  %129 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %128) #11
          to label %130 unwind label %53

130:                                              ; preds = %127
  %131 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %129, ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %29, ptr noundef nonnull align 8 dereferenceable(16) %1) #11
          to label %132 unwind label %53

132:                                              ; preds = %130
  br i1 %131, label %139, label %133

133:                                              ; preds = %132
  %134 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %128) #11
          to label %135 unwind label %53

135:                                              ; preds = %116, %133
  %136 = phi i32 [ 74, %133 ], [ 62, %116 ]
  %137 = phi ptr [ %134, %133 ], [ %33, %116 ]
  %138 = phi ptr [ %33, %133 ], [ %120, %116 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %136, ptr noundef %137, ptr noundef %138) #11
          to label %139 unwind label %53

139:                                              ; preds = %135, %78, %115, %132, %126, %91, %52
  %140 = add nuw i32 %29, 1
  %141 = icmp eq i32 %140, %16
  br i1 %141, label %21, label %28, !prof !103, !llvm.loop !104

142:                                              ; preds = %21
  %143 = load ptr, ptr %8, align 8, !tbaa !72
  %144 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %143) #11
          to label %145 unwind label %26

145:                                              ; preds = %142
  br i1 %144, label %146, label %148, !prof !106

146:                                              ; preds = %145
  %147 = load ptr, ptr @_ZN11xalanc_1_109Constants36ELEMNAME_TEMPLATE_WITH_PREFIX_STRINGE, align 8, !tbaa !69
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 73, ptr noundef nonnull align 8 dereferenceable(36) %147) #11
          to label %148 unwind label %26

148:                                              ; preds = %146, %145, %21
  ret void

149:                                              ; preds = %26, %53, %24
  %150 = phi { ptr, i32 } [ %25, %24 ], [ %54, %53 ], [ %27, %26 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  resume { ptr, i32 } %150
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE(i32 noundef %0) local_unnamed_addr #2 comdat align 2 !prof !107 {
  switch i32 %0, label %7 [
    i32 0, label %2
    i32 1, label %8
    i32 2, label %4
    i32 4, label %5
    i32 3, label %6
  ], !prof !108

2:                                                ; preds = %1
  %3 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() #11
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 comdat !prof !109 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #11
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !112 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #11
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !114 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !117 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br i1 %2, label %5, label %3, !prof !118

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %5) #11
  br i1 %6, label %7, label %13, !prof !120

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %12 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %11) #11
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() local_unnamed_addr #0 comdat align 2 !prof !95 {
  %1 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !121
  ret double %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !109 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #11
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !122 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #11
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #11
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #11
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !123 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !124 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !125
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !127 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !131
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1012ElemTemplateD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #0 align 2 !prof !95 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010Stylesheet11addTemplateEPNS_12ElemTemplateERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ElemTemplate.cpp() #6 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!62}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!36 = !{ptr @_ZNK11xalanc_1_1012ElemTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 22648489}
!37 = !{ptr @_ZN11xalanc_1_1012ElemTemplate15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1010Stylesheet11addTemplateEPNS_12ElemTemplateERNS_29StylesheetConstructionContextE, i64 27}
!38 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 30}
!39 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE, i64 30}
!40 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 35}
!41 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 3}
!42 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv, i64 3}
!43 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, i64 3}
!44 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1010XalanQName7isEmptyEv, i64 4}
!46 = !{ptr @_ZN11xalanc_1_1012ElemTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringE, i64 1}
!47 = !{ptr @_ZN11xalanc_1_105XPath18getMatchScoreValueENS0_11eMatchScoreE, ptr @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv, i64 28}
!48 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!49 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!50 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!51 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!52 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!53 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isEmptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 917611}
!54 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!55 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!56 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!57 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!58 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!59 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!60 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!61 = !{ptr @_ZN11xalanc_1_1012ElemTemplateD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 30}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 22648489}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"function_entry_count", i64 67908415}
!68 = !{!"function_entry_count", i64 27}
!69 = !{!70, !70, i64 0}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !66, i64 0}
!72 = !{!73, !70, i64 336}
!73 = !{!"_ZTSN11xalanc_1_1012ElemTemplateE", !74, i64 0, !70, i64 328, !70, i64 336, !70, i64 344, !92, i64 352}
!74 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !75, i64 0, !70, i64 8, !76, i64 16, !87, i64 248, !70, i64 256, !70, i64 264, !70, i64 272, !71, i64 280, !88, i64 288, !91, i64 320}
!75 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!76 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !77, i64 0, !79, i64 32, !80, i64 64, !81, i64 96}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !70, i64 0, !78, i64 8, !78, i64 16, !70, i64 24}
!78 = !{!"long", !71, i64 0}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !70, i64 0, !78, i64 8, !78, i64 16, !70, i64 24}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !70, i64 0, !78, i64 8, !78, i64 16, !70, i64 24}
!81 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !82, i64 0, !83, i64 1, !70, i64 8, !84, i64 16, !78, i64 24, !78, i64 32, !85, i64 40, !85, i64 64, !86, i64 88, !78, i64 120, !78, i64 128}
!82 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!83 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!84 = !{!"float", !71, i64 0}
!85 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !70, i64 0, !70, i64 8, !70, i64 16}
!86 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !70, i64 0, !78, i64 8, !78, i64 16, !70, i64 24}
!87 = !{!"int", !71, i64 0}
!88 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !89, i64 0, !78, i64 8, !78, i64 16, !70, i64 24}
!89 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !90, i64 0}
!90 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!91 = !{!"short", !71, i64 0}
!92 = !{!"double", !71, i64 0}
!93 = !{!"function_entry_count", i64 0}
!94 = !{!"function_entry_count", i64 42}
!95 = !{!"function_entry_count", i64 30}
!96 = !{!73, !70, i64 328}
!97 = !{!73, !70, i64 344}
!98 = !{!73, !92, i64 352}
!99 = !{!"branch_weights", i32 1, i32 247}
!100 = !{!"branch_weights", i32 4, i32 28}
!101 = !{!"branch_weights", i32 28, i32 4}
!102 = !{!"branch_weights", i32 4, i32 1}
!103 = !{!"branch_weights", i32 247, i32 1}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"branch_weights", i32 1, i32 4}
!107 = !{!"function_entry_count", i64 54}
!108 = !{!"branch_weights", i32 1, i32 31, i32 1, i32 1, i32 13, i32 13}
!109 = !{!"function_entry_count", i64 1899}
!110 = !{!"function_entry_count", i64 962142}
!111 = !{!74, !70, i64 8}
!112 = !{!"function_entry_count", i64 259}
!113 = !{!"function_entry_count", i64 300}
!114 = !{!"function_entry_count", i64 2273}
!115 = !{!116, !70, i64 8}
!116 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !70, i64 8}
!117 = !{!"function_entry_count", i64 967143541}
!118 = !{!"branch_weights", i32 403628487, i32 563515056}
!119 = !{!"function_entry_count", i64 458806}
!120 = !{!"branch_weights", i32 458807, i32 1}
!121 = !{!71, !71, i64 0}
!122 = !{!"function_entry_count", i64 403723}
!123 = !{!"function_entry_count", i64 3070433826}
!124 = !{!"function_entry_count", i64 1083116306}
!125 = !{!126, !78, i64 8}
!126 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !70, i64 0, !78, i64 8, !78, i64 16, !70, i64 24}
!127 = !{!"function_entry_count", i64 565220908}
!128 = !{!126, !70, i64 24}
!129 = !{!"function_entry_count", i64 6521798503}
!130 = !{!"function_entry_count", i64 6299974}
!131 = !{!132, !87, i64 32}
!132 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !126, i64 0, !87, i64 32}
