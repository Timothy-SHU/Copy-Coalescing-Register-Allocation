; ModuleID = 'XalanSourceTreeText.cpp'
source_filename = "XalanSourceTreeText.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1019XalanSourceTreeTextE = dso_local unnamed_addr constant { [39 x ptr] } { [39 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1019XalanSourceTreeTextD2Ev, ptr @_ZN11xalanc_1_1019XalanSourceTreeTextD0Ev, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText11getNodeNameEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText12getNodeValueEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText11getNodeTypeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getParentNodeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getChildNodesEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getFirstChildEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText12getLastChildEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText14getNextSiblingEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getAttributesEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText9cloneNodeEb, ptr @_ZN11xalanc_1_1019XalanSourceTreeText12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1019XalanSourceTreeText12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1019XalanSourceTreeText11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13hasChildNodesEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeText12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9normalizeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText9getPrefixEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText12getLocalNameEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText9isIndexedEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText8getIndexEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText7getDataEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText9getLengthEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13substringDataEjjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText10appendDataERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText10insertDataEjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText10deleteDataEjj, ptr @_ZN11xalanc_1_1019XalanSourceTreeText11replaceDataEjjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeText9splitTextEj, ptr @_ZNK11xalanc_1_1019XalanSourceTreeText21isIgnorableWhitespaceEv] }, align 8
@_ZN11xalanc_1_1019XalanSourceTreeText12s_nameStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_10L18s_staticNameStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L6s_textE = internal constant [6 x i16] [i16 35, i16 116, i16 101, i16 120, i16 116, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019XalanSourceTreeTextE = dso_local constant [37 x i8] c"N11xalanc_1_1019XalanSourceTreeTextE\00", align 1
@_ZTIN11xalanc_1_109XalanTextE = external constant ptr
@_ZTIN11xalanc_1_1019XalanSourceTreeTextE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019XalanSourceTreeTextE, ptr @_ZTIN11xalanc_1_109XalanTextE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeText.cpp, ptr null }]

@_ZN11xalanc_1_1019XalanSourceTreeTextC1ERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1019XalanSourceTreeTextC2ERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m
@_ZN11xalanc_1_1019XalanSourceTreeTextD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019XalanSourceTreeTextD2Ev
@_ZN11xalanc_1_1019XalanSourceTreeTextC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xalanc_1_1019XalanSourceTreeTextC2ERKS0_b

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeTextC2ERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) unnamed_addr #3 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_109XalanTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTVN11xalanc_1_1019XalanSourceTreeTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 4
  store ptr %4, ptr %10, align 8, !tbaa !61
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 5
  store i64 %5, ptr %11, align 8, !tbaa !62
  ret void
}

declare void @_ZN11xalanc_1_109XalanTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeTextD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeTextD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeTextC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 zeroext %2) unnamed_addr #7 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_109XalanTextC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTVN11xalanc_1_1019XalanSourceTreeTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %6, ptr %4, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  ret void
}

declare void @_ZN11xalanc_1_109XalanTextC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr @_ZN11xalanc_1_10L18s_staticNameStringE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #9 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1019XalanSourceTreeText11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !65 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #9 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #21
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #12 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #9 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeText16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret ptr %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1019XalanSourceTreeText9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeText12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeText12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeText11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeText11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeText13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret i1 false
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #21
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeText11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 !prof !46 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeText9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1019XalanSourceTreeText8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #12 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !62
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #9 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1019XalanSourceTreeText9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #13 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !69
  ret i32 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeText13substringDataEjjRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #7 align 2 !prof !46 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %1, i32 noundef %2)
  ret ptr %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText10appendDataERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText10insertDataEjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText10deleteDataEjj(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText11replaceDataEjjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #21
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1019XalanSourceTreeText9splitTextEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeText21isIgnorableWhitespaceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !46 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_22XalanSourceTreeElementE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #14 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #15 align 2 !prof !64 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #14 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_22XalanSourceTreeElementE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #15 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #14 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText18setPreviousSiblingEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #14 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeText", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_10L6s_textE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  %3 = load ptr, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !75
  %4 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !76
  %5 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !77
  %6 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !78
  %7 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %7, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !76
  store i64 %9, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !76
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !77
  store i64 %11, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !77
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  store ptr %13, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !78
  store ptr %3, ptr %2, align 8, !tbaa !75
  store i64 %4, ptr %8, align 8, !tbaa !76
  store i64 %5, ptr %10, align 8, !tbaa !77
  store ptr %6, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %15 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !79
  %16 = load i32, ptr %14, align 8, !tbaa !79
  store i32 %16, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !79
  store i32 %15, ptr %14, align 8, !tbaa !79
  %17 = icmp eq i64 %5, 0
  br i1 %17, label %25, label %18, !prof !80

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %6)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #24
  unreachable

