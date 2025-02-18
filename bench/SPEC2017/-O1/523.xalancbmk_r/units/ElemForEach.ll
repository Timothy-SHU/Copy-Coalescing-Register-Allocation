; ModuleID = 'ElemForEach.cpp'
source_filename = "ElemForEach.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemForEach" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, %"class.xalanc_1_10::XalanVector.3", i64 }
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
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::SelectionEvent" = type { ptr, ptr, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XObjectPtr", i32, i8, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.4", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::NodeSortKey" = type { ptr, ptr, i8, i8, i32, ptr, ptr }
%"class.xalanc_1_10::NodeSorter" = type { %"class.xalanc_1_10::XalanVector.10", %"class.xalanc_1_10::XalanVector.11", %"class.xalanc_1_10::XalanVector.12", %"class.xalanc_1_10::XalanVector.13" }
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.11" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.12" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.13" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemSort" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, ptr, ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

@_ZTVN11xalanc_1_1011ElemForEachE = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011ElemForEachE, ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011ElemForEachD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1011ElemForEach14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@_ZN11xalanc_1_109Constants23ATTRVAL_DATATYPE_NUMBERE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants24ATTRVAL_ORDER_DESCENDINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_UPPERE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_LOWERE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011ElemForEachE = dso_local constant [29 x i8] c"N11xalanc_1_1011ElemForEachE\00", align 1
@_ZTIN11xalanc_1_1019ElemTemplateElementE = external constant ptr
@_ZTIN11xalanc_1_1011ElemForEachE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011ElemForEachE, ptr @_ZTIN11xalanc_1_1019ElemTemplateElementE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32), ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii
@_ZN11xalanc_1_1011ElemForEachD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011ElemForEachD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %4, i32 noundef %5, i32 noundef 9)
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemForEachE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !75
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  store ptr %10, ptr %8, align 8, !tbaa !103
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %12 = load ptr, ptr %3, align 8, !tbaa !75
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %16 unwind label %25, !prof !104

16:                                               ; preds = %6
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %22, label %18, !prof !105

18:                                               ; preds = %16
  %19 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %19, i64 0, i32 3
  br label %27

22:                                               ; preds = %82, %16
  %23 = load ptr, ptr %7, align 8, !tbaa !78
  %24 = icmp eq ptr %23, null
  br i1 %24, label %85, label %88, !prof !106

25:                                               ; preds = %85, %6
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %89

27:                                               ; preds = %18, %82
  %28 = phi i32 [ 0, %18 ], [ %83, %82 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !75
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %33 unwind label %60, !prof !107

33:                                               ; preds = %27
  %34 = load i64, ptr %20, align 8, !tbaa !108
  %35 = icmp eq i64 %34, 0
  %36 = load ptr, ptr %21, align 8
  %37 = select i1 %35, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36, !prof !106
  %38 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %37)
          to label %39 unwind label %60, !prof !110

39:                                               ; preds = %33
  %40 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %32)
          to label %41 unwind label %60, !prof !110

41:                                               ; preds = %39
  %42 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %37, i32 noundef %38, ptr noundef %32, i32 noundef %40)
          to label %43 unwind label %60, !prof !110

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !75
  br i1 %42, label %45, label %62, !prof !110

45:                                               ; preds = %43
  %46 = getelementptr inbounds ptr, ptr %44, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %49 unwind label %60, !prof !111

49:                                               ; preds = %45
  %50 = load ptr, ptr %3, align 8, !tbaa !75
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28)
          to label %54 unwind label %60, !prof !112

54:                                               ; preds = %49
  %55 = load ptr, ptr %1, align 8, !tbaa !75
  %56 = getelementptr inbounds ptr, ptr %55, i64 21
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %48, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %59 unwind label %60, !prof !113

59:                                               ; preds = %54
  store ptr %58, ptr %7, align 8, !tbaa !78
  br label %82

60:                                               ; preds = %41, %39, %33, %77, %67, %62, %54, %49, %45, %27
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %89

62:                                               ; preds = %43
  %63 = getelementptr inbounds ptr, ptr %44, i64 5
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %66 unwind label %60

66:                                               ; preds = %62
  br i1 %65, label %82, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE, align 8
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %68, i64 0, i32 1
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %68, i64 0, i32 3
  %71 = load i64, ptr %69, align 8, !tbaa !108
  %72 = icmp eq i64 %71, 0
  %73 = load ptr, ptr %70, align 8
  %74 = select i1 %72, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %73
  %75 = invoke noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %74, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %76 unwind label %60

76:                                               ; preds = %67
  br i1 %75, label %82, label %77

77:                                               ; preds = %76
  %78 = load i64, ptr %69, align 8, !tbaa !108
  %79 = icmp eq i64 %78, 0
  %80 = load ptr, ptr %70, align 8
  %81 = select i1 %79, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %80
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 74, ptr noundef %81, ptr noundef %32)
          to label %82 unwind label %60

82:                                               ; preds = %66, %76, %77, %59
  %83 = add nuw i32 %28, 1
  %84 = icmp eq i32 %83, %15
  br i1 %84, label %22, label %27, !prof !114, !llvm.loop !115

85:                                               ; preds = %22
  %86 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE, align 8, !tbaa !118
  %87 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8, !tbaa !118
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 63, ptr noundef nonnull align 8 dereferenceable(36) %86, ptr noundef nonnull align 8 dereferenceable(36) %87)
          to label %88 unwind label %25

88:                                               ; preds = %85, %22
  ret void

89:                                               ; preds = %60, %25
  %90 = phi { ptr, i32 } [ %61, %60 ], [ %26, %25 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  resume { ptr, i32 } %90
}

declare void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef zeroext i1 @_ZN11xalanc_1_1019ElemTemplateElement16processSpaceAttrEPKtS2_RKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesERKNS_14XalanDOMStringES7_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !120
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = load ptr, ptr %0, align 8, !tbaa !103
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !123

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemForEachE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !75
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  store ptr %10, ptr %8, align 8, !tbaa !103
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1011ElemForEachE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !75
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !125
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %23, label %10, !prof !126

10:                                               ; preds = %1, %20
  %11 = phi ptr [ %21, %20 ], [ %5, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !127

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !75
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(368) %12) #14, !prof !128
  %17 = load ptr, ptr %3, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %12)
          to label %20 unwind label %24, !prof !129

20:                                               ; preds = %14, %10
  %21 = getelementptr inbounds ptr, ptr %11, i64 1
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %23, label %10, !prof !130, !llvm.loop !131

23:                                               ; preds = %20, %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  tail call void @_ZN11xalanc_1_1019ElemTemplateElementD2Ev(ptr noundef nonnull align 8 dereferenceable(322) %0) #14
  ret void

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #15
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !132 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEachD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #4 align 2 !prof !132 {
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !133 {
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %14, label %8, !prof !127

8:                                                ; preds = %5
  %9 = load ptr, ptr %4, align 8, !tbaa !75
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i64 %11(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !134
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %5, %8
  %15 = phi i32 [ %13, %8 ], [ -1, %5 ]
  br i1 %7, label %22, label %16, !prof !127

16:                                               ; preds = %14
  %17 = load ptr, ptr %4, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i64 %19(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !135
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %14, %16
  %23 = phi i32 [ %21, %16 ], [ -1, %14 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !125
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !120
  %30 = icmp ult i64 %29, %27
  br i1 %30, label %31, label %32, !prof !130

31:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %27)
  br label %32

32:                                               ; preds = %22, %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %33 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  %35 = tail call noundef ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %15, i32 noundef %23)
  store ptr %35, ptr %6, align 8, !tbaa !118
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret void
}

declare noundef ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011ElemForEach14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !74 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants35ELEMNAME_FOREACH_WITH_PREFIX_STRINGE, align 8, !tbaa !118
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) unnamed_addr #1 align 2 !prof !136 {
  tail call void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !125
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  store i64 %5, ptr %6, align 8, !tbaa !137
  ret void
}

