; ModuleID = 'ElemValueOf.cpp'
source_filename = "ElemValueOf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemValueOf" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr }
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
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::FormatterListenerAdapater" = type { %"class.xalanc_1_10::FormatterListener", ptr }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.27", i32, %"class.xalanc_1_10::XalanVector.28", i32, ptr, %"class.xalanc_1_10::XalanVector.29" }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.28" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.29" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapaterC2ERNS_26StylesheetExecutionContextE = comdat any

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZNK11xalanc_1_105XPath13getExpressionEv = comdat any

$_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKc = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapaterD0Ev = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater10charactersEPKtj = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater11endDocumentEv = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater10endElementEPKt = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater19ignorableWhitespaceEPKtj = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater21processingInstructionEPKtS2_ = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater13resetDocumentEv = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater18setDocumentLocatorEPKN11xercesc_2_77LocatorE = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater13startDocumentEv = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater12startElementEPKtRN11xercesc_2_713AttributeListE = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater13charactersRawEPKtj = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater7commentEPKt = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater5cdataEPKtj = comdat any

$_ZN11xalanc_1_1025FormatterListenerAdapater15entityReferenceEPKt = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE = comdat any

$_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev = comdat any

$_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKc = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKc = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZTVN11xalanc_1_1025FormatterListenerAdapaterE = comdat any

$_ZTSN11xalanc_1_1025FormatterListenerAdapaterE = comdat any

$_ZTIN11xalanc_1_1025FormatterListenerAdapaterE = comdat any

@_ZTVN11xalanc_1_1011ElemValueOfE = dso_local unnamed_addr constant { [40 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011ElemValueOfE, ptr @_ZN11xalanc_1_1011ElemValueOfD2Ev, ptr @_ZN11xalanc_1_1011ElemValueOfD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1011ElemValueOf14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1011ElemValueOf8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants32ATTRNAME_DISABLE_OUTPUT_ESCAPINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011ElemValueOfE = dso_local constant [29 x i8] c"N11xalanc_1_1011ElemValueOfE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1011ElemValueOfE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011ElemValueOfE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xalanc_1_1025FormatterListenerAdapaterE = linkonce_odr dso_local unnamed_addr constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025FormatterListenerAdapaterE, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, ptr @_ZN11xalanc_1_1025FormatterListenerAdapaterD0Ev, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater10charactersEPKtj, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater11endDocumentEv, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater10endElementEPKt, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater13resetDocumentEv, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater13startDocumentEv, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater13charactersRawEPKtj, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater7commentEPKt, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater5cdataEPKtj, ptr @_ZN11xalanc_1_1025FormatterListenerAdapater15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv] }, comdat, align 8
@_ZTSN11xalanc_1_1025FormatterListenerAdapaterE = linkonce_odr dso_local constant [43 x i8] c"N11xalanc_1_1025FormatterListenerAdapaterE\00", comdat, align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1025FormatterListenerAdapaterE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025FormatterListenerAdapaterE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, comdat, align 8

@_ZN11xalanc_1_1011ElemValueOfC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1011ElemValueOfD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011ElemValueOfD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 25) #9
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemValueOfE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !93
  %8 = load ptr, ptr %3, align 8, !tbaa !90
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %24

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %19, label %14, !prof !115

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  br label %26

16:                                               ; preds = %91
  %17 = and i8 %92, 1
  %18 = icmp eq i8 %17, 0
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ true, %12 ], [ %18, %16 ]
  %21 = load ptr, ptr %7, align 8
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %95, label %98, !prof !116

24:                                               ; preds = %95, %6
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %99

26:                                               ; preds = %14, %91
  %27 = phi i8 [ 0, %14 ], [ %92, %91 ]
  %28 = phi i32 [ 0, %14 ], [ %93, %91 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !90
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28) #9
          to label %33 unwind label %48

33:                                               ; preds = %26
  %34 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(36) %15) #9
          to label %35 unwind label %48

35:                                               ; preds = %33
  br i1 %34, label %36, label %63, !prof !117

36:                                               ; preds = %35
  %37 = load ptr, ptr %3, align 8, !tbaa !90
  %38 = getelementptr inbounds ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28) #9
          to label %41 unwind label %50

41:                                               ; preds = %36
  %42 = load i16, ptr %40, align 2, !tbaa !118
  %43 = icmp eq i16 %42, 46
  br i1 %43, label %44, label %52, !prof !119

44:                                               ; preds = %41
  %45 = getelementptr inbounds i16, ptr %40, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !118
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %91, label %52, !prof !120

