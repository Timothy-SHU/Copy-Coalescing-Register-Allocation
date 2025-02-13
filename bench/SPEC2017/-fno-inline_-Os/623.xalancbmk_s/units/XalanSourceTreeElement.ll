; ModuleID = 'XalanSourceTreeElement.cpp'
source_filename = "XalanSourceTreeElement.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
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

@_ZTVN11xalanc_1_1022XalanSourceTreeElementE = dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanSourceTreeElementE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD0Ev, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022XalanSourceTreeElementE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanSourceTreeElementE\00", align 1
@_ZTIN11xalanc_1_1012XalanElementE = external constant ptr
@_ZTIN11xalanc_1_1022XalanSourceTreeElementE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanSourceTreeElementE, ptr @_ZTIN11xalanc_1_1012XalanElementE }, align 8
@_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeElement.cpp, ptr null }]

@_ZN11xalanc_1_1022XalanSourceTreeElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElementD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !61 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !62 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !65

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #2 align 2 !prof !61 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !73 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 8
  %3 = load i64, ptr %2, align 8, !tbaa !75
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7) #16
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #17
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #15
  resume { ptr, i32 } %7
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #16
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 !prof !76 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !80

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #16
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 !prof !82 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !84

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #16
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !85, !llvm.loop !86

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 !prof !88 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !89 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = load ptr, ptr %0, align 8, !tbaa !90
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #7 comdat align 2 !prof !93 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !95
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #4 align 2 !prof !96 {
  tail call void @_ZN11xalanc_1_1012XalanElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanSourceTreeElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 4
  store ptr %4, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 5
  store ptr %5, ptr %13, align 8, !tbaa !69
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 6
  store ptr %6, ptr %14, align 8, !tbaa !71
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  store ptr null, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 8
  store i64 %7, ptr %16, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 !prof !96 {
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  tail call void @_ZN11xalanc_1_1012XalanElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanSourceTreeElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  store ptr %7, ptr %5, align 8, !tbaa !97
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !97
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  store ptr %11, ptr %9, align 8, !tbaa !66
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %2, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %14, align 8, !tbaa !91
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i1 noundef zeroext %3) #16
          to label %21 unwind label %25

21:                                               ; preds = %16, %4
  %22 = phi ptr [ null, %4 ], [ %20, %16 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !68
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 8
  store i64 0, ptr %24, align 8, !tbaa !75
  ret void

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XalanElementD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %26
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #10

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper14getLastSiblingEPNS_9XalanNodeE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement9setParentEPNS_31XalanSourceTreeDocumentFragmentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #12 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_22XalanSourceTreeCommentE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #12 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #12 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_36XalanSourceTreeProcessingInstructionE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #12 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement18setPreviousSiblingEPNS_19XalanSourceTreeTextE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #12 align 2 !prof !98 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !98 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_22XalanSourceTreeCommentE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES2_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES2_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !99 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeElement.cpp() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { noreturn }
attributes #18 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!51}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!47 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m, ptr @_ZN11xalanc_1_1012XalanElementC2Ev, i64 832911}
!48 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev, ptr @_ZN11xalanc_1_1012XalanElementD2Ev, i64 832911}
!49 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeElement17appendSiblingNodeEPNS_19XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_22XalanSourceTreeElementERPNS_9XalanNodeES4_, i64 832910}
!50 = !{ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15appendChildNodeEPNS_19XalanSourceTreeTextE, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper20appendSiblingToChildEPNS_22XalanSourceTreeElementERPNS_9XalanNodeEPNS_19XalanSourceTreeTextE, i64 678604}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 6}
!53 = !{!54, !57, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !55, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !60, i64 64}
!55 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !56, i64 0}
!56 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!"long", !58, i64 0}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!"function_entry_count", i64 9512740}
!63 = !{!"function_entry_count", i64 30078}
!64 = !{!54, !57, i64 32}
!65 = !{!"branch_weights", i32 1, i32 30079}
!66 = !{!54, !57, i64 24}
!67 = !{!"function_entry_count", i64 1923152}
!68 = !{!54, !57, i64 56}
!69 = !{!54, !57, i64 40}
!70 = !{!"function_entry_count", i64 6166393}
!71 = !{!54, !57, i64 48}
!72 = !{!"function_entry_count", i64 382519}
!73 = !{!"function_entry_count", i64 114578}
!74 = !{!"function_entry_count", i64 229156}
!75 = !{!54, !60, i64 64}
!76 = !{!"function_entry_count", i64 43398227}
!77 = !{!"function_entry_count", i64 128698679}
!78 = !{!79, !60, i64 16}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !57, i64 0, !60, i64 8, !60, i64 16, !57, i64 24}
!80 = !{!"branch_weights", i32 43398290, i32 85300391}
!81 = !{!79, !57, i64 24}
!82 = !{!"function_entry_count", i64 6521798503}
!83 = !{!"function_entry_count", i64 85300390}
!84 = !{!"branch_weights", i32 1, i32 12185770}
!85 = !{!"branch_weights", i32 12185770, i32 -193930395}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"function_entry_count", i64 227375739}
!89 = !{!"function_entry_count", i64 568333389}
!90 = !{!79, !57, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"vtable pointer", !59, i64 0}
!93 = !{!"function_entry_count", i64 30137156670}
!94 = !{!"function_entry_count", i64 825654975}
!95 = !{!79, !60, i64 8}
!96 = !{!"function_entry_count", i64 832911}
!97 = !{!57, !57, i64 0}
!98 = !{!"function_entry_count", i64 832910}
!99 = !{!"function_entry_count", i64 678604}
