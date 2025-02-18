; ModuleID = 'XercesDocumentWrapper.cpp'
source_filename = "XercesDocumentWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDocumentWrapper" = type { %"class.xalanc_1_10::XalanDocument", ptr, ptr, %"class.xalanc_1_10::XercesWrapperToXalanNodeMap", %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XercesWrapperNavigatorAllocator", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", %"class.xalanc_1_10::XalanVector.1", ptr, i8, i8, i8, %"class.xalanc_1_10::XercesElementWrapperAllocator", %"class.xalanc_1_10::XercesTextWrapperAllocator", %"class.xalanc_1_10::XercesAttrWrapperAllocator", %"class.xalanc_1_10::XalanMemMgrAutoPtr.8" }
%"class.xalanc_1_10::XalanDocument" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XercesWrapperToXalanNodeMap" = type { %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XercesWrapperNavigatorAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList.0" }
%"class.xalanc_1_10::XalanList.0" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesNodeListWrapper" = type { %"class.xalanc_1_10::XalanNodeList", ptr, ptr }
%"class.xalanc_1_10::XalanNodeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesElementWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.2" }
%"class.xalanc_1_10::ArenaAllocator.2" = type { ptr, i64, %"class.xalanc_1_10::XalanList.3" }
%"class.xalanc_1_10::XalanList.3" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesTextWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.4" }
%"class.xalanc_1_10::ArenaAllocator.4" = type { ptr, i64, %"class.xalanc_1_10::XalanList.5" }
%"class.xalanc_1_10::XalanList.5" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesAttrWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.6" }
%"class.xalanc_1_10::ArenaAllocator.6" = type { ptr, i64, %"class.xalanc_1_10::XalanList.7" }
%"class.xalanc_1_10::XalanList.7" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.8" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" = type { %"struct.std::pair.9" }
%"struct.std::pair.9" = type { ptr, ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker" = type <{ %"class.xalanc_1_10::XercesDOMWalker", ptr, i64, %"class.xalanc_1_10::XalanVector.18", %"class.xalanc_1_10::XalanVector.18", i8, [7 x i8] }>
%"class.xalanc_1_10::XercesDOMWalker" = type { ptr }
%"class.xalanc_1_10::XalanVector.18" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesAttrWrapper" = type { %"class.xalanc_1_10::XalanAttr", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", ptr }
%"class.xalanc_1_10::XalanAttr" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesCDATASectionWrapper" = type { %"class.xalanc_1_10::XalanCDATASection", ptr, ptr }
%"class.xalanc_1_10::XalanCDATASection" = type { %"class.xalanc_1_10::XalanText" }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesCommentWrapper" = type { %"class.xalanc_1_10::XalanComment", ptr, ptr }
%"class.xalanc_1_10::XalanComment" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XercesElementWrapper" = type { %"class.xalanc_1_10::XalanElement", %"class.xalanc_1_10::XalanNodeList", ptr, ptr, %"class.xalanc_1_10::XercesNamedNodeMapWrapper" }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesNamedNodeMapWrapper" = type { %"class.xalanc_1_10::XalanNamedNodeMap", ptr, ptr }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }
%"class.xalanc_1_10::XercesEntityWrapper" = type { %"class.xalanc_1_10::XalanEntity", ptr, ptr, %"class.xalanc_1_10::XercesNodeListWrapper" }
%"class.xalanc_1_10::XalanEntity" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesEntityReferenceWrapper" = type { %"class.xalanc_1_10::XalanEntityReference", ptr, ptr, %"class.xalanc_1_10::XercesNodeListWrapper" }
%"class.xalanc_1_10::XalanEntityReference" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesNotationWrapper" = type { %"class.xalanc_1_10::XalanNotation", ptr, ptr }
%"class.xalanc_1_10::XalanNotation" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesProcessingInstructionWrapper" = type { %"class.xalanc_1_10::XalanProcessingInstruction", ptr, ptr }
%"class.xalanc_1_10::XalanProcessingInstruction" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesTextWrapper" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XercesDocumentTypeWrapper" = type { %"class.xalanc_1_10::XalanDocumentType", ptr, %"class.xalanc_1_10::XercesNamedNodeMapWrapper", %"class.xalanc_1_10::XercesNamedNodeMapWrapper", ptr }
%"class.xalanc_1_10::XalanDocumentType" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType" = type { ptr, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

@_ZTVN11xalanc_1_1021XercesDocumentWrapperE = dso_local unnamed_addr constant { [47 x ptr] } { [47 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XercesDocumentWrapperE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev, ptr @_ZN11xalanc_1_1021XercesDocumentWrapperD0Ev, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper8getIndexEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createElementERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22createDocumentFragmentEv, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper14createTextNodeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createCommentERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper18createCDATASectionERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper27createProcessingInstructionERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createAttributeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper21createEntityReferenceERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper10getDoctypeEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17getImplementationEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getDocumentElementEv, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper10importNodeEPNS_9XalanNodeEb, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createElementNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper17createAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getElementByIdERKNS_14XalanDOMStringE] }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD0Ev, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker9startNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker7endNodeEPKN11xercesc_2_77DOMNodeE, ptr @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XercesDocumentWrapperE = dso_local constant [39 x i8] c"N11xalanc_1_1021XercesDocumentWrapperE\00", align 1
@_ZTIN11xalanc_1_1013XalanDocumentE = external constant ptr
@_ZTIN11xalanc_1_1021XercesDocumentWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XercesDocumentWrapperE, ptr @_ZTIN11xalanc_1_1013XalanDocumentE }, align 8
@_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE = dso_local constant [63 x i8] c"N11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE\00", align 1
@_ZTIN11xalanc_1_1015XercesDOMWalkerE = external constant ptr
@_ZTIN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, ptr @_ZTIN11xalanc_1_1015XercesDOMWalkerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1021XercesDocumentWrapperC1ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1, i1), ptr @_ZN11xalanc_1_1021XercesDocumentWrapperC2ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb
@_ZN11xalanc_1_1021XercesDocumentWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev
@_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC1EPS0_PNS_22XercesWrapperNavigatorEmb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64, i1), ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC2EPS0_PNS_22XercesWrapperNavigatorEmb
@_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapperC2ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %10 unwind label %62

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %2, align 8, !tbaa !41
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %16 unwind label %64

16:                                               ; preds = %10
  %17 = invoke noundef ptr @_ZN11xalanc_1_1030XercesDOMImplementationWrapper6createERN11xercesc_2_713MemoryManagerEPNS1_17DOMImplementationE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %15)
          to label %18 unwind label %64

18:                                               ; preds = %16
  store ptr %1, ptr %11, align 8, !tbaa !81
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !82
  %20 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25)
          to label %21 unwind label %66

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  store ptr null, ptr %22, align 8, !tbaa !83
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds i8, ptr %2, i64 24
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = getelementptr inbounds ptr, ptr %25, i64 6
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %29 unwind label %68

