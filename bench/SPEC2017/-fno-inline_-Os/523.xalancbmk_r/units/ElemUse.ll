; ModuleID = 'ElemUse.cpp'
source_filename = "ElemUse.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
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
%"struct.xalanc_1_10::StylesheetExecutionContext::UseAttributeSetIndexes" = type { i32, i32 }
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

$_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv = comdat any

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

@_ZTVN11xalanc_1_107ElemUseE = dso_local unnamed_addr constant { [41 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107ElemUseE, ptr @_ZN11xalanc_1_107ElemUseD2Ev, ptr @_ZN11xalanc_1_107ElemUseD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_107ElemUse14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_107ElemUse12evaluateAVTsERNS_26StylesheetExecutionContextE] }, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZN11xalanc_1_109Constants25ATTRNAME_USEATTRIBUTESETSE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_107ElemUseE = dso_local constant [24 x i8] c"N11xalanc_1_107ElemUseE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_107ElemUseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107ElemUseE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_107ElemUseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii
@_ZN11xalanc_1_107ElemUseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107ElemUseD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7
  store ptr getelementptr inbounds ({ [41 x ptr] }, ptr @_ZTVN11xalanc_1_107ElemUseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #4 align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_107ElemUseD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_107ElemUseD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_107ElemUse14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !66 {
  ret ptr @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #1 align 2 !prof !62 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !prof !89

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext true) #7
  br label %8

8:                                                ; preds = %7, %3
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 16, i1 noundef zeroext %1) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !90 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %14, label %6, !prof !91

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 134
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #7
  %10 = load ptr, ptr %1, align 8, !tbaa !63
  %11 = getelementptr inbounds ptr, ptr %10, i64 131
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %13 = tail call noundef ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 !prof !66 {
  %3 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %4 = tail call noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %3) #7
  %5 = load ptr, ptr %1, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 132
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 4 dereferenceable(8) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.xalanc_1_10::StylesheetExecutionContext::UseAttributeSetIndexes", ptr %8, i64 0, i32 1
  %12 = load i32, ptr %8, align 4, !tbaa !92
  %13 = zext i32 %12 to i64
  %14 = load i64, ptr %9, align 8, !tbaa !67
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %16, label %36

16:                                               ; preds = %2, %30
  %17 = phi i64 [ %33, %30 ], [ %13, %2 ]
  %18 = load ptr, ptr %10, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = load i32, ptr %11, align 4, !tbaa !96
  %22 = add i32 %21, 1
  store i32 %22, ptr %11, align 4, !tbaa !96
  %23 = zext i32 %21 to i64
  %24 = load ptr, ptr %0, align 8, !tbaa !63
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot15getAttributeSetERNS_26StylesheetExecutionContextERKNS_10XalanQNameEmPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(2064) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %23, ptr noundef %27) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i32, ptr %8, align 4, !tbaa !92
  %32 = add i32 %31, 1
  store i32 %32, ptr %8, align 4, !tbaa !92
  store i32 0, ptr %11, align 4, !tbaa !96
  %33 = zext i32 %32 to i64
  %34 = load i64, ptr %9, align 8, !tbaa !67
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %16, label %36

36:                                               ; preds = %30, %16, %2
  %37 = phi ptr [ null, %2 ], [ null, %30 ], [ %28, %16 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_107ElemUse10endElementERNS_26StylesheetExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !90 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6, !prof !91

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 135
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %10 = load ptr, ptr %1, align 8, !tbaa !63
  %11 = getelementptr inbounds ptr, ptr %10, i64 133
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !97 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7, !prof !98

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21, !prof !99

10:                                               ; preds = %3, %7
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21, !prof !100

13:                                               ; preds = %10
  %14 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %2) #7
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %21, !prof !101

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !63
  %18 = getelementptr inbounds ptr, ptr %17, i64 38
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %20 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  br label %21

21:                                               ; preds = %7, %16, %13, %10
  %22 = phi ptr [ %20, %16 ], [ null, %13 ], [ %11, %10 ], [ %8, %7 ]
  ret ptr %22
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !103
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 !prof !90 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10, !prof !91

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 38
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  br label %22

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !63
  %12 = getelementptr inbounds ptr, ptr %11, i64 132
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 4 dereferenceable(8) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  store i32 0, ptr %14, align 4, !tbaa !92
  %15 = load ptr, ptr %1, align 8, !tbaa !63
  %16 = getelementptr inbounds ptr, ptr %15, i64 132
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 4 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %19 = getelementptr inbounds %"struct.xalanc_1_10::StylesheetExecutionContext::UseAttributeSetIndexes", ptr %18, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !96
  %20 = tail call noundef ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24, !prof !99