declare void @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 !prof !138 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !140

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !75
  %8 = getelementptr inbounds ptr, ptr %7, i64 60
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef null), !prof !141
  %10 = load ptr, ptr %0, align 8, !tbaa !75
  %11 = getelementptr inbounds ptr, ptr %10, i64 38
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !142
  %14 = load ptr, ptr %1, align 8, !tbaa !75
  %15 = getelementptr inbounds ptr, ptr %14, i64 160
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %13), !prof !143
  %17 = load ptr, ptr %1, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 10
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %13), !prof !144
  %20 = load ptr, ptr %1, align 8, !tbaa !75
  %21 = getelementptr inbounds ptr, ptr %20, i64 161
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !145
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25, !prof !146

25:                                               ; preds = %6
  %26 = load ptr, ptr %1, align 8, !tbaa !75
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %23), !prof !147
  %29 = load ptr, ptr %0, align 8, !tbaa !75
  %30 = getelementptr inbounds ptr, ptr %29, i64 19
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !148
  br label %33

33:                                               ; preds = %2, %25, %6
  %34 = phi ptr [ %32, %25 ], [ null, %6 ], [ null, %2 ]
  ret ptr %34
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #8 align 2 !prof !149 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !150
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %14, !prof !151

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !75
  %10 = getelementptr inbounds ptr, ptr %9, i64 23
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(322) %2), !prof !152
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %34, !prof !153

14:                                               ; preds = %8, %3
  %15 = load ptr, ptr %1, align 8, !tbaa !75
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !154
  %18 = load ptr, ptr %1, align 8, !tbaa !75
  %19 = getelementptr inbounds ptr, ptr %18, i64 161
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !155
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23, !prof !156

23:                                               ; preds = %14
  %24 = load ptr, ptr %1, align 8, !tbaa !75
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %21), !prof !157
  %27 = load ptr, ptr %0, align 8, !tbaa !75
  %28 = getelementptr inbounds ptr, ptr %27, i64 20
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !158
  %30 = load ptr, ptr %0, align 8, !tbaa !75
  %31 = getelementptr inbounds ptr, ptr %30, i64 19
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !159
  br label %34

34:                                               ; preds = %8, %23, %14
  %35 = phi ptr [ %12, %8 ], [ %33, %23 ], [ null, %14 ]
  ret ptr %35
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 !prof !138 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !140

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !75
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !160
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %10), !prof !161
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !146

16:                                               ; preds = %6
  %17 = load ptr, ptr %0, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 20
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !162
  br label %20

20:                                               ; preds = %16, %6
  %21 = load ptr, ptr %1, align 8, !tbaa !75
  %22 = getelementptr inbounds ptr, ptr %21, i64 162
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !163
  %24 = load ptr, ptr %1, align 8, !tbaa !75
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !164
  %27 = load ptr, ptr %0, align 8, !tbaa !75
  %28 = getelementptr inbounds ptr, ptr %27, i64 39
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !165
  %30 = load ptr, ptr %1, align 8, !tbaa !75
  %31 = getelementptr inbounds ptr, ptr %30, i64 61
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !166
  br label %33

33:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %3 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %5 = alloca %"class.xalanc_1_10::SelectionEvent", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !75
  %8 = getelementptr inbounds ptr, ptr %7, i64 156
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(44) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr null, ptr %3, align 8, !tbaa !169
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %11 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = load ptr, ptr %1, align 8, !tbaa !75, !noalias !171
  %14 = getelementptr inbounds ptr, ptr %13, i64 29
  %15 = load ptr, ptr %14, align 8, !noalias !171
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %17 unwind label %60, !prof !174

17:                                               ; preds = %2
  %18 = load ptr, ptr %1, align 8, !tbaa !75, !noalias !171
  %19 = getelementptr inbounds ptr, ptr %18, i64 30
  %20 = load ptr, ptr %19, align 8, !noalias !171
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0)
          to label %21 unwind label %60, !prof !175

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !75, !noalias !171
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8, !noalias !171
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %26 unwind label %37, !prof !176, !noalias !171

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.7", ptr %12, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !177, !noalias !171
  %29 = getelementptr inbounds i32, ptr %28, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef %25, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %10)
          to label %30 unwind label %37, !prof !179

30:                                               ; preds = %26
  %31 = load ptr, ptr %1, align 8, !tbaa !75, !noalias !171
  %32 = getelementptr inbounds ptr, ptr %31, i64 30
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %16)
          to label %45 unwind label %34, !prof !175

34:                                               ; preds = %30
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #15
  unreachable

37:                                               ; preds = %26, %21
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %1, align 8, !tbaa !75, !noalias !171
  %40 = getelementptr inbounds ptr, ptr %39, i64 30
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %16)
          to label %68 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #15
  unreachable

45:                                               ; preds = %30
  %46 = load ptr, ptr %3, align 8, !tbaa !169
  %47 = load ptr, ptr %4, align 8, !tbaa !169
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %52, label %49, !prof !179

49:                                               ; preds = %45
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %46)
          to label %50 unwind label %62

50:                                               ; preds = %49
  %51 = load ptr, ptr %4, align 8, !tbaa !169
  store ptr %51, ptr %3, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %51)
          to label %52 unwind label %62

52:                                               ; preds = %45, %50
  %53 = load ptr, ptr %4, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %53)
          to label %57 unwind label %54, !prof !179

54:                                               ; preds = %52
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #15
  unreachable

57:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %58 = load ptr, ptr %3, align 8, !tbaa !169
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %72, !prof !179

60:                                               ; preds = %17, %2
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %68

62:                                               ; preds = %50, %49
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %4, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %64)
          to label %68 unwind label %65

65:                                               ; preds = %62
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #15
  unreachable

68:                                               ; preds = %60, %37, %62
  %69 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %175

70:                                               ; preds = %82, %77, %72
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %175

72:                                               ; preds = %57
  %73 = load ptr, ptr %58, align 8, !tbaa !75
  %74 = getelementptr inbounds ptr, ptr %73, i64 13
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef nonnull align 8 dereferenceable(8) ptr %75(ptr noundef nonnull align 8 dereferenceable(24) %58)
          to label %77 unwind label %70

77:                                               ; preds = %72, %57
  %78 = phi ptr [ %10, %57 ], [ %76, %72 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !75
  %80 = getelementptr inbounds ptr, ptr %79, i64 158
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %82 unwind label %70, !prof !180

82:                                               ; preds = %77
  %83 = load ptr, ptr %1, align 8, !tbaa !75
  %84 = getelementptr inbounds ptr, ptr %83, i64 137
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef i64 %85(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %87 unwind label %70, !prof !181

87:                                               ; preds = %82
  %88 = icmp eq i64 %86, 0
  br i1 %88, label %145, label %89, !prof !179

89:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #14
  %90 = load ptr, ptr %1, align 8, !tbaa !75
  %91 = getelementptr inbounds ptr, ptr %90, i64 6
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %94 unwind label %118

94:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %95 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !182
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %96, i32 noundef -1)
          to label %97 unwind label %120

97:                                               ; preds = %94
  %98 = load ptr, ptr %11, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %93, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(129) %98, ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %99 unwind label %122

99:                                               ; preds = %97
  %100 = load ptr, ptr %1, align 8, !tbaa !75
  %101 = getelementptr inbounds ptr, ptr %100, i64 140
  %102 = load ptr, ptr %101, align 8
  invoke void %102(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %103 unwind label %124

103:                                              ; preds = %99
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #14
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %6, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !184
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %6, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !185
  %110 = load ptr, ptr %6, align 8, !tbaa !186
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = getelementptr inbounds ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef %109)
          to label %117 unwind label %114

114:                                              ; preds = %107
  %115 = landingpad { ptr, i32 }
          catch ptr null
  %116 = extractvalue { ptr, i32 } %115, 0
  call void @__clang_call_terminate(ptr %116) #15
  unreachable

117:                                              ; preds = %103, %107
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  br label %145

118:                                              ; preds = %89
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %143

120:                                              ; preds = %94
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %141

122:                                              ; preds = %97
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %126

124:                                              ; preds = %99
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #14
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %123, %122 ]
  %128 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %6, i64 0, i32 2
  %129 = load i64, ptr %128, align 8, !tbaa !184
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %6, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !185
  %134 = load ptr, ptr %6, align 8, !tbaa !186
  %135 = load ptr, ptr %134, align 8, !tbaa !75
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  invoke void %137(ptr noundef nonnull align 8 dereferenceable(8) %134, ptr noundef %133)
          to label %141 unwind label %138

