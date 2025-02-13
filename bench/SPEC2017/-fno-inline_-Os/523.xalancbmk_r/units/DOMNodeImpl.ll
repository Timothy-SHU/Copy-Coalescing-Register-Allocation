; ModuleID = 'DOMNodeImpl.cpp'
source_filename = "DOMNodeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

$_ZN11xercesc_2_711DOMNodeImpl10isReadOnlyEb = comdat any

$_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl11hasUserDataEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = dso_local local_unnamed_addr constant i16 1, align 2
@_ZN11xercesc_2_711DOMNodeImpl8SYNCDATAE = dso_local local_unnamed_addr constant i16 2, align 2
@_ZN11xercesc_2_711DOMNodeImpl12SYNCCHILDRENE = dso_local local_unnamed_addr constant i16 4, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = dso_local local_unnamed_addr constant i16 8, align 2
@_ZN11xercesc_2_711DOMNodeImpl10FIRSTCHILDE = dso_local local_unnamed_addr constant i16 16, align 2
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = dso_local local_unnamed_addr constant i16 32, align 2
@_ZN11xercesc_2_711DOMNodeImpl11IGNORABLEWSE = dso_local local_unnamed_addr constant i16 64, align 2
@_ZN11xercesc_2_711DOMNodeImpl8SETVALUEE = dso_local local_unnamed_addr constant i16 128, align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = dso_local local_unnamed_addr constant i16 256, align 2
@_ZN11xercesc_2_711DOMNodeImpl8USERDATAE = dso_local local_unnamed_addr constant i16 512, align 2
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = dso_local local_unnamed_addr constant i16 1024, align 2
@_ZN11xercesc_2_711DOMNodeImpl9CHILDNODEE = dso_local local_unnamed_addr constant i16 2048, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = dso_local local_unnamed_addr constant i16 4096, align 2
@_ZN11xercesc_2_7L20emptyNodeListCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L14gEmptyNodeListE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_7L19gEmptyNodeListMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMNodeImpl.cpp, ptr null }]

@_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711DOMNodeImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_711DOMNodeImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711DOMNodeImplC2ERKS0_
@_ZN11xercesc_2_711DOMNodeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DOMNodeImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20emptyNodeListCleanupE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer23initializeEmptyNodeListEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %1 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13
  invoke void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null) #12
          to label %2 unwind label %3

2:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20emptyNodeListCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L19reinitEmptyNodeListEv) #12
  ret void

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #14
  resume { ptr, i32 } %4
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L19reinitEmptyNodeListEv() #5 !prof !42 !PGOFuncName !47 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  %8 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %7
  store ptr null, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImplC2EPNS_7DOMNodeE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !50 {
  store ptr %1, ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 0, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %1) unnamed_addr #3 align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %1, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %4, ptr %5, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext false) #12
  %6 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %1) #12
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds i8, ptr %6, i64 24
  %9 = select i1 %7, ptr null, ptr %8
  store ptr %9, ptr %0, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -2
  %6 = zext i1 %1 to i16
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 align 2 !prof !55 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  br i1 %2, label %7, label %3, !prof !56

3:                                                ; preds = %1
  %4 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  br label %25

7:                                                ; preds = %1
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  %9 = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %8, label %10, label %21, !prof !65

10:                                               ; preds = %7
  %11 = load ptr, ptr %9, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr %0, align 8
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds i8, ptr %16, i64 -24
  %19 = select i1 %17, ptr null, ptr %18
  %20 = select i1 %15, ptr %19, ptr %14
  br label %25

21:                                               ; preds = %7
  %22 = icmp eq ptr %9, null
  %23 = getelementptr inbounds i8, ptr %9, i64 -24
  %24 = select i1 %22, ptr null, ptr %23
  br label %25

25:                                               ; preds = %21, %10, %3
  %26 = phi ptr [ %20, %10 ], [ %24, %21 ], [ %6, %3 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !54
  br i1 %1, label %5, label %7, !prof !67

5:                                                ; preds = %2
  %6 = or i16 %4, 8
  br label %9

7:                                                ; preds = %2
  %8 = and i16 %4, -9
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i16 [ %6, %5 ], [ %8, %7 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %10, ptr %11, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !68 {
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %4 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %5 unwind label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  br label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 3, ptr noundef null, ptr noundef %14) #12
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

16:                                               ; preds = %13, %7, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %17
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #5 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #9

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getChildNodesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !43
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %10) #12
  %11 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #12
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #12
          to label %17 unwind label %20

17:                                               ; preds = %15
  store ptr %14, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !43
  br label %22

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %24

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %14) #15
  br label %24

22:                                               ; preds = %17, %9
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %23 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !43
  br label %26

24:                                               ; preds = %20, %18
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %44

26:                                               ; preds = %22, %6
  %27 = phi ptr [ %23, %22 ], [ %7, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %27) #12
  %28 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13
          to label %32 unwind label %34

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef null) #12
          to label %33 unwind label %36

33:                                               ; preds = %32
  store ptr %31, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20emptyNodeListCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L19reinitEmptyNodeListEv) #12
          to label %38 unwind label %34

34:                                               ; preds = %33, %30
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %40

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %31) #14
  br label %40

38:                                               ; preds = %33, %26
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %39 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !43
  br label %42

40:                                               ; preds = %36, %34
  %41 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %44

42:                                               ; preds = %38, %1
  %43 = phi ptr [ %39, %38 ], [ %4, %1 ]
  ret ptr %43

44:                                               ; preds = %40, %24
  %45 = phi { ptr, i32 } [ %41, %40 ], [ %25, %24 ]
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getFirstChildEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLastChildEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !54
  %4 = and i16 %3, 1024
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef readnone %0) unnamed_addr #7 !prof !82 !PGOFuncName !83 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !54
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !42 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  store ptr %7, ptr %0, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasChildNodesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !85 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %5 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %6 unwind label %17

