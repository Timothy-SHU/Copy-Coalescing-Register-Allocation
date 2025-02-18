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
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapperC2EPKN11xercesc_2_710DOMElementERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_1012XalanElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  invoke void @_ZN11xalanc_1_1013XalanNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %5 unwind label %15

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !47
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %12 unwind label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(64) %2)
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

declare void @_ZN11xalanc_1_1012XalanElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1013XalanNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  tail call void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xalanc_1_1020XercesElementWrapperD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  tail call void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesElementWrapperE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  tail call void @_ZN11xalanc_1_1013XalanNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xalanc_1_1020XercesElementWrapperD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1020XercesElementWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1020XercesElementWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i32 1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper13getAttributesEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesElementWrapper13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #10
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesElementWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret i1 %6
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesElementWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(432) %5)
  ret i1 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1020XercesElementWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !52
  ret i64 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper10getTagNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper12getAttributeERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  %13 = load ptr, ptr %6, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 41
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %12)
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %16)
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper16getAttributeNodeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 4
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1025XercesNamedNodeMapWrapper12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xalanc_1_1025XercesNamedNodeMapWrapper12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper20getElementsByTagNameERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper12setAttributeERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper16setAttributeNodeEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper19removeAttributeNodeEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper15removeAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesElementWrapper14getAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = select i1 %16, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %18
  %20 = load ptr, ptr %7, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 48
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %13, ptr noundef %19)
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %23)
  ret ptr %24
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper14setAttributeNSERKNS_14XalanDOMStringES3_S3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #10
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1020XercesElementWrapper17removeAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper18getAttributeNodeNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !53
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %18 = load ptr, ptr %5, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 51
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11, ptr noundef %17)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull %21)
  br label %27

27:                                               ; preds = %3, %23
  %28 = phi ptr [ %26, %23 ], [ null, %3 ]
  ret ptr %28
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesElementWrapper18setAttributeNodeNSEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesElementWrapper22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper4itemEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentWrapper", ptr %6, i64 0, i32 10
  %8 = load i8, ptr %7, align 8, !tbaa !55, !range !86, !noundef !87
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %17 = zext i32 %1 to i64
  %18 = load ptr, ptr %16, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %17)
  %22 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %21)
  br label %38

23:                                               ; preds = %2
  %24 = load ptr, ptr %0, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23, %29
  %30 = phi i32 [ %36, %29 ], [ 0, %23 ]
  %31 = phi ptr [ %35, %29 ], [ %27, %23 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %36 = add nuw i32 %30, 1
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %29, !llvm.loop !88

38:                                               ; preds = %29, %23, %10
  %39 = phi ptr [ %22, %10 ], [ %27, %23 ], [ %35, %29 ]
  ret ptr %39
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn8_NK11xalanc_1_1020XercesElementWrapper4itemEj(ptr noundef %0, i32 noundef %1) unnamed_addr #9 align 2 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1020XercesElementWrapper4itemEj(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1020XercesElementWrapper9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesElementWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: cold uwtable
define dso_local noundef i32 @_ZThn8_NK11xalanc_1_1020XercesElementWrapper9getLengthEv(ptr nocapture noundef readonly %0) unnamed_addr #9 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 16}
!39 = !{!"_ZTSN11xalanc_1_1020XercesElementWrapperE", !40, i64 0, !42, i64 8, !43, i64 16, !43, i64 24, !45, i64 32}
!40 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !41, i64 0}
!41 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!42 = !{!"_ZTSN11xalanc_1_1013XalanNodeListE"}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !37, i64 0}
!45 = !{!"_ZTSN11xalanc_1_1025XercesNamedNodeMapWrapperE", !46, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!47 = !{!43, !43, i64 0}
!48 = !{!39, !43, i64 24}
!49 = !{!50, !43, i64 8}
!50 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !51, i64 56}
!51 = !{!"long", !44, i64 0}
!52 = !{!50, !51, i64 56}
!53 = !{!54, !51, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !43, i64 0, !51, i64 8, !51, i64 16, !43, i64 24}
!55 = !{!56, !73, i64 288}
!56 = !{!"_ZTSN11xalanc_1_1021XercesDocumentWrapperE", !57, i64 0, !43, i64 8, !43, i64 16, !58, i64 24, !65, i64 160, !68, i64 176, !43, i64 216, !71, i64 224, !72, i64 248, !43, i64 280, !73, i64 288, !73, i64 289, !73, i64 290, !74, i64 296, !77, i64 336, !80, i64 376, !83, i64 416}
!57 = !{!"_ZTSN11xalanc_1_1013XalanDocumentE", !41, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1027XercesWrapperToXalanNodeMapE", !59, i64 0}
!59 = !{!"_ZTSN11xalanc_1_108XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS4_EEEE", !60, i64 0, !61, i64 1, !43, i64 8, !62, i64 16, !51, i64 24, !51, i64 32, !63, i64 40, !63, i64 64, !64, i64 88, !51, i64 120, !51, i64 128}
!60 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKN11xercesc_2_77DOMNodeEEE"}
!61 = !{!"_ZTSSt8equal_toIPKN11xercesc_2_77DOMNodeEE"}
!62 = !{!"float", !44, i64 0}
!63 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS5_EEE5EntryEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKN11xercesc_2_77DOMNodeEPNS_9XalanNodeENS_17XalanMapKeyTraitsIS7_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !43, i64 0, !51, i64 8, !51, i64 16, !43, i64 24}
!65 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EEE", !66, i64 0}
!66 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_22XalanDOMImplementationELb1EE17MemMgrAutoPtrDataE", !67, i64 0}
!67 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1022XalanDOMImplementationEE", !43, i64 0, !43, i64 8}
!68 = !{!"_ZTSN11xalanc_1_1031XercesWrapperNavigatorAllocatorE", !69, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XercesWrapperNavigatorENS_10ArenaBlockIS1_mEEEE", !51, i64 8, !70, i64 16}
!70 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XercesWrapperNavigatorEmEEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1021XercesNodeListWrapperE", !42, i64 0, !43, i64 8, !43, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !43, i64 0, !51, i64 8, !51, i64 16, !43, i64 24}
!73 = !{!"bool", !44, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1029XercesElementWrapperAllocatorE", !75, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_20XercesElementWrapperENS_10ArenaBlockIS1_mEEEE", !51, i64 8, !76, i64 16}
!76 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_20XercesElementWrapperEmEEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!77 = !{!"_ZTSN11xalanc_1_1026XercesTextWrapperAllocatorE", !78, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesTextWrapperENS_10ArenaBlockIS1_mEEEE", !51, i64 8, !79, i64 16}
!79 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesTextWrapperEmEEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!80 = !{!"_ZTSN11xalanc_1_1026XercesAttrWrapperAllocatorE", !81, i64 0}
!81 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XercesAttrWrapperENS_10ArenaBlockIS1_mEEEE", !51, i64 8, !82, i64 16}
!82 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XercesAttrWrapperEmEEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!83 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EEE", !84, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_18XalanDOMStringPoolELb1EE17MemMgrAutoPtrDataE", !85, i64 0}
!85 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1018XalanDOMStringPoolEE", !43, i64 0, !43, i64 8}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