138:                                              ; preds = %131
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #15
  unreachable

141:                                              ; preds = %131, %126, %120
  %142 = phi { ptr, i32 } [ %121, %120 ], [ %127, %126 ], [ %127, %131 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  br label %143

143:                                              ; preds = %141, %118
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  br label %175

145:                                              ; preds = %117, %87
  %146 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  %147 = load i64, ptr %146, align 8, !tbaa !137
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %168, label %149, !prof !187

149:                                              ; preds = %145
  %150 = load ptr, ptr %1, align 8, !tbaa !75
  %151 = getelementptr inbounds ptr, ptr %150, i64 156
  %152 = load ptr, ptr %151, align 8
  %153 = invoke noundef nonnull align 8 dereferenceable(44) ptr %152(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %154 unwind label %166, !prof !188

154:                                              ; preds = %149
  %155 = load ptr, ptr %78, align 8, !tbaa !75
  %156 = getelementptr inbounds ptr, ptr %155, i64 3
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef i32 %157(ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %159 unwind label %166, !prof !189

159:                                              ; preds = %154
  %160 = icmp ugt i32 %158, 1
  br i1 %160, label %161, label %168, !prof !190

161:                                              ; preds = %159
  %162 = load ptr, ptr %0, align 8, !tbaa !75
  %163 = getelementptr inbounds ptr, ptr %162, i64 40
  %164 = load ptr, ptr %163, align 8
  %165 = invoke noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(44) %153)
          to label %168 unwind label %166, !prof !191

166:                                              ; preds = %161, %154, %149
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %175

168:                                              ; preds = %159, %161, %145
  %169 = phi ptr [ %78, %145 ], [ %78, %159 ], [ %165, %161 ]
  %170 = load ptr, ptr %3, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %170)
          to label %174 unwind label %171, !prof !179

171:                                              ; preds = %168
  %172 = landingpad { ptr, i32 }
          catch ptr null
  %173 = extractvalue { ptr, i32 } %172, 0
  call void @__clang_call_terminate(ptr %173) #15
  unreachable

174:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret ptr %169

175:                                              ; preds = %166, %143, %70, %68
  %176 = phi { ptr, i32 } [ %167, %166 ], [ %144, %143 ], [ %71, %70 ], [ %69, %68 ]
  %177 = load ptr, ptr %3, align 8, !tbaa !169
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %177)
          to label %181 unwind label %178

178:                                              ; preds = %175
  %179 = landingpad { ptr, i32 }
          catch ptr null
  %180 = extractvalue { ptr, i32 } %179, 0
  call void @__clang_call_terminate(ptr %180) #15
  unreachable

181:                                              ; preds = %175
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  resume { ptr, i32 } %176
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014SelectionEventC1ERNS_26StylesheetExecutionContextEPKNS_9XalanNodeERKNS_19ElemTemplateElementERKNS_14XalanDOMStringERKNS_5XPathERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014SelectionEventD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 align 2 !prof !167 {
  %3 = load ptr, ptr %1, align 8, !tbaa !75
  %4 = getelementptr inbounds ptr, ptr %3, i64 159
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !192
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds ptr, ptr %6, i64 157
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !193
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12, !prof !187

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !75
  %14 = getelementptr inbounds ptr, ptr %13, i64 157
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !194
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull returned align 8 dereferenceable(44) %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !195 {
  %5 = alloca %"class.xalanc_1_10::XalanQNameByValue", align 8
  %6 = alloca %"class.xalanc_1_10::NodeSortKey", align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !75
  %8 = getelementptr inbounds ptr, ptr %7, i64 129
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !196
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !137
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %10, i64 0, i32 2, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !197
  %16 = icmp ult i64 %15, %13
  br i1 %16, label %17, label %18, !prof !199

17:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %13)
          to label %18 unwind label %41, !prof !200

18:                                               ; preds = %4, %17
  %19 = load ptr, ptr %1, align 8, !tbaa !75
  %20 = getelementptr inbounds ptr, ptr %19, i64 23
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %23 unwind label %43, !prof !201

23:                                               ; preds = %18
  %24 = load ptr, ptr %1, align 8, !tbaa !75
  %25 = getelementptr inbounds ptr, ptr %24, i64 23
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %28 unwind label %45, !prof !201

28:                                               ; preds = %23
  %29 = load i64, ptr %12, align 8, !tbaa !137
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %39, label %31, !prof !202

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 2, i32 3
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 0, i32 1
  %34 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_DATATYPE_NUMBERE, align 8
  %35 = load ptr, ptr @_ZN11xalanc_1_109Constants21ATTRVAL_DATATYPE_TEXTE, align 8
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr @_ZN11xalanc_1_109Constants24ATTRVAL_ORDER_DESCENDINGE, align 8
  %38 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_ORDER_ASCENDINGE, align 8
  br label %49

39:                                               ; preds = %190, %28
  %40 = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %200 unwind label %47, !prof !203

41:                                               ; preds = %17
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %270

43:                                               ; preds = %18
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %270

45:                                               ; preds = %23
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %261

47:                                               ; preds = %39
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %252

49:                                               ; preds = %31, %190
  %50 = phi i64 [ 0, %31 ], [ %191, %190 ]
  %51 = load ptr, ptr %32, align 8, !tbaa !122
  %52 = getelementptr inbounds ptr, ptr %51, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !118
  %54 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !204
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !206

57:                                               ; preds = %49
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %60 unwind label %58

58:                                               ; preds = %73, %71, %68, %57
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %252

60:                                               ; preds = %57, %49
  %61 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %53, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !207
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64, !prof !208

64:                                               ; preds = %60
  %65 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %62, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !209
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68, !prof !211

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %62, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !212
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %27, i32 noundef 0, i32 noundef -1)
          to label %71 unwind label %58

71:                                               ; preds = %68
  %72 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull %66, i32 noundef %70)
          to label %74 unwind label %58

73:                                               ; preds = %64
  invoke void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %74 unwind label %58

74:                                               ; preds = %71, %73, %60
  %75 = load i32, ptr %33, align 8, !tbaa !213
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %110, label %77, !prof !208

77:                                               ; preds = %74
  %78 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %34)
          to label %79 unwind label %80, !prof !206

79:                                               ; preds = %77
  br i1 %78, label %110, label %82, !prof !215

80:                                               ; preds = %130, %128, %125, %82, %77
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %252

82:                                               ; preds = %79
  %83 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %35)
          to label %84 unwind label %80, !prof !216

84:                                               ; preds = %82
  br i1 %83, label %110, label %85, !prof !216

85:                                               ; preds = %84
  %86 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #14
  %87 = load ptr, ptr %86, align 8, !tbaa !182
  invoke void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef nonnull %0, ptr noundef null)
          to label %88 unwind label %100

88:                                               ; preds = %85
  %89 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %90 unwind label %102

