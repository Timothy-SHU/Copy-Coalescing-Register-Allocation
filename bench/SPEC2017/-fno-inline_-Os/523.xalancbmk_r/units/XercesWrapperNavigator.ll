; ModuleID = 'XercesWrapperNavigator.cpp'
source_filename = "XercesWrapperNavigator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

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

@_ZN11xalanc_1_1022XercesWrapperNavigator13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1022XercesWrapperNavigatorE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XercesWrapperNavigatorE, ptr @_ZN11xalanc_1_1022XercesWrapperNavigatorD2Ev, ptr @_ZN11xalanc_1_1022XercesWrapperNavigatorD0Ev] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022XercesWrapperNavigatorE = dso_local constant [40 x i8] c"N11xalanc_1_1022XercesWrapperNavigatorE\00", align 1
@_ZTIN11xalanc_1_1022XercesWrapperNavigatorE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XercesWrapperNavigatorE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XercesWrapperNavigator.cpp, ptr null }]

@_ZN11xalanc_1_1022XercesWrapperNavigatorC1EPNS_21XercesDocumentWrapperE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1022XercesWrapperNavigatorC2EPNS_21XercesDocumentWrapperE
@_ZN11xalanc_1_1022XercesWrapperNavigatorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1022XercesWrapperNavigatorC2ERKS0_
@_ZN11xalanc_1_1022XercesWrapperNavigatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XercesWrapperNavigatorD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1022XercesWrapperNavigator13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1022XercesWrapperNavigator13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigatorC2EPNS_21XercesDocumentWrapperE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1022XercesWrapperNavigatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigatorC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %1) unnamed_addr #6 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1022XercesWrapperNavigatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %1, i64 0, i32 1
  %5 = load <2 x ptr>, ptr %4, align 8, !tbaa !57
  store <2 x ptr> %5, ptr %3, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %1, i64 0, i32 3
  %8 = load <2 x ptr>, ptr %7, align 8, !tbaa !57
  store <2 x ptr> %8, ptr %6, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %1, i64 0, i32 5
  %11 = load <2 x ptr>, ptr %10, align 8, !tbaa !57
  store <2 x ptr> %11, ptr %9, align 8, !tbaa !57
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %1, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !58
  store i64 %14, ptr %12, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigatorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XercesWrapperNavigatorD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef %1) #11
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef %1) #11
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator7mapNodeEPNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef %1) #11
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 10
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getOwnerElementEPKN11xercesc_2_77DOMAttrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 44
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_710DOMElementE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper7mapNodeEPKN11xercesc_2_710DOMElementE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !48 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %1) #11
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getPooledStringEPKtj(ptr noundef nonnull align 8 dereferenceable(432) %6, ptr noundef nonnull %1, i32 noundef %7) #11
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi ptr [ %8, %4 ], [ @_ZN11xalanc_1_1022XercesWrapperNavigator13s_emptyStringE, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDocumentWrapper15getPooledStringEPKtj(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !65
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !67

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !69 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !70 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !71

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #11
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !72, !llvm.loop !73

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !75 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 !prof !76 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !70 {
  %3 = load ptr, ptr %0, align 8, !tbaa !77
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !78 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XercesWrapperNavigator.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 43398227}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !56, i64 56}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !51, i64 0}
!56 = !{!"long", !55, i64 0}
!57 = !{!54, !54, i64 0}
!58 = !{!53, !56, i64 56}
!59 = !{!53, !54, i64 16}
!60 = !{!53, !54, i64 24}
!61 = !{!53, !54, i64 32}
!62 = !{!53, !54, i64 40}
!63 = !{!53, !54, i64 48}
!64 = !{!"function_entry_count", i64 128698679}
!65 = !{!66, !56, i64 16}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !56, i64 8, !56, i64 16, !54, i64 24}
!67 = !{!"branch_weights", i32 43398290, i32 85300391}
!68 = !{!66, !54, i64 24}
!69 = !{!"function_entry_count", i64 6521798493}
!70 = !{!"function_entry_count", i64 85300390}
!71 = !{!"branch_weights", i32 1, i32 12185770}
!72 = !{!"branch_weights", i32 12185770, i32 -193930396}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"function_entry_count", i64 227375739}
!76 = !{!"function_entry_count", i64 568333389}
!77 = !{!66, !54, i64 0}
!78 = !{!"function_entry_count", i64 30137156660}
!79 = !{!"function_entry_count", i64 825654971}
!80 = !{!66, !56, i64 8}
