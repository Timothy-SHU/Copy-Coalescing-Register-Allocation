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
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::FormatterListenerAdapater" = type { %"class.xalanc_1_10::FormatterListener", ptr }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.27", i32, %"class.xalanc_1_10::XalanVector.28", i32, ptr, %"class.xalanc_1_10::XalanVector.29" }
%"class.xalanc_1_10::XalanVector.28" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.29" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>

$_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE = comdat any

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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 25)
  store ptr getelementptr inbounds ({ [40 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemValueOfE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !51
  %8 = load ptr, ptr %3, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %26, !prof !73

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %21, label %14, !prof !74

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 3
  br label %28

18:                                               ; preds = %126
  %19 = and i8 %127, 1
  %20 = icmp eq i8 %19, 0
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ true, %12 ], [ %20, %18 ]
  %23 = load ptr, ptr %7, align 8
  %24 = icmp eq ptr %23, null
  %25 = select i1 %22, i1 %24, i1 false, !prof !75
  br i1 %25, label %130, label %133, !prof !76

26:                                               ; preds = %130, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %134

28:                                               ; preds = %14, %126
  %29 = phi i8 [ 0, %14 ], [ %127, %126 ]
  %30 = phi i32 [ 0, %14 ], [ %128, %126 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !48
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %30)
          to label %35 unwind label %58, !prof !77

35:                                               ; preds = %28
  %36 = load i64, ptr %16, align 8, !tbaa !78
  %37 = icmp eq i64 %36, 0
  %38 = load ptr, ptr %17, align 8
  %39 = select i1 %37, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %38, !prof !76
  %40 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %39)
          to label %41 unwind label %58, !prof !80

41:                                               ; preds = %35
  %42 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %34)
          to label %43 unwind label %58, !prof !80

43:                                               ; preds = %41
  %44 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %39, i32 noundef %40, ptr noundef %34, i32 noundef %42)
          to label %45 unwind label %58, !prof !80

45:                                               ; preds = %43
  br i1 %44, label %46, label %73, !prof !80

46:                                               ; preds = %45
  %47 = load ptr, ptr %3, align 8, !tbaa !48
  %48 = getelementptr inbounds ptr, ptr %47, i64 5
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %30)
          to label %51 unwind label %60, !prof !81

51:                                               ; preds = %46
  %52 = load i16, ptr %50, align 2, !tbaa !82
  %53 = icmp eq i16 %52, 46
  br i1 %53, label %54, label %62, !prof !83

54:                                               ; preds = %51
  %55 = getelementptr inbounds i16, ptr %50, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !82
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %126, label %62, !prof !84

58:                                               ; preds = %84, %82, %73, %43, %41, %35, %121, %111, %105, %94, %87, %28
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %134

60:                                               ; preds = %67, %62, %46
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %134

62:                                               ; preds = %54, %51
  %63 = load ptr, ptr %0, align 8, !tbaa !48
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %67 unwind label %60, !prof !85

67:                                               ; preds = %62
  %68 = load ptr, ptr %1, align 8, !tbaa !48
  %69 = getelementptr inbounds ptr, ptr %68, i64 21
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %66, ptr noundef nonnull %50, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %72 unwind label %60, !prof !86

72:                                               ; preds = %67
  store ptr %71, ptr %7, align 8, !tbaa !51
  br label %126

73:                                               ; preds = %45
  %74 = load ptr, ptr @_ZN11xalanc_1_109Constants32ATTRNAME_DISABLE_OUTPUT_ESCAPINGE, align 8
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %74, i64 0, i32 1
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %74, i64 0, i32 3
  %77 = load i64, ptr %75, align 8, !tbaa !78
  %78 = icmp eq i64 %77, 0
  %79 = load ptr, ptr %76, align 8
  %80 = select i1 %78, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %79
  %81 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %80)
          to label %82 unwind label %58

82:                                               ; preds = %73
  %83 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %34)
          to label %84 unwind label %58

84:                                               ; preds = %82
  %85 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %80, i32 noundef %81, ptr noundef %34, i32 noundef %83)
          to label %86 unwind label %58

86:                                               ; preds = %84
  br i1 %85, label %87, label %105

87:                                               ; preds = %86
  %88 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !87
  %90 = load ptr, ptr %3, align 8, !tbaa !48
  %91 = getelementptr inbounds ptr, ptr %90, i64 5
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %30)
          to label %94 unwind label %58