90:                                               ; preds = %88
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %89, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !213
  %93 = icmp eq i32 %92, 0
  %94 = load ptr, ptr %53, align 8, !tbaa !75
  %95 = getelementptr inbounds ptr, ptr %94, i64 4
  %96 = load ptr, ptr %95, align 8
  br i1 %93, label %97, label %104

97:                                               ; preds = %90
  %98 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(322) %53)
          to label %99 unwind label %102

99:                                               ; preds = %97
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 180, ptr noundef %98)
          to label %107 unwind label %102

100:                                              ; preds = %85
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %108

102:                                              ; preds = %106, %104, %99, %97, %88
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  br label %108

104:                                              ; preds = %90
  %105 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(322) %53)
          to label %106 unwind label %102

106:                                              ; preds = %104
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 181, ptr noundef %105)
          to label %107 unwind label %102

107:                                              ; preds = %99, %106
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  br label %110

108:                                              ; preds = %102, %100
  %109 = phi { ptr, i32 } [ %103, %102 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  br label %252

110:                                              ; preds = %79, %107, %84, %74
  %111 = phi i1 [ false, %107 ], [ false, %84 ], [ false, %74 ], [ true, %79 ]
  %112 = load i64, ptr %36, align 8, !tbaa !108
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %117, label %114, !prof !208

114:                                              ; preds = %110
  %115 = load i64, ptr %36, align 8, !tbaa !108
  %116 = sub i64 %115, %112
  store i64 %116, ptr %36, align 8, !tbaa !108
  br label %117

117:                                              ; preds = %114, %110
  store i32 0, ptr %33, align 8, !tbaa !213
  %118 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %53, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !217
  %120 = icmp eq ptr %119, null
  br i1 %120, label %131, label %121, !prof !208

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %119, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !209
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125, !prof !211

125:                                              ; preds = %121
  %126 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %119, i64 0, i32 4
  %127 = load i32, ptr %126, align 8, !tbaa !212
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %27, i32 noundef 0, i32 noundef -1)
          to label %128 unwind label %80

128:                                              ; preds = %125
  %129 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull %123, i32 noundef %127)
          to label %131 unwind label %80

130:                                              ; preds = %121
  invoke void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %119, ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %131 unwind label %80

131:                                              ; preds = %128, %130, %117
  %132 = load i32, ptr %33, align 8, !tbaa !213
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %148, label %134, !prof !208

134:                                              ; preds = %131
  %135 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %37)
          to label %136 unwind label %137, !prof !206

136:                                              ; preds = %134
  br i1 %135, label %148, label %139, !prof !218

137:                                              ; preds = %139, %134, %159, %147, %142
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %252

139:                                              ; preds = %136
  %140 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %38)
          to label %141 unwind label %137, !prof !219

141:                                              ; preds = %139
  br i1 %140, label %148, label %142, !prof !219

142:                                              ; preds = %141
  %143 = load ptr, ptr %53, align 8, !tbaa !75
  %144 = getelementptr inbounds ptr, ptr %143, i64 4
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(322) %53)
          to label %147 unwind label %137

147:                                              ; preds = %142
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 179, ptr noundef %146)
          to label %148 unwind label %137

148:                                              ; preds = %147, %136, %141, %131
  %149 = phi i1 [ false, %141 ], [ false, %131 ], [ true, %136 ], [ false, %147 ]
  %150 = load i64, ptr %36, align 8, !tbaa !108
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %155, label %152, !prof !208

152:                                              ; preds = %148
  %153 = load i64, ptr %36, align 8, !tbaa !108
  %154 = sub i64 %153, %150
  store i64 %154, ptr %36, align 8, !tbaa !108
  br label %155

155:                                              ; preds = %152, %148
  store i32 0, ptr %33, align 8, !tbaa !213
  %156 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %53, i64 0, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !220
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159, !prof !206

159:                                              ; preds = %155
  invoke void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %157, ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %160 unwind label %137

160:                                              ; preds = %159, %155
  %161 = load i32, ptr %33, align 8, !tbaa !213
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %179, label %163, !prof !206

163:                                              ; preds = %160
  %164 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_UPPERE, align 8
  %165 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %164)
          to label %166 unwind label %167

166:                                              ; preds = %163
  br i1 %165, label %179, label %169

167:                                              ; preds = %169, %163, %178, %173
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %252

169:                                              ; preds = %166
  %170 = load ptr, ptr @_ZN11xalanc_1_109Constants23ATTRVAL_CASEORDER_LOWERE, align 8
  %171 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %170)
          to label %172 unwind label %167

172:                                              ; preds = %169
  br i1 %171, label %179, label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %53, align 8, !tbaa !75
  %175 = getelementptr inbounds ptr, ptr %174, i64 4
  %176 = load ptr, ptr %175, align 8
  %177 = invoke noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(322) %53)
          to label %178 unwind label %167

178:                                              ; preds = %173
  invoke void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 182, ptr noundef %177)
          to label %179 unwind label %167

179:                                              ; preds = %172, %166, %178, %160
  %180 = phi i32 [ 0, %178 ], [ 0, %160 ], [ 2, %166 ], [ 1, %172 ]
  %181 = load i64, ptr %36, align 8, !tbaa !108
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %186, label %183, !prof !206

183:                                              ; preds = %179
  %184 = load i64, ptr %36, align 8, !tbaa !108
  %185 = sub i64 %184, %181
  store i64 %185, ptr %36, align 8, !tbaa !108
  br label %186

186:                                              ; preds = %183, %179
  store i32 0, ptr %33, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  %187 = getelementptr inbounds %"class.xalanc_1_10::ElemSort", ptr %53, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !221
  invoke void @_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %188, i1 noundef zeroext %111, i1 noundef zeroext %149, i32 noundef %180, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %189 unwind label %194, !prof !206

189:                                              ; preds = %186
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %190 unwind label %196, !prof !206

190:                                              ; preds = %189
  call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  %191 = add nuw i64 %50, 1
  %192 = load i64, ptr %12, align 8, !tbaa !137
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %49, label %39, !prof !222, !llvm.loop !223

194:                                              ; preds = %186
  %195 = landingpad { ptr, i32 }
          cleanup
  br label %198

196:                                              ; preds = %189
  %197 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi { ptr, i32 } [ %197, %196 ], [ %195, %194 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  br label %252

200:                                              ; preds = %39
  %201 = load ptr, ptr %1, align 8, !tbaa !75
  %202 = getelementptr inbounds ptr, ptr %201, i64 10
  %203 = load ptr, ptr %202, align 8
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %204 unwind label %242, !prof !224

204:                                              ; preds = %200
  invoke void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %3)
          to label %205 unwind label %244, !prof !203

205:                                              ; preds = %204
  %206 = load ptr, ptr %1, align 8, !tbaa !75
  %207 = getelementptr inbounds ptr, ptr %206, i64 11
  %208 = load ptr, ptr %207, align 8
  invoke void %208(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %212 unwind label %209, !prof !225

209:                                              ; preds = %205
  %210 = landingpad { ptr, i32 }
          catch ptr null
  %211 = extractvalue { ptr, i32 } %210, 0
  call void @__clang_call_terminate(ptr %211) #15
  unreachable

212:                                              ; preds = %205
  %213 = load ptr, ptr %1, align 8, !tbaa !75
  %214 = getelementptr inbounds ptr, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8
  %216 = invoke noundef zeroext i1 %215(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %27)
          to label %220 unwind label %217, !prof !226

217:                                              ; preds = %212
  %218 = landingpad { ptr, i32 }
          catch ptr null
  %219 = extractvalue { ptr, i32 } %218, 0
  call void @__clang_call_terminate(ptr %219) #15
  unreachable

220:                                              ; preds = %212
  %221 = load ptr, ptr %1, align 8, !tbaa !75
  %222 = getelementptr inbounds ptr, ptr %221, i64 24
  %223 = load ptr, ptr %222, align 8
  %224 = invoke noundef zeroext i1 %223(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %22)
          to label %228 unwind label %225, !prof !226

225:                                              ; preds = %220
  %226 = landingpad { ptr, i32 }
          catch ptr null
  %227 = extractvalue { ptr, i32 } %226, 0
  call void @__clang_call_terminate(ptr %227) #15
  unreachable

228:                                              ; preds = %220
  %229 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %10, i64 0, i32 2, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !227
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %241, label %232, !prof !228

232:                                              ; preds = %228
  %233 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %10, i64 0, i32 2, i32 3
  br label %234

234:                                              ; preds = %232, %234
  %235 = load i64, ptr %229, align 8, !tbaa !227
  %236 = add i64 %235, -1
  store i64 %236, ptr %229, align 8, !tbaa !227
  %237 = load ptr, ptr %233, align 8, !tbaa !229
  %238 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %237, i64 %236
  call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %238) #14
  %239 = load i64, ptr %229, align 8, !tbaa !227
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %234, !prof !230, !llvm.loop !231

