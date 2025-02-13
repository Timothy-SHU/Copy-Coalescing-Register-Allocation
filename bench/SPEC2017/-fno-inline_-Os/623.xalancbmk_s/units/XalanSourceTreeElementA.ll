; ModuleID = 'XalanSourceTreeElementA.cpp'
source_filename = "XalanSourceTreeElementA.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeElementA" = type { %"class.xalanc_1_10::XalanSourceTreeElement", %"class.xalanc_1_10::XalanNamedNodeMap", ptr, i64 }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeElementA, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeElementA, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanSourceTreeElementAEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

@_ZTVN11xalanc_1_1023XalanSourceTreeElementAE = dso_local unnamed_addr constant { [52 x ptr], [12 x ptr] } { [52 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanSourceTreeElementAE, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD0Ev, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA13getAttributesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9cloneNodeEb, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getPrefixEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getLocalNameEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA16getAttributeNodeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA18getAttributeNodeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA4itemEj, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_], [12 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN11xalanc_1_1023XalanSourceTreeElementAE, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD1Ev, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD0Ev, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA4itemEj, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1023XalanSourceTreeElementAE = dso_local constant [41 x i8] c"N11xalanc_1_1023XalanSourceTreeElementAE\00", align 1
@_ZTIN11xalanc_1_1022XalanSourceTreeElementE = external constant ptr
@_ZTIN11xalanc_1_1017XalanNamedNodeMapE = external constant ptr
@_ZTIN11xalanc_1_1023XalanSourceTreeElementAE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanSourceTreeElementAE, i32 0, i32 2, ptr @_ZTIN11xalanc_1_1022XalanSourceTreeElementE, i64 2, ptr @_ZTIN11xalanc_1_1017XalanNamedNodeMapE, i64 18432 }, align 8
@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp, ptr null }]

@_ZN11xalanc_1_1023XalanSourceTreeElementAC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m
@_ZN11xalanc_1_1023XalanSourceTreeElementAD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev
@_ZN11xalanc_1_1023XalanSourceTreeElementAC1ERN11xercesc_2_713MemoryManagerERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKS0_b

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA13getAttributesEv(ptr noundef nonnull readnone align 8 dereferenceable(96) %0) unnamed_addr #2 align 2 !prof !53 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !54 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !54 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getAttributeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 !prof !54 {
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA16getAttributeNodeERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 !prof !54 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !65
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %13
  %9 = add i32 %15, 1
  %10 = zext i32 %9 to i64
  %11 = load i64, ptr %3, align 8, !tbaa !65
  %12 = icmp ugt i64 %11, %10
  br i1 %12, label %13, label %28, !llvm.loop !68

13:                                               ; preds = %6, %8
  %14 = phi i64 [ 0, %6 ], [ %10, %8 ]
  %15 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(40) %18) #18
  %23 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  br i1 %23, label %24, label %8

24:                                               ; preds = %13
  %25 = load ptr, ptr %7, align 8, !tbaa !70
  %26 = getelementptr inbounds ptr, ptr %25, i64 %14
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  br label %28

28:                                               ; preds = %8, %2, %24
  %29 = phi ptr [ %27, %24 ], [ null, %2 ], [ null, %8 ]
  ret ptr %29
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getAttributeNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #5 align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !63
  %5 = getelementptr inbounds ptr, ptr %4, i64 39
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE, %3 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA18getAttributeNodeNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #5 align 2 !prof !54 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %33
  %10 = phi i64 [ 0, %7 ], [ %35, %33 ]
  %11 = phi i32 [ 0, %7 ], [ %34, %33 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds ptr, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(40) %14) #18
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  br i1 %19, label %20, label %33

20:                                               ; preds = %9
  %21 = load ptr, ptr %8, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 %10
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(40) %23) #18
  %28 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load ptr, ptr %8, align 8, !tbaa !70
  %31 = getelementptr inbounds ptr, ptr %30, i64 %10
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  br label %38

33:                                               ; preds = %9, %20
  %34 = add i32 %11, 1
  %35 = zext i32 %34 to i64
  %36 = load i64, ptr %4, align 8, !tbaa !65
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %9, label %38, !llvm.loop !72

