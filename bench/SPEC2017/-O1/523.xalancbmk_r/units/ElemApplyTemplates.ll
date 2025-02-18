; ModuleID = 'ElemApplyTemplates.cpp'
source_filename = "ElemApplyTemplates.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemApplyTemplates" = type { %"class.xalanc_1_10::ElemForEach", ptr }
%"class.xalanc_1_10::ElemForEach" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, %"class.xalanc_1_10::XalanVector.4", i64 }
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
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanVector.6", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.7", i64, %"class.xalanc_1_10::XalanDeque", %"class.xalanc_1_10::XalanDeque.9", i8, %"class.xalanc_1_10::XalanMap.11", ptr, %"class.xalanc_1_10::XalanVector.16", %"class.xalanc_1_10::XalanMap.17", %"class.xalanc_1_10::XalanVector.22", double, %"class.xalanc_1_10::XalanMap.23", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::XalanMap.23", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::XalanVector.26", %"class.xalanc_1_10::XalanVector.26", i64, %"class.xalanc_1_10::XalanVector.27", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.8", %"class.xalanc_1_10::XalanVector.8" }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.9" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.10", %"class.xalanc_1_10::XalanVector.10" }
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.11" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.14", %"class.xalanc_1_10::XalanList.14", %"class.xalanc_1_10::XalanVector.15", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.14" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.16" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.17" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.18", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.20", %"class.xalanc_1_10::XalanList.20", %"class.xalanc_1_10::XalanVector.21", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.18" = type { i8 }
%"class.xalanc_1_10::XalanList.20" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.22" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.23" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.24", %"class.xalanc_1_10::XalanList.24", %"class.xalanc_1_10::XalanVector.25", i64, i64 }
%"class.xalanc_1_10::XalanList.24" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.25" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.26" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }

@_ZN11xalanc_1_10L13s_defaultModeE = internal global %"class.xalanc_1_10::XalanQNameByValue" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1018ElemApplyTemplatesE = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018ElemApplyTemplatesE, ptr @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev, ptr @_ZN11xalanc_1_1018ElemApplyTemplatesD0Ev, ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates14getElementNameEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE, ptr @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb, ptr @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv, ptr @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_, ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_, ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates16childTypeAllowedEi, ptr @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_, ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE] }, align 8
@_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants13ATTRNAME_MODEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants43ELEMNAME_APPLY_TEMPLATES_WITH_PREFIX_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants15PSEUDONAME_NODEE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018ElemApplyTemplatesE = dso_local constant [36 x i8] c"N11xalanc_1_1018ElemApplyTemplatesE\00", align 1
@_ZTIN11xalanc_1_1011ElemForEachE = external constant ptr
@_ZTIN11xalanc_1_1018ElemApplyTemplatesE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018ElemApplyTemplatesE, ptr @_ZTIN11xalanc_1_1011ElemForEachE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElemApplyTemplates.cpp, ptr null }]

@_ZN11xalanc_1_1018ElemApplyTemplatesC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii
@_ZN11xalanc_1_1018ElemApplyTemplatesD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 1)
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1018ElemApplyTemplatesE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !56
  %8 = load ptr, ptr %3, align 8, !tbaa !53
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %18, !prof !80

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %20, !prof !81

14:                                               ; preds = %122, %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %125, label %137, !prof !81

18:                                               ; preds = %130, %125, %6
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %142

20:                                               ; preds = %12, %122
  %21 = phi i32 [ %123, %122 ], [ 0, %12 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !53
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21)
          to label %26 unwind label %57, !prof !83

26:                                               ; preds = %20
  %27 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %27, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %27, i64 0, i32 3
  %30 = load i64, ptr %28, align 8, !tbaa !84
  %31 = icmp eq i64 %30, 0
  %32 = load ptr, ptr %29, align 8
  %33 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %32, !prof !86
  %34 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %33)
          to label %35 unwind label %57, !prof !87

35:                                               ; preds = %26
  %36 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %25)
          to label %37 unwind label %57, !prof !87

