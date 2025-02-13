; ModuleID = 'XercesElementWrapper.cpp'
source_filename = "XercesElementWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesElementWrapper" = type { %"class.xalanc_1_10::XalanElement", %"class.xalanc_1_10::XalanNodeList", ptr, ptr, %"class.xalanc_1_10::XercesNamedNodeMapWrapper" }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanNodeList" = type { ptr }
%"class.xalanc_1_10::XercesNamedNodeMapWrapper" = type { %"class.xalanc_1_10::XalanNamedNodeMap", ptr, ptr }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XercesDocumentWrapper" = type { %"class.xalanc_1_10::XalanDocument", ptr, ptr, %"class.xalanc_1_10::XercesWrapperToXalanNodeMap", %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XercesWrapperNavigatorAllocator", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", %"class.xalanc_1_10::XalanVector.2", ptr, i8, i8, i8, %"class.xalanc_1_10::XercesElementWrapperAllocator", %"class.xalanc_1_10::XercesTextWrapperAllocator", %"class.xalanc_1_10::XercesAttrWrapperAllocator", %"class.xalanc_1_10::XalanMemMgrAutoPtr.9" }
%"class.xalanc_1_10::XalanDocument" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XercesWrapperToXalanNodeMap" = type { %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMImplementation>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XercesWrapperNavigatorAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList.1" }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesNodeListWrapper" = type { %"class.xalanc_1_10::XalanNodeList", ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesElementWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.3" }
%"class.xalanc_1_10::ArenaAllocator.3" = type { ptr, i64, %"class.xalanc_1_10::XalanList.4" }
%"class.xalanc_1_10::XalanList.4" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesTextWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.5" }
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i64, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XercesAttrWrapperAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.7" }
%"class.xalanc_1_10::ArenaAllocator.7" = type { ptr, i64, %"class.xalanc_1_10::XalanList.8" }
%"class.xalanc_1_10::XalanList.8" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.9" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMStringPool>::MemMgrAutoPtrData" = type { %"struct.std::pair.10" }
%"struct.std::pair.10" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv = comdat any

$_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1021XercesDocumentWrapper14getMappingModeEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