241:                                              ; preds = %234, %228
  ret ptr %3

242:                                              ; preds = %200
  %243 = landingpad { ptr, i32 }
          cleanup
  br label %252

244:                                              ; preds = %204
  %245 = landingpad { ptr, i32 }
          cleanup
  %246 = load ptr, ptr %1, align 8, !tbaa !75
  %247 = getelementptr inbounds ptr, ptr %246, i64 11
  %248 = load ptr, ptr %247, align 8
  invoke void %248(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %252 unwind label %249

249:                                              ; preds = %244
  %250 = landingpad { ptr, i32 }
          catch ptr null
  %251 = extractvalue { ptr, i32 } %250, 0
  call void @__clang_call_terminate(ptr %251) #15
  unreachable

252:                                              ; preds = %47, %80, %108, %167, %198, %137, %58, %244, %242
  %253 = phi { ptr, i32 } [ %48, %47 ], [ %59, %58 ], [ %81, %80 ], [ %109, %108 ], [ %138, %137 ], [ %199, %198 ], [ %168, %167 ], [ %243, %242 ], [ %245, %244 ]
  %254 = load ptr, ptr %1, align 8, !tbaa !75
  %255 = getelementptr inbounds ptr, ptr %254, i64 24
  %256 = load ptr, ptr %255, align 8
  %257 = invoke noundef zeroext i1 %256(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %27)
          to label %261 unwind label %258

258:                                              ; preds = %252
  %259 = landingpad { ptr, i32 }
          catch ptr null
  %260 = extractvalue { ptr, i32 } %259, 0
  call void @__clang_call_terminate(ptr %260) #15
  unreachable

261:                                              ; preds = %45, %252
  %262 = phi { ptr, i32 } [ %46, %45 ], [ %253, %252 ]
  %263 = load ptr, ptr %1, align 8, !tbaa !75
  %264 = getelementptr inbounds ptr, ptr %263, i64 24
  %265 = load ptr, ptr %264, align 8
  %266 = invoke noundef zeroext i1 %265(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %22)
          to label %270 unwind label %267

267:                                              ; preds = %261
  %268 = landingpad { ptr, i32 }
          catch ptr null
  %269 = extractvalue { ptr, i32 } %268, 0
  call void @__clang_call_terminate(ptr %269) #15
  unreachable

270:                                              ; preds = %41, %261, %43
  %271 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ], [ %262, %261 ]
  %272 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %10, i64 0, i32 2, i32 1
  %273 = load i64, ptr %272, align 8, !tbaa !227
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %284, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %"class.xalanc_1_10::NodeSorter", ptr %10, i64 0, i32 2, i32 3
  br label %277

277:                                              ; preds = %275, %277
  %278 = load i64, ptr %272, align 8, !tbaa !227
  %279 = add i64 %278, -1
  store i64 %279, ptr %272, align 8, !tbaa !227
  %280 = load ptr, ptr %276, align 8, !tbaa !229
  %281 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %280, i64 %279
  call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %281) #14
  %282 = load i64, ptr %272, align 8, !tbaa !227
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %277, !llvm.loop !231

284:                                              ; preds = %277, %270
  resume { ptr, i32 } %271
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #8 comdat align 2 !prof !232 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !211

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !212
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %6, i32 noundef %10)
  br label %13

12:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement5errorERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement4warnERNS_26StylesheetExecutionContextENS_13XalanMessages5CodesEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

declare void @_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #9 align 2 !prof !132 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %3, ptr %5, ptr null
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #2

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

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #2

