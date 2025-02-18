; ModuleID = 'XObjectResultTreeFragProxyBase.cpp'
source_filename = "XObjectResultTreeFragProxyBase.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1030XObjectResultTreeFragProxyBaseE = dso_local unnamed_addr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyBaseE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD0Ev, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeNameEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getNodeValueEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeTypeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getParentNodeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getChildNodesEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase14getNextSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getAttributesEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9cloneNodeEb, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11appendChildEPNS_9XalanNodeE, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9normalizeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9getPrefixEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getLocalNameEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9isIndexedEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase8getIndexEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase5cloneEb] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE = dso_local constant [48 x i8] c"N11xalanc_1_1030XObjectResultTreeFragProxyBaseE\00", align 1
@_ZTIN11xalanc_1_1021XalanDocumentFragmentE = external constant ptr
@_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyBaseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE, ptr @_ZTIN11xalanc_1_1021XalanDocumentFragmentE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XObjectResultTreeFragProxyBase.cpp, ptr null }]

@_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [31 x ptr] }, ptr @_ZTVN11xalanc_1_1030XObjectResultTreeFragProxyBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

declare void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [31 x ptr] }, ptr @_ZTVN11xalanc_1_1030XObjectResultTreeFragProxyBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !42 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getNodeValueEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret i32 11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #13
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #13
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 !prof !42 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase8getIndexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !42 {
  ret i64 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase5cloneEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #9 align 2 !prof !42 {
  ret ptr null
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !48
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr %0, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !56

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !42 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XObjectResultTreeFragProxyBase.cpp() #12 section ".text.startup" !prof !57 !PGOFuncName !58 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase13s_emptyStringE, ptr nonnull @__dso_handle) #13
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev, ptr @_ZN11xalanc_1_1021XalanDocumentFragmentC2Ev, i64 67250268}
!36 = !{ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev, ptr @_ZN11xalanc_1_1021XalanDocumentFragmentD2Ev, i64 67250268}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!38 = !{ptr @_GLOBAL__sub_I_XObjectResultTreeFragProxyBase.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!39 = !{ptr @_GLOBAL__sub_I_XObjectResultTreeFragProxyBase.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_GLOBAL__sub_I_XObjectResultTreeFragProxyBase.cpp, ptr @__cxa_atexit, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!"function_entry_count", i64 67250268}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"function_entry_count", i64 42470003}
!48 = !{!49, !52, i64 16}
!49 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !50, i64 0, !52, i64 8, !52, i64 16, !50, i64 24}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !46, i64 0}
!52 = !{!"long", !51, i64 0}
!53 = !{!"branch_weights", i32 52000, i32 42418003}
!54 = !{!49, !50, i64 24}
!55 = !{!49, !50, i64 0}
!56 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"XObjectResultTreeFragProxyBase.cpp;_GLOBAL__sub_I_XObjectResultTreeFragProxyBase.cpp"}
