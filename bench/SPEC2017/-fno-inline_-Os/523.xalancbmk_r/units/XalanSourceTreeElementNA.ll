; ModuleID = 'XalanSourceTreeElementNA.cpp'
source_filename = "XalanSourceTreeElementNA.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEmptyNamedNodeMap" = type { %"class.xalanc_1_10::XalanNamedNodeMap" }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeElementNA, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeElementNA, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanSourceTreeElementNAEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

@_ZN11xalanc_1_1024XalanSourceTreeElementNA17s_emptyAttributesE = dso_local global %"class.xalanc_1_10::XalanEmptyNamedNodeMap" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1024XalanSourceTreeElementNAE = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanSourceTreeElementNAE, ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAD2Ev, ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAD0Ev, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA13getAttributesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA9cloneNodeEb, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA9getPrefixEv, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA12getLocalNameEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA12getAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA16getAttributeNodeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA14getAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA18getAttributeNodeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1024XalanSourceTreeElementNAE = dso_local constant [42 x i8] c"N11xalanc_1_1024XalanSourceTreeElementNAE\00", align 1
@_ZTIN11xalanc_1_1022XalanSourceTreeElementE = external constant ptr
@_ZTIN11xalanc_1_1024XalanSourceTreeElementNAE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanSourceTreeElementNAE, ptr @_ZTIN11xalanc_1_1022XalanSourceTreeElementE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeElementNA.cpp, ptr null }]

@_ZN11xalanc_1_1024XalanSourceTreeElementNAC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m
@_ZN11xalanc_1_1024XalanSourceTreeElementNAD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAD2Ev
@_ZN11xalanc_1_1024XalanSourceTreeElementNAC1ERN11xercesc_2_713MemoryManagerERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAC2ERN11xercesc_2_713MemoryManagerERKS0_b

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1024XalanSourceTreeElementNA17s_emptyAttributesE) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD1Ev, ptr nonnull @_ZN11xalanc_1_1024XalanSourceTreeElementNA17s_emptyAttributesE, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanSourceTreeElementNAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #4 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #12
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanSourceTreeElementNAE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanSourceTreeElementNAD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanSourceTreeElementNAD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xalanc_1_1024XalanSourceTreeElementNAD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanSourceTreeElementNAC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) #12
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanSourceTreeElementNAE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNA6createERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 72) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #12
  %9 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  invoke void @_ZN11xalanc_1_1024XalanSourceTreeElementNAC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2) #12
          to label %10 unwind label %13

10:                                               ; preds = %3
  %11 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret ptr %9

13:                                               ; preds = %10, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNA17s_emptyAttributesE
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #10 align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA12getAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA16getAttributeNodeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA14getAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1024XalanSourceTreeElementNA18getAttributeNodeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 !prof !42 {
  ret ptr null
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

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

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

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

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

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !42 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !52
  store ptr %2, ptr %5, align 8, !tbaa !52
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanSourceTreeElementNAEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanSourceTreeElementNAEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !42 {
  %4 = load ptr, ptr %1, align 8, !tbaa !52
  store ptr %4, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !52
  store ptr %6, ptr %5, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !42 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %4, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #12
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !42 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !42 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !43
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_24XalanSourceTreeElementNAELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeElementNA.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m, i64 643375}
!36 = !{ptr @_ZN11xalanc_1_1024XalanSourceTreeElementNAD2Ev, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev, i64 643375}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 643375}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !45, i64 8}
!44 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1024XalanSourceTreeElementNAEE", !45, i64 0, !45, i64 8}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!48, !45, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !49, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !51, i64 64}
!49 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !50, i64 0}
!50 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!51 = !{!"long", !46, i64 0}
!52 = !{!45, !45, i64 0}
!53 = !{!44, !45, i64 0}
