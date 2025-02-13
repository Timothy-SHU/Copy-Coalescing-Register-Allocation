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

$_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv = comdat any

$_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv = comdat any

$_ZNK11xalanc_1_1010XalanQName7isValidEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE = comdat any

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

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #8
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) @_ZN11xalanc_1_10L13s_defaultModeE, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, ptr nonnull @_ZN11xalanc_1_10L13s_defaultModeE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, i32 noundef %4, i32 noundef %5, i32 noundef 1) #8
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xalanc_1_1018ElemApplyTemplatesE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %12 unwind label %18

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %20, !prof !87

14:                                               ; preds = %91, %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %94, label %106, !prof !89

18:                                               ; preds = %99, %94, %6
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %111

20:                                               ; preds = %12, %91
  %21 = phi i32 [ %92, %91 ], [ 0, %12 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21) #8
          to label %26 unwind label %47

26:                                               ; preds = %20
  %27 = load ptr, ptr @_ZN11xalanc_1_109Constants15ATTRNAME_SELECTE, align 8
  %28 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(36) %27) #8
          to label %29 unwind label %47

29:                                               ; preds = %26
  br i1 %28, label %30, label %49, !prof !90

30:                                               ; preds = %29
  %31 = load ptr, ptr %0, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
          to label %35 unwind label %47

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 8, !tbaa !60
  %37 = getelementptr inbounds ptr, ptr %36, i64 5
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21) #8
          to label %40 unwind label %47

40:                                               ; preds = %35
  %41 = load ptr, ptr %1, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 21
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %34, ptr noundef %39, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #8
          to label %45 unwind label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::ElemForEach", ptr %0, i64 0, i32 1
  store ptr %44, ptr %46, align 8, !tbaa !88
  br label %91

47:                                               ; preds = %87, %84, %78, %73, %70, %65, %58, %53, %49, %40, %35, %30, %26, %20
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %111

49:                                               ; preds = %29
  %50 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_MODEE, align 8
  %51 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(36) %50) #8
          to label %52 unwind label %47

52:                                               ; preds = %49
  br i1 %51, label %53, label %78

53:                                               ; preds = %52
  %54 = load ptr, ptr %3, align 8, !tbaa !60
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21) #8
          to label %58 unwind label %47

58:                                               ; preds = %53
  %59 = tail call noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
  %60 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %59) #8
  %61 = load ptr, ptr %0, align 8, !tbaa !60
  %62 = getelementptr inbounds ptr, ptr %61, i64 4
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
          to label %65 unwind label %47

65:                                               ; preds = %58
  %66 = load ptr, ptr %1, align 8, !tbaa !60
  %67 = getelementptr inbounds ptr, ptr %66, i64 41
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(80) %60, ptr noundef %64, i1 noundef zeroext false) #8
          to label %70 unwind label %47

70:                                               ; preds = %65
  store ptr %69, ptr %7, align 8, !tbaa !63
  %71 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %69) #8
          to label %72 unwind label %47

72:                                               ; preds = %70
  br i1 %71, label %91, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %3, align 8, !tbaa !60
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21) #8
          to label %87 unwind label %47

78:                                               ; preds = %52
  %79 = load ptr, ptr %0, align 8, !tbaa !60
  %80 = getelementptr inbounds ptr, ptr %79, i64 5
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef zeroext i1 %81(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %21, ptr noundef nonnull align 8 dereferenceable(16) %1) #8
          to label %83 unwind label %47

83:                                               ; preds = %78
  br i1 %82, label %91, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr @_ZN11xalanc_1_109Constants43ELEMNAME_APPLY_TEMPLATES_WITH_PREFIX_STRINGE, align 8
  %86 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %85) #8
          to label %87 unwind label %47

87:                                               ; preds = %84, %73
  %88 = phi i32 [ 62, %73 ], [ 74, %84 ]
  %89 = phi ptr [ %25, %73 ], [ %86, %84 ]
  %90 = phi ptr [ %77, %73 ], [ %25, %84 ]
  invoke void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %88, ptr noundef %89, ptr noundef %90) #8
          to label %91 unwind label %47