6:                                                ; preds = %3
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #12
  br label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, i16 noundef signext 3, ptr noundef null, ptr noundef %15) #12
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

17:                                               ; preds = %14, %8, %3
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #16
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %4 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %5 unwind label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  br label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 8, ptr noundef null, ptr noundef %14) #12
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

16:                                               ; preds = %13, %7, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %5 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %6 unwind label %17

6:                                                ; preds = %3
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #12
  br label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, i16 noundef signext 3, ptr noundef null, ptr noundef %15) #12
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

17:                                               ; preds = %14, %8, %3
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #16
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #7 align 2 !prof !42 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_711DOMNodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) #12
  br i1 %2, label %4, label %33

4:                                                ; preds = %3
  %5 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %4, %27
  %12 = phi ptr [ %31, %27 ], [ %9, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  switch i16 %16, label %25 [
    i16 5, label %27
    i16 1, label %17
    i16 10, label %21
  ]

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 60
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(96) %12, i1 noundef zeroext %1, i1 noundef zeroext true) #12
  br label %27

21:                                               ; preds = %11
  %22 = load ptr, ptr %12, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 51
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(130) %12, i1 noundef zeroext %1, i1 noundef zeroext true) #12
  br label %27

25:                                               ; preds = %11
  %26 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %12) #12
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %26, i1 noundef zeroext %1, i1 noundef zeroext true) #12
  br label %27

27:                                               ; preds = %25, %21, %17, %11
  %28 = load ptr, ptr %12, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11, !llvm.loop !86

33:                                               ; preds = %27, %4, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #7 !prof !42 !PGOFuncName !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !42 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() #12
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef %2) #12
  ret i1 %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %4 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %5 unwind label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  br label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 14, ptr noundef null, ptr noundef %14) #12
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

16:                                               ; preds = %13, %7, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !42 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() local_unnamed_addr #7 align 2 !prof !42 {
  ret ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv() local_unnamed_addr #7 align 2 !prof !85 {
  ret ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv() local_unnamed_addr #7 align 2 !prof !85 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5, !prof !90

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE) #12
  br i1 %6, label %7, label %15, !prof !91

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE) #12
  br i1 %8, label %38, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %11 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 14, ptr noundef null, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %40

15:                                               ; preds = %5
  %16 = icmp eq i16 %2, 2
  br i1 %16, label %17, label %27, !prof !92

17:                                               ; preds = %15
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  br i1 %18, label %19, label %27, !prof !92

19:                                               ; preds = %17
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #12
  br i1 %20, label %38, label %21, !prof !92

21:                                               ; preds = %19
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %23 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 14, ptr noundef null, ptr noundef %23) #12
          to label %24 unwind label %25

24:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %40

27:                                               ; preds = %17, %15
  %28 = icmp eq ptr %1, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = load i16, ptr %1, align 2, !tbaa !93
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %27
  %33 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %34 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %33, i16 noundef signext 14, ptr noundef null, ptr noundef %34) #12
          to label %35 unwind label %36

35:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %29, %19, %7, %3
  %39 = phi ptr [ %1, %3 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %7 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %19 ], [ %1, %29 ]
  ret ptr %39

40:                                               ; preds = %36, %25, %13
  %41 = phi ptr [ %33, %36 ], [ %22, %25 ], [ %10, %13 ]
  %42 = phi { ptr, i32 } [ %37, %36 ], [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %41) #16
  resume { ptr, i32 } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !94 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !95

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !93
  %8 = load i16, ptr %1, align 2, !tbaa !93
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !96

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !97

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !93
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !98

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !99

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !93
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !100

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !101

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !93
  %28 = load i16, ptr %26, align 2, !tbaa !93
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !102, !llvm.loop !103

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !42 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  br i1 %7, label %8, label %11

8:                                                ; preds = %6, %4
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext true) #12
  %9 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  %10 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPNS_11DOMNodeImplEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %9, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %11

11:                                               ; preds = %6, %8
  %12 = phi ptr [ %10, %8 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !54
  %4 = and i16 %3, 512
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -513
  %6 = select i1 %1, i16 512, i16 0
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPNS_11DOMNodeImplEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !42 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKNS_11DOMNodeImplEPKt(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %0, ptr noundef %1) #12
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKNS_11DOMNodeImplEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !68 {
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !91

7:                                                ; preds = %4
  tail call void @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_(ptr noundef nonnull align 8 dereferenceable(293) %5, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull readnone align 8 dereferenceable(10) %0, ptr noundef readnone %1) local_unnamed_addr #7 align 2 !prof !42 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %4 = icmp eq ptr %3, %1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !42 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %1) #12
  br i1 %5, label %77, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %8 = load ptr, ptr %1, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef signext i16 %14(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %16 = icmp eq i16 %11, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %6
  %18 = load ptr, ptr %7, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %22 = load ptr, ptr %1, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %21, ptr noundef %25) #12
  br i1 %26, label %27, label %77

27:                                               ; preds = %17
  %28 = load ptr, ptr %7, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %32 = load ptr, ptr %1, align 8, !tbaa !48
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %31, ptr noundef %35) #12
  br i1 %36, label %37, label %77

37:                                               ; preds = %27
  %38 = load ptr, ptr %7, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 22
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %42 = load ptr, ptr %1, align 8, !tbaa !48
  %43 = getelementptr inbounds ptr, ptr %42, i64 22
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %46 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %41, ptr noundef %45) #12
  br i1 %46, label %47, label %77

47:                                               ; preds = %37
  %48 = load ptr, ptr %7, align 8, !tbaa !48
  %49 = getelementptr inbounds ptr, ptr %48, i64 23
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %52 = load ptr, ptr %1, align 8, !tbaa !48
  %53 = getelementptr inbounds ptr, ptr %52, i64 23
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %56 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %51, ptr noundef %55) #12
  br i1 %56, label %57, label %77