48:                                               ; preds = %90, %88, %85, %82, %76, %75, %73, %67, %63, %33, %26
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %99

50:                                               ; preds = %57, %52, %36
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %99

52:                                               ; preds = %44, %41
  %53 = load ptr, ptr %0, align 8, !tbaa !90
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
          to label %57 unwind label %50

57:                                               ; preds = %52
  %58 = load ptr, ptr %1, align 8, !tbaa !90
  %59 = getelementptr inbounds ptr, ptr %58, i64 21
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %56, ptr noundef nonnull %40, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #9
          to label %62 unwind label %50

62:                                               ; preds = %57
  store ptr %61, ptr %7, align 8, !tbaa !93
  br label %91

63:                                               ; preds = %35
  %64 = load ptr, ptr @_ZN11xalanc_1_109Constants32ATTRNAME_DISABLE_OUTPUT_ESCAPINGE, align 8
  %65 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(36) %64) #9
          to label %66 unwind label %48

66:                                               ; preds = %63
  br i1 %65, label %67, label %76

67:                                               ; preds = %66
  %68 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %69 = load ptr, ptr %3, align 8, !tbaa !90
  %70 = getelementptr inbounds ptr, ptr %69, i64 5
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28) #9
          to label %73 unwind label %48

73:                                               ; preds = %67
  %74 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet10getYesOrNoEPKtS2_RNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %68, ptr noundef %32, ptr noundef %72, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %75 unwind label %48

75:                                               ; preds = %73
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %74) #9
          to label %91 unwind label %48

76:                                               ; preds = %66
  %77 = load ptr, ptr %0, align 8, !tbaa !90
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef zeroext i1 %79(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %81 unwind label %48

81:                                               ; preds = %76
  br i1 %80, label %91, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE, align 8
  %84 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %83) #9
          to label %85 unwind label %48

85:                                               ; preds = %82
  %86 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %84, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1) #9
          to label %87 unwind label %48

87:                                               ; preds = %85
  br i1 %86, label %91, label %88

88:                                               ; preds = %87
  %89 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %83) #9
          to label %90 unwind label %48

90:                                               ; preds = %88
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %89, ptr noundef %32) #9
          to label %91 unwind label %48

91:                                               ; preds = %62, %44, %75, %90, %87, %81
  %92 = phi i8 [ %27, %75 ], [ %27, %90 ], [ %27, %87 ], [ %27, %81 ], [ %27, %62 ], [ 1, %44 ]
  %93 = add nuw i32 %28, 1
  %94 = icmp eq i32 %93, %11
  br i1 %94, label %16, label %26, !prof !121, !llvm.loop !122

95:                                               ; preds = %19
  %96 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE, align 8, !tbaa !124
  %97 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 134, ptr noundef nonnull align 8 dereferenceable(36) %96, ptr noundef nonnull align 8 dereferenceable(36) %97) #9
          to label %98 unwind label %24

98:                                               ; preds = %95, %19
  ret void

99:                                               ; preds = %48, %50, %24
  %100 = phi { ptr, i32 } [ %25, %24 ], [ %51, %50 ], [ %49, %48 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  resume { ptr, i32 } %100
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat !prof !125 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #9
  ret i1 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !126 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 512, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #4 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet10getYesOrNoEPKtS2_RNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !129 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br i1 %2, label %5, label %3, !prof !130

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemValueOfD2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 !prof !89 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1011ElemValueOfD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1011ElemValueOfD2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemValueOf14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !131 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE, align 8, !tbaa !124
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %3 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %4 = alloca %"class.xalanc_1_10::FormatterListenerAdapater", align 8
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %8 = load ptr, ptr %1, align 8, !tbaa !90
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %33, !prof !133

15:                                               ; preds = %2
  %16 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
  %17 = load ptr, ptr %1, align 8, !tbaa !90
  %18 = select i1 %16, i64 154, i64 152, !prof !134
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  %21 = load ptr, ptr %1, align 8, !tbaa !90
  %22 = getelementptr inbounds ptr, ptr %21, i64 137
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i64 %23(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %70, label %26, !prof !135

26:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %27 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(36) %27) #9
          to label %28 unwind label %31

28:                                               ; preds = %26
  %29 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(36) %29) #9
          to label %30 unwind label %31

30:                                               ; preds = %28
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %70

31:                                               ; preds = %28, %26
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %71

33:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @_ZN11xalanc_1_1025FormatterListenerAdapaterC2ERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %34 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #9
          to label %35 unwind label %54