29:                                               ; preds = %21
  %30 = load ptr, ptr %22, align 8, !tbaa !83
  invoke void @_ZN11xalanc_1_1021XercesNodeListWrapperC1EPKN11xercesc_2_711DOMNodeListERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(64) %30)
          to label %31 unwind label %68

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  store ptr %1, ptr %32, align 8, !tbaa !84
  %33 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8, i32 1
  %34 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  %35 = or i1 %3, %4
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 0, i64 32, i1 false)
  store i8 %37, ptr %34, align 8, !tbaa !85
  %38 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  store i8 0, ptr %38, align 1, !tbaa !86
  %39 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 12
  %40 = or i1 %36, %5
  %41 = zext i1 %40 to i8
  store i8 %41, ptr %39, align 2, !tbaa !87
  %42 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25)
          to label %43 unwind label %70

43:                                               ; preds = %31
  %44 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 14
  invoke void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25)
          to label %45 unwind label %72

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 15
  invoke void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 25)
          to label %47 unwind label %74

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  br i1 %3, label %49, label %51

49:                                               ; preds = %47
  %50 = invoke noundef ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %53 unwind label %76

51:                                               ; preds = %47
  %52 = invoke noundef ptr @_ZN11xalanc_1_1018XalanDOMStringPool6createERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15)
          to label %53 unwind label %76

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  store ptr %1, ptr %48, align 8, !tbaa !88
  %55 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16, i32 0, i32 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !89
  %56 = invoke noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %0)
          to label %57 unwind label %78

57:                                               ; preds = %53
  store ptr %56, ptr %22, align 8, !tbaa !83
  %58 = load i8, ptr %34, align 8, !tbaa !85, !range !90, !noundef !91
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %56, i64 0, i32 7
  store i64 1, ptr %61, align 8, !tbaa !92
  invoke void @_ZN11xalanc_1_1021XercesDocumentWrapper17buildWrapperNodesEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
          to label %81 unwind label %78

62:                                               ; preds = %6
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %96

64:                                               ; preds = %16, %10
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %94

66:                                               ; preds = %18
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %92

68:                                               ; preds = %29, %21
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %90

70:                                               ; preds = %31
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %88

72:                                               ; preds = %43
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %86

74:                                               ; preds = %45
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %84

76:                                               ; preds = %51, %49
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %82

78:                                               ; preds = %80, %60, %53
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %48) #18
  br label %82

80:                                               ; preds = %57
  invoke void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull %24, ptr noundef nonnull %0)
          to label %81 unwind label %78

81:                                               ; preds = %60, %80
  ret void

82:                                               ; preds = %78, %76
  %83 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ]
  tail call void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %46) #18
  br label %84

84:                                               ; preds = %82, %74
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %75, %74 ]
  tail call void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %44) #18
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %73, %72 ]
  tail call void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %42) #18
  br label %88

88:                                               ; preds = %86, %70
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %71, %70 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %32) #18
  tail call void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #18
  br label %90

90:                                               ; preds = %88, %68
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %69, %68 ]
  tail call void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #18
  br label %92

92:                                               ; preds = %90, %66
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %67, %66 ]
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  br label %94

94:                                               ; preds = %92, %64
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %65, %64 ]
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %9) #18
  br label %96

96:                                               ; preds = %94, %62
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %63, %62 ]
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %97
}

declare void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xalanc_1_1030XercesDOMImplementationWrapper6createERN11xercesc_2_713MemoryManagerEPNS1_17DOMImplementationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1021XercesNodeListWrapperC1EPKN11xercesc_2_711DOMNodeListERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1031XercesLiaisonXalanDOMStringPool6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1018XalanDOMStringPool6createERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper17buildWrapperNodesEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = alloca %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %13, i64 0, i32 7
  store i64 1, ptr %14, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %13, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #18
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 12
  %17 = load i8, ptr %16, align 2, !tbaa !87, !range !90, !noundef !91
  %18 = icmp ne i8 %17, 0
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC2EPS0_PNS_22XercesWrapperNavigatorEmb(ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull %0, ptr noundef %13, i64 noundef 2, i1 noundef zeroext %18)
  %19 = load ptr, ptr %3, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds i8, ptr %19, i64 24
  %22 = select i1 %20, ptr null, ptr %21
  %23 = invoke noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %9, ptr noundef %22)
          to label %24 unwind label %55

24:                                               ; preds = %11
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !41
  %25 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %2, i64 0, i32 4, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !95
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %2, i64 0, i32 4
  %30 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %2, i64 0, i32 4, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = load ptr, ptr %29, align 8, !tbaa !98
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %24, %28
  %40 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %2, i64 0, i32 3, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !95
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %2, i64 0, i32 3
  %45 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %2, i64 0, i32 3, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !97
  %47 = load ptr, ptr %44, align 8, !tbaa !98
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %46)
          to label %54 unwind label %51

51:                                               ; preds = %43
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #19
  unreachable

54:                                               ; preds = %39, %43
  call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #18
  br label %57

55:                                               ; preds = %11
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %2) #18
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #18
  resume { ptr, i32 } %56

57:                                               ; preds = %54, %1
  %58 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  %60 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %59, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !94
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %57, %70
  %64 = phi ptr [ %74, %70 ], [ %61, %57 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(8) %64)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr %64, align 8, !tbaa !41
  %72 = getelementptr inbounds ptr, ptr %71, i64 10
  %73 = load ptr, ptr %72, align 8
  %74 = call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %64)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %63, !llvm.loop !99

76:                                               ; preds = %63, %70, %57
  %77 = phi ptr [ %61, %57 ], [ %64, %63 ], [ %74, %70 ]
  %78 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !80
  %79 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  store i8 1, ptr %79, align 1, !tbaa !86
  %80 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  store i8 0, ptr %80, align 8, !tbaa !85
  ret void
}

declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.9", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(112) %5) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  %12 = load ptr, ptr %4, align 8, !tbaa !89
  %13 = load ptr, ptr %11, align 8, !tbaa !41
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #19
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !103
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !104

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = load ptr, ptr %0, align 8, !tbaa !84
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !106

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !81
  %12 = load ptr, ptr %4, align 8, !tbaa !82
  %13 = load ptr, ptr %11, align 8, !tbaa !41
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #19
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XercesDocumentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 432)
  invoke void @_ZN11xalanc_1_1021XercesDocumentWrapperC2ERN11xercesc_2_713MemoryManagerEPKNS1_11DOMDocumentEbbb(ptr noundef nonnull align 8 dereferenceable(432) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %10 unwind label %11

10:                                               ; preds = %5
  ret ptr %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %9, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !41
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #19
  unreachable

21:                                               ; preds = %11, %14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xalanc_1_1021XercesDocumentWrapper14destroyWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
          to label %2 unwind label %12

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1026XercesAttrWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 14
  tail call void @_ZN11xalanc_1_1026XercesTextWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1029XercesElementWrapperAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #18
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #18
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %11) #18
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper14destroyWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  store ptr null, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !108
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = load ptr, ptr %3, align 8, !tbaa !84
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1, %21
  %12 = phi ptr [ %22, %21 ], [ %5, %1 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !41
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %13) #18
  %18 = load ptr, ptr %9, align 8, !tbaa !41
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %13)
  br label %21

21:                                               ; preds = %15, %11
  %22 = getelementptr inbounds ptr, ptr %12, i64 1
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %11, !llvm.loop !110