57:                                               ; preds = %47
  %58 = load ptr, ptr %7, align 8, !tbaa !48
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %62 = load ptr, ptr %1, align 8, !tbaa !48
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %66 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %61, ptr noundef %65) #12
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load ptr, ptr %7, align 8, !tbaa !48
  %69 = getelementptr inbounds ptr, ptr %68, i64 31
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %72 = load ptr, ptr %1, align 8, !tbaa !48
  %73 = getelementptr inbounds ptr, ptr %72, i64 31
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %76 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %71, ptr noundef %75) #12
  br label %77

77:                                               ; preds = %6, %17, %27, %37, %47, %57, %67, %4, %2
  %78 = phi i1 [ false, %2 ], [ true, %4 ], [ false, %6 ], [ false, %17 ], [ false, %27 ], [ false, %37 ], [ false, %47 ], [ false, %57 ], [ %76, %67 ]
  ret i1 %78
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !42 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  switch i16 %10, label %36 [
    i16 1, label %11
    i16 9, label %13
    i16 6, label %44
    i16 12, label %44
    i16 11, label %44
    i16 10, label %44
    i16 2, label %23
  ]

11:                                               ; preds = %5
  %12 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtbPNS_10DOMElementE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %1, i1 noundef zeroext %2, ptr noundef nonnull %6) #12
  br label %44

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %6, i64 -24
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(32) %14) #12
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 35
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %1, i1 noundef zeroext %2) #12
  br label %44

23:                                               ; preds = %5
  %24 = load ptr, ptr %0, align 8, !tbaa !51
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef signext i16 %27(ptr noundef nonnull align 8 dereferenceable(8) %24) #12
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load ptr, ptr %0, align 8, !tbaa !51
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds ptr, ptr %32, i64 35
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %1, i1 noundef zeroext %2) #12
  br label %44

36:                                               ; preds = %5
  %37 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %6) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %37, align 8, !tbaa !48
  %41 = getelementptr inbounds ptr, ptr %40, i64 35
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %1, i1 noundef zeroext %2) #12
  br label %44

44:                                               ; preds = %11, %13, %30, %5, %5, %5, %5, %23, %36, %39, %3
  %45 = phi ptr [ null, %3 ], [ %35, %30 ], [ %22, %13 ], [ %12, %11 ], [ null, %5 ], [ null, %5 ], [ null, %5 ], [ null, %5 ], [ null, %23 ], [ %43, %39 ], [ null, %36 ]
  ret ptr %45
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtbPNS_10DOMElementE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !42 {
  br label %5

5:                                                ; preds = %102, %4
  %6 = phi ptr [ %0, %4 ], [ %103, %102 ]
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %6) #12
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 22
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %16 = icmp eq ptr %11, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %5
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %11, ptr noundef %1) #12
  %19 = icmp ne ptr %15, null
  %20 = or i1 %19, %2
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !48
  %24 = getelementptr inbounds ptr, ptr %23, i64 37
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %15) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %26, ptr noundef %1) #12
  br i1 %29, label %104, label %30

30:                                               ; preds = %22, %28, %17, %5
  %31 = load ptr, ptr %7, align 8, !tbaa !48
  %32 = getelementptr inbounds ptr, ptr %31, i64 26
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  br i1 %34, label %35, label %99

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8, !tbaa !48
  %37 = getelementptr inbounds ptr, ptr %36, i64 11
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %99, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %39, align 8, !tbaa !48
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i64 %44(ptr noundef nonnull align 8 dereferenceable(8) %39) #12
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %41
  %49 = and i64 %45, 4294967295
  br label %50

50:                                               ; preds = %48, %96
  %51 = phi i64 [ 0, %48 ], [ %97, %96 ]
  %52 = load ptr, ptr %39, align 8, !tbaa !48
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %51) #12
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = getelementptr inbounds ptr, ptr %56, i64 23
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %55) #12
  %60 = load ptr, ptr %55, align 8, !tbaa !48
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %55) #12
  %64 = load ptr, ptr %55, align 8, !tbaa !48
  %65 = getelementptr inbounds ptr, ptr %64, i64 22
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %55) #12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %96, label %69

69:                                               ; preds = %50
  %70 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %67, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #12
  br i1 %70, label %71, label %96

71:                                               ; preds = %69
  br i1 %2, label %72, label %78

72:                                               ; preds = %71
  %73 = load ptr, ptr %55, align 8, !tbaa !48
  %74 = getelementptr inbounds ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %55) #12
  %77 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %76, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  br i1 %77, label %84, label %78

78:                                               ; preds = %72, %71
  %79 = icmp eq ptr %59, null
  br i1 %79, label %96, label %80

80:                                               ; preds = %78
  %81 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %59, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  br i1 %81, label %82, label %96

82:                                               ; preds = %80
  %83 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %63, ptr noundef %1) #12
  br i1 %83, label %84, label %96

84:                                               ; preds = %82, %72
  %85 = load ptr, ptr %55, align 8, !tbaa !48
  %86 = getelementptr inbounds ptr, ptr %85, i64 24
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %55) #12
  %89 = load ptr, ptr %3, align 8, !tbaa !48
  %90 = getelementptr inbounds ptr, ptr %89, i64 37
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %88) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %84
  %95 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %92, ptr noundef %1) #12
  br i1 %95, label %104, label %96

96:                                               ; preds = %84, %94, %78, %80, %82, %69, %50
  %97 = add nuw nsw i64 %51, 1
  %98 = icmp eq i64 %97, %49
  br i1 %98, label %99, label %50, !llvm.loop !104

99:                                               ; preds = %96, %41, %35, %30
  %100 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %7) #12
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %100) #12
  br label %5

