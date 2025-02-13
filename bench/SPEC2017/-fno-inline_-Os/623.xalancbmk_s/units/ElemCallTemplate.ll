; ModuleID = 'ElemCallTemplate.cpp'
source_filename = "ElemCallTemplate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemCallTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }
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
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.6", i64, %"class.xalanc_1_10::XalanDeque", %"class.xalanc_1_10::XalanDeque.8", i8, %"class.xalanc_1_10::XalanMap.10", ptr, %"class.xalanc_1_10::XalanVector.15", %"class.xalanc_1_10::XalanMap.16", %"class.xalanc_1_10::XalanVector.21", double, %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanMap.22", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanVector.25", i64, %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
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

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv = comdat any

@_ZTVN11xalanc_1_1016ElemCallTemplateE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016ElemCallTemplateE, ptr @_ZN11xalanc_1_1016ElemCallTemplateD2Ev, ptr @_ZN11xalanc_1_1016ElemCallTemplateD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1016ElemCallTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1016ElemCallTemplate10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1016ElemCallTemplate14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1016ElemCallTemplate25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1016ElemCallTemplate26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1016ElemCallTemplate16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016ElemCallTemplateE = dso_local constant [34 x i8] c"N11xalanc_1_1016ElemCallTemplateE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1016ElemCallTemplateE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016ElemCallTemplateE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants40ELEMNAME_CALLTEMPLATE_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1016ElemCallTemplateC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1016ElemCallTemplateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016ElemCallTemplateD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemCallTemplateD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1016ElemCallTemplateD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
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
define dso_local noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !65 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %4 = load ptr, ptr %1, align 8, !tbaa !66
  %5 = getelementptr inbounds ptr, ptr %4, i64 134
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #9
  %7 = load ptr, ptr %0, align 8, !tbaa !66
  %8 = getelementptr inbounds ptr, ptr %7, i64 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1016ElemCallTemplate10endElementERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !65 {
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 86
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = getelementptr inbounds ptr, ptr %6, i64 135
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016ElemCallTemplate14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !69 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants40ELEMNAME_CALLTEMPLATE_WITH_PREFIX_STRINGE, align 8, !tbaa !70
  ret ptr %2
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #2 align 2 !prof !69 {
  %4 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %5 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %4) #9
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1010Stylesheet17findNamedTemplateERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(1504) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !93
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12, !prof !94

11:                                               ; preds = %3
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 64) #9
  br label %12

12:                                               ; preds = %11, %3
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #9
  ret void
}

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !95 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %18, label %7, !prof !96

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18, !prof !97

10:                                               ; preds = %7
  %11 = load ptr, ptr %1, align 8, !tbaa !66
  %12 = getelementptr inbounds ptr, ptr %11, i64 85
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %14 = load ptr, ptr %1, align 8, !tbaa !66
  %15 = getelementptr inbounds ptr, ptr %14, i64 90
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %17 = load ptr, ptr %4, align 8, !tbaa !93
  br label %18

18:                                               ; preds = %10, %7, %3
  %19 = phi ptr [ null, %3 ], [ %17, %10 ], [ %8, %7 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1016ElemCallTemplate26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !65 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr %1, align 8, !tbaa !66
  br i1 %4, label %9, label %6, !prof !98

6:                                                ; preds = %2
  %7 = getelementptr inbounds ptr, ptr %5, i64 89
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %5, i64 85
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi ptr [ %3, %6 ], [ %13, %9 ]
  ret ptr %15
}

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

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1016ElemCallTemplate16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !99 {
  %3 = icmp eq i32 %1, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 14) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1016ElemCallTemplateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %19

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %16, label %14, !prof !100

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  br label %21

16:                                               ; preds = %72, %12
  %17 = load ptr, ptr %7, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %78, !prof !94

19:                                               ; preds = %75, %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %79

21:                                               ; preds = %14, %72
  %22 = phi i32 [ 0, %14 ], [ %73, %72 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !66
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %22) #9
          to label %27 unwind label %57

27:                                               ; preds = %21
  %28 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(36) %15) #9
          to label %29 unwind label %57

29:                                               ; preds = %27
  br i1 %28, label %30, label %59, !prof !101