94:                                               ; preds = %87
  %95 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet10getYesOrNoEPKtS2_RNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504) %89, ptr noundef %34, ptr noundef %93, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %96 unwind label %58

96:                                               ; preds = %94
  br i1 %95, label %97, label %101

97:                                               ; preds = %96
  %98 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %99 = load i16, ptr %98, align 8, !tbaa !88
  %100 = or i16 %99, 512
  store i16 %100, ptr %98, align 8, !tbaa !88
  br label %126

101:                                              ; preds = %96
  %102 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %103 = load i16, ptr %102, align 8, !tbaa !88
  %104 = and i16 %103, -513
  store i16 %104, ptr %102, align 8, !tbaa !88
  br label %126

105:                                              ; preds = %86
  %106 = load ptr, ptr %0, align 8, !tbaa !48
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef zeroext i1 %108(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %30, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %110 unwind label %58

110:                                              ; preds = %105
  br i1 %109, label %126, label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE, align 8
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %112, i64 0, i32 1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %112, i64 0, i32 3
  %115 = load i64, ptr %113, align 8, !tbaa !78
  %116 = icmp eq i64 %115, 0
  %117 = load ptr, ptr %114, align 8
  %118 = select i1 %116, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %117
  %119 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %118, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %30, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %120 unwind label %58

120:                                              ; preds = %111
  br i1 %119, label %126, label %121

121:                                              ; preds = %120
  %122 = load i64, ptr %113, align 8, !tbaa !78
  %123 = icmp eq i64 %122, 0
  %124 = load ptr, ptr %114, align 8
  %125 = select i1 %123, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %124
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %125, ptr noundef %34)
          to label %126 unwind label %58

126:                                              ; preds = %101, %97, %72, %54, %121, %120, %110
  %127 = phi i8 [ %29, %121 ], [ %29, %120 ], [ %29, %110 ], [ %29, %72 ], [ 1, %54 ], [ %29, %97 ], [ %29, %101 ]
  %128 = add nuw i32 %30, 1
  %129 = icmp eq i32 %128, %11
  br i1 %129, label %18, label %28, !prof !89, !llvm.loop !90

130:                                              ; preds = %21
  %131 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE, align 8, !tbaa !93
  %132 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8, !tbaa !93
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 134, ptr noundef nonnull align 8 dereferenceable(36) %131, ptr noundef nonnull align 8 dereferenceable(36) %132)
          to label %133 unwind label %26

133:                                              ; preds = %130, %21
  ret void

134:                                              ; preds = %58, %60, %26
  %135 = phi { ptr, i32 } [ %27, %26 ], [ %61, %60 ], [ %59, %58 ]
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  resume { ptr, i32 } %135
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare noundef zeroext i1 @_ZNK11xalanc_1_1010Stylesheet10getYesOrNoEPKtS2_RNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemValueOfD2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #5 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemValueOfD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #5 align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemValueOf14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !95 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_VALUEOF_WITH_PREFIX_STRINGE, align 8, !tbaa !93
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.xalanc_1_10::FormatterListenerAdapater", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = load ptr, ptr %1, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !97
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %51, !prof !98

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %16 = load i16, ptr %15, align 8, !tbaa !88
  %17 = and i16 %16, 512
  %18 = icmp eq i16 %17, 0
  %19 = load ptr, ptr %1, align 8, !tbaa !48
  %20 = select i1 %18, i64 152, i64 154, !prof !99
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %23 = load ptr, ptr %1, align 8, !tbaa !48
  %24 = getelementptr inbounds ptr, ptr %23, i64 137
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i64 %25(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !100
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %107, label %28, !prof !99

28:                                               ; preds = %14
  %29 = load ptr, ptr %1, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %29, i64 23
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr %31(ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(36) %32)
          to label %33 unwind label %42

33:                                               ; preds = %28
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(36) %32)
          to label %34 unwind label %42

34:                                               ; preds = %33
  %35 = load ptr, ptr %1, align 8, !tbaa !48
  %36 = getelementptr inbounds ptr, ptr %35, i64 24
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %32)
          to label %107 unwind label %39

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #12
  unreachable

42:                                               ; preds = %33, %28
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = load ptr, ptr %1, align 8, !tbaa !48
  %45 = getelementptr inbounds ptr, ptr %44, i64 24
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef zeroext i1 %46(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %32)
          to label %108 unwind label %48

48:                                               ; preds = %42
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #12
  unreachable

51:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1025FormatterListenerAdapaterE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !48
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %3, i64 0, i32 1
  store ptr %1, ptr %52, align 8, !tbaa !93
  %53 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %54 = load i16, ptr %53, align 8, !tbaa !88
  %55 = and i16 %54, 512
  %56 = icmp eq i16 %55, 0
  %57 = select i1 %56, { i64, i64 } { i64 17, i64 0 }, { i64, i64 } { i64 89, i64 0 }, !prof !101
  %58 = extractvalue { i64, i64 } %57, 0
  %59 = extractvalue { i64, i64 } %57, 1
  %60 = load ptr, ptr %11, align 8, !tbaa !51
  invoke void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %60, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %58, i64 %59)
          to label %61 unwind label %79, !prof !101

61:                                               ; preds = %51
  %62 = load ptr, ptr %1, align 8, !tbaa !48
  %63 = getelementptr inbounds ptr, ptr %62, i64 137
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef i64 %64(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %66 unwind label %79, !prof !102

66:                                               ; preds = %61
  %67 = icmp eq i64 %65, 0
  br i1 %67, label %104, label %68, !prof !101

68:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %69 = load ptr, ptr %11, align 8, !tbaa !51
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(129) %69, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %70 unwind label %81

70:                                               ; preds = %68
  %71 = load ptr, ptr %4, align 8, !tbaa !103
  %72 = icmp eq ptr %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %70
  store ptr %71, ptr %5, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %71)
          to label %74 unwind label %83

74:                                               ; preds = %73
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %10, ptr noundef nonnull %5)
          to label %75 unwind label %85

75:                                               ; preds = %74
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef nonnull %71)
          to label %90 unwind label %76

76:                                               ; preds = %75
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #12
  unreachable

79:                                               ; preds = %61, %51
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %105

81:                                               ; preds = %68
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %102

83:                                               ; preds = %73
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %96

85:                                               ; preds = %74
  %86 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef nonnull %71)
          to label %96 unwind label %87

87:                                               ; preds = %85
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #12
  unreachable

90:                                               ; preds = %75, %70
  %91 = load ptr, ptr %4, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %91)
          to label %95 unwind label %92

92:                                               ; preds = %90
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #12
  unreachable

95:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %104

96:                                               ; preds = %85, %83
  %97 = phi { ptr, i32 } [ %84, %83 ], [ %86, %85 ]
  %98 = load ptr, ptr %4, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %98)
          to label %102 unwind label %99

99:                                               ; preds = %96
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #12
  unreachable

102:                                              ; preds = %96, %81
  %103 = phi { ptr, i32 } [ %82, %81 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %105

104:                                              ; preds = %95, %66
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %107

105:                                              ; preds = %102, %79
  %106 = phi { ptr, i32 } [ %103, %102 ], [ %80, %79 ]
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %108

107:                                              ; preds = %34, %14, %104
  ret ptr null

108:                                              ; preds = %42, %105
  %109 = phi { ptr, i32 } [ %106, %105 ], [ %43, %42 ]
  resume { ptr, i32 } %109
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %12 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %12, ptr %6, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %12)
          to label %13 unwind label %24

13:                                               ; preds = %4
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %6)
          to label %14 unwind label %26

14:                                               ; preds = %13
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %18 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #12
  unreachable

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %19)
          to label %23 unwind label %20

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #12
  unreachable

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret void

24:                                               ; preds = %4
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %31

26:                                               ; preds = %13
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %31 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #12
  unreachable

31:                                               ; preds = %26, %24
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %27, %26 ]
  %33 = load ptr, ptr %5, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #12
  unreachable

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, i64 %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %7 = alloca { i64, i64 }, align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 29
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %2), !prof !109
  %12 = load ptr, ptr %2, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 30
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1), !prof !110
  %15 = load ptr, ptr %2, align 8, !tbaa !48
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %19 unwind label %32, !prof !111

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = getelementptr inbounds i32, ptr %21, i64 2
  store i64 %4, ptr %7, align 8, !tbaa !114
  %23 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  store i64 %5, ptr %23, align 8, !tbaa !114
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %18, ptr noundef nonnull %22, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval({ i64, i64 }) align 8 %7)
          to label %24 unwind label %32, !prof !101

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 30
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %11)
          to label %31 unwind label %28, !prof !110

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #12
  unreachable

31:                                               ; preds = %24
  ret void