104:                                              ; preds = %99, %28, %94
  %105 = phi ptr [ %88, %94 ], [ null, %99 ], [ %15, %28 ]
  ret ptr %105
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !42 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %1, %2 ], [ %8, %10 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %3

16:                                               ; preds = %3, %10
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !42 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  switch i16 %7, label %105 [
    i16 1, label %8
    i16 9, label %90
    i16 6, label %114
    i16 12, label %114
    i16 11, label %114
    i16 10, label %114
    i16 2, label %96
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 22
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %13 = load ptr, ptr %3, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %17 = icmp eq ptr %12, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %8
  %19 = icmp eq ptr %1, null
  %20 = icmp eq ptr %16, null
  %21 = and i1 %19, %20
  br i1 %21, label %114, label %22

22:                                               ; preds = %18
  br i1 %20, label %25, label %23

23:                                               ; preds = %22
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %16, ptr noundef %1) #12
  br i1 %24, label %114, label %25

25:                                               ; preds = %23, %22, %8
  %26 = load ptr, ptr %3, align 8, !tbaa !48
  %27 = getelementptr inbounds ptr, ptr %26, i64 26
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br i1 %29, label %30, label %87

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !48
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %87, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %34, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i64 %39(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %36
  %44 = icmp eq ptr %1, null
  %45 = and i64 %40, 4294967295
  br label %46

46:                                               ; preds = %43, %84
  %47 = phi i64 [ 0, %43 ], [ %85, %84 ]
  %48 = load ptr, ptr %34, align 8, !tbaa !48
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %47) #12
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = getelementptr inbounds ptr, ptr %52, i64 23
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %56 = load ptr, ptr %51, align 8, !tbaa !48
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %60 = load ptr, ptr %51, align 8, !tbaa !48
  %61 = getelementptr inbounds ptr, ptr %60, i64 22
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65

65:                                               ; preds = %46
  %66 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %63, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #12
  br i1 %66, label %67, label %84

67:                                               ; preds = %65
  br i1 %44, label %68, label %74

68:                                               ; preds = %67
  %69 = load ptr, ptr %51, align 8, !tbaa !48
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %73 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  br i1 %73, label %114, label %74

74:                                               ; preds = %68, %67
  %75 = icmp eq ptr %55, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %74
  %77 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %55, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = load ptr, ptr %51, align 8, !tbaa !48
  %80 = getelementptr inbounds ptr, ptr %79, i64 24
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %83 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %82, ptr noundef %1) #12
  br i1 %83, label %114, label %84

84:                                               ; preds = %78, %76, %74, %65, %46
  %85 = add nuw nsw i64 %47, 1
  %86 = icmp eq i64 %85, %45
  br i1 %86, label %87, label %46, !llvm.loop !105

87:                                               ; preds = %84, %36, %30, %25
  %88 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %3) #12
  %89 = icmp eq ptr %88, null
  br i1 %89, label %114, label %108

90:                                               ; preds = %2
  %91 = getelementptr inbounds i8, ptr %3, i64 -24
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = getelementptr inbounds ptr, ptr %92, i64 13
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(32) %91) #12
  br label %108

96:                                               ; preds = %2
  %97 = load ptr, ptr %0, align 8, !tbaa !51
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = getelementptr inbounds ptr, ptr %98, i64 4
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef signext i16 %100(ptr noundef nonnull align 8 dereferenceable(8) %97) #12
  %102 = icmp eq i16 %101, 1
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load ptr, ptr %0, align 8, !tbaa !51
  br label %108

105:                                              ; preds = %2
  %106 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %3) #12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105, %87, %90, %103
  %109 = phi ptr [ %104, %103 ], [ %95, %90 ], [ %88, %87 ], [ %106, %105 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !48
  %111 = getelementptr inbounds ptr, ptr %110, i64 37
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef %1) #12
  br label %114

114:                                              ; preds = %78, %68, %108, %105, %96, %2, %2, %2, %2, %18, %23, %87
  %115 = phi ptr [ %12, %18 ], [ %12, %23 ], [ null, %87 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %96 ], [ null, %105 ], [ %113, %108 ], [ %59, %68 ], [ %59, %78 ]
  ret ptr %115
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 align 2 !prof !42 {
  %2 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 31
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi ptr [ %12, %8 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !42 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %213, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %10 = load ptr, ptr %1, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %14 = insertelement <4 x i16> poison, i16 %9, i64 0
  %15 = insertelement <4 x i16> %14, i16 %13, i64 1
  %16 = shufflevector <4 x i16> %15, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %17 = icmp eq <4 x i16> %16, <i16 12, i16 6, i16 6, i16 12>
  %18 = icmp sgt i16 %9, 12
  %19 = bitcast <4 x i1> %17 to i4
  %20 = icmp ne i4 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %213, label %22

22:                                               ; preds = %5
  %23 = icmp sgt i16 %13, 12
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load ptr, ptr %1, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 32
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef signext i16 %27(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #12
  %29 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl26reverseTreeOrderBitPatternEs(ptr nonnull align 8 poison, i16 noundef signext %28) #12
  br label %213

30:                                               ; preds = %22, %34
  %31 = phi i32 [ %35, %34 ], [ 0, %22 ]
  %32 = phi ptr [ %39, %34 ], [ %3, %22 ]
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %213, label %34

34:                                               ; preds = %30
  %35 = add nuw nsw i32 %31, 1
  %36 = load ptr, ptr %32, align 8, !tbaa !48
  %37 = getelementptr inbounds ptr, ptr %36, i64 5
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %32) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %30, !llvm.loop !106

41:                                               ; preds = %34, %45
  %42 = phi i32 [ %46, %45 ], [ 0, %34 ]
  %43 = phi ptr [ %50, %45 ], [ %1, %34 ]
  %44 = icmp eq ptr %43, %3
  br i1 %44, label %213, label %45

45:                                               ; preds = %41
  %46 = add nuw nsw i32 %42, 1
  %47 = load ptr, ptr %43, align 8, !tbaa !48
  %48 = getelementptr inbounds ptr, ptr %47, i64 5
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %43) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !107

52:                                               ; preds = %45
  %53 = load ptr, ptr %32, align 8, !tbaa !48
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef signext i16 %55(ptr noundef nonnull align 8 dereferenceable(8) %32) #12
  %57 = load ptr, ptr %43, align 8, !tbaa !48
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef signext i16 %59(ptr noundef nonnull align 8 dereferenceable(8) %43) #12
  %61 = icmp eq i16 %56, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load ptr, ptr %32, align 8, !tbaa !48
  %64 = getelementptr inbounds ptr, ptr %63, i64 44
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(72) %32) #12
  br label %67