35:                                               ; preds = %33
  %36 = select i1 %34, { i64, i64 } { i64 89, i64 0 }, { i64, i64 } { i64 17, i64 0 }
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  %39 = load ptr, ptr %12, align 8, !tbaa !93
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %39, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %37, i64 %38) #9
          to label %40 unwind label %54

40:                                               ; preds = %35
  %41 = load ptr, ptr %1, align 8, !tbaa !90
  %42 = getelementptr inbounds ptr, ptr %41, i64 137
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i64 %43(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
          to label %45 unwind label %54

45:                                               ; preds = %40
  %46 = icmp eq i64 %44, 0
  br i1 %46, label %67, label %47, !prof !136

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %48 = load ptr, ptr %12, align 8, !tbaa !93
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %48, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
          to label %49 unwind label %56

49:                                               ; preds = %47
  %50 = call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br i1 %50, label %62, label %51

51:                                               ; preds = %49
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %52 unwind label %58

52:                                               ; preds = %51
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %11, ptr noundef nonnull %6) #9
          to label %53 unwind label %60

53:                                               ; preds = %52
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %62

54:                                               ; preds = %40, %35, %33
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %68

56:                                               ; preds = %47
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %65

58:                                               ; preds = %51
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %63

60:                                               ; preds = %52
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %63

62:                                               ; preds = %53, %49
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %67

63:                                               ; preds = %60, %58
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %68

67:                                               ; preds = %62, %45
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %70

68:                                               ; preds = %65, %54
  %69 = phi { ptr, i32 } [ %66, %65 ], [ %55, %54 ]
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %71

70:                                               ; preds = %15, %30, %67
  ret ptr null

71:                                               ; preds = %68, %31
  %72 = phi { ptr, i32 } [ %32, %31 ], [ %69, %68 ]
  resume { ptr, i32 } %72
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #1 comdat align 2 !prof !137 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 512) #9
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !138 {
  store ptr %1, ptr %0, align 8, !tbaa !139
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  store ptr %7, ptr %3, align 8, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %7 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %11 unwind label %13

11:                                               ; preds = %4
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %6) #9
          to label %12 unwind label %15

12:                                               ; preds = %11
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !145

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !139
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapaterC2ERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !146 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #9
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1025FormatterListenerAdapaterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, i64 %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", align 8
  %8 = alloca { i64, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !90
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
          to label %13 unwind label %18

13:                                               ; preds = %6
  %14 = invoke noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #9
          to label %15 unwind label %18

15:                                               ; preds = %13
  store i64 %4, ptr %8, align 8, !tbaa !147
  %16 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  store i64 %5, ptr %16, align 8, !tbaa !147
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval({ i64, i64 }) align 8 %8) #9
          to label %17 unwind label %18

17:                                               ; preds = %15
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  ret void

18:                                               ; preds = %15, %13, %6
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !93
  %13 = call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %12) #9
  %14 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #9
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(36) %14) #9
          to label %15 unwind label %16

15:                                               ; preds = %11
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %31

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %32

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  %20 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKc(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull @.str) #9
          to label %21 unwind label %25

21:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %22 unwind label %25

22:                                               ; preds = %21
  %23 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(36) %23) #9
          to label %24 unwind label %27

24:                                               ; preds = %22
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %31

25:                                               ; preds = %21, %18
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %32

31:                                               ; preds = %24, %15
  ret void

32:                                               ; preds = %29, %16
  %33 = phi { ptr, i32 } [ %17, %16 ], [ %30, %29 ]
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !149
  store ptr %3, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemValueOf8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(336) %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !143 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !153 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %6 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef -1) #9
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %10 unwind label %16

10:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %8) #9
          to label %11 unwind label %18

11:                                               ; preds = %10
  %12 = load ptr, ptr %1, align 8, !tbaa !90
  %13 = getelementptr inbounds ptr, ptr %12, i64 140
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %6) #9
          to label %15 unwind label %20