37:                                               ; preds = %35
  %38 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %33, i32 noundef %34, ptr noundef %25, i32 noundef %36)
          to label %39 unwind label %57, !prof !87

39:                                               ; preds = %37
  br i1 %38, label %40, label %59, !prof !87

40:                                               ; preds = %39
  %41 = load ptr, ptr %0, align 8, !tbaa !53
  %42 = getelementptr inbounds ptr, ptr %41, i64 4
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %45 unwind label %57, !prof !88

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8, !tbaa !53
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21)
          to label %50 unwind label %57, !prof !89

50:                                               ; preds = %45
  %51 = load ptr, ptr %1, align 8, !tbaa !53
  %52 = getelementptr inbounds ptr, ptr %51, i64 21
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %44, ptr noundef %49, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %55 unwind label %57, !prof !90

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  store ptr %54, ptr %56, align 8, !tbaa !82
  br label %122

57:                                               ; preds = %118, %96, %91, %70, %68, %59, %37, %35, %26, %104, %99, %85, %78, %73, %50, %45, %40, %20
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %142

59:                                               ; preds = %39
  %60 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_MODEE, align 8
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 1
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 3
  %63 = load i64, ptr %61, align 8, !tbaa !84
  %64 = icmp eq i64 %63, 0
  %65 = load ptr, ptr %62, align 8
  %66 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %65
  %67 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %66)
          to label %68 unwind label %57

68:                                               ; preds = %59
  %69 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %25)
          to label %70 unwind label %57

70:                                               ; preds = %68
  %71 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %66, i32 noundef %67, ptr noundef %25, i32 noundef %69)
          to label %72 unwind label %57

72:                                               ; preds = %70
  br i1 %71, label %73, label %104

73:                                               ; preds = %72
  %74 = load ptr, ptr %3, align 8, !tbaa !53
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21)
          to label %78 unwind label %57

78:                                               ; preds = %73
  %79 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !91
  %81 = load ptr, ptr %0, align 8, !tbaa !53
  %82 = getelementptr inbounds ptr, ptr %81, i64 4
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %85 unwind label %57

85:                                               ; preds = %78
  %86 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %80, i64 0, i32 8
  %87 = load ptr, ptr %1, align 8, !tbaa !53
  %88 = getelementptr inbounds ptr, ptr %87, i64 41
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(80) %86, ptr noundef %84, i1 noundef zeroext false)
          to label %91 unwind label %57

91:                                               ; preds = %85
  store ptr %90, ptr %7, align 8, !tbaa !56
  %92 = load ptr, ptr %90, align 8, !tbaa !53
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef nonnull align 8 dereferenceable(36) ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %96 unwind label %57

96:                                               ; preds = %91
  %97 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %95)
          to label %98 unwind label %57

98:                                               ; preds = %96
  br i1 %97, label %122, label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %3, align 8, !tbaa !53
  %101 = getelementptr inbounds ptr, ptr %100, i64 5
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21)
          to label %118 unwind label %57

104:                                              ; preds = %72
  %105 = load ptr, ptr %0, align 8, !tbaa !53
  %106 = getelementptr inbounds ptr, ptr %105, i64 5
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef zeroext i1 %107(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %109 unwind label %57

109:                                              ; preds = %104
  br i1 %108, label %122, label %110

110:                                              ; preds = %109
  %111 = load ptr, ptr @_ZN11xalanc_1_109Constants43ELEMNAME_APPLY_TEMPLATES_WITH_PREFIX_STRINGE, align 8
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %111, i64 0, i32 1
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %111, i64 0, i32 3
  %114 = load i64, ptr %112, align 8, !tbaa !84
  %115 = icmp eq i64 %114, 0
  %116 = load ptr, ptr %113, align 8
  %117 = select i1 %115, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %116
  br label %118

118:                                              ; preds = %99, %110
  %119 = phi i32 [ 74, %110 ], [ 62, %99 ]
  %120 = phi ptr [ %117, %110 ], [ %25, %99 ]
  %121 = phi ptr [ %25, %110 ], [ %103, %99 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %119, ptr noundef %120, ptr noundef %121)
          to label %122 unwind label %57

122:                                              ; preds = %118, %98, %109, %55
  %123 = add nuw i32 %21, 1
  %124 = icmp eq i32 %123, %11
  br i1 %124, label %14, label %20, !prof !87, !llvm.loop !92

125:                                              ; preds = %14
  %126 = load ptr, ptr %0, align 8, !tbaa !53
  %127 = getelementptr inbounds ptr, ptr %126, i64 4
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(322) %0)
          to label %130 unwind label %18, !prof !95