67:                                               ; preds = %62, %52
  %68 = phi ptr [ %66, %62 ], [ %3, %52 ]
  %69 = icmp eq i16 %60, 2
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load ptr, ptr %43, align 8, !tbaa !48
  %72 = getelementptr inbounds ptr, ptr %71, i64 44
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(72) %43) #12
  %75 = icmp eq ptr %68, %74
  %76 = and i1 %61, %75
  br i1 %76, label %213, label %77

77:                                               ; preds = %67, %70
  %78 = phi ptr [ %74, %70 ], [ %1, %67 ]
  br i1 %61, label %79, label %105

79:                                               ; preds = %77
  %80 = icmp eq ptr %68, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %89, %79
  %82 = phi ptr [ %32, %79 ], [ %87, %89 ]
  %83 = phi i32 [ 0, %79 ], [ %90, %89 ]
  %84 = icmp eq ptr %78, null
  br i1 %84, label %108, label %96

85:                                               ; preds = %79, %89
  %86 = phi i32 [ %90, %89 ], [ 0, %79 ]
  %87 = phi ptr [ %94, %89 ], [ %68, %79 ]
  %88 = icmp eq ptr %87, %78
  br i1 %88, label %213, label %89

89:                                               ; preds = %85
  %90 = add nuw nsw i32 %86, 1
  %91 = load ptr, ptr %87, align 8, !tbaa !48
  %92 = getelementptr inbounds ptr, ptr %91, i64 5
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %87) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %81, label %85, !llvm.loop !108

96:                                               ; preds = %81, %99
  %97 = phi ptr [ %103, %99 ], [ %78, %81 ]
  %98 = icmp eq ptr %97, %68
  br i1 %98, label %213, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %97, align 8, !tbaa !48
  %101 = getelementptr inbounds ptr, ptr %100, i64 5
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %97) #12
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96, !llvm.loop !109

105:                                              ; preds = %99, %77
  %106 = phi ptr [ %32, %77 ], [ %82, %99 ]
  %107 = phi i32 [ %35, %77 ], [ %83, %99 ]
  br i1 %69, label %109, label %137

108:                                              ; preds = %81
  br i1 %69, label %111, label %137

109:                                              ; preds = %105
  %110 = icmp eq ptr %78, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %121, %108, %109
  %112 = phi ptr [ %106, %109 ], [ %82, %108 ], [ %106, %121 ]
  %113 = phi i32 [ %107, %109 ], [ %83, %108 ], [ %107, %121 ]
  %114 = phi ptr [ %43, %109 ], [ %43, %108 ], [ %119, %121 ]
  %115 = phi i32 [ 0, %109 ], [ 0, %108 ], [ %122, %121 ]
  %116 = icmp eq ptr %68, null
  br i1 %116, label %137, label %128

117:                                              ; preds = %109, %121
  %118 = phi i32 [ %122, %121 ], [ 0, %109 ]
  %119 = phi ptr [ %126, %121 ], [ %78, %109 ]
  %120 = icmp eq ptr %119, %68
  br i1 %120, label %213, label %121

121:                                              ; preds = %117
  %122 = add nuw nsw i32 %118, 1
  %123 = load ptr, ptr %119, align 8, !tbaa !48
  %124 = getelementptr inbounds ptr, ptr %123, i64 5
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(8) %119) #12
  %127 = icmp eq ptr %126, null
  br i1 %127, label %111, label %117, !llvm.loop !110

128:                                              ; preds = %111, %131
  %129 = phi ptr [ %135, %131 ], [ %68, %111 ]
  %130 = icmp eq ptr %129, %78
  br i1 %130, label %213, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !48
  %133 = getelementptr inbounds ptr, ptr %132, i64 5
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(8) %129) #12
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %128, !llvm.loop !111

137:                                              ; preds = %131, %108, %111, %105
  %138 = phi i32 [ %107, %105 ], [ %113, %111 ], [ %83, %108 ], [ %113, %131 ]
  %139 = phi ptr [ %106, %105 ], [ %112, %111 ], [ %82, %108 ], [ %112, %131 ]
  %140 = phi ptr [ %43, %105 ], [ %114, %111 ], [ %43, %108 ], [ %114, %131 ]
  %141 = phi i32 [ %46, %105 ], [ %115, %111 ], [ %46, %108 ], [ %115, %131 ]
  %142 = icmp eq ptr %139, %140
  br i1 %142, label %143, label %213

143:                                              ; preds = %137
  %144 = icmp ugt i32 %138, %141
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = sub nsw i32 %141, %138
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %160, label %169

148:                                              ; preds = %143
  %149 = sub nsw i32 %138, %141
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %148, %151
  %152 = phi i32 [ %158, %151 ], [ 0, %148 ]
  %153 = phi ptr [ %157, %151 ], [ %68, %148 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !48
  %155 = getelementptr inbounds ptr, ptr %154, i64 5
  %156 = load ptr, ptr %155, align 8
  %157 = tail call noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(8) %153) #12
  %158 = add nuw nsw i32 %152, 1
  %159 = icmp eq i32 %158, %149
  br i1 %159, label %169, label %151, !llvm.loop !112

160:                                              ; preds = %145, %160
  %161 = phi i32 [ %167, %160 ], [ 0, %145 ]
  %162 = phi ptr [ %166, %160 ], [ %78, %145 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = getelementptr inbounds ptr, ptr %163, i64 5
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %162) #12
  %167 = add nuw nsw i32 %161, 1
  %168 = icmp eq i32 %167, %146
  br i1 %168, label %169, label %160, !llvm.loop !113