24:                                               ; preds = %21, %1
  %25 = load i64, ptr %6, align 8, !tbaa !108
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i64 0, ptr %6, align 8, !tbaa !108
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %29)
  %30 = tail call noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull %0)
  %31 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !83
  %32 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %32)
  %33 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  store i8 0, ptr %33, align 1, !tbaa !86
  %34 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  store i8 1, ptr %34, align 8, !tbaa !85
  %35 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16, i32 0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(112) %36)
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1027XercesWrapperToXalanNodeMap7getNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds i8, ptr %10, i64 24
  %13 = select i1 %11, ptr null, ptr %12
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %37, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %1, align 8, !tbaa !41
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = load ptr, ptr %9, align 8, !tbaa !44
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %1, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %27 = load ptr, ptr %9, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 24
  %30 = select i1 %28, ptr null, ptr %29
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %33, i32 noundef 4)
          to label %34 unwind label %35

34:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %33) #18
  resume { ptr, i32 } %36

37:                                               ; preds = %22, %15, %8
  %38 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  %39 = load i8, ptr %38, align 8, !tbaa !85, !range !90, !noundef !91
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef 0, i1 noundef zeroext true, ptr noundef null)
  br label %43

43:                                               ; preds = %4, %37, %41, %2
  %44 = phi ptr [ %42, %41 ], [ null, %37 ], [ %6, %4 ], [ null, %2 ]
  ret ptr %44
}

declare noundef ptr @_ZNK11xalanc_1_1027XercesWrapperToXalanNodeMap7getNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %9, label %35 [
    i16 2, label %10
    i16 4, label %12
    i16 8, label %14
    i16 11, label %16
    i16 1, label %21
    i16 6, label %23
    i16 5, label %25
    i16 12, label %27
    i16 7, label %29
    i16 3, label %31
    i16 10, label %33
  ]

10:                                               ; preds = %5
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMAttrEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 zeroext poison, ptr noundef %4)
  br label %35

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMCDATASectionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

14:                                               ; preds = %5
  %15 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMCommentEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

16:                                               ; preds = %5
  %17 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 9)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %5
  %22 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMElementEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

23:                                               ; preds = %5
  %24 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_79DOMEntityEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 zeroext poison, ptr noundef %4)
  br label %35

25:                                               ; preds = %5
  %26 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_718DOMEntityReferenceEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

27:                                               ; preds = %5
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_711DOMNotationEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 zeroext poison, ptr noundef %4)
  br label %35

29:                                               ; preds = %5
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_724DOMProcessingInstructionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

31:                                               ; preds = %5
  %32 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMTextEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

33:                                               ; preds = %5
  %34 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMDocumentTypeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %35

35:                                               ; preds = %5, %33, %31, %29, %27, %25, %23, %21, %14, %12, %10
  %36 = phi ptr [ null, %5 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPNS_9XalanNodeE(ptr noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds i8, ptr %6, i64 24
  %9 = select i1 %7, ptr null, ptr %8
  br label %63

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %1, align 8, !tbaa !41
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %10
  %19 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %19, i32 noundef 4)
          to label %20 unwind label %21

20:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %65

23:                                               ; preds = %12
  %24 = load ptr, ptr %1, align 8, !tbaa !41
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i32 %27, label %63 [
    i32 2, label %28
    i32 4, label %31
    i32 8, label %34
    i32 11, label %37
    i32 1, label %42
    i32 6, label %45
    i32 5, label %48
    i32 12, label %51
    i32 7, label %54
    i32 3, label %57
    i32 10, label %60
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  br label %63

31:                                               ; preds = %23
  %32 = getelementptr inbounds %"class.xalanc_1_10::XercesCDATASectionWrapper", ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  br label %63

34:                                               ; preds = %23
  %35 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  br label %63

37:                                               ; preds = %23
  %38 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %38, i32 noundef 9)
          to label %39 unwind label %40

39:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %65

42:                                               ; preds = %23
  %43 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !122
  br label %63

45:                                               ; preds = %23
  %46 = getelementptr inbounds %"class.xalanc_1_10::XercesEntityWrapper", ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !127
  br label %63

48:                                               ; preds = %23
  %49 = getelementptr inbounds %"class.xalanc_1_10::XercesEntityReferenceWrapper", ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !130
  br label %63

51:                                               ; preds = %23
  %52 = getelementptr inbounds %"class.xalanc_1_10::XercesNotationWrapper", ptr %1, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !133
  br label %63

54:                                               ; preds = %23
  %55 = getelementptr inbounds %"class.xalanc_1_10::XercesProcessingInstructionWrapper", ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  br label %63

57:                                               ; preds = %23
  %58 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %1, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !139
  br label %63

60:                                               ; preds = %23
  %61 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !141
  br label %63

63:                                               ; preds = %23, %60, %57, %54, %51, %48, %45, %42, %34, %31, %28, %4
  %64 = phi ptr [ %9, %4 ], [ %62, %60 ], [ %59, %57 ], [ %56, %54 ], [ %53, %51 ], [ %50, %48 ], [ %47, %45 ], [ %44, %42 ], [ %36, %34 ], [ %33, %31 ], [ %30, %28 ], [ null, %23 ]
  ret ptr %64

65:                                               ; preds = %40, %21
  %66 = phi ptr [ %38, %40 ], [ %19, %21 ]
  %67 = phi { ptr, i32 } [ %41, %40 ], [ %22, %21 ]
  tail call void @__cxa_free_exception(ptr %66) #18
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !40 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_710DOMElementE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !40 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1)
  ret ptr %3
}

declare void @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap5clearEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper14rebuildWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapper14destroyWrapperEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
  tail call void @_ZN11xalanc_1_1021XercesDocumentWrapper17buildWrapperNodesEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15createNavigatorEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %3 = tail call noundef ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %0)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMDocumentTypeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  store ptr %12, ptr %13, align 8, !tbaa !107
  br i1 %3, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef %1, ptr noundef %12)
  br label %16

16:                                               ; preds = %14, %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %18 = load ptr, ptr %13, align 8, !tbaa !107
  store ptr %18, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %19 = icmp eq ptr %4, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %13, align 8, !tbaa !107
  ret ptr %22
}

declare noundef ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMElementEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %0)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %7, i64 0, i32 7
  store i64 %2, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 13
  %10 = tail call noundef ptr @_ZN11xalanc_1_1029XercesElementWrapperAllocator6createEPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7)
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp ne ptr %12, null
  %14 = or i1 %13, %3
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef %1, ptr noundef %10)
  br label %17

17:                                               ; preds = %5, %15
  %18 = icmp eq ptr %4, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  store ptr %7, ptr %4, align 8, !tbaa !109
  br label %20

20:                                               ; preds = %19, %17
  ret ptr %10
}

declare noundef ptr @_ZN11xalanc_1_1029XercesElementWrapperAllocator6createEPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMTextEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %0)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %7, i64 0, i32 7
  store i64 %2, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 14
  %10 = tail call noundef ptr @_ZN11xalanc_1_1026XercesTextWrapperAllocator6createEPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7)
  br i1 %3, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %1, ptr noundef %10)
  br label %13

13:                                               ; preds = %11, %5
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store ptr %7, ptr %4, align 8, !tbaa !109
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %10
}

declare noundef ptr @_ZN11xalanc_1_1026XercesTextWrapperAllocator6createEPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_710DOMCommentEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1020XercesCommentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_10DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %12, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %3, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef %1, ptr noundef %12)
  br label %16