declare void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !125
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %12, ptr %0, align 8, !tbaa !103
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !125
  store i64 %14, ptr %6, align 8, !tbaa !125
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !120
  store i64 %16, ptr %8, align 8, !tbaa !120
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  store ptr %18, ptr %10, align 8, !tbaa !122
  store ptr %5, ptr %3, align 8, !tbaa !103
  store i64 %7, ptr %13, align 8, !tbaa !125
  store i64 %9, ptr %15, align 8, !tbaa !120
  store ptr %11, ptr %17, align 8, !tbaa !122
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !233

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !75
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !234

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !233

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !125
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !120
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !235
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !122
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = load i64, ptr %9, align 8, !tbaa !125
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !236

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !103
  %28 = load i64, ptr %6, align 8, !tbaa !125
  %29 = load i64, ptr %7, align 8, !tbaa !120
  %30 = load ptr, ptr %8, align 8, !tbaa !122
  %31 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %31, ptr %0, align 8, !tbaa !103
  %32 = load i64, ptr %14, align 8, !tbaa !125
  store i64 %32, ptr %6, align 8, !tbaa !125
  %33 = load i64, ptr %15, align 8, !tbaa !120
  store i64 %33, ptr %7, align 8, !tbaa !120
  %34 = load ptr, ptr %21, align 8, !tbaa !122
  store ptr %34, ptr %8, align 8, !tbaa !122
  store ptr %27, ptr %5, align 8, !tbaa !103
  store i64 %28, ptr %14, align 8, !tbaa !125
  store i64 %29, ptr %15, align 8, !tbaa !120
  store ptr %30, ptr %21, align 8, !tbaa !122
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !236

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !75
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !120
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !122
  %50 = load ptr, ptr %5, align 8, !tbaa !103
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #15
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !237

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !75
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !238
  store ptr %65, ptr %8, align 8, !tbaa !122
  store i64 %3, ptr %7, align 8, !tbaa !120
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !240

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !125
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !120
  br i1 %18, label %21, label %39, !prof !236

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !240

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !105

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !122
  %28 = load i64, ptr %12, align 8, !tbaa !125
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !118
  store ptr %34, ptr %32, align 8, !tbaa !118
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !241, !llvm.loop !242

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %42 = load ptr, ptr %0, align 8, !tbaa !103
  store ptr %42, ptr %5, align 8, !tbaa !103
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !125
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !120
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !75
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !122
  %51 = load i64, ptr %43, align 8, !tbaa !125
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !122
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !122
  %56 = load i64, ptr %43, align 8, !tbaa !125
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !122
  %60 = load i64, ptr %43, align 8, !tbaa !125
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !122
  %63 = load i64, ptr %12, align 8, !tbaa !125
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !103
  %67 = load i64, ptr %12, align 8, !tbaa !125
  %68 = load i64, ptr %19, align 8, !tbaa !120
  %69 = load ptr, ptr %15, align 8, !tbaa !122
  %70 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %70, ptr %0, align 8, !tbaa !103
  %71 = load i64, ptr %43, align 8, !tbaa !125
  store i64 %71, ptr %12, align 8, !tbaa !125
  %72 = load i64, ptr %44, align 8, !tbaa !120
  store i64 %72, ptr %19, align 8, !tbaa !120
  %73 = load ptr, ptr %50, align 8, !tbaa !122
  store ptr %73, ptr %15, align 8, !tbaa !122
  store ptr %66, ptr %5, align 8, !tbaa !103
  store i64 %67, ptr %43, align 8, !tbaa !125
  store i64 %68, ptr %44, align 8, !tbaa !120
  store ptr %69, ptr %50, align 8, !tbaa !122
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !75
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #15
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !120
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !122
  %89 = load ptr, ptr %5, align 8, !tbaa !103
  %90 = load ptr, ptr %89, align 8, !tbaa !75
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #15
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !243

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !244

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !245

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !125
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !125
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !120
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !130

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %13, ptr %12, align 8, !tbaa !118
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !125
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !103
  %24 = load i64, ptr %4, align 8, !tbaa !125
  %25 = load i64, ptr %6, align 8, !tbaa !120
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !122
  %28 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %28, ptr %0, align 8, !tbaa !103
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !125
  store i64 %30, ptr %4, align 8, !tbaa !125
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !120
  store i64 %32, ptr %6, align 8, !tbaa !120
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  store ptr %34, ptr %26, align 8, !tbaa !122
  store ptr %23, ptr %3, align 8, !tbaa !103
  store i64 %24, ptr %29, align 8, !tbaa !125
  store i64 %25, ptr %31, align 8, !tbaa !120
  store ptr %27, ptr %33, align 8, !tbaa !122
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !75
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !120
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !122
  %52 = load ptr, ptr %3, align 8, !tbaa !103
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #15
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !247
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !247
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !227
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !197
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = load ptr, ptr %3, align 8, !tbaa !247
  store ptr %12, ptr %0, align 8, !tbaa !247
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !227
  store i64 %14, ptr %6, align 8, !tbaa !227
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !197
  store i64 %16, ptr %8, align 8, !tbaa !197
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !229
  store ptr %18, ptr %10, align 8, !tbaa !229
  store ptr %5, ptr %3, align 8, !tbaa !247
  store i64 %7, ptr %13, align 8, !tbaa !227
  store i64 %9, ptr %15, align 8, !tbaa !197
  store ptr %11, ptr %17, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  store ptr %2, ptr %0, align 8, !tbaa !247
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !227
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !200

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !247
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !227
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !197
  %16 = mul i64 %13, 40
  %17 = load ptr, ptr %2, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !229
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !229
  %24 = load i64, ptr %9, align 8, !tbaa !227
  %25 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !247
  %28 = load i64, ptr %6, align 8, !tbaa !227
  %29 = load i64, ptr %7, align 8, !tbaa !197
  %30 = load ptr, ptr %8, align 8, !tbaa !229
  %31 = load ptr, ptr %5, align 8, !tbaa !247
  store ptr %31, ptr %0, align 8, !tbaa !247
  %32 = load i64, ptr %14, align 8, !tbaa !227
  store i64 %32, ptr %6, align 8, !tbaa !227
  %33 = load i64, ptr %15, align 8, !tbaa !197
  store i64 %33, ptr %7, align 8, !tbaa !197
  %34 = load ptr, ptr %21, align 8, !tbaa !229
  store ptr %34, ptr %8, align 8, !tbaa !229
  store ptr %27, ptr %5, align 8, !tbaa !247
  store i64 %28, ptr %14, align 8, !tbaa !227
  store i64 %29, ptr %15, align 8, !tbaa !197
  store ptr %30, ptr %21, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !248

39:                                               ; preds = %37
  %40 = mul i64 %3, 40
  %41 = load ptr, ptr %2, align 8, !tbaa !75
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !249
  store ptr %44, ptr %8, align 8, !tbaa !229
  store i64 %3, ptr %7, align 8, !tbaa !197
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !250 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !197
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !251

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !227
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12, !prof !252

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011NodeSortKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #14
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !prof !252, !llvm.loop !253

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !229
  %18 = load ptr, ptr %0, align 8, !tbaa !247
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23, !prof !254

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %140, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !227
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !197
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %140, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !229
  %28 = load i64, ptr %12, align 8, !tbaa !227
  %29 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 8 dereferenceable(40) %31)
  %33 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !227
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !227
  %36 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %140, label %30, !llvm.loop !255

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %75

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %41 = load ptr, ptr %0, align 8, !tbaa !247
  store ptr %41, ptr %5, align 8, !tbaa !247
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !227
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !197
  %44 = mul i64 %14, 40
  %45 = load ptr, ptr %41, align 8, !tbaa !75
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !229
  %50 = load i64, ptr %42, align 8, !tbaa !227
  %51 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !229
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %73

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !229
  %55 = load i64, ptr %42, align 8, !tbaa !227
  %56 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %73

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !229
  %59 = load i64, ptr %42, align 8, !tbaa !227
  %60 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !229
  %62 = load i64, ptr %12, align 8, !tbaa !227
  %63 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %73

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !247
  %66 = load i64, ptr %12, align 8, !tbaa !227
  %67 = load i64, ptr %19, align 8, !tbaa !197
  %68 = load ptr, ptr %15, align 8, !tbaa !229
  %69 = load ptr, ptr %5, align 8, !tbaa !247
  store ptr %69, ptr %0, align 8, !tbaa !247
  %70 = load i64, ptr %42, align 8, !tbaa !227
  store i64 %70, ptr %12, align 8, !tbaa !227
  %71 = load i64, ptr %43, align 8, !tbaa !197
  store i64 %71, ptr %19, align 8, !tbaa !197
  %72 = load ptr, ptr %49, align 8, !tbaa !229
  store ptr %72, ptr %15, align 8, !tbaa !229
  store ptr %65, ptr %5, align 8, !tbaa !247
  store i64 %66, ptr %42, align 8, !tbaa !227
  store i64 %67, ptr %43, align 8, !tbaa !197
  store ptr %68, ptr %49, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %140

73:                                               ; preds = %57, %53, %40
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %74

75:                                               ; preds = %38
  %76 = ptrtoint ptr %17 to i64
  %77 = ptrtoint ptr %1 to i64
  %78 = sub i64 %76, %77
  %79 = icmp ugt i64 %78, %8
  br i1 %79, label %106, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %2, i64 %78
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %85

83:                                               ; preds = %85, %80
  %84 = icmp eq ptr %17, %1
  br i1 %84, label %93, label %89

85:                                               ; preds = %80, %85
  %86 = phi ptr [ %87, %85 ], [ %81, %80 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %86)
  %87 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %86, i64 1
  %88 = icmp eq ptr %87, %3
  br i1 %88, label %83, label %85, !llvm.loop !256

89:                                               ; preds = %83, %89
  %90 = phi ptr [ %91, %89 ], [ %1, %83 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %90)
  %91 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %90, i64 1
  %92 = icmp eq ptr %91, %17
  br i1 %92, label %93, label %89, !llvm.loop !257

93:                                               ; preds = %89, %83
  %94 = icmp sgt i64 %78, 0
  br i1 %94, label %95, label %140

95:                                               ; preds = %93
  %96 = udiv exact i64 %78, 40
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %104, %97 ], [ %96, %95 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %95 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %95 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %99, ptr noundef nonnull align 8 dereferenceable(40) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %140, !llvm.loop !258

106:                                              ; preds = %75
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !259

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %77
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = udiv exact i64 %116, 40
  br label %122

120:                                              ; preds = %122, %114
  %121 = icmp sgt i64 %8, 0
  br i1 %121, label %131, label %140

122:                                              ; preds = %118, %122
  %123 = phi i64 [ %129, %122 ], [ %119, %118 ]
  %124 = phi ptr [ %127, %122 ], [ %17, %118 ]
  %125 = phi ptr [ %126, %122 ], [ %108, %118 ]
  %126 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %125, i64 -1
  %127 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %124, i64 -1
  %128 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %127, ptr noundef nonnull align 8 dereferenceable(40) %126)
  %129 = add nsw i64 %123, -1
  %130 = icmp sgt i64 %123, 1
  br i1 %130, label %122, label %120, !llvm.loop !260