169:                                              ; preds = %160, %151, %145, %148
  %170 = phi ptr [ %78, %148 ], [ %78, %145 ], [ %78, %151 ], [ %166, %160 ]
  %171 = phi ptr [ %68, %148 ], [ %68, %145 ], [ %157, %151 ], [ %68, %160 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !48
  %173 = getelementptr inbounds ptr, ptr %172, i64 5
  %174 = load ptr, ptr %173, align 8
  %175 = tail call noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(8) %171) #12
  %176 = load ptr, ptr %170, align 8, !tbaa !48
  %177 = getelementptr inbounds ptr, ptr %176, i64 5
  %178 = load ptr, ptr %177, align 8
  %179 = tail call noundef ptr %178(ptr noundef nonnull align 8 dereferenceable(8) %170) #12
  %180 = icmp eq ptr %175, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %169, %181
  %182 = phi ptr [ %191, %181 ], [ %179, %169 ]
  %183 = phi ptr [ %187, %181 ], [ %175, %169 ]
  %184 = load ptr, ptr %183, align 8, !tbaa !48
  %185 = getelementptr inbounds ptr, ptr %184, i64 5
  %186 = load ptr, ptr %185, align 8
  %187 = tail call noundef ptr %186(ptr noundef nonnull align 8 dereferenceable(8) %183) #12
  %188 = load ptr, ptr %182, align 8, !tbaa !48
  %189 = getelementptr inbounds ptr, ptr %188, i64 5
  %190 = load ptr, ptr %189, align 8
  %191 = tail call noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(8) %182) #12
  %192 = icmp eq ptr %187, %191
  br i1 %192, label %193, label %181, !llvm.loop !114

193:                                              ; preds = %181, %169
  %194 = phi ptr [ %170, %169 ], [ %182, %181 ]
  %195 = phi ptr [ %171, %169 ], [ %183, %181 ]
  %196 = phi ptr [ %175, %169 ], [ %187, %181 ]
  %197 = load ptr, ptr %196, align 8, !tbaa !48
  %198 = getelementptr inbounds ptr, ptr %197, i64 7
  %199 = load ptr, ptr %198, align 8
  %200 = tail call noundef ptr %199(ptr noundef nonnull align 8 dereferenceable(8) %196) #12
  %201 = icmp eq ptr %200, null
  br i1 %201, label %213, label %202

202:                                              ; preds = %193, %207
  %203 = phi ptr [ %211, %207 ], [ %200, %193 ]
  %204 = icmp eq ptr %203, %194
  br i1 %204, label %213, label %205

205:                                              ; preds = %202
  %206 = icmp eq ptr %203, %195
  br i1 %206, label %213, label %207

207:                                              ; preds = %205
  %208 = load ptr, ptr %203, align 8, !tbaa !48
  %209 = getelementptr inbounds ptr, ptr %208, i64 10
  %210 = load ptr, ptr %209, align 8
  %211 = tail call noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(8) %203) #12
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %202, !llvm.loop !115

213:                                              ; preds = %30, %41, %85, %96, %117, %128, %205, %202, %207, %193, %24, %5, %70, %137, %2
  %214 = phi i16 [ 48, %2 ], [ %29, %24 ], [ 0, %5 ], [ 16, %70 ], [ 0, %137 ], [ 0, %193 ], [ 2, %205 ], [ 1, %202 ], [ 0, %207 ], [ 1, %128 ], [ 2, %117 ], [ 2, %96 ], [ 1, %85 ], [ 10, %41 ], [ 5, %30 ]
  ret i16 %214
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl26reverseTreeOrderBitPatternEs(ptr nocapture nonnull readnone align 8 %0, i16 noundef signext %1) local_unnamed_addr #7 align 2 !prof !42 {
  %3 = zext i16 %1 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i16 %1, i16 1
  %9 = select i1 %5, i16 %8, i16 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %10, 8
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i16 %9, i16 4
  %16 = select i1 %12, i16 %15, i16 8
  ret i16 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 align 2 !prof !42 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !116
  %3 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2) #12
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  %5 = load i32, ptr %2, align 4, !tbaa !116
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %4, i64 noundef %8) #12
  %10 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %2) #12
  %11 = load i32, ptr %2, align 4, !tbaa !116
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %9, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef returned %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 !prof !42 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, ptr %2, align 4, !tbaa !116
  store i32 0, ptr %2, align 4, !tbaa !116
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store i16 0, ptr %1, align 2, !tbaa !93
  br label %9

9:                                                ; preds = %8, %3
  %10 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  switch i16 %14, label %74 [
    i16 1, label %15
    i16 6, label %15
    i16 5, label %15
    i16 11, label %15
    i16 2, label %58
    i16 3, label %58
    i16 4, label %58
    i16 8, label %58
    i16 7, label %58
  ]

15:                                               ; preds = %9, %9, %9, %9
  %16 = load ptr, ptr %10, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %74, label %21

21:                                               ; preds = %15, %51
  %22 = phi i32 [ %52, %51 ], [ %6, %15 ]
  %23 = phi ptr [ %56, %51 ], [ %19, %15 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef signext i16 %26(ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %28 = icmp eq i16 %27, 8
  br i1 %28, label %51, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %23, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef signext i16 %32(ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %34 = icmp eq i16 %33, 7
  br i1 %34, label %51, label %35

35:                                               ; preds = %29
  %36 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %23) #12
  br i1 %7, label %46, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 %22, ptr %4, align 4, !tbaa !116
  %38 = load i32, ptr %2, align 4, !tbaa !116
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i16, ptr %1, i64 %39
  %41 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %36, ptr noundef nonnull %40, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %42 = load i32, ptr %4, align 4, !tbaa !116
  %43 = load i32, ptr %2, align 4, !tbaa !116
  %44 = add i32 %43, %42
  store i32 %44, ptr %2, align 4, !tbaa !116
  %45 = sub i32 %22, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %51

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !tbaa !116
  %47 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %36, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %5) #12
  %48 = load i32, ptr %5, align 4, !tbaa !116
  %49 = load i32, ptr %2, align 4, !tbaa !116
  %50 = add i32 %49, %48
  store i32 %50, ptr %2, align 4, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %51

51:                                               ; preds = %37, %46, %29, %21
  %52 = phi i32 [ %45, %37 ], [ %22, %46 ], [ %22, %29 ], [ %22, %21 ]
  %53 = load ptr, ptr %23, align 8, !tbaa !48
  %54 = getelementptr inbounds ptr, ptr %53, i64 10
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %21, !llvm.loop !117

58:                                               ; preds = %9, %9, %9, %9, %9
  %59 = load ptr, ptr %10, align 8, !tbaa !48
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  %63 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %62) #12
  br i1 %7, label %70, label %64