38:                                               ; preds = %33, %3, %29
  %39 = phi ptr [ %32, %29 ], [ null, %3 ], [ null, %33 ]
  ret ptr %39
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !73 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = icmp ugt i64 %5, %3
  br i1 %6, label %7, label %12, !prof !74

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 !prof !54 {
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !65
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #5 align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !63
  %5 = getelementptr inbounds ptr, ptr %4, i64 39
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #19
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -72
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -72
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeElementAD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #15
  ret void
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE(ptr nocapture noundef readnone %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr poison) #18
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA4itemEj(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -72
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA4itemEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %1) #18
  ret ptr %4
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -72
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv(ptr nocapture noundef readonly %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -72
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret i32 %3
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE(ptr nocapture noundef readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr nonnull align 8 poison) #18
  unreachable
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -72
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  ret ptr %5
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE(ptr nocapture noundef readnone %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr poison) #18
  unreachable
}

; Function Attrs: noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef readnone %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr nonnull align 8 poison) #18
  unreachable
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #9 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #18
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !75 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !79

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !81 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !82 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !83

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #18
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !84, !llvm.loop !85

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !86 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !87 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !82 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9) #18
  %11 = getelementptr inbounds i8, ptr %0, i64 72
  invoke void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
          to label %12 unwind label %15

12:                                               ; preds = %10
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 1, i64 2), ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  store ptr %4, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  store i64 %5, ptr %14, align 8, !tbaa !65
  ret void

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  resume { ptr, i32 } %16
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !92 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) #18
  %5 = getelementptr inbounds i8, ptr %0, i64 72
  invoke void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %6 unwind label %13

6:                                                ; preds = %4
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  store ptr %9, ptr %7, align 8, !tbaa !70
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !65
  store i64 %12, ptr %10, align 8, !tbaa !65
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  resume { ptr, i32 } %14
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA6createERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 96) #18
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #18
  %9 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  invoke void @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) #18
          to label %10 unwind label %13

10:                                               ; preds = %3
  %11 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret ptr %9

13:                                               ; preds = %10, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !54 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !54 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #18
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !54 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !71
  store ptr %2, ptr %5, align 8, !tbaa !71
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanSourceTreeElementAEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanSourceTreeElementAEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !54 {
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %4, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  store ptr %6, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !54 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !54 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  store ptr %1, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !93
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !54 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = load ptr, ptr %4, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeElementAELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #12

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 comdat !prof !96 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp() #9 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind optsize }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!52}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!36 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!47 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m, i64 189536}
!48 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m, ptr @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev, i64 189536}
!49 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev, ptr @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev, i64 189536}
!50 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev, i64 189536}
!51 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 217913}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !59, i64 8}
!56 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !57, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !62, i64 64}
!57 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !58, i64 0}
!58 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!"long", !60, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !61, i64 0}
!65 = !{!66, !62, i64 88}
!66 = !{!"_ZTSN11xalanc_1_1023XalanSourceTreeElementAE", !56, i64 0, !67, i64 72, !59, i64 80, !62, i64 88}
!67 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!66, !59, i64 80}
!71 = !{!59, !59, i64 0}
!72 = distinct !{!72, !69}
!73 = !{!"function_entry_count", i64 228788}
!74 = !{!"branch_weights", i32 228789, i32 1}
!75 = !{!"function_entry_count", i64 43398227}
!76 = !{!"function_entry_count", i64 128698679}
!77 = !{!78, !62, i64 16}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !59, i64 0, !62, i64 8, !62, i64 16, !59, i64 24}
!79 = !{!"branch_weights", i32 43398290, i32 85300391}
!80 = !{!78, !59, i64 24}
!81 = !{!"function_entry_count", i64 6521798503}
!82 = !{!"function_entry_count", i64 85300390}
!83 = !{!"branch_weights", i32 1, i32 12185770}
!84 = !{!"branch_weights", i32 12185770, i32 -193930395}
!85 = distinct !{!85, !69}
!86 = !{!"function_entry_count", i64 227375739}
!87 = !{!"function_entry_count", i64 568333389}
!88 = !{!78, !59, i64 0}
!89 = !{!"function_entry_count", i64 30137156670}
!90 = !{!"function_entry_count", i64 825654975}
!91 = !{!78, !62, i64 8}
!92 = !{!"function_entry_count", i64 189536}
!93 = !{!94, !59, i64 8}
!94 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanSourceTreeElementAEE", !59, i64 0, !59, i64 8}
!95 = !{!94, !59, i64 0}
!96 = !{!"function_entry_count", i64 555646850}
