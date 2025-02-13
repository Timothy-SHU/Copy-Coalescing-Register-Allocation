; ModuleID = 'ElemAttributeSet.cpp'
source_filename = "ElemAttributeSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemAttributeSet" = type { %"class.xalanc_1_10::ElemUse", ptr }
%"class.xalanc_1_10::ElemUse" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, i64 }
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

$_ZN11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1010Stylesheet17getStylesheetRootEv = comdat any

@_ZTVN11xalanc_1_1016ElemAttributeSetE = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016ElemAttributeSetE, ptr @_ZN11xalanc_1_1016ElemAttributeSetD2Ev, ptr @_ZN11xalanc_1_1016ElemAttributeSetD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1016ElemAttributeSet12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1016ElemAttributeSet10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1016ElemAttributeSet10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1016ElemAttributeSet14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1016ElemAttributeSet15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1016ElemAttributeSet16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_107ElemUse12evaluateAVTsERNS_26StylesheetExecutionContextE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016ElemAttributeSetE = dso_local constant [34 x i8] c"N11xalanc_1_1016ElemAttributeSetE\00", align 1
@_ZTIN11xalanc_1_107ElemUseE = external constant ptr
@_ZTIN11xalanc_1_1016ElemAttributeSetE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016ElemAttributeSetE, ptr @_ZTIN11xalanc_1_107ElemUseE }, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants40ELEMNAME_ATTRIBUTESET_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1016ElemAttributeSetC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1016ElemAttributeSetC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1016ElemAttributeSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016ElemAttributeSetD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemAttributeSetD0Ev(ptr noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1016ElemAttributeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(352) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
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
define dso_local noundef ptr @_ZNK11xalanc_1_1016ElemAttributeSet12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !48 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 95
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %8 = load ptr, ptr %1, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 97
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %7) #8
  %11 = load ptr, ptr %1, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 119
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #8
  %14 = load ptr, ptr %0, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1016ElemAttributeSet10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !48 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 120
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %7 = load ptr, ptr %1, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 98
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1016ElemAttributeSet10getInvokerERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !48 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 136
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  ret ptr %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016ElemAttributeSet14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !48 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants40ELEMNAME_ATTRIBUTESET_WITH_PREFIX_STRINGE, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemAttributeSet15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(1504) %2) unnamed_addr #2 align 2 !prof !48 {
  %4 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZN11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #8
  tail call void @_ZN11xalanc_1_1014StylesheetRoot15addAttributeSetERNS_16ElemAttributeSetE(ptr noundef nonnull align 8 dereferenceable(2064) %4, ptr noundef nonnull align 8 dereferenceable(352) %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

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
declare noundef ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

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
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1016ElemAttributeSet16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !48 {
  %3 = icmp eq i32 %1, 6
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107ElemUse12evaluateAVTsERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemAttributeSetC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 7) #8
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_1016ElemAttributeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemAttributeSet", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !55
  %8 = load ptr, ptr %3, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %12 unwind label %20

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %16 = load ptr, ptr @_ZN11xalanc_1_109Constants40ELEMNAME_ATTRIBUTESET_WITH_PREFIX_STRINGE, align 8
  br label %22

17:                                               ; preds = %72, %12
  %18 = load ptr, ptr %7, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %78

20:                                               ; preds = %75, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %79

22:                                               ; preds = %14, %72
  %23 = phi i32 [ 0, %14 ], [ %73, %72 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #8
          to label %28 unwind label %55

28:                                               ; preds = %22
  %29 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(36) %15) #8
          to label %30 unwind label %55

30:                                               ; preds = %28
  br i1 %29, label %31, label %57

31:                                               ; preds = %30
  %32 = load ptr, ptr %3, align 8, !tbaa !49
  %33 = getelementptr inbounds ptr, ptr %32, i64 5
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #8
          to label %36 unwind label %55

36:                                               ; preds = %31
  %37 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #8
  %38 = load ptr, ptr %0, align 8, !tbaa !49
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
          to label %42 unwind label %55

42:                                               ; preds = %36
  %43 = load ptr, ptr %1, align 8, !tbaa !49
  %44 = getelementptr inbounds ptr, ptr %43, i64 41
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef %41, i1 noundef zeroext false) #8
          to label %47 unwind label %55

47:                                               ; preds = %42
  store ptr %46, ptr %7, align 8, !tbaa !55
  %48 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #8
          to label %49 unwind label %55

49:                                               ; preds = %47
  br i1 %48, label %72, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %3, align 8, !tbaa !49
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #8
          to label %68 unwind label %55

55:                                               ; preds = %68, %66, %60, %57, %50, %47, %42, %36, %31, %28, %22
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %79

57:                                               ; preds = %30
  %58 = invoke noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #8
          to label %59 unwind label %55

59:                                               ; preds = %57
  br i1 %58, label %72, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %0, align 8, !tbaa !49
  %62 = getelementptr inbounds ptr, ptr %61, i64 5
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23, ptr noundef nonnull align 8 dereferenceable(16) %1) #8
          to label %65 unwind label %55

65:                                               ; preds = %60
  br i1 %64, label %72, label %66

66:                                               ; preds = %65
  %67 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %16) #8
          to label %68 unwind label %55