91:                                               ; preds = %87, %72, %83, %45
  %92 = add nuw i32 %21, 1
  %93 = icmp eq i32 %92, %11
  br i1 %93, label %14, label %20, !prof !91, !llvm.loop !92

94:                                               ; preds = %14
  %95 = load ptr, ptr %0, align 8, !tbaa !60
  %96 = getelementptr inbounds ptr, ptr %95, i64 4
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
          to label %99 unwind label %18

99:                                               ; preds = %94
  %100 = load ptr, ptr @_ZN11xalanc_1_109Constants15PSEUDONAME_NODEE, align 8, !tbaa !94
  %101 = load ptr, ptr %1, align 8, !tbaa !60
  %102 = getelementptr inbounds ptr, ptr %101, i64 20
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %98, ptr noundef nonnull align 8 dereferenceable(36) %100, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true, i1 noundef zeroext true) #8
          to label %105 unwind label %18

105:                                              ; preds = %99
  store ptr %104, ptr %15, align 8, !tbaa !88
  br label %106

106:                                              ; preds = %105, %14
  %107 = load ptr, ptr %7, align 8, !tbaa !63
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110, !prof !95

109:                                              ; preds = %106
  store ptr @_ZN11xalanc_1_10L13s_defaultModeE, ptr %7, align 8, !tbaa !63
  br label %110

110:                                              ; preds = %109, %106
  ret void

111:                                              ; preds = %47, %18
  %112 = phi { ptr, i32 } [ %48, %47 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #10
  resume { ptr, i32 } %112
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat !prof !96 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %0) #8
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1504) ptr @_ZNK11xalanc_1_1019ElemTemplateElement13getStylesheetEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #6 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK11xalanc_1_1010Stylesheet13getNamespacesEv(ptr noundef nonnull align 8 dereferenceable(1504) %0) local_unnamed_addr #6 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %0, i64 0, i32 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName7isValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #8
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement5errorERNS_29StylesheetConstructionContextENS_13XalanMessages5CodesEPKtS6_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 comdat align 2 !prof !101 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  br i1 %2, label %5, label %3, !prof !102

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #8
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #6 align 2 !prof !59 {
  tail call void @_ZN11xalanc_1_1011ElemForEachD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1018ElemApplyTemplatesD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #6 align 2 {
  tail call void @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018ElemApplyTemplates14getElementNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !103 {
  %2 = load ptr, ptr @_ZN11xalanc_1_109Constants43ELEMNAME_APPLY_TEMPLATES_WITH_PREFIX_STRINGE, align 8, !tbaa !94
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 align 2 !prof !104 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
  br i1 %4, label %11, label %5, !prof !105

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %1, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 57
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %7) #8
  br label %11

11:                                               ; preds = %5, %2
  %12 = load ptr, ptr %1, align 8, !tbaa !60
  %13 = getelementptr inbounds ptr, ptr %12, i64 134
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0) #8
  %15 = load ptr, ptr %0, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  ret ptr %18
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #5 comdat align 2 !prof !106 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef 32) #8
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 align 2 !prof !104 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %6 = load ptr, ptr %1, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 162
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %9 = load ptr, ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 39
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %12 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
  br i1 %12, label %17, label %13, !prof !105

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 58
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load ptr, ptr %1, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 86
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %21 = load ptr, ptr %1, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 135
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #5 align 2 !prof !107 {
  %4 = tail call noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %2) #8
  %5 = icmp eq i32 %4, 20
  br i1 %5, label %23, label %6, !prof !108

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 38
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %14 = load ptr, ptr %1, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 160
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %13) #8
  %17 = load ptr, ptr %1, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 10
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
  %20 = load ptr, ptr %1, align 8, !tbaa !60
  %21 = getelementptr inbounds ptr, ptr %20, i64 85
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %23