@_ZTVN11xalanc_1_1020XercesElementWrapperE = dso_local unnamed_addr constant { [46 x ptr], [6 x ptr] } { [46 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020XercesElementWrapperE, ptr @_ZN11xalanc_1_1020XercesElementWrapperD2Ev, ptr @_ZN11xalanc_1_1020XercesElementWrapperD0Ev, ptr @_ZNK11xalanc_1_1020XercesElementWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1020XercesElementWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1020XercesElementWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1020XercesElementWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1020XercesElementWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1020XercesElementWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1020XercesElementWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020XercesElementWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1020XercesElementWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1020XercesElementWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XercesElementWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper8getIndexEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper10getTagNameEv, ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XercesElementWrapper16getAttributeNodeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XercesElementWrapper20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020XercesElementWrapper12setAttributeERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1020XercesElementWrapper16setAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1020XercesElementWrapper19removeAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1020XercesElementWrapper15removeAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XercesElementWrapper14getAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1020XercesElementWrapper14setAttributeNSERKNS_14XalanDOMStringES3_S3_, ptr @_ZN11xalanc_1_1020XercesElementWrapper17removeAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1020XercesElementWrapper18getAttributeNodeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1020XercesElementWrapper18setAttributeNodeNSEPNS_9XalanAttrE, ptr @_ZNK11xalanc_1_1020XercesElementWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1020XercesElementWrapper4itemEj, ptr @_ZNK11xalanc_1_1020XercesElementWrapper9getLengthEv], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xalanc_1_1020XercesElementWrapperE, ptr @_ZThn8_N11xalanc_1_1020XercesElementWrapperD1Ev, ptr @_ZThn8_N11xalanc_1_1020XercesElementWrapperD0Ev, ptr @_ZThn8_NK11xalanc_1_1020XercesElementWrapper4itemEj, ptr @_ZThn8_NK11xalanc_1_1020XercesElementWrapper9getLengthEv] }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020XercesElementWrapperE = dso_local constant [38 x i8] c"N11xalanc_1_1020XercesElementWrapperE\00", align 1
@_ZTIN11xalanc_1_1012XalanElementE = external constant ptr
@_ZTIN11xalanc_1_1013XalanNodeListE = external constant ptr
@_ZTIN11xalanc_1_1020XercesElementWrapperE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XercesElementWrapperE, i32 0, i32 2, ptr @_ZTIN11xalanc_1_1012XalanElementE, i64 2, ptr @_ZTIN11xalanc_1_1013XalanNodeListE, i64 2048 }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1020XercesElementWrapperC1EPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020XercesElementWrapperC2EPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE
@_ZN11xalanc_1_1020XercesElementWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XercesElementWrapperD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapperC2EPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xalanc_1_1012XalanElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  invoke void @_ZN11xalanc_1_1013XalanNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %5 unwind label %15

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !54
  %8 = load ptr, ptr %1, align 8, !tbaa !42
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %12 unwind label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(64) %2) #9
          to label %14 unwind label %17

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %12, %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1013XalanNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  tail call void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xalanc_1_1020XercesElementWrapperD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1020XercesElementWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1020XercesElementWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xalanc_1_1020XercesElementWrapperD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1020XercesElementWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1020XercesElementWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !41 {
  ret i32 1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 !prof !41 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getAttributesEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesElementWrapper13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret i1 %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesElementWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !41 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesElementWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(432) %4) #9
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1020XercesElementWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 7
  %3 = load i64, ptr %2, align 8, !tbaa !59
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper10getTagNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getAttributeERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !42
  %9 = getelementptr inbounds ptr, ptr %8, i64 41
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7) #9
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %11) #9
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !60 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper16getAttributeNodeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1025XercesNamedNodeMapWrapper12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1025XercesNamedNodeMapWrapper12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper20getElementsByTagNameERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper12setAttributeERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper16setAttributeNodeEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper19removeAttributeNodeEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper15removeAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper14getAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !41 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %9 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, ptr noundef %9) #9
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %13) #9
  ret ptr %14
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper14setAttributeNSERKNS_14XalanDOMStringES3_S3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7) #9
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper17removeAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper18getAttributeNodeNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !41 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  %7 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  %8 = load ptr, ptr %5, align 8, !tbaa !42
  %9 = getelementptr inbounds ptr, ptr %8, i64 51
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, ptr noundef %7) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %11) #9
  br label %17

17:                                               ; preds = %3, %13
  %18 = phi ptr [ %16, %13 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper18setAttributeNodeNSEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #13
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #13
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper4itemEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper14getMappingModeEv(ptr noundef nonnull align 8 dereferenceable(432) %5) #9
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  %15 = zext i32 %1 to i64
  %16 = load ptr, ptr %14, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %15) #9
  %20 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %19) #9
  br label %36

21:                                               ; preds = %2
  %22 = load ptr, ptr %0, align 8, !tbaa !42
  %23 = getelementptr inbounds ptr, ptr %22, i64 7
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %21, %27
  %28 = phi i32 [ %34, %27 ], [ 0, %21 ]
  %29 = phi ptr [ %33, %27 ], [ %25, %21 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %30, i64 10
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29) #9
  %34 = add nuw i32 %28, 1
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %27, !llvm.loop !61