68:                                               ; preds = %50, %66
  %69 = phi i32 [ 74, %66 ], [ 62, %50 ]
  %70 = phi ptr [ %67, %66 ], [ %27, %50 ]
  %71 = phi ptr [ %27, %66 ], [ %54, %50 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %69, ptr noundef %70, ptr noundef %71) #8
          to label %72 unwind label %55

72:                                               ; preds = %68, %59, %65, %49
  %73 = add nuw i32 %23, 1
  %74 = icmp eq i32 %73, %11
  br i1 %74, label %17, label %22, !llvm.loop !76

75:                                               ; preds = %17
  %76 = load ptr, ptr @_ZN11xalanc_1_109Constants40ELEMNAME_ATTRIBUTESET_WITH_PREFIX_STRINGE, align 8, !tbaa !52
  %77 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !52
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %76, ptr noundef nonnull align 8 dereferenceable(36) %77) #8
          to label %78 unwind label %20

78:                                               ; preds = %75, %17
  ret void

79:                                               ; preds = %55, %20
  %80 = phi { ptr, i32 } [ %56, %55 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #6
  resume { ptr, i32 } %80
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 comdat !prof !78 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #8
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !80 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !81 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  br i1 %2, label %5, label %3, !prof !82

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #8
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !78 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #8
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !78 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !83 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #8
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #8
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #8
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !84 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !86
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !90 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016ElemAttributeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #6
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(2064) ptr @_ZN11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014StylesheetRoot15addAttributeSetERNS_16ElemAttributeSetE(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #1

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!47}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!37 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!41 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!43 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!44 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!45 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!46 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !51, i64 0}
!55 = !{!56, !53, i64 344}
!56 = !{!"_ZTSN11xalanc_1_1016ElemAttributeSetE", !57, i64 0, !53, i64 344}
!57 = !{!"_ZTSN11xalanc_1_107ElemUseE", !58, i64 0, !53, i64 328, !62, i64 336}
!58 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !59, i64 0, !53, i64 8, !60, i64 16, !71, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !54, i64 280, !72, i64 288, !75, i64 320}
!59 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!60 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !61, i64 0, !63, i64 32, !64, i64 64, !65, i64 96}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!62 = !{!"long", !54, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!65 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !66, i64 0, !67, i64 1, !53, i64 8, !68, i64 16, !62, i64 24, !62, i64 32, !69, i64 40, !69, i64 64, !70, i64 88, !62, i64 120, !62, i64 128}
!66 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!67 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!68 = !{!"float", !54, i64 0}
!69 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!71 = !{!"int", !54, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !73, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!73 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !74, i64 0}
!74 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!75 = !{!"short", !54, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"function_entry_count", i64 1899}
!79 = !{!"function_entry_count", i64 416}
!80 = !{!"function_entry_count", i64 300}
!81 = !{!"function_entry_count", i64 967143541}
!82 = !{!"branch_weights", i32 403628487, i32 563515056}
!83 = !{!"function_entry_count", i64 403723}
!84 = !{!"function_entry_count", i64 3070433826}
!85 = !{!"function_entry_count", i64 1083116306}
!86 = !{!87, !62, i64 8}
!87 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!88 = !{!"function_entry_count", i64 565220908}
!89 = !{!87, !53, i64 24}
!90 = !{!"function_entry_count", i64 6521798503}
!91 = !{!"function_entry_count", i64 5}
!92 = !{!93, !53, i64 8}
!93 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !59, i64 0, !53, i64 8, !94, i64 16, !95, i64 56, !96, i64 88, !94, i64 120, !97, i64 160, !62, i64 192, !98, i64 200, !100, i64 280, !102, i64 360, !103, i64 368, !53, i64 504, !108, i64 512, !109, i64 544, !114, i64 680, !115, i64 712, !116, i64 720, !119, i64 856, !121, i64 864, !116, i64 896, !119, i64 1032, !121, i64 1040, !121, i64 1072, !121, i64 1104, !121, i64 1136, !121, i64 1168, !121, i64 1200, !62, i64 1232, !122, i64 1240, !60, i64 1272}
!94 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !87, i64 0, !71, i64 32}
!95 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!96 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!97 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!98 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !53, i64 0, !62, i64 8, !99, i64 16, !99, i64 48}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!100 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !53, i64 0, !62, i64 8, !101, i64 16, !101, i64 48}
!101 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!102 = !{!"bool", !54, i64 0}
!103 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !104, i64 0, !105, i64 1, !53, i64 8, !68, i64 16, !62, i64 24, !62, i64 32, !106, i64 40, !106, i64 64, !107, i64 88, !62, i64 120, !62, i64 128}
!104 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!105 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!106 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!107 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!108 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!109 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !110, i64 0, !111, i64 1, !53, i64 8, !68, i64 16, !62, i64 24, !62, i64 32, !112, i64 40, !112, i64 64, !113, i64 88, !62, i64 120, !62, i64 128}
!110 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!111 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!112 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!113 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!114 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!115 = !{!"double", !54, i64 0}
!116 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !104, i64 0, !105, i64 1, !53, i64 8, !68, i64 16, !62, i64 24, !62, i64 32, !117, i64 40, !117, i64 64, !118, i64 88, !62, i64 120, !62, i64 128}
!117 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!118 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!119 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !120, i64 0}
!120 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !53, i64 0}
!121 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
!122 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !62, i64 8, !62, i64 16, !53, i64 24}