23:                                               ; preds = %3, %9
  %24 = phi i64 [ 90, %9 ], [ 8, %3 ]
  %25 = load ptr, ptr %1, align 8, !tbaa !60
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %29

29:                                               ; preds = %23, %6
  %30 = phi ptr [ %7, %6 ], [ %28, %23 ]
  ret ptr %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv(ptr noundef nonnull align 8 dereferenceable(322) %0) local_unnamed_addr #6 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !110
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 align 2 !prof !111 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 161
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8, !prof !112

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %25, %18 ], [ %6, %2 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %9) #8
  %13 = load ptr, ptr %0, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 34
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %0, ptr noundef null, ptr noundef nonnull %9) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27, !prof !113

18:                                               ; preds = %8
  %19 = load ptr, ptr %1, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %22 = load ptr, ptr %1, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 161
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !prof !114, !llvm.loop !115

27:                                               ; preds = %18, %8, %2
  %28 = phi ptr [ null, %2 ], [ %16, %8 ], [ null, %18 ]
  ret ptr %28
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 align 2 !prof !104 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(322) %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !116

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 89
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %27

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 38
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %17 = load ptr, ptr %1, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 160
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %16) #8
  %20 = load ptr, ptr %1, align 8, !tbaa !60
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  %23 = load ptr, ptr %1, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 85
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %26 = tail call noundef ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %27

