; ModuleID = 'XalanSourceTreeAttr.cpp'
source_filename = "XalanSourceTreeAttr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeAttr" = type { %"class.xalanc_1_10::XalanAttr", ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanAttr" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

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

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1019XalanSourceTreeAttrE = dso_local unnamed_addr constant { [35 x ptr] } { [35 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019XalanSourceTreeAttrE, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrD0Ev, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeNameEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getNodeValueEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeTypeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getParentNodeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getChildNodesEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getFirstChildEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getLastChildEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr14getNextSiblingEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getAttributesEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr9cloneNodeEb, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13hasChildNodesEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr9normalizeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr9getPrefixEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getLocalNameEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr9isIndexedEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getIndexEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr7getNameEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getSpecifiedEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getValueEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr8setValueERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr15getOwnerElementEv] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019XalanSourceTreeAttrE = dso_local constant [37 x i8] c"N11xalanc_1_1019XalanSourceTreeAttrE\00", align 1
@_ZTIN11xalanc_1_109XalanAttrE = external constant ptr
@_ZTIN11xalanc_1_1019XalanSourceTreeAttrE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019XalanSourceTreeAttrE, ptr @_ZTIN11xalanc_1_109XalanAttrE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeAttr.cpp, ptr null }]

@_ZN11xalanc_1_1019XalanSourceTreeAttrC1ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm
@_ZN11xalanc_1_1019XalanSourceTreeAttrD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev
@_ZN11xalanc_1_1019XalanSourceTreeAttrC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKS0_b

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #12
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #4 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_109XalanAttrC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1019XalanSourceTreeAttrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 4
  store i64 %4, ptr %9, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109XalanAttrC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_109XalanAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_109XalanAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttrD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 zeroext %2) unnamed_addr #4 align 2 !prof !63 {
  tail call void @_ZN11xalanc_1_109XalanAttrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1019XalanSourceTreeAttrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %6, ptr %4, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  store ptr %9, ptr %7, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109XalanAttrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !68 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #13
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
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %3) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttr12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttr9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #13
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 !prof !63 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !70 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !71 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttr9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !72 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !62
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getSpecifiedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !63 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeAttr8setValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #16
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr15getOwnerElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttr", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !78

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !80 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !82

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !83, !llvm.loop !84

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !87 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeAttr.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm, ptr @_ZN11xalanc_1_109XalanAttrC2Ev, i64 200914}
!37 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev, ptr @_ZN11xalanc_1_109XalanAttrD2Ev, i64 200914}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 43398227}
!50 = !{!"function_entry_count", i64 200914}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !53, i64 0}
!57 = !{!58, !55, i64 24}
!58 = !{!"_ZTSN11xalanc_1_1019XalanSourceTreeAttrE", !59, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !61, i64 32}
!59 = !{!"_ZTSN11xalanc_1_109XalanAttrE", !60, i64 0}
!60 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!61 = !{!"long", !56, i64 0}
!62 = !{!58, !61, i64 32}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!58, !55, i64 8}
!65 = !{!58, !55, i64 16}
!66 = !{!"function_entry_count", i64 476971}
!67 = !{!"function_entry_count", i64 211448}
!68 = !{!"function_entry_count", i64 256699}
!69 = !{!"function_entry_count", i64 38784}
!70 = !{!"function_entry_count", i64 235253}
!71 = !{!"function_entry_count", i64 241718}
!72 = !{!"function_entry_count", i64 12928}
!73 = !{!"function_entry_count", i64 25856}
!74 = !{!"function_entry_count", i64 6465}
!75 = !{!"function_entry_count", i64 128698679}
!76 = !{!77, !61, i64 16}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !61, i64 8, !61, i64 16, !55, i64 24}
!78 = !{!"branch_weights", i32 43398290, i32 85300391}
!79 = !{!77, !55, i64 24}
!80 = !{!"function_entry_count", i64 6521798493}
!81 = !{!"function_entry_count", i64 85300390}
!82 = !{!"branch_weights", i32 1, i32 12185770}
!83 = !{!"branch_weights", i32 12185770, i32 -193930396}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"function_entry_count", i64 227375739}
!87 = !{!"function_entry_count", i64 568333389}
!88 = !{!77, !55, i64 0}
!89 = !{!"function_entry_count", i64 30137156660}
!90 = !{!"function_entry_count", i64 825654971}
!91 = !{!77, !61, i64 8}