36:                                               ; preds = %27, %21, %7
  %37 = phi ptr [ %20, %7 ], [ %25, %21 ], [ %33, %27 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XercesDocumentWrapper14getMappingModeEv(ptr noundef nonnull align 8 dereferenceable(432) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 8, !tbaa !63, !range !94, !noundef !95
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn8_NK11xalanc_1_1020XercesElementWrapper4itemEj(ptr noundef %0, i32 noundef %1) unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper4itemEj(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %1) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1020XercesElementWrapper9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef i32 @_ZThn8_NK11xalanc_1_1020XercesElementWrapper9getLengthEv(ptr nocapture noundef readonly %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1020XercesElementWrapper9getLengthEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #9
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br i1 %2, label %5, label %3, !prof !97

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !98 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !99 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !100
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !104 {
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!36 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!37 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!39 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !50, i64 16}
!46 = !{!"_ZTSN11xalanc_1_1020XercesElementWrapperE", !47, i64 0, !49, i64 8, !50, i64 16, !50, i64 24, !52, i64 32}
!47 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !48, i64 0}
!48 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!49 = !{!"_ZTSN11xalanc_1_1013XalanNodeListE"}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !44, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1025XercesNamedNodeMapWrapperE", !53, i64 0, !50, i64 8, !50, i64 16}
!53 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!54 = !{!50, !50, i64 0}
!55 = !{!46, !50, i64 24}
!56 = !{!57, !50, i64 8}
!57 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !58, i64 56}
!58 = !{!"long", !51, i64 0}
!59 = !{!57, !58, i64 56}
!60 = !{!"function_entry_count", i64 12093723}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !81, i64 288}
!64 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapperE", !65, i64 0, !50, i64 8, !50, i64 16, !66, i64 24, !73, i64 160, !76, i64 176, !50, i64 216, !79, i64 224, !80, i64 248, !50, i64 280, !81, i64 288, !81, i64 289, !81, i64 290, !82, i64 296, !85, i64 336, !88, i64 376, !91, i64 416}
!65 = !{!"_ZTSN11xalanc_1_1013XalanDocumentE", !48, i64 0}
!66 = !{!"_ZTSN11xalanc_1_1027XercesWrapperToXalanNodeMapE", !67, i64 0}
!67 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEEE", !68, i64 0, !69, i64 1, !50, i64 8, !70, i64 16, !58, i64 24, !58, i64 32, !71, i64 40, !71, i64 64, !72, i64 88, !58, i64 120, !58, i64 128}
!68 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKN11xercesc_2_77DOMNodeEEE"}
!69 = !{!"_ZTSSt8equal_toIPKN11xercesc_2_77DOMNodeEE"}
!70 = !{!"float", !51, i64 0}
!71 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !50, i64 0, !58, i64 8, !58, i64 16, !50, i64 24}
!73 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEE", !74, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataE", !75, i64 0}
!75 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEE", !50, i64 0, !50, i64 8}
!76 = !{!"_ZTSN11xalanc_1_1031XercesWrapperNavigatorAllocatorE", !77, i64 0}
!77 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE", !58, i64 8, !78, i64 16}
!78 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!79 = !{!"_ZTSN11xalanc_1_1021XercesNodeListWrapperE", !49, i64 0, !50, i64 8, !50, i64 16}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !50, i64 0, !58, i64 8, !58, i64 16, !50, i64 24}
!81 = !{!"bool", !51, i64 0}
!82 = !{!"_ZTSN11xalanc_1_1029XercesElementWrapperAllocatorE", !83, i64 0}
!83 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_20XercesElementWrapperENS_10ArenaBlockIS1_mEEEE", !58, i64 8, !84, i64 16}
!84 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_20XercesElementWrapperEmEEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!85 = !{!"_ZTSN11xalanc_1_1026XercesTextWrapperAllocatorE", !86, i64 0}
!86 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesTextWrapperENS_10ArenaBlockIS1_mEEEE", !58, i64 8, !87, i64 16}
!87 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesTextWrapperEmEEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!88 = !{!"_ZTSN11xalanc_1_1026XercesAttrWrapperAllocatorE", !89, i64 0}
!89 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesAttrWrapperENS_10ArenaBlockIS1_mEEEE", !58, i64 8, !90, i64 16}
!90 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesAttrWrapperEmEEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!91 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEE", !92, i64 0}
!92 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataE", !93, i64 0}
!93 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEE", !50, i64 0, !50, i64 8}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!"function_entry_count", i64 967143541}
!97 = !{!"branch_weights", i32 403628487, i32 563515056}
!98 = !{!"function_entry_count", i64 3070433834}
!99 = !{!"function_entry_count", i64 1083116306}
!100 = !{!101, !58, i64 8}
!101 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !50, i64 0, !58, i64 8, !58, i64 16, !50, i64 24}
!102 = !{!"function_entry_count", i64 565220908}
!103 = !{!101, !50, i64 24}
!104 = !{!"function_entry_count", i64 6521798493}