27:                                               ; preds = %12, %8
  %28 = phi ptr [ %6, %8 ], [ %26, %12 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ElemApplyTemplates16childTypeAllowedEi(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !117 {
  %3 = icmp eq i32 %1, 21
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  ret i1 %5
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
declare void @_ZN11xalanc_1_1011ElemForEach18processSortElementERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement18setDefaultTemplateEb(ptr noundef nonnull align 8 dereferenceable(322), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011ElemForEach16postConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

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
declare noundef ptr @_ZNK11xalanc_1_1011ElemForEach8getXPathEj(ptr noundef nonnull align 8 dereferenceable(376), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019ElemTemplateElement28findTemplateToTransformChildERNS_26StylesheetExecutionContextERKS0_PS3_PNS_9XalanNodeENS6_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(322), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019ElemTemplateElement26namespacesPostConstructionERNS_29StylesheetConstructionContextERKNS_17NamespacesHandlerERS3_(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1011ElemForEach31createSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1011ElemForEach32releaseSelectedAndSortedNodeListERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1011ElemForEach12sortChildrenERNS_26StylesheetExecutionContextERKNS_15NodeRefListBaseERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !96 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #8
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !118 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #8
  %4 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #8
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %4) #8
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !120 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !121
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !123 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !125 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE(ptr noundef nonnull align 8 dereferenceable(322) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 8, !tbaa !127
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ElemApplyTemplates.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1011ElemForEachC2ERNS_29StylesheetConstructionContextERNS_10StylesheetEiii, i64 32}
!36 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesC2ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, i64 27}
!37 = !{ptr @_ZN11xalanc_1_106equalsEPKtRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, i64 1899}
!38 = !{ptr @_ZNK11xalanc_1_1010XalanQName7isValidEv, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 300}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!42 = !{ptr @_ZN11xalanc_1_1018ElemApplyTemplatesD2Ev, ptr @_ZN11xalanc_1_1011ElemForEachD2Ev, i64 32}
!43 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement12startElementERNS_26StylesheetExecutionContextE, i64 309722}
!44 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates12startElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv, i64 309722}
!45 = !{ptr @_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv, ptr @_ZNK11xalanc_1_1019ElemTemplateElement7getFlagENS0_6eFlagsE, i64 619444}
!46 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement17isDefaultTemplateEv, i64 309722}
!47 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates10endElementERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement10endElementERNS_26StylesheetExecutionContextE, i64 309722}
!48 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement11getXSLTokenEv, i64 229387}
!49 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1019ElemTemplateElement25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKS0_, i64 1}
!50 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25getNextChildElemToExecuteERNS_26StylesheetExecutionContextEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE, i64 229386}
!51 = !{ptr @_ZNK11xalanc_1_1018ElemApplyTemplates26getFirstChildElemToExecuteERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1018ElemApplyTemplates25findNextTemplateToExecuteERNS_26StylesheetExecutionContextE, i64 309721}
!52 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, i64 1899}
!53 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 1899}
!54 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_PKt, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, i64 1899}
!55 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 807446}
!56 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtS2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 403723}
!57 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 32}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !68, i64 376}
!64 = !{!"_ZTSN11xalanc_1_1018ElemApplyTemplatesE", !65, i64 0, !68, i64 376}
!65 = !{!"_ZTSN11xalanc_1_1011ElemForEachE", !66, i64 0, !68, i64 328, !86, i64 336, !72, i64 368}
!66 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !67, i64 0, !68, i64 8, !70, i64 16, !81, i64 248, !68, i64 256, !68, i64 264, !68, i64 272, !69, i64 280, !82, i64 288, !85, i64 320}
!67 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !62, i64 0}
!70 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !71, i64 0, !73, i64 32, !74, i64 64, !75, i64 96}
!71 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!72 = !{!"long", !69, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !68, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!75 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !76, i64 0, !77, i64 1, !68, i64 8, !78, i64 16, !72, i64 24, !72, i64 32, !79, i64 40, !79, i64 64, !80, i64 88, !72, i64 120, !72, i64 128}
!76 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!77 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!78 = !{!"float", !69, i64 0}
!79 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !68, i64 0, !68, i64 8, !68, i64 16}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !68, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!81 = !{!"int", !69, i64 0}
!82 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !83, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!83 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !84, i64 0}
!84 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!85 = !{!"short", !69, i64 0}
!86 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_8ElemSortENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!87 = !{!"branch_weights", i32 6, i32 27}
!88 = !{!65, !68, i64 328}
!89 = !{!"branch_weights", i32 7, i32 27}
!90 = !{!"branch_weights", i32 27, i32 1}
!91 = !{!"branch_weights", i32 27, i32 0}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!68, !68, i64 0}
!95 = !{!"branch_weights", i32 33, i32 1}
!96 = !{!"function_entry_count", i64 1899}
!97 = !{!"function_entry_count", i64 962142}
!98 = !{!66, !68, i64 8}
!99 = !{!"function_entry_count", i64 259}
!100 = !{!"function_entry_count", i64 300}
!101 = !{!"function_entry_count", i64 967143541}
!102 = !{!"branch_weights", i32 403628487, i32 563515056}
!103 = !{!"function_entry_count", i64 30}
!104 = !{!"function_entry_count", i64 309722}
!105 = !{!"branch_weights", i32 1, i32 309723}
!106 = !{!"function_entry_count", i64 619444}
!107 = !{!"function_entry_count", i64 229387}
!108 = !{!"branch_weights", i32 229388, i32 1}
!109 = !{!"function_entry_count", i64 46114577}
!110 = !{!66, !81, i64 248}
!111 = !{!"function_entry_count", i64 539109}
!112 = !{!"branch_weights", i32 1, i32 309722}
!113 = !{!"branch_weights", i32 167721, i32 229388}
!114 = !{!"branch_weights", i32 309722, i32 87386}
!115 = distinct !{!115, !93}
!116 = !{!"branch_weights", i32 309723, i32 1}
!117 = !{!"function_entry_count", i64 0}
!118 = !{!"function_entry_count", i64 403723}
!119 = !{!"function_entry_count", i64 3070433834}
!120 = !{!"function_entry_count", i64 1083116306}
!121 = !{!122, !72, i64 8}
!122 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !68, i64 0, !72, i64 8, !72, i64 16, !68, i64 24}
!123 = !{!"function_entry_count", i64 565220908}
!124 = !{!122, !68, i64 24}
!125 = !{!"function_entry_count", i64 6521798493}
!126 = !{!"function_entry_count", i64 417098446}
!127 = !{!66, !85, i64 320}