22:                                               ; preds = %6, %10
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi ptr [ %23, %22 ], [ %20, %10 ]
  ret ptr %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !104 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(2064) ptr @_ZNK11xalanc_1_1010Stylesheet17getStylesheetRootEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #4 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1014StylesheetRoot15getAttributeSetERNS_26StylesheetExecutionContextERKNS_10XalanQNameEmPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZNK11xalanc_1_107ElemUse12evaluateAVTsERNS_26StylesheetExecutionContextE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #5 align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #1 align 2 !prof !139 {
  %6 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %18, !prof !140

8:                                                ; preds = %5
  %9 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %10 = load ptr, ptr %0, align 8, !tbaa !63
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %14 = load ptr, ptr %1, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 29
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1504) %9, ptr noundef %13) #7
  br i1 %17, label %21, label %38, !prof !141

18:                                               ; preds = %5
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRNAME_USEATTRIBUTESETSE, align 8, !tbaa !95
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %19) #7
  br i1 %20, label %21, label %38, !prof !141

21:                                               ; preds = %8, %18
  %22 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %3, align 8, !tbaa !63
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) #7
  %27 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %28 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %27) #7
  %29 = load ptr, ptr %0, align 8, !tbaa !63
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(322) %0) #7
  %33 = load ptr, ptr %1, align 8, !tbaa !63
  %34 = getelementptr inbounds ptr, ptr %33, i64 42
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(80) %28, ptr noundef %32, i1 noundef zeroext false) #7
  %37 = getelementptr inbounds %"class.xalanc_1_10::ElemUse", ptr %0, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !94
  br label %38

