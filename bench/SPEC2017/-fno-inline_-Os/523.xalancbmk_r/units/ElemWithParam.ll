; ModuleID = 'ElemWithParam.cpp'
source_filename = "ElemWithParam.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemWithParam" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }
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
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZN11xalanc_1_1010XObjectPtraSERKS0_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE = comdat any

$_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev = comdat any

$_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

@_ZTVN11xalanc_1_1013ElemWithParamE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1013ElemWithParamE, ptr @_ZN11xalanc_1_1013ElemWithParamD2Ev, ptr @_ZN11xalanc_1_1013ElemWithParamD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1013ElemWithParam10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1013ElemWithParam14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1013ElemWithParam8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1013ElemWithParamE = dso_local constant [31 x i8] c"N11xalanc_1_1013ElemWithParamE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1013ElemWithParamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1013ElemWithParamE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1013ElemWithParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1013ElemWithParamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1013ElemWithParamD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 0) #10
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1013ElemWithParamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %3, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %13 unwind label %20

13:                                               ; preds = %6
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %17, label %15, !prof !96

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  br label %22

17:                                               ; preds = %92, %13
  %18 = load ptr, ptr %8, align 8, !tbaa !97
  %19 = icmp eq ptr %18, null
  br i1 %19, label %95, label %98, !prof !119

20:                                               ; preds = %95, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %99

22:                                               ; preds = %15, %92
  %23 = phi i32 [ 0, %15 ], [ %93, %92 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !93
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #10
          to label %28 unwind label %47

28:                                               ; preds = %22
  %29 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(36) %16) #10
          to label %30 unwind label %47

30:                                               ; preds = %28
  br i1 %29, label %31, label %49, !prof !120

31:                                               ; preds = %30
  %32 = load ptr, ptr %0, align 8, !tbaa !93
  %33 = getelementptr inbounds ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %36 unwind label %47

36:                                               ; preds = %31
  %37 = load ptr, ptr %3, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #10
          to label %41 unwind label %47

41:                                               ; preds = %36
  %42 = load ptr, ptr %1, align 8, !tbaa !93
  %43 = getelementptr inbounds ptr, ptr %42, i64 21
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %35, ptr noundef %40, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %46 unwind label %47

46:                                               ; preds = %41
  store ptr %45, ptr %7, align 8, !tbaa !121
  br label %92

47:                                               ; preds = %88, %85, %79, %74, %72, %69, %64, %58, %53, %49, %41, %36, %31, %28, %22
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %99

49:                                               ; preds = %30
  %50 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8
  %51 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(36) %50) #10
          to label %52 unwind label %47

52:                                               ; preds = %49
  br i1 %51, label %53, label %79, !prof !122

53:                                               ; preds = %52
  %54 = load ptr, ptr %3, align 8, !tbaa !93
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #10
          to label %58 unwind label %47

58:                                               ; preds = %53
  %59 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %2) #10
  %60 = load ptr, ptr %0, align 8, !tbaa !93
  %61 = getelementptr inbounds ptr, ptr %60, i64 4
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %64 unwind label %47

64:                                               ; preds = %58
  %65 = load ptr, ptr %1, align 8, !tbaa !93
  %66 = getelementptr inbounds ptr, ptr %65, i64 41
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(80) %59, ptr noundef %63, i1 noundef zeroext false) #10
          to label %69 unwind label %47

69:                                               ; preds = %64
  store ptr %68, ptr %8, align 8, !tbaa !97
  %70 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %68) #10
          to label %71 unwind label %47

71:                                               ; preds = %69
  br i1 %70, label %92, label %72, !prof !122

72:                                               ; preds = %71
  %73 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %50) #10
          to label %74 unwind label %47

74:                                               ; preds = %72
  %75 = load ptr, ptr %3, align 8, !tbaa !93
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23) #10
          to label %88 unwind label %47

79:                                               ; preds = %52
  %80 = load ptr, ptr %0, align 8, !tbaa !93
  %81 = getelementptr inbounds ptr, ptr %80, i64 5
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef zeroext i1 %82(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %23, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
          to label %84 unwind label %47

84:                                               ; preds = %79
  br i1 %83, label %92, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE, align 8
  %87 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %86) #10
          to label %88 unwind label %47

88:                                               ; preds = %85, %74
  %89 = phi i32 [ 62, %74 ], [ 74, %85 ]
  %90 = phi ptr [ %73, %74 ], [ %87, %85 ]
  %91 = phi ptr [ %78, %74 ], [ %27, %85 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %89, ptr noundef %90, ptr noundef %91) #10
          to label %92 unwind label %47