30:                                               ; preds = %29
  %31 = load ptr, ptr %3, align 8, !tbaa !66
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %22) #9
          to label %35 unwind label %57

35:                                               ; preds = %30
  %36 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %37 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %36) #9
  %38 = load ptr, ptr %0, align 8, !tbaa !66
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
          to label %42 unwind label %57

42:                                               ; preds = %35
  %43 = load ptr, ptr %1, align 8, !tbaa !66
  %44 = getelementptr inbounds ptr, ptr %43, i64 41
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef %41, i1 noundef zeroext false) #9
          to label %47 unwind label %57

47:                                               ; preds = %42
  store ptr %46, ptr %7, align 8, !tbaa !73
  %48 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #9
          to label %49 unwind label %57

49:                                               ; preds = %47
  br i1 %48, label %72, label %50, !prof !101

50:                                               ; preds = %49
  %51 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %15) #9
          to label %52 unwind label %57

52:                                               ; preds = %50
  %53 = load ptr, ptr %3, align 8, !tbaa !66
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %22) #9
          to label %68 unwind label %57

57:                                               ; preds = %68, %65, %59, %52, %50, %47, %42, %35, %30, %27, %21
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %79

59:                                               ; preds = %29
  %60 = load ptr, ptr %0, align 8, !tbaa !66
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %22, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %64 unwind label %57

64:                                               ; preds = %59
  br i1 %63, label %72, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr @_ZN11xalanc_1_109Constants40ELEMNAME_CALLTEMPLATE_WITH_PREFIX_STRINGE, align 8
  %67 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %66) #9
          to label %68 unwind label %57

68:                                               ; preds = %52, %65
  %69 = phi i32 [ 74, %65 ], [ 62, %52 ]
  %70 = phi ptr [ %67, %65 ], [ %51, %52 ]
  %71 = phi ptr [ %26, %65 ], [ %56, %52 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %69, ptr noundef %70, ptr noundef %71) #9
          to label %72 unwind label %57

72:                                               ; preds = %68, %64, %49
  %73 = add nuw i32 %22, 1
  %74 = icmp eq i32 %73, %11
  br i1 %74, label %16, label %21, !prof !102, !llvm.loop !103

75:                                               ; preds = %16
  %76 = load ptr, ptr @_ZN11xalanc_1_109Constants40ELEMNAME_CALLTEMPLATE_WITH_PREFIX_STRINGE, align 8, !tbaa !70
  %77 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !70
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %76, ptr noundef nonnull align 8 dereferenceable(36) %77) #9
          to label %78 unwind label %19

78:                                               ; preds = %75, %16
  ret void