130:                                              ; preds = %125
  %131 = load ptr, ptr @_ZN11xalanc_1_109Constants15PSEUDONAME_NODEE, align 8, !tbaa !96
  %132 = load ptr, ptr %1, align 8, !tbaa !53
  %133 = getelementptr inbounds ptr, ptr %132, i64 20
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %129, ptr noundef nonnull align 8 dereferenceable(36) %131, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %136 unwind label %18, !prof !97

136:                                              ; preds = %130
  store ptr %135, ptr %15, align 8, !tbaa !82
  br label %137

137:                                              ; preds = %136, %14
  %138 = load ptr, ptr %7, align 8, !tbaa !56
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !98

140:                                              ; preds = %137
  store ptr @_ZN11xalanc_1_10L13s_defaultModeE, ptr %7, align 8, !tbaa !56
  br label %141

141:                                              ; preds = %140, %137
  ret void

142:                                              ; preds = %57, %18
  %143 = phi { ptr, i32 } [ %58, %57 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #9
  resume { ptr, i32 } %143
}

declare void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #5 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018ElemApplyTemplatesD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #5 align 2 !prof !99 {
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018ElemApplyTemplates14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !100 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants43ELEMNAME_APPLY_TEMPLATES_WITH_PREFIX_STRINGE, align 8, !tbaa !96
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 !prof !101 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 8, !tbaa !102
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %14, !prof !103

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = getelementptr inbounds ptr, ptr %11, i64 57
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %10), !prof !104
  br label %14

14:                                               ; preds = %8, %2
  %15 = load ptr, ptr %1, align 8, !tbaa !53
  %16 = getelementptr inbounds ptr, ptr %15, i64 134
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0), !prof !105
  %18 = load ptr, ptr %0, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !106
  ret ptr %21
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 !prof !101 {
  %3 = load ptr, ptr %1, align 8, !tbaa !53
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !107
  %6 = load ptr, ptr %1, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %6, i64 162
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !108
  %9 = load ptr, ptr %0, align 8, !tbaa !53
  %10 = getelementptr inbounds ptr, ptr %9, i64 39
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !109
  %12 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %13 = load i16, ptr %12, align 8, !tbaa !102
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20, !prof !103

16:                                               ; preds = %2
  %17 = load ptr, ptr %1, align 8, !tbaa !53
  %18 = getelementptr inbounds ptr, ptr %17, i64 58
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !110
  br label %20

20:                                               ; preds = %16, %2
  %21 = load ptr, ptr %1, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %21, i64 86
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !111
  %24 = load ptr, ptr %1, align 8, !tbaa !53
  %25 = getelementptr inbounds ptr, ptr %24, i64 135
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !112
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #7 align 2 !prof !113 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !114
  %6 = icmp eq i32 %5, 20
  br i1 %6, label %7, label %34, !prof !115

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !53
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !116
  br label %11

11:                                               ; preds = %30, %7
  %12 = load ptr, ptr %1, align 8, !tbaa !53
  %13 = getelementptr inbounds ptr, ptr %12, i64 161
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !117
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %30, !prof !118

17:                                               ; preds = %11
  %18 = load ptr, ptr %1, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 7
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %15), !prof !119
  %21 = load ptr, ptr %0, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %21, i64 34
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef null, ptr noundef nonnull %15), !prof !120
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30, !prof !121

26:                                               ; preds = %17
  %27 = load ptr, ptr %1, align 8, !tbaa !53
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !122
  br label %30