38:                                               ; preds = %8, %21, %18
  %39 = phi i1 [ false, %8 ], [ true, %21 ], [ false, %18 ]
  ret i1 %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !142 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #7
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #4 comdat align 2 !prof !143 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement8getXPathEj(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 !prof !144 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !145
  %6 = trunc i32 %1 to i16
  %7 = xor i16 %6, -1
  %8 = and i16 %5, %7
  %9 = or i16 %5, %6
  %10 = select i1 %2, i16 %9, i16 %8, !prof !146
  store i16 %10, ptr %4, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !142 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #7
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !142 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #7
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #7
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #7
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #7
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !148 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  br i1 %2, label %5, label %3, !prof !149

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !150 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !151 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !152
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !153 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !155 {
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!61}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xalanc_1_107ElemUseC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 188}
!36 = !{ptr @_ZN11xalanc_1_107ElemUseD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 188}
!37 = !{ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb, i64 1}
!38 = !{ptr @_ZN11xalanc_1_107ElemUse16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 188}
!39 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement21canGenerateAttributesEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb, i64 188}
!40 = !{ptr @_ZNK11xalanc_1_107ElemUse12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE, i64 1}
!41 = !{ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE, i64 1}
!42 = !{ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, i64 1517137}
!43 = !{ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 786589}
!44 = !{ptr @_ZNK11xalanc_1_107ElemUse25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, i64 1}
!45 = !{ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_107ElemUse19getNextAttributeSetERNS_26StylesheetExecutionContextE, i64 1}
!46 = !{ptr @_ZNK11xalanc_1_107ElemUse26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, i64 1048803}
!47 = !{ptr @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 12}
!48 = !{ptr @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi, ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv, i64 12}
!49 = !{ptr @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 1}
!50 = !{ptr @_ZN11xalanc_1_107ElemUse23processUseAttributeSetsERNS_29StylesheetConstructionContextEPKtRKN11xercesc_2_713AttributeListEi, ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv, i64 1}
!51 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!52 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!53 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!54 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!55 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!56 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!57 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!58 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!59 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!60 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 188}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!68, !75, i64 336}
!68 = !{!"_ZTSN11xalanc_1_107ElemUseE", !69, i64 0, !71, i64 328, !75, i64 336}
!69 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !70, i64 0, !71, i64 8, !73, i64 16, !84, i64 248, !71, i64 256, !71, i64 264, !71, i64 272, !72, i64 280, !85, i64 288, !88, i64 320}
!70 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !65, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !74, i64 0, !76, i64 32, !77, i64 64, !78, i64 96}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!75 = !{!"long", !72, i64 0}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!78 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !79, i64 0, !80, i64 1, !71, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !82, i64 40, !82, i64 64, !83, i64 88, !75, i64 120, !75, i64 128}
!79 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!80 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!81 = !{!"float", !72, i64 0}
!82 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!83 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!84 = !{!"int", !72, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !86, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!86 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !87, i64 0}
!87 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!88 = !{!"short", !72, i64 0}
!89 = !{!"branch_weights", i32 189, i32 1}
!90 = !{!"function_entry_count", i64 1048804}
!91 = !{!"branch_weights", i32 1048805, i32 1}
!92 = !{!93, !84, i64 0}
!93 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContext22UseAttributeSetIndexesE", !84, i64 0, !84, i64 4}
!94 = !{!68, !71, i64 328}
!95 = !{!71, !71, i64 0}
!96 = !{!93, !84, i64 4}
!97 = !{!"function_entry_count", i64 1517138}
!98 = !{!"branch_weights", i32 1517139, i32 1}
!99 = !{!"branch_weights", i32 0, i32 -2147483648}
!100 = !{!"branch_weights", i32 1113404350, i32 1034079298}
!101 = !{!"branch_weights", i32 1, i32 786590}
!102 = !{!"function_entry_count", i64 46114577}
!103 = !{!69, !84, i64 248}
!104 = !{!"function_entry_count", i64 962142}
!105 = !{!69, !71, i64 8}
!106 = !{!"function_entry_count", i64 961942}
!107 = !{!108, !71, i64 8}
!108 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !70, i64 0, !71, i64 8, !109, i64 16, !111, i64 56, !112, i64 88, !109, i64 120, !113, i64 160, !75, i64 192, !114, i64 200, !116, i64 280, !118, i64 360, !119, i64 368, !71, i64 504, !124, i64 512, !125, i64 544, !130, i64 680, !131, i64 712, !132, i64 720, !135, i64 856, !137, i64 864, !132, i64 896, !135, i64 1032, !137, i64 1040, !137, i64 1072, !137, i64 1104, !137, i64 1136, !137, i64 1168, !137, i64 1200, !75, i64 1232, !138, i64 1240, !73, i64 1272}
!109 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !110, i64 0, !84, i64 32}
!110 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!111 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!112 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!113 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!114 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !71, i64 0, !75, i64 8, !115, i64 16, !115, i64 48}
!115 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!116 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !71, i64 0, !75, i64 8, !117, i64 16, !117, i64 48}
!117 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!118 = !{!"bool", !72, i64 0}
!119 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !120, i64 0, !121, i64 1, !71, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !122, i64 40, !122, i64 64, !123, i64 88, !75, i64 120, !75, i64 128}
!120 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!121 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!122 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!123 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!124 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!125 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !126, i64 0, !127, i64 1, !71, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !128, i64 40, !128, i64 64, !129, i64 88, !75, i64 120, !75, i64 128}
!126 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!127 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!128 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!129 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!130 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!131 = !{!"double", !72, i64 0}
!132 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !120, i64 0, !121, i64 1, !71, i64 8, !81, i64 16, !75, i64 24, !75, i64 32, !133, i64 40, !133, i64 64, !134, i64 88, !75, i64 120, !75, i64 128}
!133 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!134 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!135 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !136, i64 0}
!136 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !71, i64 0}
!137 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!138 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !71, i64 0, !75, i64 8, !75, i64 16, !71, i64 24}
!139 = !{!"function_entry_count", i64 12}
!140 = !{!"branch_weights", i32 13, i32 1}
!141 = !{!"branch_weights", i32 1, i32 13}
!142 = !{!"function_entry_count", i64 1899}
!143 = !{!"function_entry_count", i64 259}
!144 = !{!"function_entry_count", i64 1646}
!145 = !{!69, !88, i64 320}
!146 = !{!"branch_weights", i32 596, i32 1052}
!147 = !{!"function_entry_count", i64 403723}
!148 = !{!"function_entry_count", i64 967143541}
!149 = !{!"branch_weights", i32 403628487, i32 563515056}
!150 = !{!"function_entry_count", i64 3070433834}
!151 = !{!"function_entry_count", i64 1083116306}
!152 = !{!110, !75, i64 8}
!153 = !{!"function_entry_count", i64 565220908}
!154 = !{!110, !71, i64 24}
!155 = !{!"function_entry_count", i64 6521798493}