79:                                               ; preds = %57, %19
  %80 = phi { ptr, i32 } [ %58, %57 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  resume { ptr, i32 } %80
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 comdat !prof !105 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #9
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !110 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br i1 %2, label %5, label %3, !prof !111

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !105 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !105 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #9
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !112 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #9
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #9
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #9
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !114 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !115
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemCallTemplateD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 align 2 !prof !69 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1010Stylesheet17findNamedTemplateERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!64}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!36 = !{ptr @_ZNK11xalanc_1_1016ElemCallTemplate12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 22419101}
!37 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 8}
!38 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv, i64 8}
!39 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1010Stylesheet17findNamedTemplateERKNS_10XalanQNameE, i64 8}
!40 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplate16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 8}
!42 = !{ptr @_ZNK11xalanc_1_1016ElemCallTemplate25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, i64 44742742}
!43 = !{ptr @_ZNK11xalanc_1_1016ElemCallTemplate26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, i64 22419101}
!44 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 8}
!45 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 8}
!46 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 7}
!47 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv, i64 7}
!48 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, i64 7}
!49 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_, i64 1}
!52 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!53 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!54 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!55 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!56 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!57 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!58 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!59 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!60 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!61 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!62 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!63 = !{ptr @_ZN11xalanc_1_1016ElemCallTemplateD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 8}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 22419101}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !{!"function_entry_count", i64 8}
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !68, i64 0}
!73 = !{!74, !71, i64 328}
!74 = !{!"_ZTSN11xalanc_1_1016ElemCallTemplateE", !75, i64 0, !71, i64 328, !71, i64 336}
!75 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !76, i64 0, !71, i64 8, !77, i64 16, !88, i64 248, !71, i64 256, !71, i64 264, !71, i64 272, !72, i64 280, !89, i64 288, !92, i64 320}
!76 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!77 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !78, i64 0, !80, i64 32, !81, i64 64, !82, i64 96}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!79 = !{!"long", !72, i64 0}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!81 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!82 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !83, i64 0, !84, i64 1, !71, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !86, i64 40, !86, i64 64, !87, i64 88, !79, i64 120, !79, i64 128}
!83 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!84 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!85 = !{!"float", !72, i64 0}
!86 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!87 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!88 = !{!"int", !72, i64 0}
!89 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !90, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!90 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !91, i64 0}
!91 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!92 = !{!"short", !72, i64 0}
!93 = !{!74, !71, i64 336}
!94 = !{!"branch_weights", i32 1, i32 9}
!95 = !{!"function_entry_count", i64 67161843}
!96 = !{!"branch_weights", i32 22419102, i32 44742743}
!97 = !{!"branch_weights", i32 22419102, i32 22323642}
!98 = !{!"branch_weights", i32 1, i32 22419102}
!99 = !{!"function_entry_count", i64 9}
!100 = !{!"branch_weights", i32 1, i32 143}
!101 = !{!"branch_weights", i32 9, i32 1}
!102 = !{!"branch_weights", i32 143, i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"function_entry_count", i64 1899}
!106 = !{!"function_entry_count", i64 962142}
!107 = !{!75, !71, i64 8}
!108 = !{!"function_entry_count", i64 259}
!109 = !{!"function_entry_count", i64 300}
!110 = !{!"function_entry_count", i64 967143541}
!111 = !{!"branch_weights", i32 403628487, i32 563515056}
!112 = !{!"function_entry_count", i64 403723}
!113 = !{!"function_entry_count", i64 3070433826}
!114 = !{!"function_entry_count", i64 1083116306}
!115 = !{!116, !79, i64 8}
!116 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!117 = !{!"function_entry_count", i64 565220908}
!118 = !{!116, !71, i64 24}
!119 = !{!"function_entry_count", i64 6521798503}
!120 = !{!"function_entry_count", i64 961942}
!121 = !{!122, !71, i64 8}
!122 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !76, i64 0, !71, i64 8, !123, i64 16, !124, i64 56, !125, i64 88, !123, i64 120, !126, i64 160, !79, i64 192, !127, i64 200, !129, i64 280, !131, i64 360, !132, i64 368, !71, i64 504, !137, i64 512, !138, i64 544, !143, i64 680, !144, i64 712, !145, i64 720, !148, i64 856, !150, i64 864, !145, i64 896, !148, i64 1032, !150, i64 1040, !150, i64 1072, !150, i64 1104, !150, i64 1136, !150, i64 1168, !150, i64 1200, !79, i64 1232, !151, i64 1240, !77, i64 1272}
!123 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !116, i64 0, !88, i64 32}
!124 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!125 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!126 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!127 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !71, i64 0, !79, i64 8, !128, i64 16, !128, i64 48}
!128 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!129 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !71, i64 0, !79, i64 8, !130, i64 16, !130, i64 48}
!130 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!131 = !{!"bool", !72, i64 0}
!132 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !133, i64 0, !134, i64 1, !71, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !135, i64 40, !135, i64 64, !136, i64 88, !79, i64 120, !79, i64 128}
!133 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!134 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!135 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!136 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!137 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!138 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !139, i64 0, !140, i64 1, !71, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !141, i64 40, !141, i64 64, !142, i64 88, !79, i64 120, !79, i64 128}
!139 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!140 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!141 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!142 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!143 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!144 = !{!"double", !72, i64 0}
!145 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !133, i64 0, !134, i64 1, !71, i64 8, !85, i64 16, !79, i64 24, !79, i64 32, !146, i64 40, !146, i64 64, !147, i64 88, !79, i64 120, !79, i64 128}
!146 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!147 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!148 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !149, i64 0}
!149 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !71, i64 0}
!150 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
!151 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !79, i64 8, !79, i64 16, !71, i64 24}
