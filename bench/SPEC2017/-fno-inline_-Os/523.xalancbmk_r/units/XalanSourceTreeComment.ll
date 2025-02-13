; ModuleID = 'XalanSourceTreeComment.cpp'
source_filename = "XalanSourceTreeComment.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeComment" = type { %"class.xalanc_1_10::XalanComment", ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanComment" = type { %"class.xalanc_1_10::XalanCharacterData" }
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
@_ZTVN11xalanc_1_1022XalanSourceTreeCommentE = dso_local unnamed_addr constant { [37 x ptr] } { [37 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanSourceTreeCommentE, ptr @_ZN11xalanc_1_1022XalanSourceTreeCommentD2Ev, ptr @_ZN11xalanc_1_1022XalanSourceTreeCommentD0Ev, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment11getNodeNameEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment12getNodeValueEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment11getNodeTypeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getParentNodeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getChildNodesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getFirstChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment12getLastChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment14getNextSiblingEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getAttributesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment9cloneNodeEb, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13hasChildNodesEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment9normalizeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment9getPrefixEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment12getLocalNameEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment9isIndexedEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment8getIndexEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment7getDataEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment9getLengthEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13substringDataEjjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10appendDataERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10insertDataEjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10deleteDataEjj, ptr @_ZN11xalanc_1_1022XalanSourceTreeComment11replaceDataEjjRKNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_1022XalanSourceTreeComment12s_nameStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_10L18s_staticNameStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L9s_commentE = internal constant [9 x i16] [i16 35, i16 99, i16 111, i16 109, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022XalanSourceTreeCommentE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanSourceTreeCommentE\00", align 1
@_ZTIN11xalanc_1_1012XalanCommentE = external constant ptr
@_ZTIN11xalanc_1_1022XalanSourceTreeCommentE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanSourceTreeCommentE, ptr @_ZTIN11xalanc_1_1012XalanCommentE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeComment.cpp, ptr null }]

@_ZN11xalanc_1_1022XalanSourceTreeCommentC1ERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1022XalanSourceTreeCommentC2ERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m
@_ZN11xalanc_1_1022XalanSourceTreeCommentD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XalanSourceTreeCommentD2Ev
@_ZN11xalanc_1_1022XalanSourceTreeCommentC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xalanc_1_1022XalanSourceTreeCommentC2ERKS0_b

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #14
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeCommentC2ERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #4 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1012XalanCommentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [37 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanSourceTreeCommentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !73
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 3
  store ptr %3, ptr %10, align 8, !tbaa !79
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !80
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 5
  store ptr %5, ptr %12, align 8, !tbaa !81
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 6
  store i64 %6, ptr %13, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanCommentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XalanCommentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeCommentD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1012XalanCommentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeCommentD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeCommentD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeCommentC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #4 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1012XalanCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  store ptr getelementptr inbounds ({ [37 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanSourceTreeCommentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  store ptr %6, ptr %4, align 8, !tbaa !70
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr @_ZN11xalanc_1_10L18s_staticNameStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1022XalanSourceTreeComment11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret i32 8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr %6, ptr %3
  ret ptr %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #15
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
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeComment12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeComment12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeComment11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeComment11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeComment13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeComment11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 !prof !66 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeComment9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !66 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1022XalanSourceTreeComment8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !82
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1022XalanSourceTreeComment9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat !prof !84 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeComment13substringDataEjjRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #4 align 2 !prof !66 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %1, i32 noundef %2) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 !prof !85 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %2, i32 noundef %3) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment10appendDataERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment10insertDataEjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment10deleteDataEjj(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment11replaceDataEjjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7) #14
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #18
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_22XalanSourceTreeElementE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeCommentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeCommentERPNS_9XalanNodeES4_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeCommentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeCommentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeComment", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeCommentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #14
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticNameStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_staticNameStringE, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_10L9s_commentE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1) #14
  invoke void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticNameStringE, ptr noundef nonnull align 8 dereferenceable(36) %2) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 comdat align 2 !prof !87 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  tail call void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv() local_unnamed_addr #4 align 2 !prof !86 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #14
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticNameStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  invoke void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %0) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !90
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !92

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #14
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #14
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !94 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !95 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !96

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #14
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !97, !llvm.loop !98

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !100 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !101 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !95 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !103 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !104 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !106 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !107 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !108 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !109
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !112 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = load ptr, ptr %1, align 8, !tbaa !102
  store ptr %7, ptr %0, align 8, !tbaa !102
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  store ptr %11, ptr %5, align 8, !tbaa !93
  store ptr %3, ptr %1, align 8, !tbaa !102
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !113
  store <2 x i64> %9, ptr %4, align 8, !tbaa !113
  store <2 x i64> %12, ptr %8, align 8, !tbaa !113
  store ptr %6, ptr %10, align 8, !tbaa !93
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat !prof !87 {
  %3 = load i32, ptr %0, align 4, !tbaa !114
  %4 = load i32, ptr %1, align 4, !tbaa !114
  store i32 %4, ptr %0, align 4, !tbaa !114
  store i32 %3, ptr %1, align 4, !tbaa !114
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeComment.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { builtin nounwind optsize }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!64}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!37 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 243632}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6substrERS0_jj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj, i64 243632}
!39 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeComment10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 320}
!43 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 320}
!44 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_, i64 320}
!45 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeComment9terminateEv, ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 153}
!48 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, i64 153}
!49 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 153}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!60 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!61 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!62 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 43398227}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !69, i64 0}
!69 = !{!"Simple C++ TBAA"}
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !69, i64 0}
!73 = !{!74, !71, i64 16}
!74 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeCommentE", !75, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !78, i64 48}
!75 = !{!"_ZTSN11xalanc_1_1012XalanCommentE", !76, i64 0}
!76 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !77, i64 0}
!77 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!78 = !{!"long", !72, i64 0}
!79 = !{!74, !71, i64 24}
!80 = !{!74, !71, i64 32}
!81 = !{!74, !71, i64 40}
!82 = !{!74, !78, i64 48}
!83 = !{!74, !71, i64 8}
!84 = !{!"function_entry_count", i64 66708619}
!85 = !{!"function_entry_count", i64 243632}
!86 = !{!"function_entry_count", i64 1}
!87 = !{!"function_entry_count", i64 320}
!88 = !{!"function_entry_count", i64 153}
!89 = !{!"function_entry_count", i64 128698679}
!90 = !{!91, !78, i64 16}
!91 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !71, i64 0, !78, i64 8, !78, i64 16, !71, i64 24}
!92 = !{!"branch_weights", i32 43398290, i32 85300391}
!93 = !{!91, !71, i64 24}
!94 = !{!"function_entry_count", i64 6521798493}
!95 = !{!"function_entry_count", i64 85300390}
!96 = !{!"branch_weights", i32 1, i32 12185770}
!97 = !{!"branch_weights", i32 12185770, i32 -193930396}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"function_entry_count", i64 227375739}
!101 = !{!"function_entry_count", i64 568333389}
!102 = !{!91, !71, i64 0}
!103 = !{!"function_entry_count", i64 30137156660}
!104 = !{!"function_entry_count", i64 825654971}
!105 = !{!91, !78, i64 8}
!106 = !{!"function_entry_count", i64 230527004}
!107 = !{!"function_entry_count", i64 3070433834}
!108 = !{!"function_entry_count", i64 1414337980}
!109 = !{!110, !111, i64 32}
!110 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !91, i64 0, !111, i64 32}
!111 = !{!"int", !72, i64 0}
!112 = !{!"function_entry_count", i64 85300747}
!113 = !{!78, !78, i64 0}
!114 = !{!111, !111, i64 0}
