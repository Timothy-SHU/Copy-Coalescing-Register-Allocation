; ModuleID = 'XalanSourceTreeDocumentFragment.cpp'
source_filename = "XalanSourceTreeDocumentFragment.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocumentFragment" = type { %"class.xalanc_1_10::XalanDocumentFragment", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1056) %2) unnamed_addr #3 align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !55
  ret void
}

declare void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  store ptr %8, ptr %6, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %10, align 8, !tbaa !45
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext %3)
          to label %17 unwind label %20

17:                                               ; preds = %12, %4
  %18 = phi ptr [ null, %4 ], [ %16, %12 ]
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !55
  ret void

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %21
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getNodeValueEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret i32 11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #10 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #11 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #16
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #16
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #11 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 !prof !43 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment8getIndexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !43 {
  ret i64 0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_22XalanSourceTreeElementE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment13clearChildrenEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0) local_unnamed_addr #12 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 3
  store ptr null, ptr %2, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XalanSourceTreeDocumentFragment5cloneEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32)
  %9 = load ptr, ptr %3, align 8, !tbaa !58
  invoke void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %8

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %8, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8)
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !63

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %0, align 8, !tbaa !65
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !66

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp() #15 section ".text.startup" !prof !67 !PGOFuncName !68 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #16
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev, i64 37275}
!36 = !{ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentD2Ev, ptr @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev, i64 37275}
!37 = !{ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragment15appendChildNodeEPNS_19XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_31XalanSourceTreeDocumentFragmentERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, i64 33406}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!39 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!40 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp, ptr @__cxa_atexit, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!"function_entry_count", i64 37275}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !47, i64 0}
!51 = !{!52, !49, i64 16}
!52 = !{!"_ZTSN11xalanc_1_1031XalanSourceTreeDocumentFragmentE", !53, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!53 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !54, i64 0}
!54 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!55 = !{!52, !49, i64 24}
!56 = !{!"function_entry_count", i64 41144}
!57 = !{!"function_entry_count", i64 33406}
!58 = !{!52, !49, i64 8}
!59 = !{!"function_entry_count", i64 42470003}
!60 = !{!61, !62, i64 16}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !49, i64 0, !62, i64 8, !62, i64 16, !49, i64 24}
!62 = !{!"long", !50, i64 0}
!63 = !{!"branch_weights", i32 52000, i32 42418003}
!64 = !{!61, !49, i64 24}
!65 = !{!61, !49, i64 0}
!66 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!67 = !{!"function_entry_count", i64 1}
!68 = !{!"XalanSourceTreeDocumentFragment.cpp;_GLOBAL__sub_I_XalanSourceTreeDocumentFragment.cpp"}