92:                                               ; preds = %88, %71, %84, %46
  %93 = add nuw i32 %23, 1
  %94 = icmp eq i32 %93, %12
  br i1 %94, label %17, label %22, !prof !123, !llvm.loop !124

95:                                               ; preds = %17
  %96 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE, align 8, !tbaa !126
  %97 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_NAMEE, align 8, !tbaa !126
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %96, ptr noundef nonnull align 8 dereferenceable(36) %97) #10
          to label %98 unwind label %20

98:                                               ; preds = %95, %17
  ret void

99:                                               ; preds = %47, %20
  %100 = phi { ptr, i32 } [ %48, %47 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  resume { ptr, i32 } %100
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !127 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #10
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #4 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !130 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br i1 %2, label %5, label %3, !prof !131

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1013ElemWithParamD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #4 align 2 !prof !92 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1013ElemWithParamD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1013ElemWithParamD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1013ElemWithParam14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !92 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants37ELEMNAME_WITHPARAM_WITH_PREFIX_STRINGE, align 8, !tbaa !126
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1013ElemWithParam8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(344) %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !132 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #10
  %10 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %50, !prof !134

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !93
  %15 = getelementptr inbounds ptr, ptr %14, i64 18
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
          to label %18 unwind label %28

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %21 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = getelementptr inbounds ptr, ptr %22, i64 13
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1019ElemTemplateElement13s_emptyStringE) #10
          to label %25 unwind label %30

25:                                               ; preds = %20
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %27 unwind label %32

27:                                               ; preds = %25
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %99

28:                                               ; preds = %99, %53, %45, %41, %36, %13
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %107

30:                                               ; preds = %20
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %25
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %107

36:                                               ; preds = %18
  %37 = load ptr, ptr %1, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 6
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
          to label %41 unwind label %28

41:                                               ; preds = %36
  %42 = load ptr, ptr %1, align 8, !tbaa !93
  %43 = getelementptr inbounds ptr, ptr %42, i64 110
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %40) #10
          to label %45 unwind label %28

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 8, !tbaa !93
  %47 = getelementptr inbounds ptr, ptr %46, i64 19
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
          to label %105 unwind label %28

50:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
          to label %51 unwind label %75

51:                                               ; preds = %50
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %53 unwind label %77

53:                                               ; preds = %51
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %54 = load ptr, ptr %1, align 8, !tbaa !93
  %55 = getelementptr inbounds ptr, ptr %54, i64 137
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef i64 %56(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
          to label %58 unwind label %28

58:                                               ; preds = %53
  %59 = icmp eq i64 %57, 0
  br i1 %59, label %99, label %60, !prof !135

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #13
  %61 = load ptr, ptr %1, align 8, !tbaa !93
  %62 = getelementptr inbounds ptr, ptr %61, i64 6
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
          to label %65 unwind label %81

65:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #13
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef -1) #10
          to label %67 unwind label %83

67:                                               ; preds = %65
  %68 = load ptr, ptr %10, align 8, !tbaa !121
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %69 unwind label %85

69:                                               ; preds = %67
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %64, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(129) %68, ptr noundef nonnull %8) #10
          to label %70 unwind label %87

70:                                               ; preds = %69
  %71 = load ptr, ptr %1, align 8, !tbaa !93
  %72 = getelementptr inbounds ptr, ptr %71, i64 140
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %6) #10
          to label %74 unwind label %89

74:                                               ; preds = %70
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #11
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #13
  br label %99

75:                                               ; preds = %50
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %79

77:                                               ; preds = %51
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %107

81:                                               ; preds = %60
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %97

83:                                               ; preds = %65
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %95

85:                                               ; preds = %67
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %93

87:                                               ; preds = %69
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %91

89:                                               ; preds = %70
  %90 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #11
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %88, %87 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  br label %93

93:                                               ; preds = %91, %85
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %86, %85 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #11
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #13
  br label %97

97:                                               ; preds = %95, %81
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #13
  br label %107

99:                                               ; preds = %58, %74, %27
  %100 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !97
  %102 = load ptr, ptr %1, align 8, !tbaa !93
  %103 = getelementptr inbounds ptr, ptr %102, i64 91
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %105 unwind label %28