32:                                               ; preds = %19, %6
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 30
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %11)
          to label %40 unwind label %37

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable

40:                                               ; preds = %32
  resume { ptr, i32 } %33
}

declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %11, ptr %5, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %11)
  %12 = load ptr, ptr %7, align 8, !tbaa !51
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %15 unwind label %19

15:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %11)
          to label %64 unwind label %16

16:                                               ; preds = %15
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #12
  unreachable

19:                                               ; preds = %10
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %11)
          to label %65 unwind label %21

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #12
  unreachable

24:                                               ; preds = %4
  %25 = load ptr, ptr %1, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 23
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %28, i32 noundef 0, i32 noundef -1)
          to label %29 unwind label %48

29:                                               ; preds = %24
  %30 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str)
          to label %31 unwind label %48

31:                                               ; preds = %29
  %32 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull @.str, i32 noundef %30)
          to label %33 unwind label %48

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %34, ptr %6, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %34)
          to label %35 unwind label %48

35:                                               ; preds = %33
  invoke void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %36 unwind label %50

36:                                               ; preds = %35
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %40 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #12
  unreachable

40:                                               ; preds = %36
  %41 = load ptr, ptr %1, align 8, !tbaa !48
  %42 = getelementptr inbounds ptr, ptr %41, i64 24
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %64 unwind label %45

45:                                               ; preds = %40
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #12
  unreachable

48:                                               ; preds = %33, %31, %29, %24
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %55

50:                                               ; preds = %35
  %51 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %55 unwind label %52

52:                                               ; preds = %50
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #12
  unreachable

55:                                               ; preds = %48, %50
  %56 = phi { ptr, i32 } [ %49, %48 ], [ %51, %50 ]
  %57 = load ptr, ptr %1, align 8, !tbaa !48
  %58 = getelementptr inbounds ptr, ptr %57, i64 24
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %65 unwind label %61

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #12
  unreachable

64:                                               ; preds = %40, %15
  ret void

65:                                               ; preds = %55, %19
  %66 = phi { ptr, i32 } [ %20, %19 ], [ %56, %55 ]
  resume { ptr, i32 } %66
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemValueOf8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(336) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !94 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemValueOf18fireSelectionEventERNS_26StylesheetExecutionContextEPNS_9XalanNodeENS_10XObjectPtrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %6 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  %9 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef -1)
  %11 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %11, ptr %8, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %11)
          to label %12 unwind label %37

12:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %8)
          to label %13 unwind label %39

13:                                               ; preds = %12
  %14 = load ptr, ptr %1, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 140
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %17 unwind label %41

17:                                               ; preds = %13
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #10
  %18 = load ptr, ptr %8, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %18)
          to label %22 unwind label %19

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #12
  unreachable

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !120
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = load ptr, ptr %7, align 8, !tbaa !122
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #12
  unreachable

36:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #10
  ret void

37:                                               ; preds = %5
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %49

39:                                               ; preds = %12
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %43

41:                                               ; preds = %13
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #10
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  %45 = load ptr, ptr %8, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %45)
          to label %49 unwind label %46

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #12
  unreachable

49:                                               ; preds = %43, %37
  %50 = phi { ptr, i32 } [ %38, %37 ], [ %44, %43 ]
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !120
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %7, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !121
  %57 = load ptr, ptr %7, align 8, !tbaa !122
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #12
  unreachable

64:                                               ; preds = %49, %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #10
  resume { ptr, i32 } %50
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringESB_NS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi(ptr noundef nonnull align 8 dereferenceable(322), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !94 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapaterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !94 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !123 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 103
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, i32 noundef 0, i32 noundef %2), !prof !130
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !94 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 106
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !94 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 104
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater7commentEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !94 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterListenerAdapater", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 105
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FormatterListenerAdapater15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !94 {
  ret void
}

declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef byval({ i64, i64 }) align 8) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 65}
!36 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 130}
!37 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 65}
!38 = !{ptr @_ZN11xalanc_1_1011ElemValueOfC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 61}
!39 = !{ptr @_ZN11xalanc_1_1011ElemValueOfD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 65}
!40 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 648844}
!41 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 623290}
!42 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, i64 623290}
!43 = !{ptr @_ZNK11xalanc_1_1011ElemValueOf12startElementERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 623290}
!44 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 623289}
!45 = !{ptr @_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS6_FvPKtjE, ptr @__clang_call_terminate, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 65}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !55, i64 328}
!52 = !{!"_ZTSN11xalanc_1_1011ElemValueOfE", !53, i64 0, !55, i64 328}
!53 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !54, i64 0, !55, i64 8, !57, i64 16, !68, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !56, i64 280, !69, i64 288, !72, i64 320}
!54 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !50, i64 0}
!57 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !58, i64 0, !60, i64 32, !61, i64 64, !62, i64 96}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!59 = !{!"long", !56, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!62 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !63, i64 0, !64, i64 1, !55, i64 8, !65, i64 16, !59, i64 24, !59, i64 32, !66, i64 40, !66, i64 64, !67, i64 88, !59, i64 120, !59, i64 128}
!63 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!64 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!65 = !{!"float", !56, i64 0}
!66 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !55, i64 0, !55, i64 8, !55, i64 16}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!68 = !{!"int", !56, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !70, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!70 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !71, i64 0}
!71 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!72 = !{!"short", !56, i64 0}
!73 = !{!"VP", i32 0, i64 65, i64 8253907953441087172, i64 64, i64 8893614577066288799, i64 1}
!74 = !{!"branch_weights", i32 1, i32 129}
!75 = !{!"branch_weights", i32 61, i32 4}
!76 = !{!"branch_weights", i32 0, i32 65}
!77 = !{!"VP", i32 0, i64 65, i64 5829949526982853143, i64 64, i64 -4536921264242817666, i64 1}
!78 = !{!79, !59, i64 8}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!80 = !{!"branch_weights", i32 65, i32 0}
!81 = !{!"VP", i32 0, i64 65, i64 -7250213707570638104, i64 64, i64 704971646561838490, i64 1}
!82 = !{!72, !72, i64 0}
!83 = !{!"branch_weights", i32 9, i32 56}
!84 = !{!"branch_weights", i32 4, i32 5}
!85 = !{!"VP", i32 0, i64 61, i64 -5610273550909442482, i64 61}
!86 = !{!"VP", i32 0, i64 61, i64 5056957690790192712, i64 61}
!87 = !{!53, !55, i64 8}
!88 = !{!53, !72, i64 320}
!89 = !{!"branch_weights", i32 129, i32 1}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!55, !55, i64 0}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!"function_entry_count", i64 64}
!96 = !{!"function_entry_count", i64 648844}
!97 = !{!"VP", i32 0, i64 648844, i64 -7584622325260852241, i64 648844}
!98 = !{!"branch_weights", i32 25554, i32 623290}
!99 = !{!"branch_weights", i32 25554, i32 0}
!100 = !{!"VP", i32 0, i64 25554, i64 -4171607645886912631, i64 25554}
!101 = !{!"branch_weights", i32 623290, i32 0}
!102 = !{!"VP", i32 0, i64 623290, i64 -4171607645886912631, i64 623290}
!103 = !{!104, !55, i64 0}
!104 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !55, i64 0}
!105 = !{!106, !55, i64 16}
!106 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !107, i64 0, !55, i64 16}
!107 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !55, i64 8}
!108 = !{!"function_entry_count", i64 623290}
!109 = !{!"VP", i32 0, i64 623290, i64 -6410307884929493294, i64 623290}
!110 = !{!"VP", i32 0, i64 623290, i64 8453500335362080052, i64 623290}
!111 = !{!"VP", i32 0, i64 623290, i64 -7584622325260852241, i64 623290}
!112 = !{!113, !55, i64 24}
!113 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!114 = !{!56, !56, i64 0}
!115 = !{!116, !55, i64 80}
!116 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !113, i64 0, !68, i64 32, !117, i64 40, !68, i64 72, !55, i64 80, !118, i64 88}
!117 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!118 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !55, i64 0, !59, i64 8, !59, i64 16, !55, i64 24}
!119 = !{!107, !55, i64 8}
!120 = !{!79, !59, i64 16}
!121 = !{!79, !55, i64 24}
!122 = !{!79, !55, i64 0}
!123 = !{!"function_entry_count", i64 572845}
!124 = !{!125, !55, i64 24}
!125 = !{!"_ZTSN11xalanc_1_1025FormatterListenerAdapaterE", !126, i64 0, !55, i64 24}
!126 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !127, i64 0, !55, i64 8, !128, i64 16, !129, i64 20}
!127 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!128 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !56, i64 0}
!129 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !56, i64 0}
!130 = !{!"VP", i32 0, i64 572845, i64 8825849420807778593, i64 572845}