131:                                              ; preds = %120, %131
  %132 = phi i64 [ %138, %131 ], [ %9, %120 ]
  %133 = phi ptr [ %137, %131 ], [ %1, %120 ]
  %134 = phi ptr [ %136, %131 ], [ %2, %120 ]
  %135 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %133, ptr noundef nonnull align 8 dereferenceable(40) %134)
  %136 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %134, i64 1
  %137 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %133, i64 1
  %138 = add nsw i64 %132, -1
  %139 = icmp sgt i64 %132, 1
  br i1 %139, label %131, label %140, !llvm.loop !258

140:                                              ; preds = %97, %131, %30, %93, %120, %24, %64, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.12", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !227
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !197
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !206

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %11, i64 %5
  tail call void @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %13 = load i64, ptr %4, align 8, !tbaa !227
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !227
  br label %37

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !247
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %22 unwind label %35

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !247
  %24 = load i64, ptr %4, align 8, !tbaa !227
  %25 = load i64, ptr %6, align 8, !tbaa !197
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !229
  %28 = load ptr, ptr %3, align 8, !tbaa !247
  store ptr %28, ptr %0, align 8, !tbaa !247
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !227
  store i64 %30, ptr %4, align 8, !tbaa !227
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !197
  store i64 %32, ptr %6, align 8, !tbaa !197
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.12", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !229
  store ptr %34, ptr %26, align 8, !tbaa !229
  store ptr %23, ptr %3, align 8, !tbaa !247
  store i64 %24, ptr %29, align 8, !tbaa !227
  store i64 %25, ptr %31, align 8, !tbaa !197
  store ptr %27, ptr %33, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %37

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %36

37:                                               ; preds = %22, %9
  ret void
}