15:                                               ; preds = %11
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #10
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #12
  ret void

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %24

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #10
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %17, %16 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #12
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZNK11xalanc_1_105XPath13getExpressionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #4 comdat align 2 !prof !157 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XPathExpression17getCurrentPatternEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !158 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !164 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 !prof !166 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
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
declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

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
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !125 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !125 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #9
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #9
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #9
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #9
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 !prof !168 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !169
  %6 = trunc i32 %1 to i16
  %7 = xor i16 %6, -1
  %8 = and i16 %5, %7
  %9 = or i16 %5, %6
  %10 = select i1 %2, i16 %9, i16 %8, !prof !170
  store i16 %10, ptr %4, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !172 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !173
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !175 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !177 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !178 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !169
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapaterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !179 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds ptr, ptr %6, i64 103
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, i32 noundef 0, i32 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !143 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds ptr, ptr %6, i64 106
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !143 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds ptr, ptr %6, i64 104
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, i32 noundef 0, i32 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater7commentEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !143 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds ptr, ptr %5, i64 105
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !186 {
  store ptr %1, ptr %0, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !90
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  store ptr %8, ptr %4, align 8, !tbaa !187
  %9 = load ptr, ptr %0, align 8, !tbaa !189
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %2) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef byval({ i64, i64 }) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 comdat align 2 !prof !186 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #9
  %3 = getelementptr inbounds i32, ptr %2, i64 2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !190 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::PrefixResolverSetAndRestore", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = load ptr, ptr %2, align 8, !tbaa !90
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %4) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !191 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !192 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !194 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !143 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #9
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %1) #9
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !195 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !196
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !197

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #9
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !176
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #9
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !198 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !199

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #9
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !200, !llvm.loop !201

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !202 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !203 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !204
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #4 comdat align 2 !prof !205 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !206 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !173
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!88}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!35 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 65}
!36 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 66}
!37 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_, i64 1}
!38 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!39 = !{ptr @_ZN11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEb, ptr @_ZN11xalanc_1_1019ElemTemplateElement7setFlagENS0_6eFlagsEb, i64 440}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!42 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!43 = !{ptr @_ZN11xalanc_1_1011ElemValueOfD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 65}
!44 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 648844}
!45 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv, i64 648844}
!46 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 1}
!47 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 2}
!48 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 1}
!49 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringE, i64 1}
!50 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 1}
!51 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1025FormatterListenerAdapaterC2ERNS_26StylesheetExecutionContextE, i64 623289}
!52 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, i64 623288}
!53 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, i64 1}
!54 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 1}
!55 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 1}
!56 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 623289}
!57 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement21disableOutputEscapingEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 806437}
!58 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!59 = !{ptr @_ZN11xalanc_1_1025FormatterListenerAdapaterC2ERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 623290}
!60 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreC2ERS0_PKNS_14PrefixResolverE, i64 623290}
!61 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, i64 623289}
!62 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 623289}
!63 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, i64 623290}
!64 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!65 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!66 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!67 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!68 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!69 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!70 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!71 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!72 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!73 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!74 = !{ptr @_ZNK11xalanc_1_105XPath24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, i64 68379708}
!75 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreD2Ev, ptr @__clang_call_terminate, i64 65}
!76 = !{ptr @_ZNK11xalanc_1_1015XPathExpression24getInitialOpCodePositionEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, i64 68609120}
!77 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10invariantsEv, i64 68609147}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!88 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!89 = !{!"function_entry_count", i64 65}
!90 = !{!91, !91, i64 0}
!91 = !{!"vtable pointer", !92, i64 0}
!92 = !{!"Simple C++ TBAA"}
!93 = !{!94, !97, i64 328}
!94 = !{!"_ZTSN11xalanc_1_1011ElemValueOfE", !95, i64 0, !97, i64 328}
!95 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !96, i64 0, !97, i64 8, !99, i64 16, !110, i64 248, !97, i64 256, !97, i64 264, !97, i64 272, !98, i64 280, !111, i64 288, !114, i64 320}
!96 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !92, i64 0}
!99 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !100, i64 0, !102, i64 32, !103, i64 64, !104, i64 96}
!100 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!101 = !{!"long", !98, i64 0}
!102 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!103 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!104 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !105, i64 0, !106, i64 1, !97, i64 8, !107, i64 16, !101, i64 24, !101, i64 32, !108, i64 40, !108, i64 64, !109, i64 88, !101, i64 120, !101, i64 128}
!105 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!106 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!107 = !{!"float", !98, i64 0}
!108 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !97, i64 0, !97, i64 8, !97, i64 16}
!109 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!110 = !{!"int", !98, i64 0}
!111 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !112, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!112 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !113, i64 0}
!113 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!114 = !{!"short", !98, i64 0}
!115 = !{!"branch_weights", i32 1, i32 131}
!116 = !{!"branch_weights", i32 62, i32 4159}
!117 = !{!"branch_weights", i32 66, i32 1}
!118 = !{!114, !114, i64 0}
!119 = !{!"branch_weights", i32 10, i32 57}
!120 = !{!"branch_weights", i32 5, i32 6}
!121 = !{!"branch_weights", i32 131, i32 1}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!97, !97, i64 0}
!125 = !{!"function_entry_count", i64 1899}
!126 = !{!"function_entry_count", i64 440}
!127 = !{!"function_entry_count", i64 962142}
!128 = !{!95, !97, i64 8}
!129 = !{!"function_entry_count", i64 967143541}
!130 = !{!"branch_weights", i32 403628487, i32 563515056}
!131 = !{!"function_entry_count", i64 64}
!132 = !{!"function_entry_count", i64 648844}
!133 = !{!"branch_weights", i32 25555, i32 623291}
!134 = !{!"branch_weights", i32 1, i32 25555}
!135 = !{!"branch_weights", i32 25555, i32 1}
!136 = !{!"branch_weights", i32 623291, i32 1}
!137 = !{!"function_entry_count", i64 806437}
!138 = !{!"function_entry_count", i64 67594463}
!139 = !{!140, !97, i64 0}
!140 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !97, i64 0, !97, i64 8}
!141 = !{!140, !97, i64 8}
!142 = !{!"function_entry_count", i64 201578993}
!143 = !{!"function_entry_count", i64 0}
!144 = !{!"function_entry_count", i64 134708288}
!145 = !{!"branch_weights", i32 67113826, i32 67594464}
!146 = !{!"function_entry_count", i64 623290}
!147 = !{!98, !98, i64 0}
!148 = !{!"function_entry_count", i64 381195133}
!149 = !{!150, !97, i64 0}
!150 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !97, i64 0}
!151 = !{!"function_entry_count", i64 717007216}
!152 = !{!"function_entry_count", i64 1009440147}
!153 = !{!"function_entry_count", i64 201666166}
!154 = !{!155, !97, i64 16}
!155 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !156, i64 0, !97, i64 16}
!156 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !97, i64 8}
!157 = !{!"function_entry_count", i64 5050308}
!158 = !{!"function_entry_count", i64 24}
!159 = !{!160, !97, i64 80}
!160 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !161, i64 0, !110, i64 32, !162, i64 40, !110, i64 72, !97, i64 80, !163, i64 88}
!161 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!162 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!163 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!164 = !{!"function_entry_count", i64 280295}
!165 = !{!156, !97, i64 8}
!166 = !{!"function_entry_count", i64 43398227}
!167 = !{!"function_entry_count", i64 403723}
!168 = !{!"function_entry_count", i64 1646}
!169 = !{!95, !114, i64 320}
!170 = !{!"branch_weights", i32 596, i32 1052}
!171 = !{!"function_entry_count", i64 3070433834}
!172 = !{!"function_entry_count", i64 1083116306}
!173 = !{!174, !101, i64 8}
!174 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !97, i64 0, !101, i64 8, !101, i64 16, !97, i64 24}
!175 = !{!"function_entry_count", i64 565220908}
!176 = !{!174, !97, i64 24}
!177 = !{!"function_entry_count", i64 6521798493}
!178 = !{!"function_entry_count", i64 417098446}
!179 = !{!"function_entry_count", i64 572845}
!180 = !{!181, !97, i64 24}
!181 = !{!"_ZTSN11xalanc_1_1025FormatterListenerAdapaterE", !182, i64 0, !97, i64 24}
!182 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !183, i64 0, !97, i64 8, !184, i64 16, !185, i64 20}
!183 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!184 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !98, i64 0}
!185 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !98, i64 0}
!186 = !{!"function_entry_count", i64 68379708}
!187 = !{!188, !97, i64 8}
!188 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext27PrefixResolverSetAndRestoreE", !97, i64 0, !97, i64 8}
!189 = !{!188, !97, i64 0}
!190 = !{!"function_entry_count", i64 68609096}
!191 = !{!"function_entry_count", i64 68609120}
!192 = !{!"function_entry_count", i64 68609147}
!193 = !{!161, !97, i64 24}
!194 = !{!"function_entry_count", i64 68633739}
!195 = !{!"function_entry_count", i64 128698679}
!196 = !{!174, !101, i64 16}
!197 = !{!"branch_weights", i32 43398290, i32 85300391}
!198 = !{!"function_entry_count", i64 85300390}
!199 = !{!"branch_weights", i32 1, i32 12185770}
!200 = !{!"branch_weights", i32 12185770, i32 -193930396}
!201 = distinct !{!201, !123}
!202 = !{!"function_entry_count", i64 227375739}
!203 = !{!"function_entry_count", i64 568333389}
!204 = !{!174, !97, i64 0}
!205 = !{!"function_entry_count", i64 30137156660}
!206 = !{!"function_entry_count", i64 825654971}