16:                                               ; preds = %14, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %18, %16
  ret ptr %12
}

declare noundef ptr @_ZN11xalanc_1_1020XercesCommentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_10DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_715DOMCDATASectionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1025XercesCDATASectionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMCDATASectionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %12, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %3, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef %1, ptr noundef %12)
  br label %16

16:                                               ; preds = %14, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %18, %16
  ret ptr %12
}

declare noundef ptr @_ZN11xalanc_1_1025XercesCDATASectionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMCDATASectionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_724DOMProcessingInstructionEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1034XercesProcessingInstructionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_24DOMProcessingInstructionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %12, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %3, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef %1, ptr noundef %12)
  br label %16

16:                                               ; preds = %14, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %18, %16
  ret ptr %12
}

declare noundef ptr @_ZN11xalanc_1_1034XercesProcessingInstructionWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_24DOMProcessingInstructionERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMAttrEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %0)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %7, i64 0, i32 7
  store i64 %2, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 15
  %10 = tail call noundef ptr @_ZN11xalanc_1_1026XercesAttrWrapperAllocator6createEPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %7)
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef %1, ptr noundef %10)
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  store ptr %7, ptr %4, align 8, !tbaa !109
  br label %14

14:                                               ; preds = %13, %5
  ret ptr %10
}

declare noundef ptr @_ZN11xalanc_1_1026XercesAttrWrapperAllocator6createEPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_79DOMEntityEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1019XercesEntityWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_9DOMEntityERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %12, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef %1, ptr noundef %12)
  %15 = icmp eq ptr %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %17

17:                                               ; preds = %16, %5
  ret ptr %12
}

declare noundef ptr @_ZN11xalanc_1_1019XercesEntityWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_9DOMEntityERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_718DOMEntityReferenceEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028XercesEntityReferenceWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_18DOMEntityReferenceERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %12, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %3, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef %1, ptr noundef %12)
  br label %16

16:                                               ; preds = %14, %5
  %17 = icmp eq ptr %4, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %18, %16
  ret ptr %12
}

declare noundef ptr @_ZN11xalanc_1_1028XercesEntityReferenceWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_18DOMEntityReferenceERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_711DOMNotationEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i64 noundef %2, i1 zeroext %3, ptr noundef writeonly %4) local_unnamed_addr #1 align 2 !prof !40 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 5
  %8 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1031XercesWrapperNavigatorAllocator6createEPNS_21XercesDocumentWrapperE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %0)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %8, i64 0, i32 7
  store i64 %2, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call noundef ptr @_ZN11xalanc_1_1021XercesNotationWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMNotationERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %12, ptr %6, align 8, !tbaa !109
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1027XercesWrapperToXalanNodeMap14addAssociationEPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef %1, ptr noundef %12)
  %15 = icmp eq ptr %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store ptr %8, ptr %4, align 8, !tbaa !109
  br label %17

17:                                               ; preds = %16, %5
  ret ptr %12
}

declare noundef ptr @_ZN11xalanc_1_1021XercesNotationWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_11DOMNotationERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper11destroyNodeEPNS_9XalanNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 8, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !108
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %6, ptr noundef %9, ptr nonnull %3)
  %11 = load ptr, ptr %5, align 8, !tbaa !105
  %12 = load i64, ptr %7, align 8, !tbaa !108
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = icmp eq ptr %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef 4)
          to label %17 unwind label %18

17:                                               ; preds = %15
  call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %16) #18
  resume { ptr, i32 } %19

20:                                               ; preds = %2
  %21 = load ptr, ptr %10, align 8, !tbaa !109
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8, !tbaa !84
  %25 = load ptr, ptr %21, align 8, !tbaa !41
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %27 = load ptr, ptr %24, align 8, !tbaa !41
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  call void %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %21)
  br label %30

30:                                               ; preds = %23, %20
  %31 = getelementptr inbounds ptr, ptr %10, i64 1
  %32 = load ptr, ptr %5, align 8, !tbaa !105
  %33 = load i64, ptr %7, align 8, !tbaa !108
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = ptrtoint ptr %31 to i64
  %38 = ptrtoint ptr %34 to i64
  %39 = sub i64 %38, %37
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %10, ptr nonnull align 8 %31, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %30, %36
  %41 = load i64, ptr %7, align 8, !tbaa !108
  %42 = add i64 %41, -1
  store i64 %42, ptr %7, align 8, !tbaa !108
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10)
  ret ptr %11
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10)
  ret ptr %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1021XercesDocumentWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !40 {
  ret i32 9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !40 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(432) %0) unnamed_addr #8 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 7
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %8)
  ret ptr %9
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %8)
  ret ptr %9
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !40 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !40 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !40 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !40 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret i1 %8
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret i1 %9
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10)
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10)
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %10)
  ret ptr %11
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #10 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 1, !tbaa !86, !range !90, !noundef !91
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1021XercesDocumentWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #11 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !92
  ret i64 %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createElementERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper22createDocumentFragmentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper14createTextNodeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper13createCommentERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper18createCDATASectionERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper27createProcessingInstructionERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper21createEntityReferenceERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper10getDoctypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #10 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17getImplementationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #10 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper18getDocumentElementEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #1 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %7)
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %11)
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi ptr [ %12, %5 ], [ %3, %1 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper20getElementsByTagNameERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper10importNodeEPNS_9XalanNodeEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i1 zeroext %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper15createElementNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1021XercesDocumentWrapper17createAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper14getElementByIdERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.17", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !145
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.17", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = load ptr, ptr %4, align 8, !tbaa !41
  %12 = getelementptr inbounds ptr, ptr %11, i64 19
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %10)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %14)
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi ptr [ %17, %16 ], [ null, %2 ]
  ret ptr %19
}

declare noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeES4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerC2EPS0_PNS_22XercesWrapperNavigatorEmb(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %7 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %8 = zext i1 %4 to i8
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !147
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 2
  store i64 %3, ptr %10, align 8, !tbaa !150
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %1, i64 0, i32 3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !144
  store ptr %13, ptr %11, align 8, !tbaa !98
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store ptr %13, ptr %15, align 8, !tbaa !98
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store i8 %8, ptr %17, align 8, !tbaa !151
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 100)
          to label %18 unwind label %27

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !95
  %21 = icmp ult i64 %20, 100
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 100)
          to label %23 unwind label %27

23:                                               ; preds = %22, %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  store ptr %2, ptr %6, align 8, !tbaa !152
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %6, i64 0, i32 1
  store ptr %1, ptr %24, align 8, !tbaa !154
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %25 unwind label %29

25:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %26 unwind label %31

26:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  ret void

27:                                               ; preds = %22, %5
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %33

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %33

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %33

33:                                               ; preds = %31, %29, %27
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ], [ %28, %27 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #18
  call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %34
}