declare void @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!73}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!35 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 12}
!36 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 24}
!37 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 12}
!38 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 12}
!39 = !{ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, ptr @_ZN11xalanc_1_1019ElemTemplateElementC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 32}
!40 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 44}
!41 = !{ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, ptr @_ZN11xalanc_1_1019ElemTemplateElementD2Ev, i64 44}
!42 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 14}
!43 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_108ElemSort6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEii, i64 14}
!44 = !{ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 14}
!45 = !{ptr @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZN11xalanc_1_1019ElemTemplateElement16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, i64 42}
!46 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, i64 29851}
!47 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, i64 24187}
!48 = !{ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, i64 423190}
!49 = !{ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, i64 136470}
!50 = !{ptr @_ZNK11xalanc_1_1011ElemForEach25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, i64 136470}
!51 = !{ptr @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, i64 24187}
!52 = !{ptr @_ZNK11xalanc_1_1011ElemForEach10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, i64 29851}
!53 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 339573}
!54 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 339572}
!55 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 679145}
!56 = !{ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, i64 6851}
!57 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 2}
!58 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE, i64 6851}
!59 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 41046}
!60 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 41046}
!61 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 82081}
!62 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE, i64 20523}
!63 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 20523}
!64 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011NodeSortKeyD1Ev, i64 41048}
!65 = !{ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1010NodeSorter4sortERNS_26StylesheetExecutionContextERNS_18MutableNodeRefListE, i64 6851}
!66 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 156059}
!67 = !{ptr @_ZNK11xalanc_1_103AVT8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 156059}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 14}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 6}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 2}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 2}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_, i64 20523}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 12}
!75 = !{!76, !76, i64 0}
!76 = !{!"vtable pointer", !77, i64 0}
!77 = !{!"Simple C++ TBAA"}
!78 = !{!79, !82, i64 328}
!79 = !{!"_ZTSN11xalanc_1_1011ElemForEachE", !80, i64 0, !82, i64 328, !100, i64 336, !86, i64 368}
!80 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !81, i64 0, !82, i64 8, !84, i64 16, !95, i64 248, !82, i64 256, !82, i64 264, !82, i64 272, !83, i64 280, !96, i64 288, !99, i64 320}
!81 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !77, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !85, i64 0, !87, i64 32, !88, i64 64, !89, i64 96}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!86 = !{!"long", !83, i64 0}
!87 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!88 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!89 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !90, i64 0, !91, i64 1, !82, i64 8, !92, i64 16, !86, i64 24, !86, i64 32, !93, i64 40, !93, i64 64, !94, i64 88, !86, i64 120, !86, i64 128}
!90 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!91 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!92 = !{!"float", !83, i64 0}
!93 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !82, i64 0, !82, i64 8, !82, i64 16}
!94 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!95 = !{!"int", !83, i64 0}
!96 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !97, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!97 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !98, i64 0}
!98 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!99 = !{!"short", !83, i64 0}
!100 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!101 = !{!102, !82, i64 8}
!102 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !82, i64 8}
!103 = !{!100, !82, i64 0}
!104 = !{!"VP", i32 0, i64 12, i64 8253907953441087172, i64 12}
!105 = !{!"branch_weights", i32 1, i32 191}
!106 = !{!"branch_weights", i32 0, i32 12}
!107 = !{!"VP", i32 0, i64 12, i64 5829949526982853143, i64 12}
!108 = !{!109, !86, i64 8}
!109 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!110 = !{!"branch_weights", i32 12, i32 0}
!111 = !{!"VP", i32 0, i64 12, i64 -5610273550909442482, i64 12}
!112 = !{!"VP", i32 0, i64 12, i64 -7250213707570638104, i64 12}
!113 = !{!"VP", i32 0, i64 12, i64 5056957690790192712, i64 12}
!114 = !{!"branch_weights", i32 191, i32 1}
!115 = distinct !{!115, !116, !117}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!82, !82, i64 0}
!119 = !{!"function_entry_count", i64 44}
!120 = !{!100, !86, i64 16}
!121 = !{!"branch_weights", i32 36, i32 8}
!122 = !{!100, !82, i64 24}
!123 = !{!"VP", i32 0, i64 8, i64 -7405368087501025645, i64 8}
!124 = !{!"function_entry_count", i64 32}
!125 = !{!100, !86, i64 8}
!126 = !{!"branch_weights", i32 30, i32 14}
!127 = !{!"branch_weights", i32 0, i32 14}
!128 = !{!"VP", i32 0, i64 14, i64 -5975143804063531988, i64 14}
!129 = !{!"VP", i32 0, i64 14, i64 -7405368087501025645, i64 14}
!130 = !{!"branch_weights", i32 14, i32 0}
!131 = distinct !{!131, !116, !117}
!132 = !{!"function_entry_count", i64 0}
!133 = !{!"function_entry_count", i64 14}
!134 = !{!"VP", i32 0, i64 14, i64 2318097047455832109, i64 14}
!135 = !{!"VP", i32 0, i64 14, i64 7194718800482560965, i64 14}
!136 = !{!"function_entry_count", i64 42}
!137 = !{!79, !86, i64 368}
!138 = !{!"function_entry_count", i64 29851}
!139 = !{!83, !83, i64 0}
!140 = !{!"branch_weights", i32 0, i32 29851}
!141 = !{!"VP", i32 0, i64 29851, i64 -604578461294160466, i64 29851}
!142 = !{!"VP", i32 0, i64 29851, i64 -2710304270775502497, i64 29851}
!143 = !{!"VP", i32 0, i64 29851, i64 6599139582030406100, i64 29851}
!144 = !{!"VP", i32 0, i64 29851, i64 -6103451104460992262, i64 29851}
!145 = !{!"VP", i32 0, i64 29851, i64 5252787397132862861, i64 29851}
!146 = !{!"branch_weights", i32 5664, i32 24187}
!147 = !{!"VP", i32 0, i64 24187, i64 -1063818360559479977, i64 24187}
!148 = !{!"VP", i32 0, i64 24187, i64 7918534656437768524, i64 24187}
!149 = !{!"function_entry_count", i64 423190}
!150 = !{!80, !99, i64 320}
!151 = !{!"branch_weights", i32 423190, i32 0}
!152 = !{!"VP", i32 0, i64 423190, i64 807462341575192572, i64 423190}
!153 = !{!"branch_weights", i32 160657, i32 262533}
!154 = !{!"VP", i32 0, i64 160657, i64 -1244769862664253517, i64 160657}
!155 = !{!"VP", i32 0, i64 160657, i64 5252787397132862861, i64 160657}
!156 = !{!"branch_weights", i32 24187, i32 136470}
!157 = !{!"VP", i32 0, i64 136470, i64 -1063818360559479977, i64 136470}
!158 = !{!"VP", i32 0, i64 136470, i64 -2787738682491994990, i64 136470}
!159 = !{!"VP", i32 0, i64 136470, i64 7918534656437768524, i64 136470}
!160 = !{!"VP", i32 0, i64 29851, i64 -991796565718197789, i64 29851}
!161 = !{!"VP", i32 0, i64 29851, i64 -587917090741629528, i64 29851}
!162 = !{!"VP", i32 0, i64 24187, i64 -2787738682491994990, i64 24187}
!163 = !{!"VP", i32 0, i64 29851, i64 3037569434186820204, i64 29851}
!164 = !{!"VP", i32 0, i64 29851, i64 3787174768168837400, i64 29851}
!165 = !{!"VP", i32 0, i64 29851, i64 252768055566950101, i64 29851}
!166 = !{!"VP", i32 0, i64 29851, i64 -8833983005948086323, i64 29851}
!167 = !{!"function_entry_count", i64 339573}
!168 = !{!"VP", i32 0, i64 339573, i64 -1724007343817383860, i64 339573}
!169 = !{!170, !82, i64 0}
!170 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !82, i64 0}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE: argument 0"}
!173 = distinct !{!173, !"_ZNK11xalanc_1_105XPath7executeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE"}
!174 = !{!"VP", i32 0, i64 339573, i64 -6410307884929493294, i64 339573}
!175 = !{!"VP", i32 0, i64 339573, i64 8453500335362080052, i64 339573}
!176 = !{!"VP", i32 0, i64 339573, i64 -7584622325260852241, i64 339573}
!177 = !{!178, !82, i64 24}
!178 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!179 = !{!"branch_weights", i32 339573, i32 0}
!180 = !{!"VP", i32 0, i64 339573, i64 -7410469269975506105, i64 339573}
!181 = !{!"VP", i32 0, i64 339573, i64 -4171607645886912631, i64 339573}
!182 = !{!183, !82, i64 8}
!183 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !82, i64 8}
!184 = !{!109, !86, i64 16}
!185 = !{!109, !82, i64 24}
!186 = !{!109, !82, i64 0}
!187 = !{!"branch_weights", i32 322682, i32 16891}
!188 = !{!"VP", i32 0, i64 16891, i64 -1724007343817383860, i64 16891}
!189 = !{!"VP", i32 0, i64 16891, i64 -587917090741629528, i64 16891}
!190 = !{!"branch_weights", i32 6851, i32 10040}
!191 = !{!"VP", i32 0, i64 6851, i64 1570881659777875773, i64 6851}
!192 = !{!"VP", i32 0, i64 339573, i64 8689308561986926677, i64 339573}
!193 = !{!"VP", i32 0, i64 339573, i64 6958640459697202946, i64 339573}
!194 = !{!"VP", i32 0, i64 16891, i64 6958640459697202946, i64 16891}
!195 = !{!"function_entry_count", i64 6851}
!196 = !{!"VP", i32 0, i64 6851, i64 -2021344457364225596, i64 6851}
!197 = !{!198, !86, i64 16}
!198 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEE", !82, i64 0, !86, i64 8, !86, i64 16, !82, i64 24}
!199 = !{!"branch_weights", i32 2, i32 6849}
!200 = !{!"branch_weights", i32 2, i32 0}
!201 = !{!"VP", i32 0, i64 6851, i64 513632834810131310, i64 6851}
!202 = !{!"branch_weights", i32 1, i32 6850}
!203 = !{!"branch_weights", i32 6851, i32 0}
!204 = !{!205, !82, i64 336}
!205 = !{!"_ZTSN11xalanc_1_108ElemSortE", !80, i64 0, !82, i64 328, !82, i64 336, !82, i64 344, !82, i64 352, !82, i64 360}
!206 = !{!"branch_weights", i32 20523, i32 0}
!207 = !{!205, !82, i64 344}
!208 = !{!"branch_weights", i32 0, i32 20523}
!209 = !{!210, !82, i64 24}
!210 = !{!"_ZTSN11xalanc_1_103AVTE", !82, i64 8, !86, i64 16, !82, i64 24, !95, i64 32, !82, i64 40}
!211 = !{!"branch_weights", i32 0, i32 197105}
!212 = !{!210, !95, i64 32}
!213 = !{!214, !95, i64 32}
!214 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !109, i64 0, !95, i64 32}
!215 = !{!"branch_weights", i32 1, i32 20522}
!216 = !{!"branch_weights", i32 20522, i32 0}
!217 = !{!205, !82, i64 352}
!218 = !{!"branch_weights", i32 10, i32 20513}
!219 = !{!"branch_weights", i32 20513, i32 0}
!220 = !{!205, !82, i64 360}
!221 = !{!205, !82, i64 328}
!222 = !{!"branch_weights", i32 13673, i32 6850}
!223 = distinct !{!223, !116, !117}
!224 = !{!"VP", i32 0, i64 6851, i64 -6103451104460992262, i64 6851}
!225 = !{!"VP", i32 0, i64 6851, i64 3787174768168837400, i64 6851}
!226 = !{!"VP", i32 0, i64 6851, i64 1667259618122374371, i64 6851}
!227 = !{!198, !86, i64 8}
!228 = !{!"branch_weights", i32 0, i32 6851}
!229 = !{!198, !82, i64 24}
!230 = !{!"branch_weights", i32 6851, i32 13672}
!231 = distinct !{!231, !116, !117}
!232 = !{!"function_entry_count", i64 156059}
!233 = !{!"branch_weights", i32 8, i32 6}
!234 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!235 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!236 = !{!"branch_weights", i32 6, i32 0}
!237 = !{!"branch_weights", i32 0, i32 8}
!238 = !{!"VP", i32 0, i64 8, i64 8345045103670217670, i64 8}
!239 = !{!"function_entry_count", i64 6}
!240 = !{!"branch_weights", i32 0, i32 6}
!241 = !{!"branch_weights", i32 191, i32 97}
!242 = distinct !{!242, !116, !117}
!243 = distinct !{!243, !116, !117}
!244 = distinct !{!244, !116, !117}
!245 = distinct !{!245, !116, !117}
!246 = !{!"function_entry_count", i64 2}
!247 = !{!198, !82, i64 0}
!248 = !{!"branch_weights", i32 0, i32 2}
!249 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!250 = !{!"function_entry_count", i64 3}
!251 = !{!"branch_weights", i32 1, i32 2}
!252 = !{!"branch_weights", i32 1, i32 0}
!253 = distinct !{!253, !116, !117}
!254 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!255 = distinct !{!255, !116, !117}
!256 = distinct !{!256, !116, !117}
!257 = distinct !{!257, !116, !117}
!258 = distinct !{!258, !116, !117}
!259 = distinct !{!259, !116, !117}
!260 = distinct !{!260, !116, !117}
!261 = !{!"function_entry_count", i64 20523}