64:                                               ; preds = %58
  %65 = tail call i32 @llvm.umin.i32(i32 %6, i32 %63)
  %66 = load i32, ptr %2, align 4, !tbaa !116
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i16, ptr %1, i64 %67
  %69 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %68, ptr noundef %62, i32 noundef %65) #12
  br label %70

70:                                               ; preds = %58, %64
  %71 = phi i32 [ %65, %64 ], [ %63, %58 ]
  %72 = load i32, ptr %2, align 4, !tbaa !116
  %73 = add i32 %72, %71
  store i32 %73, ptr %2, align 4, !tbaa !116
  br label %74

74:                                               ; preds = %51, %15, %9, %70
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !118 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !119

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !93
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !120

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !121, !llvm.loop !122

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  switch i16 %7, label %80 [
    i16 1, label %8
    i16 6, label %8
    i16 5, label %8
    i16 11, label %8
    i16 2, label %58
    i16 3, label %58
    i16 4, label %58
    i16 8, label %58
    i16 7, label %58
    i16 9, label %96
    i16 10, label %96
    i16 12, label %96
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  br i1 %9, label %10, label %26

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %12 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %13 unwind label %24

13:                                               ; preds = %10
  %14 = icmp eq ptr %12, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %17 unwind label %24

17:                                               ; preds = %15
  %18 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %16) #12
  br label %21

19:                                               ; preds = %13
  %20 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 7, ptr noundef null, ptr noundef %22) #12
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

24:                                               ; preds = %21, %15, %10
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %97

26:                                               ; preds = %8
  %27 = load ptr, ptr %3, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %41, %32 ], [ %30, %26 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 16
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %33) #12
  %38 = load ptr, ptr %3, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 7
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %32, !llvm.loop !123

43:                                               ; preds = %32, %26
  %44 = icmp eq ptr %1, null
  br i1 %44, label %96, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %3, align 8, !tbaa !48
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(293) %49, ptr noundef nonnull %1) #12
  %54 = load ptr, ptr %3, align 8, !tbaa !48
  %55 = getelementptr inbounds ptr, ptr %54, i64 17
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %53) #12
  br label %96

58:                                               ; preds = %2, %2, %2, %2, %2
  %59 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
  br i1 %59, label %60, label %76

60:                                               ; preds = %58
  %61 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %62 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %63 unwind label %74

63:                                               ; preds = %60
  %64 = icmp eq ptr %62, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %67 unwind label %74

67:                                               ; preds = %65
  %68 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %66) #12
  br label %71

69:                                               ; preds = %63
  %70 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %61, i16 noundef signext 7, ptr noundef null, ptr noundef %72) #12
          to label %73 unwind label %74

73:                                               ; preds = %71
  tail call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

74:                                               ; preds = %71, %65, %60
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %97

76:                                               ; preds = %58
  %77 = load ptr, ptr %3, align 8, !tbaa !48
  %78 = getelementptr inbounds ptr, ptr %77, i64 19
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  br label %96

80:                                               ; preds = %2
  %81 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %82 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %83 unwind label %94

83:                                               ; preds = %80
  %84 = icmp eq ptr %82, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %87 unwind label %94

87:                                               ; preds = %85
  %88 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %86) #12
  br label %91

89:                                               ; preds = %83
  %90 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi ptr [ %88, %87 ], [ %90, %89 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %81, i16 noundef signext 9, ptr noundef null, ptr noundef %92) #12
          to label %93 unwind label %94

93:                                               ; preds = %91
  tail call void @__cxa_throw(ptr nonnull %81, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

94:                                               ; preds = %91, %85, %80
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %97

96:                                               ; preds = %43, %45, %2, %2, %2, %76
  ret void

97:                                               ; preds = %94, %74, %24
  %98 = phi ptr [ %81, %94 ], [ %61, %74 ], [ %11, %24 ]
  %99 = phi { ptr, i32 } [ %95, %94 ], [ %75, %74 ], [ %25, %24 ]
  tail call void @__cxa_free_exception(ptr %98) #16
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !124 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !54
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !42 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE(ptr noundef nonnull %0) #12
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  switch i16 %7, label %71 [
    i16 1, label %8
    i16 9, label %48
    i16 6, label %79
    i16 12, label %79
    i16 11, label %79
    i16 10, label %79
    i16 2, label %58
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 23
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i16, ptr %12, align 2, !tbaa !93
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr %3, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 22
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %21) #12
  br label %79

23:                                               ; preds = %14
  %24 = load ptr, ptr %3, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 26
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %29, i64 51
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %32, align 8, !tbaa !48
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %32) #12
  %39 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %38) #12
  br label %79

40:                                               ; preds = %28, %23
  %41 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %3) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %79, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %41, align 8, !tbaa !48
  %45 = getelementptr inbounds ptr, ptr %44, i64 36
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef zeroext i1 %46(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %1) #12
  br label %79

48:                                               ; preds = %2
  %49 = getelementptr inbounds i8, ptr %3, i64 -24
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds ptr, ptr %50, i64 13
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(32) %49) #12
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = getelementptr inbounds ptr, ptr %54, i64 36
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef zeroext i1 %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %1) #12
  br label %79

