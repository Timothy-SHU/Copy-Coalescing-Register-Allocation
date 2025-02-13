; ModuleID = 'XalanSourceTreeDocumentFragment.cpp'
source_filename = "XalanSourceTreeDocumentFragment.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocumentFragment" = type { %"class.xalanc_1_10::XalanDocumentFragment", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeDocumentFragment, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeDocumentFragment, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE = dso_local unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD0Ev, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11getNodeNameEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getNodeValueEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11getNodeTypeEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getParentNodeEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getChildNodesEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getFirstChildEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getLastChildEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment14getNextSiblingEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getAttributesEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9cloneNodeEb, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13hasChildNodesEv, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment9normalizeEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9getPrefixEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getLocalNameEv, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9isIndexedEv, ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment8getIndexEv] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XalanSourceTreeDocumentFragmentE = dso_local constant [49 x i8] c"N11xalanc_1_1031XalanSourceTreeDocumentFragmentE\00", align 1
@_ZTIN11xalanc_1_1021XalanDocumentFragmentE = external constant ptr
@_ZTIN11xalanc_1_1031XalanSourceTreeDocumentFragmentE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, ptr @_ZTIN11xalanc_1_1021XalanDocumentFragmentE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp, ptr null }]

@_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC1ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE
@_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC1ERN11xercesc_2_713MemoryManagerERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERKS0_b
@_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #13
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1056) %2) unnamed_addr #4 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  store ptr %8, ptr %6, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %10, align 8, !tbaa !52
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext %3) #13
          to label %17 unwind label %20

17:                                               ; preds = %12, %4
  %18 = phi ptr [ null, %4 ], [ %16, %12 ]
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !62
  ret void

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %21
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getNodeValueEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret i32 11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #9 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #9 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #13
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #13
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #9 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 !prof !63 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment8getIndexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !63 {
  ret i64 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment13clearChildrenEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0) local_unnamed_addr #10 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  store ptr null, ptr %2, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment5cloneEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9) #13
  %10 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %11 = load ptr, ptr %4, align 8, !tbaa !66
  invoke void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) #13
          to label %12 unwind label %15

12:                                               ; preds = %2
  %13 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret ptr %10

15:                                               ; preds = %12, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !63 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !73

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !77

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !78, !llvm.loop !79

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !81 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !82 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !84 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !63 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !55
  store ptr %2, ptr %5, align 8, !tbaa !55
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !63 {
  %4 = load ptr, ptr %1, align 8, !tbaa !55
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !55
  store ptr %6, ptr %5, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !63 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = load ptr, ptr %4, align 8, !tbaa !52
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !63 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !87
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !67
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XalanSourceTreeDocumentFragmentELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev, i64 37275}
!37 = !{ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev, ptr @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev, i64 37275}
!38 = !{ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, i64 33406}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 43398227}
!51 = !{!"function_entry_count", i64 37275}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !54, i64 0}
!58 = !{!59, !56, i64 16}
!59 = !{!"_ZTSN11xalanc_1_1031XalanSourceTreeDocumentFragmentE", !60, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!60 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !61, i64 0}
!61 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!62 = !{!59, !56, i64 24}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!"function_entry_count", i64 41144}
!65 = !{!"function_entry_count", i64 33406}
!66 = !{!59, !56, i64 8}
!67 = !{!68, !56, i64 8}
!68 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XalanSourceTreeDocumentFragmentEE", !56, i64 0, !56, i64 8}
!69 = !{!"function_entry_count", i64 128698679}
!70 = !{!71, !72, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !56, i64 0, !72, i64 8, !72, i64 16, !56, i64 24}
!72 = !{!"long", !57, i64 0}
!73 = !{!"branch_weights", i32 43398290, i32 85300391}
!74 = !{!71, !56, i64 24}
!75 = !{!"function_entry_count", i64 6521798493}
!76 = !{!"function_entry_count", i64 85300390}
!77 = !{!"branch_weights", i32 1, i32 12185770}
!78 = !{!"branch_weights", i32 12185770, i32 -193930396}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"function_entry_count", i64 227375739}
!82 = !{!"function_entry_count", i64 568333389}
!83 = !{!71, !56, i64 0}
!84 = !{!"function_entry_count", i64 30137156660}
!85 = !{!"function_entry_count", i64 825654971}
!86 = !{!71, !72, i64 8}
!87 = !{!68, !56, i64 0}