declare void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !95
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = load ptr, ptr %0, align 8, !tbaa !98
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #3 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #3 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  tail call void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker9startNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !40 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %5 = alloca %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !150
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !151, !range !90, !noundef !91
  %13 = icmp ne i8 %12, 0
  %14 = call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %1, i64 noundef %10, i1 noundef zeroext %13, ptr noundef nonnull %3)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !155
  %20 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %17, i64 %19
  %21 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %20, i64 -1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !155
  %27 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %24, i64 %26
  %28 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %27, i64 -1
  %29 = load ptr, ptr %3, align 8, !tbaa !109
  %30 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %20, i64 -1, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !154
  %32 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %29, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !156
  %33 = load ptr, ptr %21, align 8, !tbaa !152
  %34 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store ptr %14, ptr %34, align 8, !tbaa !94
  br label %38

38:                                               ; preds = %37, %2
  %39 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %33, i64 0, i32 6
  store ptr %14, ptr %39, align 8, !tbaa !157
  %40 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %27, i64 -1, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !154
  %42 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %29, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !158
  %43 = load ptr, ptr %28, align 8, !tbaa !152
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %43, i64 0, i32 4
  store ptr %14, ptr %46, align 8, !tbaa !159
  br label %47

47:                                               ; preds = %45, %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  store ptr %29, ptr %4, align 8, !tbaa !152
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %4, i64 0, i32 1
  store ptr %14, ptr %48, align 8, !tbaa !154
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  %49 = load i64, ptr %9, align 8, !tbaa !150
  %50 = add i64 %49, 1
  store i64 %50, ptr %9, align 8, !tbaa !150
  %51 = load ptr, ptr %1, align 8, !tbaa !41
  %52 = getelementptr inbounds ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef signext i16 %53(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %54, label %117 [
    i16 10, label %55
    i16 1, label %80
  ]

55:                                               ; preds = %47
  %56 = load ptr, ptr %1, align 8, !tbaa !41
  %57 = getelementptr inbounds ptr, ptr %56, i64 41
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = call noundef i64 %62(ptr noundef nonnull align 8 dereferenceable(8) %59)
  %64 = and i64 %63, 4294967295
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %117, label %66

66:                                               ; preds = %55
  %67 = and i64 %63, 4294967295
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i64 [ 0, %66 ], [ %78, %68 ]
  %70 = load ptr, ptr %7, align 8, !tbaa !147
  %71 = load ptr, ptr %59, align 8, !tbaa !41
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  %74 = call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %59, i64 noundef %69)
  %75 = load i64, ptr %9, align 8, !tbaa !150
  %76 = add i64 %75, 1
  store i64 %76, ptr %9, align 8, !tbaa !150
  %77 = call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %70, ptr noundef %74, i64 noundef %75, i1 noundef zeroext true, ptr noundef null)
  %78 = add nuw nsw i64 %69, 1
  %79 = icmp eq i64 %78, %67
  br i1 %79, label %117, label %68, !llvm.loop !160

80:                                               ; preds = %47
  %81 = load ptr, ptr %1, align 8, !tbaa !41
  %82 = getelementptr inbounds ptr, ptr %81, i64 11
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %85 = load ptr, ptr %84, align 8, !tbaa !41
  %86 = getelementptr inbounds ptr, ptr %85, i64 5
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef i64 %87(ptr noundef nonnull align 8 dereferenceable(8) %84)
  %89 = and i64 %88, 4294967295
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %117, label %91

91:                                               ; preds = %80
  %92 = and i64 %88, 4294967295
  br label %93

93:                                               ; preds = %91, %112
  %94 = phi i64 [ 0, %91 ], [ %115, %112 ]
  %95 = phi ptr [ null, %91 ], [ %106, %112 ]
  %96 = phi ptr [ null, %91 ], [ %105, %112 ]
  %97 = load ptr, ptr %84, align 8, !tbaa !41
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %84, i64 noundef %94)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %101 = load ptr, ptr %7, align 8, !tbaa !147
  %102 = load i64, ptr %9, align 8, !tbaa !150
  %103 = load i8, ptr %11, align 8, !tbaa !151, !range !90, !noundef !91
  %104 = icmp ne i8 %103, 0
  %105 = call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper17createWrapperNodeEPKN11xercesc_2_77DOMNodeEmbPPNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(432) %101, ptr noundef %100, i64 noundef %102, i1 noundef zeroext %104, ptr noundef nonnull %6)
  %106 = load ptr, ptr %6, align 8, !tbaa !109
  %107 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %106, i64 0, i32 2
  store ptr %14, ptr %107, align 8, !tbaa !156
  %108 = icmp eq ptr %96, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %93
  %110 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %106, i64 0, i32 3
  store ptr %96, ptr %110, align 8, !tbaa !158
  %111 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %95, i64 0, i32 4
  store ptr %105, ptr %111, align 8, !tbaa !159
  br label %112

112:                                              ; preds = %109, %93
  %113 = load i64, ptr %9, align 8, !tbaa !150
  %114 = add i64 %113, 1
  store i64 %114, ptr %9, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %115 = add nuw nsw i64 %94, 1
  %116 = icmp eq i64 %115, %92
  br i1 %116, label %117, label %93, !llvm.loop !161

117:                                              ; preds = %112, %68, %80, %55, %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker7endNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(89) %0, ptr nocapture readnone %1) unnamed_addr #12 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 3, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !155
  %5 = add i64 %4, -1
  store i64 %5, ptr %3, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker", ptr %0, i64 0, i32 4, i32 1
  %9 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %7, i64 -1
  %10 = load i64, ptr %8, align 8, !tbaa !155
  %11 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2, %14
  %15 = phi i64 [ %16, %14 ], [ %10, %2 ]
  %16 = add i64 %15, -1
  %17 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %9, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !162

20:                                               ; preds = %14
  store i64 %16, ptr %8, align 8, !tbaa !155
  br label %21

21:                                               ; preds = %20, %2
  %22 = phi i64 [ %16, %20 ], [ %10, %2 ]
  %23 = add i64 %22, -1
  store i64 %23, ptr %8, align 8, !tbaa !155
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getPooledStringERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getPooledStringEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 16, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %1, i32 noundef %2)
  ret ptr %9
}

declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !103
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !164

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !109
  store ptr %13, ptr %12, align 8, !tbaa !109
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !108
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !165
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !84
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !166

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !84
  %24 = load i64, ptr %4, align 8, !tbaa !108
  %25 = load i64, ptr %6, align 8, !tbaa !103
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %28, ptr %0, align 8, !tbaa !84
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !108
  store i64 %30, ptr %4, align 8, !tbaa !108
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !103
  store i64 %32, ptr %6, align 8, !tbaa !103
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  store ptr %34, ptr %26, align 8, !tbaa !105
  store ptr %23, ptr %3, align 8, !tbaa !84
  store i64 %24, ptr %29, align 8, !tbaa !108
  store i64 %25, ptr %31, align 8, !tbaa !103
  store ptr %27, ptr %33, align 8, !tbaa !105
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !165

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !41
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !167

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !103
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  %52 = load ptr, ptr %3, align 8, !tbaa !84
  %53 = load ptr, ptr %52, align 8, !tbaa !41
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #19
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !108
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !169

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !84
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !108
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !103
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !41
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !170
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !105
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = load i64, ptr %9, align 8, !tbaa !108
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !171

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !84
  %28 = load i64, ptr %6, align 8, !tbaa !108
  %29 = load i64, ptr %7, align 8, !tbaa !103
  %30 = load ptr, ptr %8, align 8, !tbaa !105
  %31 = load ptr, ptr %5, align 8, !tbaa !84
  store ptr %31, ptr %0, align 8, !tbaa !84
  %32 = load i64, ptr %14, align 8, !tbaa !108
  store i64 %32, ptr %6, align 8, !tbaa !108
  %33 = load i64, ptr %15, align 8, !tbaa !103
  store i64 %33, ptr %7, align 8, !tbaa !103
  %34 = load ptr, ptr %21, align 8, !tbaa !105
  store ptr %34, ptr %8, align 8, !tbaa !105
  store ptr %27, ptr %5, align 8, !tbaa !84
  store i64 %28, ptr %14, align 8, !tbaa !108
  store i64 %29, ptr %15, align 8, !tbaa !103
  store ptr %30, ptr %21, align 8, !tbaa !105
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !171

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !41
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !103
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !105
  %50 = load ptr, ptr %5, align 8, !tbaa !84
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #19
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !172

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !41
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !173
  store ptr %65, ptr %8, align 8, !tbaa !105
  store i64 %3, ptr %7, align 8, !tbaa !103
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !175

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !108
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !103
  br i1 %18, label %21, label %39, !prof !171

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !175

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !176

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !105
  %28 = load i64, ptr %12, align 8, !tbaa !108
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !109
  store ptr %34, ptr %32, align 8, !tbaa !109
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !177, !llvm.loop !178

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %42 = load ptr, ptr %0, align 8, !tbaa !84
  store ptr %42, ptr %5, align 8, !tbaa !84
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !108
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !103
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !41
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !105
  %51 = load i64, ptr %43, align 8, !tbaa !108
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !105
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !105
  %56 = load i64, ptr %43, align 8, !tbaa !108
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !105
  %60 = load i64, ptr %43, align 8, !tbaa !108
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !105
  %63 = load i64, ptr %12, align 8, !tbaa !108
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !84
  %67 = load i64, ptr %12, align 8, !tbaa !108
  %68 = load i64, ptr %19, align 8, !tbaa !103
  %69 = load ptr, ptr %15, align 8, !tbaa !105
  %70 = load ptr, ptr %5, align 8, !tbaa !84
  store ptr %70, ptr %0, align 8, !tbaa !84
  %71 = load i64, ptr %43, align 8, !tbaa !108
  store i64 %71, ptr %12, align 8, !tbaa !108
  %72 = load i64, ptr %44, align 8, !tbaa !103
  store i64 %72, ptr %19, align 8, !tbaa !103
  %73 = load ptr, ptr %50, align 8, !tbaa !105
  store ptr %73, ptr %15, align 8, !tbaa !105
  store ptr %66, ptr %5, align 8, !tbaa !84
  store i64 %67, ptr %43, align 8, !tbaa !108
  store i64 %68, ptr %44, align 8, !tbaa !103
  store ptr %69, ptr %50, align 8, !tbaa !105
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !41
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #19
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !103
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !105
  %89 = load ptr, ptr %5, align 8, !tbaa !84
  %90 = load ptr, ptr %89, align 8, !tbaa !41
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #19
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !179

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !180

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !181

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
  store i64 %36, ptr %12, align 8, !tbaa !108
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !84
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !108
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %12, ptr %0, align 8, !tbaa !84
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !108
  store i64 %14, ptr %6, align 8, !tbaa !108
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !103
  store i64 %16, ptr %8, align 8, !tbaa !103
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  store ptr %18, ptr %10, align 8, !tbaa !105
  store ptr %5, ptr %3, align 8, !tbaa !84
  store i64 %7, ptr %13, align 8, !tbaa !108
  store i64 %9, ptr %15, align 8, !tbaa !103
  store ptr %11, ptr %17, align 8, !tbaa !105
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !183

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !41
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !184

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #14 comdat !prof !185 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34, !prof !186

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !109
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !109
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !prof !186, !llvm.loop !187

34:                                               ; preds = %30, %3
  %35 = phi ptr [ %0, %3 ], [ %12, %30 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %4, %36
  %38 = ashr exact i64 %37, 3
  switch i64 %38, label %57 [
    i64 3, label %39
    i64 2, label %45
    i64 1, label %52
  ], !prof !188

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !109
  %41 = load ptr, ptr %2, align 8, !tbaa !109
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !109
  %48 = load ptr, ptr %2, align 8, !tbaa !109
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = load ptr, ptr %2, align 8, !tbaa !109
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %64, label %57, !prof !189

57:                                               ; preds = %52, %34
  br label %64

58:                                               ; preds = %18
  %59 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %64

60:                                               ; preds = %22
  %61 = getelementptr inbounds ptr, ptr %15, i64 2
  br label %64

62:                                               ; preds = %26
  %63 = getelementptr inbounds ptr, ptr %15, i64 3
  br label %64

64:                                               ; preds = %13, %58, %60, %62, %45, %52, %39, %57
  %65 = phi ptr [ %1, %57 ], [ %35, %39 ], [ %53, %52 ], [ %46, %45 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ], [ %15, %13 ]
  ret ptr %65
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !98
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = load ptr, ptr %3, align 8, !tbaa !98
  store ptr %12, ptr %0, align 8, !tbaa !98
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !155
  store i64 %14, ptr %6, align 8, !tbaa !155
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !95
  store i64 %16, ptr %8, align 8, !tbaa !95
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  store ptr %18, ptr %10, align 8, !tbaa !97
  store ptr %5, ptr %3, align 8, !tbaa !98
  store i64 %7, ptr %13, align 8, !tbaa !155
  store i64 %9, ptr %15, align 8, !tbaa !95
  store ptr %11, ptr %17, align 8, !tbaa !97
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !41
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  store ptr %2, ptr %0, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !155
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !98
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !155
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !95
  %16 = shl i64 %13, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !41
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !97
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = load i64, ptr %9, align 8, !tbaa !155
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !98
  %28 = load i64, ptr %6, align 8, !tbaa !155
  %29 = load i64, ptr %7, align 8, !tbaa !95
  %30 = load ptr, ptr %8, align 8, !tbaa !97
  %31 = load ptr, ptr %5, align 8, !tbaa !98
  store ptr %31, ptr %0, align 8, !tbaa !98
  %32 = load i64, ptr %14, align 8, !tbaa !155
  store i64 %32, ptr %6, align 8, !tbaa !155
  %33 = load i64, ptr %15, align 8, !tbaa !95
  store i64 %33, ptr %7, align 8, !tbaa !95
  %34 = load ptr, ptr %21, align 8, !tbaa !97
  store ptr %34, ptr %8, align 8, !tbaa !97
  store ptr %27, ptr %5, align 8, !tbaa !98
  store i64 %28, ptr %14, align 8, !tbaa !155
  store i64 %29, ptr %15, align 8, !tbaa !95
  store ptr %30, ptr %21, align 8, !tbaa !97
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !41
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !95
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !97
  %50 = load ptr, ptr %5, align 8, !tbaa !98
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #19
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 4
  %62 = load ptr, ptr %2, align 8, !tbaa !41
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !97
  store i64 %3, ptr %7, align 8, !tbaa !95
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %132, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !155
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !95
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %132, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !97
  %28 = load i64, ptr %12, align 8, !tbaa !155
  %29 = getelementptr %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !190
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !155
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !155
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %132, label %30, !llvm.loop !191

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %41 = load ptr, ptr %0, align 8, !tbaa !98
  store ptr %41, ptr %5, align 8, !tbaa !98
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !155
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !95
  %44 = shl i64 %14, 4
  %45 = load ptr, ptr %41, align 8, !tbaa !41
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !97
  %50 = load i64, ptr %42, align 8, !tbaa !155
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !97
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !97
  %55 = load i64, ptr %42, align 8, !tbaa !155
  %56 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !97
  %59 = load i64, ptr %42, align 8, !tbaa !155
  %60 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !97
  %62 = load i64, ptr %12, align 8, !tbaa !155
  %63 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !98
  %66 = load i64, ptr %12, align 8, !tbaa !155
  %67 = load i64, ptr %19, align 8, !tbaa !95
  %68 = load ptr, ptr %15, align 8, !tbaa !97
  %69 = load ptr, ptr %5, align 8, !tbaa !98
  store ptr %69, ptr %0, align 8, !tbaa !98
  %70 = load i64, ptr %42, align 8, !tbaa !155
  store i64 %70, ptr %12, align 8, !tbaa !155
  %71 = load i64, ptr %43, align 8, !tbaa !95
  store i64 %71, ptr %19, align 8, !tbaa !95
  %72 = load ptr, ptr %49, align 8, !tbaa !97
  store ptr %72, ptr %15, align 8, !tbaa !97
  store ptr %65, ptr %5, align 8, !tbaa !98
  store i64 %66, ptr %42, align 8, !tbaa !155
  store i64 %67, ptr %43, align 8, !tbaa !95
  store ptr %68, ptr %49, align 8, !tbaa !97
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !41
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #19
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %132

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !95
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !97
  %88 = load ptr, ptr %5, align 8, !tbaa !98
  %89 = load ptr, ptr %88, align 8, !tbaa !41
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #19
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %83

96:                                               ; preds = %38
  %97 = ptrtoint ptr %17 to i64
  %98 = ptrtoint ptr %1 to i64
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %99, %8
  br i1 %100, label %115, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, ptr %2, i64 %99
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %106

104:                                              ; preds = %106, %101
  %105 = icmp eq ptr %17, %1
  br i1 %105, label %114, label %110

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %108, %106 ], [ %102, %101 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %107)
  %108 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !192

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %111)
  %112 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !193