30:                                               ; preds = %26, %17, %11
  %31 = phi ptr [ %24, %26 ], [ %24, %17 ], [ null, %11 ]
  %32 = icmp eq ptr %31, null
  %33 = and i1 %16, %32
  br i1 %33, label %11, label %55, !prof !123, !llvm.loop !124

34:                                               ; preds = %3
  %35 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 8, !tbaa !53
  %39 = getelementptr inbounds ptr, ptr %38, i64 38
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %42 = load ptr, ptr %1, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %42, i64 160
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %41)
  %45 = load ptr, ptr %1, align 8, !tbaa !53
  %46 = getelementptr inbounds ptr, ptr %45, i64 10
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %41)
  %48 = load ptr, ptr %1, align 8, !tbaa !53
  %49 = getelementptr inbounds ptr, ptr %48, i64 85
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %51 = load ptr, ptr %1, align 8, !tbaa !53
  %52 = getelementptr inbounds ptr, ptr %51, i64 90
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %54 = tail call noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %55

55:                                               ; preds = %30, %37, %34
  %56 = phi ptr [ %54, %37 ], [ %35, %34 ], [ %31, %30 ]
  ret ptr %56
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 align 2 !prof !99 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = load ptr, ptr %1, align 8, !tbaa !53
  %5 = getelementptr inbounds ptr, ptr %4, i64 161
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !125
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %22, !prof !118

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !53
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %7), !prof !126
  %13 = load ptr, ptr %0, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %13, i64 34
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef null, ptr noundef nonnull %7), !prof !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !121

18:                                               ; preds = %9
  %19 = load ptr, ptr %1, align 8, !tbaa !53
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !128
  br label %22

22:                                               ; preds = %3, %9, %18
  %23 = phi ptr [ %16, %18 ], [ %16, %9 ], [ null, %3 ]
  %24 = icmp eq ptr %23, null
  %25 = and i1 %8, %24
  br i1 %25, label %3, label %26, !prof !123, !llvm.loop !124

26:                                               ; preds = %22
  ret ptr %23
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 !prof !101 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0), !prof !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !103

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !53
  %10 = getelementptr inbounds ptr, ptr %9, i64 89
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %49

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %13, i64 38
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !130
  %17 = load ptr, ptr %1, align 8, !tbaa !53
  %18 = getelementptr inbounds ptr, ptr %17, i64 160
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %16), !prof !131
  %20 = load ptr, ptr %1, align 8, !tbaa !53
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %16), !prof !132
  %23 = load ptr, ptr %1, align 8, !tbaa !53
  %24 = getelementptr inbounds ptr, ptr %23, i64 85
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !133
  br label %26

26:                                               ; preds = %45, %12
  %27 = load ptr, ptr %1, align 8, !tbaa !53
  %28 = getelementptr inbounds ptr, ptr %27, i64 161
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !134
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %45, !prof !118

32:                                               ; preds = %26
  %33 = load ptr, ptr %1, align 8, !tbaa !53
  %34 = getelementptr inbounds ptr, ptr %33, i64 7
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %30), !prof !135
  %36 = load ptr, ptr %0, align 8, !tbaa !53
  %37 = getelementptr inbounds ptr, ptr %36, i64 34
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef null, ptr noundef nonnull %30), !prof !136
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45, !prof !121

41:                                               ; preds = %32
  %42 = load ptr, ptr %1, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %42, i64 8
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !137
  br label %45

45:                                               ; preds = %41, %32, %26
  %46 = phi ptr [ %39, %41 ], [ %39, %32 ], [ null, %26 ]
  %47 = icmp eq ptr %46, null
  %48 = and i1 %31, %47
  br i1 %48, label %26, label %49, !prof !123, !llvm.loop !124