58:                                               ; preds = %2
  %59 = load ptr, ptr %0, align 8, !tbaa !51
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = getelementptr inbounds ptr, ptr %60, i64 4
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef signext i16 %62(ptr noundef nonnull align 8 dereferenceable(8) %59) #12
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !51
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = getelementptr inbounds ptr, ptr %67, i64 36
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef zeroext i1 %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %1) #12
  br label %79

71:                                               ; preds = %2
  %72 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %3) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %72, align 8, !tbaa !48
  %76 = getelementptr inbounds ptr, ptr %75, i64 36
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef zeroext i1 %77(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %1) #12
  br label %79

79:                                               ; preds = %34, %74, %71, %58, %2, %2, %2, %2, %17, %40, %43, %65, %48
  %80 = phi i1 [ %70, %65 ], [ %57, %48 ], [ %22, %17 ], [ %39, %34 ], [ %47, %43 ], [ false, %40 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %58 ], [ %78, %74 ], [ false, %71 ]
  ret i1 %80
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %4 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %5 unwind label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  br label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %14) #12
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

16:                                               ; preds = %13, %7, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %3 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %4 unwind label %15

4:                                                ; preds = %1
  %5 = icmp eq ptr %3, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) #12
          to label %8 unwind label %15

8:                                                ; preds = %6
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %7) #12
  br label %12

10:                                               ; preds = %4
  %11 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !43
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %2, i16 noundef signext 15, ptr noundef null, ptr noundef %13) #12
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

15:                                               ; preds = %12, %6, %1
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #16
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DOMNodeImpl.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { builtin optsize allocsize(0) }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv, i64 1301}
!36 = !{ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE, i64 651}
!37 = !{ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv, i64 650}
!38 = !{ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 5}
!39 = !{ptr @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_, ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv, i64 1}
!40 = !{ptr @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"DOMNodeImpl.cpp:_ZN11xercesc_2_7L19reinitEmptyNodeListEv"}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !46, i64 0}
!50 = !{!"function_entry_count", i64 1851}
!51 = !{!52, !44, i64 0}
!52 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !44, i64 0, !53, i64 8}
!53 = !{!"short", !45, i64 0}
!54 = !{!52, !53, i64 8}
!55 = !{!"function_entry_count", i64 1301}
!56 = !{!"branch_weights", i32 651, i32 652}
!57 = !{!58, !44, i64 24}
!58 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !59, i64 0, !52, i64 8, !61, i64 24, !64, i64 56, !44, i64 72, !44, i64 80, !44, i64 88}
!59 = !{!"_ZTSN11xercesc_2_710DOMElementE", !60, i64 0}
!60 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!61 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !44, i64 0, !44, i64 8, !62, i64 16}
!62 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !63, i64 0, !44, i64 8}
!63 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!64 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !44, i64 0, !44, i64 8}
!65 = !{!"branch_weights", i32 1, i32 651}
!66 = !{!"function_entry_count", i64 1850}
!67 = !{!"branch_weights", i32 1851, i32 1}
!68 = !{!"function_entry_count", i64 1}
!69 = !{!"function_entry_count", i64 2954}
!70 = !{!71, !44, i64 280}
!71 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !72, i64 0, !52, i64 32, !61, i64 48, !44, i64 80, !44, i64 88, !44, i64 96, !76, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !77, i64 136, !44, i64 176, !44, i64 184, !44, i64 192, !80, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !79, i64 288, !76, i64 292}
!72 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !73, i64 0, !74, i64 8, !75, i64 16, !60, i64 24}
!73 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!74 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!75 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!76 = !{!"bool", !45, i64 0}
!77 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !78, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !79, i64 32, !79, i64 36}
!78 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!79 = !{!"int", !45, i64 0}
!80 = !{!"long", !45, i64 0}
!81 = !{!"function_entry_count", i64 8433}
!82 = !{!"function_entry_count", i64 651}
!83 = !{!"DOMNodeImpl.cpp:_ZN11xercesc_2_7L10castToNodeEPKNS_11DOMNodeImplE"}
!84 = !{!"function_entry_count", i64 2562}
!85 = !{!"function_entry_count", i64 650}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"DOMNodeImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!89 = !{!"function_entry_count", i64 1199}
!90 = !{!"branch_weights", i32 1199, i32 2}
!91 = !{!"branch_weights", i32 1, i32 2}
!92 = !{!"branch_weights", i32 2, i32 1}
!93 = !{!53, !53, i64 0}
!94 = !{!"function_entry_count", i64 1231717351}
!95 = !{!"branch_weights", i32 621, i32 -1469098093}
!96 = !{!"branch_weights", i32 408901017, i32 1}
!97 = !{!"branch_weights", i32 267, i32 4}
!98 = !{!"branch_weights", i32 1, i32 4}
!99 = !{!"branch_weights", i32 156, i32 112}
!100 = !{!"branch_weights", i32 1, i32 112}
!101 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!102 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!103 = distinct !{!103, !87}
!104 = distinct !{!104, !87}
!105 = distinct !{!105, !87}
!106 = distinct !{!106, !87}
!107 = distinct !{!107, !87}
!108 = distinct !{!108, !87}
!109 = distinct !{!109, !87}
!110 = distinct !{!110, !87}
!111 = distinct !{!111, !87}
!112 = distinct !{!112, !87}
!113 = distinct !{!113, !87}
!114 = distinct !{!114, !87}
!115 = distinct !{!115, !87}
!116 = !{!79, !79, i64 0}
!117 = distinct !{!117, !87}
!118 = !{!"function_entry_count", i64 2453164456}
!119 = !{!"branch_weights", i32 1, i32 -1841802839}
!120 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!121 = !{!"branch_weights", i32 408669070, i32 -279908794}
!122 = distinct !{!122, !87}
!123 = distinct !{!123, !87}
!124 = !{!"function_entry_count", i64 3150}