114:                                              ; preds = %110, %104
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %99, i1 false)
  br label %132

115:                                              ; preds = %96
  %116 = sub nsw i64 0, %9
  %117 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %17, i64 %116
  %118 = icmp eq ptr %3, %2
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %120)
  %121 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %120, i64 1
  %122 = icmp eq ptr %121, %17
  br i1 %122, label %123, label %119, !llvm.loop !194

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %98
  %128 = ashr exact i64 %127, 4
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %17, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %130, ptr align 8 %1, i64 %127, i1 false)
  br label %131

131:                                              ; preds = %125, %123
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %132

132:                                              ; preds = %30, %24, %81, %114, %131, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.18", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !95
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XercesDocumentWrapper::BuildWrapperTreeWalker::NavigatorStackEntryType", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !190
  %13 = load i64, ptr %4, align 8, !tbaa !155
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !155
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !98
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !98
  %24 = load i64, ptr %4, align 8, !tbaa !155
  %25 = load i64, ptr %6, align 8, !tbaa !95
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = load ptr, ptr %3, align 8, !tbaa !98
  store ptr %28, ptr %0, align 8, !tbaa !98
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !155
  store i64 %30, ptr %4, align 8, !tbaa !155
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !95
  store i64 %32, ptr %6, align 8, !tbaa !95
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  store ptr %34, ptr %26, align 8, !tbaa !97
  store ptr %23, ptr %3, align 8, !tbaa !98
  store i64 %24, ptr %29, align 8, !tbaa !155
  store i64 %25, ptr %31, align 8, !tbaa !95
  store ptr %27, ptr %33, align 8, !tbaa !97
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !41
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !95
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.18", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  %52 = load ptr, ptr %3, align 8, !tbaa !98
  %53 = load ptr, ptr %52, align 8, !tbaa !41
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #19
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 179}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 179}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52643}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !48, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapperE", !46, i64 0, !48, i64 8, !48, i64 16, !50, i64 24, !58, i64 160, !61, i64 176, !48, i64 216, !64, i64 224, !66, i64 248, !48, i64 280, !67, i64 288, !67, i64 289, !67, i64 290, !68, i64 296, !71, i64 336, !74, i64 376, !77, i64 416}
!46 = !{!"_ZTSN11xalanc_1_1013XalanDocumentE", !47, i64 0}
!47 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !43, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1027XercesWrapperToXalanNodeMapE", !51, i64 0}
!51 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEEE", !52, i64 0, !53, i64 1, !48, i64 8, !54, i64 16, !55, i64 24, !55, i64 32, !56, i64 40, !56, i64 64, !57, i64 88, !55, i64 120, !55, i64 128}
!52 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKN11xercesc_2_77DOMNodeEEE"}
!53 = !{!"_ZTSSt8equal_toIPKN11xercesc_2_77DOMNodeEE"}
!54 = !{!"float", !49, i64 0}
!55 = !{!"long", !49, i64 0}
!56 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !48, i64 0, !55, i64 8, !55, i64 16, !48, i64 24}
!58 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEE", !59, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataE", !60, i64 0}
!60 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEE", !48, i64 0, !48, i64 8}
!61 = !{!"_ZTSN11xalanc_1_1031XercesWrapperNavigatorAllocatorE", !62, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE", !55, i64 8, !63, i64 16}
!63 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1021XercesNodeListWrapperE", !65, i64 0, !48, i64 8, !48, i64 16}
!65 = !{!"_ZTSN11xalanc_1_1013XalanNodeListE"}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !48, i64 0, !55, i64 8, !55, i64 16, !48, i64 24}
!67 = !{!"bool", !49, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1029XercesElementWrapperAllocatorE", !69, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_20XercesElementWrapperENS_10ArenaBlockIS1_mEEEE", !55, i64 8, !70, i64 16}
!70 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_20XercesElementWrapperEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1026XercesTextWrapperAllocatorE", !72, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesTextWrapperENS_10ArenaBlockIS1_mEEEE", !55, i64 8, !73, i64 16}
!73 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesTextWrapperEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!74 = !{!"_ZTSN11xalanc_1_1026XercesAttrWrapperAllocatorE", !75, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesAttrWrapperENS_10ArenaBlockIS1_mEEEE", !55, i64 8, !76, i64 16}
!76 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesAttrWrapperEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!77 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEE", !78, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataE", !79, i64 0}
!79 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEE", !48, i64 0, !48, i64 8}
!80 = !{!45, !48, i64 16}
!81 = !{!60, !48, i64 0}
!82 = !{!60, !48, i64 8}
!83 = !{!45, !48, i64 216}
!84 = !{!66, !48, i64 0}
!85 = !{!45, !67, i64 288}
!86 = !{!45, !67, i64 289}
!87 = !{!45, !67, i64 290}
!88 = !{!79, !48, i64 0}
!89 = !{!79, !48, i64 8}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!93, !55, i64 56}
!93 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !55, i64 56}
!94 = !{!93, !48, i64 40}
!95 = !{!96, !55, i64 16}
!96 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeENS_31MemoryManagedConstructionTraitsIS3_EEEE", !48, i64 0, !55, i64 8, !55, i64 16, !48, i64 24}
!97 = !{!96, !48, i64 24}
!98 = !{!96, !48, i64 0}
!99 = distinct !{!99, !100, !101}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!"function_entry_count", i64 21}
!103 = !{!66, !55, i64 16}
!104 = !{!"branch_weights", i32 1, i32 20}
!105 = !{!66, !48, i64 24}
!106 = !{!"VP", i32 0, i64 20, i64 -7405368087501025645, i64 20}
!107 = !{!45, !48, i64 280}
!108 = !{!66, !55, i64 8}
!109 = !{!48, !48, i64 0}
!110 = distinct !{!110, !100, !101}
!111 = !{!112, !48, i64 8}
!112 = !{!"_ZTSN11xalanc_1_1017XercesAttrWrapperE", !113, i64 0, !48, i64 8, !64, i64 16, !48, i64 40}
!113 = !{!"_ZTSN11xalanc_1_109XalanAttrE", !47, i64 0}
!114 = !{!115, !48, i64 8}
!115 = !{!"_ZTSN11xalanc_1_1025XercesCDATASectionWrapperE", !116, i64 0, !48, i64 8, !48, i64 16}
!116 = !{!"_ZTSN11xalanc_1_1017XalanCDATASectionE", !117, i64 0}
!117 = !{!"_ZTSN11xalanc_1_109XalanTextE", !118, i64 0}
!118 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !47, i64 0}
!119 = !{!120, !48, i64 8}
!120 = !{!"_ZTSN11xalanc_1_1020XercesCommentWrapperE", !121, i64 0, !48, i64 8, !48, i64 16}
!121 = !{!"_ZTSN11xalanc_1_1012XalanCommentE", !118, i64 0}
!122 = !{!123, !48, i64 16}
!123 = !{!"_ZTSN11xalanc_1_1020XercesElementWrapperE", !124, i64 0, !65, i64 8, !48, i64 16, !48, i64 24, !125, i64 32}
!124 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !47, i64 0}
!125 = !{!"_ZTSN11xalanc_1_1025XercesNamedNodeMapWrapperE", !126, i64 0, !48, i64 8, !48, i64 16}
!126 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!127 = !{!128, !48, i64 8}
!128 = !{!"_ZTSN11xalanc_1_1019XercesEntityWrapperE", !129, i64 0, !48, i64 8, !48, i64 16, !64, i64 24}
!129 = !{!"_ZTSN11xalanc_1_1011XalanEntityE", !47, i64 0}
!130 = !{!131, !48, i64 8}
!131 = !{!"_ZTSN11xalanc_1_1028XercesEntityReferenceWrapperE", !132, i64 0, !48, i64 8, !48, i64 16, !64, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1020XalanEntityReferenceE", !47, i64 0}
!133 = !{!134, !48, i64 8}
!134 = !{!"_ZTSN11xalanc_1_1021XercesNotationWrapperE", !135, i64 0, !48, i64 8, !48, i64 16}
!135 = !{!"_ZTSN11xalanc_1_1013XalanNotationE", !47, i64 0}
!136 = !{!137, !48, i64 8}
!137 = !{!"_ZTSN11xalanc_1_1034XercesProcessingInstructionWrapperE", !138, i64 0, !48, i64 8, !48, i64 16}
!138 = !{!"_ZTSN11xalanc_1_1026XalanProcessingInstructionE", !47, i64 0}
!139 = !{!140, !48, i64 8}
!140 = !{!"_ZTSN11xalanc_1_1017XercesTextWrapperE", !117, i64 0, !48, i64 8, !48, i64 16}
!141 = !{!142, !48, i64 8}
!142 = !{!"_ZTSN11xalanc_1_1025XercesDocumentTypeWrapperE", !143, i64 0, !48, i64 8, !125, i64 16, !125, i64 40, !48, i64 64}
!143 = !{!"_ZTSN11xalanc_1_1017XalanDocumentTypeE", !47, i64 0}
!144 = !{!51, !48, i64 8}
!145 = !{!146, !55, i64 8}
!146 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !48, i64 0, !55, i64 8, !55, i64 16, !48, i64 24}
!147 = !{!148, !48, i64 8}
!148 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalkerE", !149, i64 0, !48, i64 8, !55, i64 16, !96, i64 24, !96, i64 56, !67, i64 88}
!149 = !{!"_ZTSN11xalanc_1_1015XercesDOMWalkerE"}
!150 = !{!148, !55, i64 16}
!151 = !{!148, !67, i64 88}
!152 = !{!153, !48, i64 0}
!153 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapper22BuildWrapperTreeWalker23NavigatorStackEntryTypeE", !48, i64 0, !48, i64 8}
!154 = !{!153, !48, i64 8}
!155 = !{!96, !55, i64 8}
!156 = !{!93, !48, i64 16}
!157 = !{!93, !48, i64 48}
!158 = !{!93, !48, i64 24}
!159 = !{!93, !48, i64 32}
!160 = distinct !{!160, !100, !101}
!161 = distinct !{!161, !100, !101}
!162 = distinct !{!162, !100, !101}
!163 = !{!"function_entry_count", i64 3517488}
!164 = !{!"branch_weights", i32 3517309, i32 179}
!165 = !{!"branch_weights", i32 16, i32 163}
!166 = !{!"branch_weights", i32 179, i32 0}
!167 = !{!"VP", i32 0, i64 163, i64 -7405368087501025645, i64 163}
!168 = !{!"function_entry_count", i64 52673}
!169 = !{!"branch_weights", i32 30, i32 52643}
!170 = !{!"VP", i32 0, i64 52643, i64 8345045103670217670, i64 52643}
!171 = !{!"branch_weights", i32 52643, i32 0}
!172 = !{!"branch_weights", i32 0, i32 30}
!173 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!174 = !{!"function_entry_count", i64 52643}
!175 = !{!"branch_weights", i32 0, i32 52643}
!176 = !{!"branch_weights", i32 1, i32 52642}
!177 = !{!"branch_weights", i32 52642, i32 298062848}
!178 = distinct !{!178, !100, !101}
!179 = distinct !{!179, !100, !101}
!180 = distinct !{!180, !100, !101}
!181 = distinct !{!181, !100, !101}
!182 = !{!"function_entry_count", i64 52494}
!183 = !{!"branch_weights", i32 4, i32 52490}
!184 = !{!"VP", i32 0, i64 52490, i64 -7405368087501025645, i64 52490}
!185 = !{!"function_entry_count", i64 19395}
!186 = !{!"branch_weights", i32 0, i32 1}
!187 = distinct !{!187, !100, !101}
!188 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 19395}
!189 = !{!"branch_weights", i32 19395, i32 0}
!190 = !{i64 0, i64 8, !109, i64 8, i64 8, !109}
!191 = distinct !{!191, !100, !101}
!192 = distinct !{!192, !100, !101}
!193 = distinct !{!193, !100, !101}
!194 = distinct !{!194, !100, !101}