25:                                               ; preds = %1, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv() local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %3 = load ptr, ptr %1, align 8, !tbaa !75
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = load ptr, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !75
  store ptr %10, ptr %1, align 8, !tbaa !75
  %11 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !76
  store i64 %11, ptr %4, align 8, !tbaa !76
  %12 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !77
  store i64 %12, ptr %6, align 8, !tbaa !77
  %13 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !78
  store ptr %13, ptr %8, align 8, !tbaa !78
  store ptr %3, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !75
  store i64 %5, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !76
  store i64 %7, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !77
  store ptr %9, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !78
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !79
  %16 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !79
  store i32 %16, ptr %14, align 8, !tbaa !79
  store i32 %15, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !79
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %25, label %18, !prof !81

18:                                               ; preds = %0
  %19 = load ptr, ptr %10, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13)
          to label %25 unwind label %22, !prof !82

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #24
  unreachable

25:                                               ; preds = %0, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !84

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = load ptr, ptr %0, align 8, !tbaa !75
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !85

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat !prof !46 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeText.cpp() #19 section ".text.startup" !prof !74 !PGOFuncName !86 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #21
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticNameStringE, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_staticNameStringE, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeTextC2ERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m, ptr @_ZN11xalanc_1_109XalanTextC2Ev, i64 1544920}
!36 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeTextD2Ev, ptr @_ZN11xalanc_1_109XalanTextD2Ev, i64 1544920}
!37 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeText17appendSiblingNodeEPNS_22XalanSourceTreeElementE, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_19XalanSourceTreeTextERPNS_9XalanNodeES4_, i64 832910}
!38 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeText10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1019XalanSourceTreeText9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!42 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeText.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 2}
!43 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeText.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!44 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeText.cpp, ptr @__cxa_atexit, i64 2}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!"function_entry_count", i64 1544920}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !50, i64 0}
!54 = !{!55, !52, i64 16}
!55 = !{!"_ZTSN11xalanc_1_1019XalanSourceTreeTextE", !56, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !59, i64 40}
!56 = !{!"_ZTSN11xalanc_1_109XalanTextE", !57, i64 0}
!57 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !58, i64 0}
!58 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!59 = !{!"long", !53, i64 0}
!60 = !{!55, !52, i64 24}
!61 = !{!55, !52, i64 32}
!62 = !{!55, !59, i64 40}
!63 = !{!55, !52, i64 8}
!64 = !{!"function_entry_count", i64 33406}
!65 = !{!"function_entry_count", i64 9955124}
!66 = !{!"function_entry_count", i64 712010}
!67 = !{!"function_entry_count", i64 8121584}
!68 = !{!"function_entry_count", i64 1152897}
!69 = !{!70, !72, i64 32}
!70 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !71, i64 0, !72, i64 32}
!71 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !59, i64 8, !59, i64 16, !52, i64 24}
!72 = !{!"int", !53, i64 0}
!73 = !{!"function_entry_count", i64 832910}
!74 = !{!"function_entry_count", i64 1}
!75 = !{!71, !52, i64 0}
!76 = !{!71, !59, i64 8}
!77 = !{!71, !59, i64 16}
!78 = !{!71, !52, i64 24}
!79 = !{!72, !72, i64 0}
!80 = !{!"branch_weights", i32 1, i32 0}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!83 = !{!"function_entry_count", i64 42470003}
!84 = !{!"branch_weights", i32 52000, i32 42418003}
!85 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!86 = !{!"XalanSourceTreeText.cpp;_GLOBAL__sub_I_XalanSourceTreeText.cpp"}
