; ModuleID = 'XObjectResultTreeFragProxyText.cpp'
source_filename = "XObjectResultTreeFragProxyText.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj = comdat any

$_ZN11xalanc_1_1014XalanDOMString4swapERS0_ = comdat any

$_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1030XObjectResultTreeFragProxyTextE = dso_local unnamed_addr constant { [39 x ptr] } { [39 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyTextE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD2Ev, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD0Ev, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText11getNodeNameEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText12getNodeValueEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText11getNodeTypeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getParentNodeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getChildNodesEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getFirstChildEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText12getLastChildEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText14getNextSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getAttributesEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9cloneNodeEb, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13hasChildNodesEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9normalizeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9getPrefixEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText12getLocalNameEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9isIndexedEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText8getIndexEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText7getDataEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9getLengthEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13substringDataEjjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10appendDataERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10insertDataEjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10deleteDataEjj, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText11replaceDataEjjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9splitTextEj, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText21isIgnorableWhitespaceEv] }, align 8
@_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12s_nameStringE = dso_local local_unnamed_addr constant ptr @_ZL12s_nameString, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZL12s_nameString = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"#text\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyTextE = dso_local constant [48 x i8] c"N11xalanc_1_1030XObjectResultTreeFragProxyTextE\00", align 1
@_ZTIN11xalanc_1_109XalanTextE = external constant ptr
@_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyTextE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyTextE, ptr @_ZTIN11xalanc_1_109XalanTextE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XObjectResultTreeFragProxyText.cpp, ptr null }]

@_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextC1ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextC2ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextC2ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 !prof !63 {
  tail call void @_ZN11xalanc_1_109XalanTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTVN11xalanc_1_1030XObjectResultTreeFragProxyTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109XalanTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !63 {
  tail call void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr @_ZL12s_nameString
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret i32 3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #7 align 2 !prof !70 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #11
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #11
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 !prof !70 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText8getIndexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !70 {
  ret i64 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  %8 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #11
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat !prof !76 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText13substringDataEjjRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(36) %3) unnamed_addr #4 align 2 !prof !70 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %1, i32 noundef %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 !prof !77 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %2, i32 noundef %3) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10appendDataERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10insertDataEjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #11
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10deleteDataEjj(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #11
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText11replaceDataEjjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7) #11
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9splitTextEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #15
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyText21isIgnorableWhitespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectResultTreeFragProxyText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #11
  ret i1 %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_nameString, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL12s_nameString, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1) #11
  invoke void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_nameString, ptr noundef nonnull align 8 dereferenceable(36) %2) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !78 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  tail call void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyText9terminateEv() local_unnamed_addr #4 align 2 !prof !70 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_nameString, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  invoke void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %0) #11
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #12
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !84

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !87 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !88

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #11
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !89, !llvm.loop !90

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !92 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !93 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !87 {
  %3 = load ptr, ptr %0, align 8, !tbaa !94
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !98 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !99 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !100 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !101
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !104 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %3 = load ptr, ptr %0, align 8, !tbaa !94
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = load ptr, ptr %1, align 8, !tbaa !94
  store ptr %7, ptr %0, align 8, !tbaa !94
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  store ptr %11, ptr %5, align 8, !tbaa !85
  store ptr %3, ptr %1, align 8, !tbaa !94
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !105
  store <2 x i64> %9, ptr %4, align 8, !tbaa !105
  store <2 x i64> %12, ptr %8, align 8, !tbaa !105
  store ptr %6, ptr %10, align 8, !tbaa !85
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat !prof !78 {
  %3 = load i32, ptr %0, align 4, !tbaa !106
  %4 = load i32, ptr %1, align 4, !tbaa !106
  store i32 %4, ptr %0, align 4, !tbaa !106
  store i32 %3, ptr %1, align 4, !tbaa !106
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XObjectResultTreeFragProxyText.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
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
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextC2ERKNS_7XObjectERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109XalanTextC2Ev, i64 67250266}
!37 = !{ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyTextD2Ev, ptr @_ZN11xalanc_1_109XalanTextD2Ev, i64 67250266}
!38 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 243632}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj, i64 243632}
!41 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 320}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 320}
!43 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_, i64 320}
!44 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 153}
!45 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, i64 153}
!46 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 153}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!57 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!58 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!59 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 43398227}
!63 = !{!"function_entry_count", i64 67250266}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !66, i64 0}
!70 = !{!"function_entry_count", i64 0}
!71 = !{!72, !68, i64 8}
!72 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyTextE", !73, i64 0, !68, i64 8, !68, i64 16}
!73 = !{!"_ZTSN11xalanc_1_109XalanTextE", !74, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !75, i64 0}
!75 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!76 = !{!"function_entry_count", i64 66708619}
!77 = !{!"function_entry_count", i64 243632}
!78 = !{!"function_entry_count", i64 320}
!79 = !{!"function_entry_count", i64 153}
!80 = !{!"function_entry_count", i64 128698679}
!81 = !{!82, !83, i64 16}
!82 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !68, i64 0, !83, i64 8, !83, i64 16, !68, i64 24}
!83 = !{!"long", !69, i64 0}
!84 = !{!"branch_weights", i32 43398290, i32 85300391}
!85 = !{!82, !68, i64 24}
!86 = !{!"function_entry_count", i64 6521798493}
!87 = !{!"function_entry_count", i64 85300390}
!88 = !{!"branch_weights", i32 1, i32 12185770}
!89 = !{!"branch_weights", i32 12185770, i32 -193930396}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"function_entry_count", i64 227375739}
!93 = !{!"function_entry_count", i64 568333389}
!94 = !{!82, !68, i64 0}
!95 = !{!"function_entry_count", i64 30137156660}
!96 = !{!"function_entry_count", i64 825654971}
!97 = !{!82, !83, i64 8}
!98 = !{!"function_entry_count", i64 230527004}
!99 = !{!"function_entry_count", i64 3070433834}
!100 = !{!"function_entry_count", i64 1414337980}
!101 = !{!102, !103, i64 32}
!102 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !82, i64 0, !103, i64 32}
!103 = !{!"int", !69, i64 0}
!104 = !{!"function_entry_count", i64 85300747}
!105 = !{!83, !83, i64 0}
!106 = !{!103, !103, i64 0}