49:                                               ; preds = %45, %8
  %50 = phi ptr [ %6, %8 ], [ %46, %45 ]
  ret ptr %50
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ElemApplyTemplates16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !99 {
  %3 = icmp eq i32 %1, 21
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  ret i1 %5
}

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019ElemTemplateElement6getURIEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement8isAttrOKEPKtRKN11xercesc_2_713AttributeListEiRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement7executeERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement15executeChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getInvokerERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement12isWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getNameAttributeEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement15addToStylesheetERNS_29StylesheetConstructionContextERNS_10StylesheetE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504)) unnamed_addr #1

declare void @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement20beginExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1019ElemTemplateElement18endExecuteChildrenERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setFirstChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement16getLastChildElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement18getNextSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement19executeChildElementERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement18setNextSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement22getPreviousSiblingElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement22setPreviousSiblingElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getParentNodeElemEv(ptr noundef nonnull align 8 dereferenceable(322)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement17setParentNodeElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1019ElemTemplateElement15appendChildElemEPS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj(ptr noundef nonnull align 8 dereferenceable(376), i32 noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ElemApplyTemplates.cpp() #8 section ".text.startup" !prof !138 !PGOFuncName !139 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) @_ZN11xalanc_1_10L13s_defaultModeE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, ptr nonnull @_ZN11xalanc_1_10L13s_defaultModeE, ptr nonnull @__dso_handle) #9
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 32}
!36 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 52}
!37 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 26}
!38 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10getLocatorEv, i64 32}
!39 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev, ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, i64 32}
!40 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 309722}
!41 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, i64 309722}
!42 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, i64 309722}
!43 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, i64 309722}
!44 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, i64 168966}
!45 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17getFirstChildElemEv, i64 309722}
!46 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE, i64 309722}
!47 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE, i64 228140}
!48 = !{ptr @_GLOBAL__sub_I_ElemApplyTemplates.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!49 = !{ptr @_GLOBAL__sub_I_ElemApplyTemplates.cpp, ptr @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!50 = !{ptr @_GLOBAL__sub_I_ElemApplyTemplates.cpp, ptr @__cxa_atexit, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 32}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!57, !61, i64 376}
!57 = !{!"_ZTSN11xalanc_1_1018ElemApplyTemplatesE", !58, i64 0, !61, i64 376}
!58 = !{!"_ZTSN11xalanc_1_1011ElemForEachE", !59, i64 0, !61, i64 328, !79, i64 336, !65, i64 368}
!59 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !60, i64 0, !61, i64 8, !63, i64 16, !74, i64 248, !61, i64 256, !61, i64 264, !61, i64 272, !62, i64 280, !75, i64 288, !78, i64 320}
!60 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !55, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !64, i64 0, !66, i64 32, !67, i64 64, !68, i64 96}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !61, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!65 = !{!"long", !62, i64 0}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !61, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !61, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!68 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !69, i64 0, !70, i64 1, !61, i64 8, !71, i64 16, !65, i64 24, !65, i64 32, !72, i64 40, !72, i64 64, !73, i64 88, !65, i64 120, !65, i64 128}
!69 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!70 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!71 = !{!"float", !62, i64 0}
!72 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !61, i64 0, !61, i64 8, !61, i64 16}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !61, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!74 = !{!"int", !62, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !76, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!76 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !77, i64 0}
!77 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!78 = !{!"short", !62, i64 0}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEE", !61, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!80 = !{!"VP", i32 0, i64 32, i64 8253907953441087172, i64 30, i64 8893614577066288799, i64 2}
!81 = !{!"branch_weights", i32 6, i32 26}
!82 = !{!58, !61, i64 328}
!83 = !{!"VP", i32 0, i64 26, i64 5829949526982853143, i64 26}
!84 = !{!85, !65, i64 8}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !61, i64 0, !65, i64 8, !65, i64 16, !61, i64 24}
!86 = !{!"branch_weights", i32 0, i32 26}
!87 = !{!"branch_weights", i32 26, i32 0}
!88 = !{!"VP", i32 0, i64 26, i64 -5610273550909442482, i64 26}
!89 = !{!"VP", i32 0, i64 26, i64 -7250213707570638104, i64 26}
!90 = !{!"VP", i32 0, i64 26, i64 5056957690790192712, i64 26}
!91 = !{!59, !61, i64 8}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"VP", i32 0, i64 6, i64 -5610273550909442482, i64 6}
!96 = !{!61, !61, i64 0}
!97 = !{!"VP", i32 0, i64 6, i64 -3559473485404875525, i64 6}
!98 = !{!"branch_weights", i32 32, i32 0}
!99 = !{!"function_entry_count", i64 0}
!100 = !{!"function_entry_count", i64 30}
!101 = !{!"function_entry_count", i64 309722}
!102 = !{!59, !78, i64 320}
!103 = !{!"branch_weights", i32 309722, i32 0}
!104 = !{!"VP", i32 0, i64 309722, i64 3300596954554966360, i64 309722}
!105 = !{!"VP", i32 0, i64 309722, i64 4336303630697943180, i64 309722}
!106 = !{!"VP", i32 0, i64 309722, i64 -4400194755765648813, i64 309722}
!107 = !{!"VP", i32 0, i64 309722, i64 3787174768168837400, i64 309722}
!108 = !{!"VP", i32 0, i64 309722, i64 3037569434186820204, i64 309722}
!109 = !{!"VP", i32 0, i64 309722, i64 252768055566950101, i64 309722}
!110 = !{!"VP", i32 0, i64 309722, i64 803502727594619635, i64 309722}
!111 = !{!"VP", i32 0, i64 309722, i64 -7600278515891454327, i64 309722}
!112 = !{!"VP", i32 0, i64 309722, i64 5321850962579362954, i64 309722}
!113 = !{!"function_entry_count", i64 229387}
!114 = !{!59, !74, i64 248}
!115 = !{!"branch_weights", i32 229387, i32 0}
!116 = !{!"VP", i32 0, i64 229387, i64 -1244769862664253517, i64 229387}
!117 = !{!"VP", i32 0, i64 300750, i64 5252787397132862861, i64 300750}
!118 = !{!"branch_weights", i32 397107, i32 309722}
!119 = !{!"VP", i32 0, i64 168966, i64 -1063818360559479977, i64 168966}
!120 = !{!"VP", i32 0, i64 168966, i64 -128747015841967898, i64 168966}
!121 = !{!"branch_weights", i32 167720, i32 229387}
!122 = !{!"VP", i32 0, i64 71363, i64 -1244769862664253517, i64 71363}
!123 = !{!"branch_weights", i32 167720, i32 539109}
!124 = distinct !{!124, !93, !94}
!125 = !{!"VP", i32 0, i64 0, i64 5252787397132862861, i64 0}
!126 = !{!"VP", i32 0, i64 0, i64 -1063818360559479977, i64 0}
!127 = !{!"VP", i32 0, i64 0, i64 -128747015841967898, i64 0}
!128 = !{!"VP", i32 0, i64 0, i64 -1244769862664253517, i64 0}
!129 = !{!"VP", i32 0, i64 309722, i64 4167659195022591920, i64 309722}
!130 = !{!"VP", i32 0, i64 309722, i64 -2710304270775502497, i64 309722}
!131 = !{!"VP", i32 0, i64 309722, i64 6599139582030406100, i64 309722}
!132 = !{!"VP", i32 0, i64 309722, i64 -6103451104460992262, i64 309722}
!133 = !{!"VP", i32 0, i64 309722, i64 6261575399063749633, i64 309722}
!134 = !{!"VP", i32 0, i64 406078, i64 5252787397132862861, i64 406078}
!135 = !{!"VP", i32 0, i64 228140, i64 -1063818360559479977, i64 228140}
!136 = !{!"VP", i32 0, i64 228140, i64 -128747015841967898, i64 228140}
!137 = !{!"VP", i32 0, i64 96356, i64 -1244769862664253517, i64 96356}
!138 = !{!"function_entry_count", i64 1}
!139 = !{!"ElemApplyTemplates.cpp;_GLOBAL__sub_I_ElemApplyTemplates.cpp"}