105:                                              ; preds = %99, %45
  %106 = phi ptr [ %49, %45 ], [ null, %99 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %106

107:                                              ; preds = %97, %79, %34, %28
  %108 = phi { ptr, i32 } [ %29, %28 ], [ %35, %34 ], [ %98, %97 ], [ %80, %79 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  resume { ptr, i32 } %108
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !136 {
  store ptr %1, ptr %0, align 8, !tbaa !137
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %3 = load ptr, ptr %0, align 8, !tbaa !137
  %4 = load ptr, ptr %1, align 8, !tbaa !137
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %8, label %6, !prof !144

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3) #10
  %7 = load ptr, ptr %1, align 8, !tbaa !137
  store ptr %7, ptr %0, align 8, !tbaa !137
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !145 {
  %2 = load ptr, ptr %0, align 8, !tbaa !137
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #10
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !93
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
          to label %10 unwind label %14

10:                                               ; preds = %4
  %11 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %1) #10
          to label %12 unwind label %14

12:                                               ; preds = %10
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %9, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %3) #10
          to label %13 unwind label %14

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void

14:                                               ; preds = %12, %10, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !149 {
  %3 = load ptr, ptr %1, align 8, !tbaa !137
  store ptr %3, ptr %0, align 8, !tbaa !137
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 !prof !150 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1013ElemWithParam10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %28, !prof !134

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !93
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !93
  %15 = getelementptr inbounds ptr, ptr %14, i64 20
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %17 = getelementptr inbounds %"class.xalanc_1_10::ElemWithParam", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %19 = load ptr, ptr %1, align 8, !tbaa !93
  %20 = getelementptr inbounds ptr, ptr %19, i64 111
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %22 = load ptr, ptr %1, align 8, !tbaa !93
  %23 = getelementptr inbounds ptr, ptr %22, i64 91
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %25 unwind label %26

25:                                               ; preds = %13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %28

26:                                               ; preds = %13
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  resume { ptr, i32 } %27

28:                                               ; preds = %25, %7, %2
  ret void
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
declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

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
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

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
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !127 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #10
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !127 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #10
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #10
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #10
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !152 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !153 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !154
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !158 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !159 {
  store ptr %1, ptr %0, align 8, !tbaa !126
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  store ptr %8, ptr %4, align 8, !tbaa !160
  %9 = load ptr, ptr %0, align 8, !tbaa !162
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %2) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  %3 = getelementptr inbounds i32, ptr %2, i64 2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %4) #10
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !164 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !165 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !168 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !170
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !171

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #10
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !172 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !173

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !174, !llvm.loop !175

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !176 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !177 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !172 {
  %3 = load ptr, ptr %0, align 8, !tbaa !178
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #4 comdat align 2 !prof !179 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !180 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!91}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!35 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 9}
!36 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 26}
!37 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1010Stylesheet13getNamespacesEv, i64 8}
!38 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, i64 8}
!39 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1013ElemWithParamC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_, i64 1}
!42 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!43 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!44 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!45 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!46 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!47 = !{ptr @_ZN11xalanc_1_1013ElemWithParamD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 9}
!48 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 44742742}
!49 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 44742742}
!50 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 44742741}
!51 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, i64 44742698}
!52 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 89485442}
!53 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv, i64 1}
!54 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj, i64 1}
!55 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 1}
!56 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathENS_10XObjectPtrE, i64 1}
!57 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014SelectionEventD1Ev, i64 1}
!58 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!60 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44800926}
!61 = !{ptr @_ZN11xalanc_1_1010XObjectPtraSERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44800926}
!62 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!63 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!64 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE, i64 44800927}
!65 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, i64 44800884}
!66 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44800842}
!67 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 44800927}
!68 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!69 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!70 = !{ptr @_ZNK11xalanc_1_1013ElemWithParam10endElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 1}
!71 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!72 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!73 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!74 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!75 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!76 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!77 = !{ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 68379708}
!78 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, ptr @__clang_call_terminate, i64 65}
!79 = !{ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 68609120}
!80 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 68609147}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!91 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!92 = !{!"function_entry_count", i64 9}
!93 = !{!94, !94, i64 0}
!94 = !{!"vtable pointer", !95, i64 0}
!95 = !{!"Simple C++ TBAA"}
!96 = !{!"branch_weights", i32 1, i32 159}
!97 = !{!98, !101, i64 336}
!98 = !{!"_ZTSN11xalanc_1_1013ElemWithParamE", !99, i64 0, !101, i64 328, !101, i64 336}
!99 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !100, i64 0, !101, i64 8, !103, i64 16, !114, i64 248, !101, i64 256, !101, i64 264, !101, i64 272, !102, i64 280, !115, i64 288, !118, i64 320}
!100 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!101 = !{!"any pointer", !102, i64 0}
!102 = !{!"omnipotent char", !95, i64 0}
!103 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !104, i64 0, !106, i64 32, !107, i64 64, !108, i64 96}
!104 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !101, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!105 = !{!"long", !102, i64 0}
!106 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !101, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!107 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !101, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!108 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !109, i64 0, !110, i64 1, !101, i64 8, !111, i64 16, !105, i64 24, !105, i64 32, !112, i64 40, !112, i64 64, !113, i64 88, !105, i64 120, !105, i64 128}
!109 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!110 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!111 = !{!"float", !102, i64 0}
!112 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !101, i64 0, !101, i64 8, !101, i64 16}
!113 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !101, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!114 = !{!"int", !102, i64 0}
!115 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !116, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!116 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !117, i64 0}
!117 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!118 = !{!"short", !102, i64 0}
!119 = !{!"branch_weights", i32 1, i32 10}
!120 = !{!"branch_weights", i32 10, i32 10}
!121 = !{!98, !101, i64 328}
!122 = !{!"branch_weights", i32 10, i32 1}
!123 = !{!"branch_weights", i32 159, i32 145}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !{!101, !101, i64 0}
!127 = !{!"function_entry_count", i64 1899}
!128 = !{!"function_entry_count", i64 416}
!129 = !{!"function_entry_count", i64 300}
!130 = !{!"function_entry_count", i64 967143541}
!131 = !{!"branch_weights", i32 403628487, i32 563515056}
!132 = !{!"function_entry_count", i64 0}
!133 = !{!"function_entry_count", i64 44742742}
!134 = !{!"branch_weights", i32 1, i32 44742743}
!135 = !{!"branch_weights", i32 44742743, i32 1}
!136 = !{!"function_entry_count", i64 292432932}
!137 = !{!138, !101, i64 0}
!138 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !101, i64 0}
!139 = !{!"function_entry_count", i64 201666166}
!140 = !{!141, !101, i64 16}
!141 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !142, i64 0, !101, i64 16}
!142 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !101, i64 8}
!143 = !{!"function_entry_count", i64 45140500}
!144 = !{!"branch_weights", i32 339574, i32 44800928}
!145 = !{!"function_entry_count", i64 1009440147}
!146 = !{!"function_entry_count", i64 44800927}
!147 = !{!"function_entry_count", i64 280295}
!148 = !{!142, !101, i64 8}
!149 = !{!"function_entry_count", i64 717007216}
!150 = !{!"function_entry_count", i64 43398227}
!151 = !{!"function_entry_count", i64 403723}
!152 = !{!"function_entry_count", i64 3070433834}
!153 = !{!"function_entry_count", i64 1083116306}
!154 = !{!155, !105, i64 8}
!155 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !101, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!156 = !{!"function_entry_count", i64 565220908}
!157 = !{!155, !101, i64 24}
!158 = !{!"function_entry_count", i64 6521798493}
!159 = !{!"function_entry_count", i64 68379708}
!160 = !{!161, !101, i64 8}
!161 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreE", !101, i64 0, !101, i64 8}
!162 = !{!161, !101, i64 0}
!163 = !{!"function_entry_count", i64 68609096}
!164 = !{!"function_entry_count", i64 68609120}
!165 = !{!"function_entry_count", i64 68609147}
!166 = !{!167, !101, i64 24}
!167 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !101, i64 0, !105, i64 8, !105, i64 16, !101, i64 24}
!168 = !{!"function_entry_count", i64 68633739}
!169 = !{!"function_entry_count", i64 128698679}
!170 = !{!155, !105, i64 16}
!171 = !{!"branch_weights", i32 43398290, i32 85300391}
!172 = !{!"function_entry_count", i64 85300390}
!173 = !{!"branch_weights", i32 1, i32 12185770}
!174 = !{!"branch_weights", i32 12185770, i32 -193930396}
!175 = distinct !{!175, !125}
!176 = !{!"function_entry_count", i64 227375739}
!177 = !{!"function_entry_count", i64 568333389}
!178 = !{!155, !101, i64 0}
!179 = !{!"function_entry_count", i64 30137156660}
!180 = !{!"function_entry_count", i64 825654971}
