; ModuleID = 'ElemTextLiteral.cpp'
source_filename = "ElemTextLiteral.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemTextLiteral" = type <{ %"class.xalanc_1_10::ElemTemplateElement.base", i8, [5 x i8], ptr, i32, [4 x i8] }>
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
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>

$_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement13preserveSpaceEb = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

@_ZTVN11xalanc_1_1015ElemTextLiteralE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015ElemTextLiteralE, ptr @_ZN11xalanc_1_1015ElemTextLiteralD2Ev, ptr @_ZN11xalanc_1_1015ElemTextLiteralD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1015ElemTextLiteral12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1015ElemTextLiteral12isWhitespaceEv, ptr @_ZNK11xalanc_1_1015ElemTextLiteral14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015ElemTextLiteralE = dso_local constant [33 x i8] c"N11xalanc_1_1015ElemTextLiteralE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1015ElemTextLiteralE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015ElemTextLiteralE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_109Constants32ELEMNAME_TEXT_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8

@_ZN11xalanc_1_1015ElemTextLiteralC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr, i32, i32, i1, i1), ptr @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb
@_ZN11xalanc_1_1015ElemTextLiteralD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015ElemTextLiteralD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015ElemTextLiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(340) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1015ElemTextLiteralD2Ev(ptr noundef nonnull align 8 dereferenceable(340) %0) #7
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
define dso_local noundef ptr @_ZNK11xalanc_1_1015ElemTextLiteral12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(340) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 !prof !48 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %5 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !73
  %9 = load ptr, ptr %1, align 8, !tbaa !74
  %10 = select i1 %4, i64 104, i64 103, !prof !76
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %6, i32 noundef 0, i32 noundef %8) #9
  ret ptr null
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1015ElemTextLiteral12isWhitespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(340) %0) unnamed_addr #3 align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 2, !tbaa !78, !range !79, !noundef !80
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015ElemTextLiteral14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !81 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants32ELEMNAME_TEXT_WITH_PREFIX_STRINGE, align 8, !tbaa !82
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

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb(ptr noundef nonnull align 8 dereferenceable(340) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #9
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef 36, ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef %3, i32 noundef %4) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1015ElemTextLiteralE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !74
  %12 = invoke noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef %5, i32 noundef %6, i32 noundef %7) #9
          to label %13 unwind label %26

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 1
  %15 = zext i1 %12 to i8
  store i8 %15, ptr %14, align 2, !tbaa !78
  %16 = zext i32 %6 to i64
  %17 = getelementptr inbounds i16, ptr %5, i64 %16
  %18 = load ptr, ptr %1, align 8, !tbaa !74
  %19 = getelementptr inbounds ptr, ptr %18, i64 34
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %17, i32 noundef %7, i1 noundef zeroext true) #9
          to label %22 unwind label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %0, i64 0, i32 4
  store i32 %7, ptr %24, align 8, !tbaa !73
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %9) #9
          to label %25 unwind label %26

25:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement13preserveSpaceEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %8) #9
  ret void

26:                                               ; preds = %22, %13, %10
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #0 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 512, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement13preserveSpaceEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 64, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 !prof !84 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !85
  %6 = trunc i32 %1 to i16
  %7 = xor i16 %6, -1
  %8 = and i16 %5, %7
  %9 = or i16 %5, %6
  %10 = select i1 %2, i16 %9, i16 %8, !prof !86
  store i16 %10, ptr %4, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015ElemTextLiteralD2Ev(ptr noundef nonnull align 8 dereferenceable(340) %0) unnamed_addr #0 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #2 comdat align 2 !prof !87 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 512) #9
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !85
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { optsize }

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
!36 = !{ptr @_ZNK11xalanc_1_1015ElemTextLiteral12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 157576}
!37 = !{ptr @_ZNK11xalanc_1_1015ElemTextLiteral12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv, i64 157576}
!38 = !{ptr @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb, ptr @_ZNK11xalanc_1_1010Stylesheet17getBaseIdentifierEv, i64 440}
!39 = !{ptr @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiRKNS_14XalanDOMStringEii, i64 440}
!40 = !{ptr @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb, ptr @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj, i64 440}
!41 = !{ptr @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb, ptr @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb, i64 440}
!42 = !{ptr @_ZN11xalanc_1_1015ElemTextLiteralC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb, ptr @_ZN11xalanc_1_1019ElemTemplateElement13preserveSpaceEb, i64 440}
!43 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb, i64 440}
!44 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement13preserveSpaceEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb, i64 440}
!45 = !{ptr @_ZN11xalanc_1_1015ElemTextLiteralD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 440}
!46 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 806437}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 157576}
!49 = !{!50, !53, i64 328}
!50 = !{!"_ZTSN11xalanc_1_1015ElemTextLiteralE", !51, i64 0, !72, i64 322, !53, i64 328, !67, i64 336}
!51 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !52, i64 0, !53, i64 8, !56, i64 16, !67, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !54, i64 280, !68, i64 288, !71, i64 320}
!52 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !57, i64 0, !59, i64 32, !60, i64 64, !61, i64 96}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !58, i64 8, !58, i64 16, !53, i64 24}
!58 = !{!"long", !54, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !53, i64 0, !58, i64 8, !58, i64 16, !53, i64 24}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !53, i64 0, !58, i64 8, !58, i64 16, !53, i64 24}
!61 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !62, i64 0, !63, i64 1, !53, i64 8, !64, i64 16, !58, i64 24, !58, i64 32, !65, i64 40, !65, i64 64, !66, i64 88, !58, i64 120, !58, i64 128}
!62 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!63 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!64 = !{!"float", !54, i64 0}
!65 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !53, i64 0, !58, i64 8, !58, i64 16, !53, i64 24}
!67 = !{!"int", !54, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !69, i64 0, !58, i64 8, !58, i64 16, !53, i64 24}
!69 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !70, i64 0}
!70 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!71 = !{!"short", !54, i64 0}
!72 = !{!"bool", !54, i64 0}
!73 = !{!50, !67, i64 336}
!74 = !{!75, !75, i64 0}
!75 = !{!"vtable pointer", !55, i64 0}
!76 = !{!"branch_weights", i32 1, i32 157577}
!77 = !{!"function_entry_count", i64 440}
!78 = !{!50, !72, i64 322}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!"function_entry_count", i64 75}
!82 = !{!53, !53, i64 0}
!83 = !{!"function_entry_count", i64 441}
!84 = !{!"function_entry_count", i64 1646}
!85 = !{!51, !71, i64 320}
!86 = !{!"branch_weights", i32 596, i32 1052}
!87 = !{!"function_entry_count", i64 806437}
!88 = !{!"function_entry_count", i64 417098446}
