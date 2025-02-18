; ModuleID = 'DOMNodeImpl.cpp'
source_filename = "DOMNodeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }

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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer23initializeEmptyNodeListEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %1 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
  invoke void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null)
          to label %2 unwind label %3

2:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20emptyNodeListCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L19reinitEmptyNodeListEv)
  ret void

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %1) #16
  resume { ptr, i32 } %4
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L19reinitEmptyNodeListEv() #4 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  %8 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #17
  br label %11

11:                                               ; preds = %10, %7
  store ptr null, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImplC2EPNS_7DOMNodeE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !45 {
  store ptr %1, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 0, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImplC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %1, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %6 = and i16 %4, -2
  store i16 %6, ptr %5, align 8, !tbaa !49
  %7 = load i16, ptr %3, align 8, !tbaa !49
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  br label %32

13:                                               ; preds = %2
  %14 = and i16 %7, 8
  %15 = icmp eq i16 %14, 0
  %16 = load ptr, ptr %1, align 8, !tbaa !46
  br i1 %15, label %28, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %16, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %1, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds i8, ptr %23, i64 -24
  %26 = select i1 %24, ptr null, ptr %25
  %27 = select i1 %22, ptr %26, ptr %21
  br label %32

28:                                               ; preds = %13
  %29 = icmp eq ptr %16, null
  %30 = getelementptr inbounds i8, ptr %16, i64 -24
  %31 = select i1 %29, ptr null, ptr %30
  br label %32

32:                                               ; preds = %10, %17, %28
  %33 = phi ptr [ %27, %17 ], [ %31, %28 ], [ %12, %10 ]
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds i8, ptr %33, i64 24
  %36 = select i1 %34, ptr null, ptr %35
  store ptr %36, ptr %0, align 8, !tbaa !46
  %37 = load i16, ptr %5, align 8
  %38 = and i16 %37, -9
  store i16 %38, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0) local_unnamed_addr #6 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !49
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9, !prof !59

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  br label %28

9:                                                ; preds = %1
  %10 = and i16 %3, 8
  %11 = icmp eq i16 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %11, label %24, label %13, !prof !60

13:                                               ; preds = %9
  %14 = load ptr, ptr %12, align 8, !tbaa !43
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %0, align 8
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds i8, ptr %19, i64 -24
  %22 = select i1 %20, ptr null, ptr %21
  %23 = select i1 %18, ptr %22, ptr %17
  br label %28

24:                                               ; preds = %9
  %25 = icmp eq ptr %12, null
  %26 = getelementptr inbounds i8, ptr %12, i64 -24
  %27 = select i1 %25, ptr null, ptr %26, !prof !61
  br label %28

28:                                               ; preds = %24, %13, %6
  %29 = phi ptr [ %23, %13 ], [ %27, %24 ], [ %8, %6 ]
  ret ptr %29
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !62 {
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11appendChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br label %31

11:                                               ; preds = %2
  %12 = and i16 %5, 8
  %13 = icmp eq i16 %12, 0
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %13, label %27, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %20 unwind label %68

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  %22 = load ptr, ptr %0, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i8, ptr %22, i64 -24
  %25 = select i1 %23, ptr null, ptr %24
  %26 = select i1 %21, ptr %25, ptr %19
  br label %31

27:                                               ; preds = %11
  %28 = icmp eq ptr %14, null
  %29 = getelementptr inbounds i8, ptr %14, i64 -24
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %27, %20, %8
  %32 = phi ptr [ %26, %20 ], [ %30, %27 ], [ %10, %8 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %4, align 8, !tbaa !49
  %36 = and i16 %35, 1024
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %0, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  br label %61

41:                                               ; preds = %34
  %42 = and i16 %35, 8
  %43 = icmp eq i16 %42, 0
  %44 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %43, label %57, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %44, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %50 unwind label %68

50:                                               ; preds = %45
  %51 = icmp eq ptr %49, null
  %52 = load ptr, ptr %0, align 8
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds i8, ptr %52, i64 -24
  %55 = select i1 %53, ptr null, ptr %54
  %56 = select i1 %51, ptr %55, ptr %49
  br label %61

57:                                               ; preds = %41
  %58 = icmp eq ptr %44, null
  %59 = getelementptr inbounds i8, ptr %44, i64 -24
  %60 = select i1 %58, ptr null, ptr %59
  br label %61

61:                                               ; preds = %57, %50, %38
  %62 = phi ptr [ %56, %50 ], [ %60, %57 ], [ %40, %38 ]
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %62, i64 0, i32 25
  br label %64

64:                                               ; preds = %31, %61
  %65 = phi ptr [ %63, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %31 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 3, ptr noundef null, ptr noundef %66)
          to label %67 unwind label %68

67:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

68:                                               ; preds = %45, %15, %64
  %69 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %69
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #9

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getChildNodesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !39
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %10)
  %11 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16)
          to label %17 unwind label %20

17:                                               ; preds = %15
  store ptr %14, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !39
  br label %22

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %14) #17
  br label %23

22:                                               ; preds = %17, %9
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %25

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %42

25:                                               ; preds = %22, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %26 = load ptr, ptr @_ZN11xercesc_2_7L19gEmptyNodeListMutexE, align 8, !tbaa !39
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %26)
  %27 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %31 unwind label %33

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef null)
          to label %32 unwind label %35

32:                                               ; preds = %31
  store ptr %30, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20emptyNodeListCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L19reinitEmptyNodeListEv)
          to label %37 unwind label %33

33:                                               ; preds = %32, %29
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %38

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %30) #16
  br label %38

37:                                               ; preds = %32, %25
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %40

38:                                               ; preds = %35, %33
  %39 = phi { ptr, i32 } [ %34, %33 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %42

40:                                               ; preds = %37, %1
  %41 = load ptr, ptr @_ZN11xercesc_2_7L14gEmptyNodeListE, align 8, !tbaa !39
  ret ptr %41

42:                                               ; preds = %38, %23
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %24, %23 ]
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getFirstChildEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLastChildEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !49
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds i8, ptr %1, i64 24
  %10 = select i1 %8, ptr null, ptr %9
  store ptr %10, ptr %0, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasChildNodesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #12 align 2 !prof !63 {
  ret i1 false
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !49
  %7 = and i16 %6, 1024
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  br label %32

12:                                               ; preds = %3
  %13 = and i16 %6, 8
  %14 = icmp eq i16 %13, 0
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %14, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %15, align 8, !tbaa !43
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %21 unwind label %69

21:                                               ; preds = %16
  %22 = icmp eq ptr %20, null
  %23 = load ptr, ptr %0, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds i8, ptr %23, i64 -24
  %26 = select i1 %24, ptr null, ptr %25
  %27 = select i1 %22, ptr %26, ptr %20
  br label %32

28:                                               ; preds = %12
  %29 = icmp eq ptr %15, null
  %30 = getelementptr inbounds i8, ptr %15, i64 -24
  %31 = select i1 %29, ptr null, ptr %30
  br label %32

32:                                               ; preds = %28, %21, %9
  %33 = phi ptr [ %27, %21 ], [ %31, %28 ], [ %11, %9 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr %5, align 8, !tbaa !49
  %37 = and i16 %36, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  br label %62

42:                                               ; preds = %35
  %43 = and i16 %36, 8
  %44 = icmp eq i16 %43, 0
  %45 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %44, label %58, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %45, align 8, !tbaa !43
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %51 unwind label %69

51:                                               ; preds = %46
  %52 = icmp eq ptr %50, null
  %53 = load ptr, ptr %0, align 8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds i8, ptr %53, i64 -24
  %56 = select i1 %54, ptr null, ptr %55
  %57 = select i1 %52, ptr %56, ptr %50
  br label %62

58:                                               ; preds = %42
  %59 = icmp eq ptr %45, null
  %60 = getelementptr inbounds i8, ptr %45, i64 -24
  %61 = select i1 %59, ptr null, ptr %60
  br label %62

62:                                               ; preds = %58, %51, %39
  %63 = phi ptr [ %57, %51 ], [ %61, %58 ], [ %41, %39 ]
  %64 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %63, i64 0, i32 25
  br label %65

65:                                               ; preds = %32, %62
  %66 = phi ptr [ %64, %62 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %32 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, i16 noundef signext 3, ptr noundef null, ptr noundef %67)
          to label %68 unwind label %69

68:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

69:                                               ; preds = %46, %16, %65
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %70
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11removeChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br label %31

11:                                               ; preds = %2
  %12 = and i16 %5, 8
  %13 = icmp eq i16 %12, 0
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %13, label %27, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %20 unwind label %68

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  %22 = load ptr, ptr %0, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i8, ptr %22, i64 -24
  %25 = select i1 %23, ptr null, ptr %24
  %26 = select i1 %21, ptr %25, ptr %19
  br label %31

27:                                               ; preds = %11
  %28 = icmp eq ptr %14, null
  %29 = getelementptr inbounds i8, ptr %14, i64 -24
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %27, %20, %8
  %32 = phi ptr [ %26, %20 ], [ %30, %27 ], [ %10, %8 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %4, align 8, !tbaa !49
  %36 = and i16 %35, 1024
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %0, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  br label %61

41:                                               ; preds = %34
  %42 = and i16 %35, 8
  %43 = icmp eq i16 %42, 0
  %44 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %43, label %57, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %44, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %50 unwind label %68

50:                                               ; preds = %45
  %51 = icmp eq ptr %49, null
  %52 = load ptr, ptr %0, align 8
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds i8, ptr %52, i64 -24
  %55 = select i1 %53, ptr null, ptr %54
  %56 = select i1 %51, ptr %55, ptr %49
  br label %61

57:                                               ; preds = %41
  %58 = icmp eq ptr %44, null
  %59 = getelementptr inbounds i8, ptr %44, i64 -24
  %60 = select i1 %58, ptr null, ptr %59
  br label %61

61:                                               ; preds = %57, %50, %38
  %62 = phi ptr [ %56, %50 ], [ %60, %57 ], [ %40, %38 ]
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %62, i64 0, i32 25
  br label %64

64:                                               ; preds = %31, %61
  %65 = phi ptr [ %63, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %31 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 8, ptr noundef null, ptr noundef %66)
          to label %67 unwind label %68

67:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

68:                                               ; preds = %45, %15, %64
  %69 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %69
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12replaceChildEPNS_7DOMNodeES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !49
  %7 = and i16 %6, 1024
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  br label %32

12:                                               ; preds = %3
  %13 = and i16 %6, 8
  %14 = icmp eq i16 %13, 0
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %14, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %15, align 8, !tbaa !43
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %21 unwind label %69

21:                                               ; preds = %16
  %22 = icmp eq ptr %20, null
  %23 = load ptr, ptr %0, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds i8, ptr %23, i64 -24
  %26 = select i1 %24, ptr null, ptr %25
  %27 = select i1 %22, ptr %26, ptr %20
  br label %32

28:                                               ; preds = %12
  %29 = icmp eq ptr %15, null
  %30 = getelementptr inbounds i8, ptr %15, i64 -24
  %31 = select i1 %29, ptr null, ptr %30
  br label %32

32:                                               ; preds = %28, %21, %9
  %33 = phi ptr [ %27, %21 ], [ %31, %28 ], [ %11, %9 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr %5, align 8, !tbaa !49
  %37 = and i16 %36, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  br label %62

42:                                               ; preds = %35
  %43 = and i16 %36, 8
  %44 = icmp eq i16 %43, 0
  %45 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %44, label %58, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %45, align 8, !tbaa !43
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %51 unwind label %69

51:                                               ; preds = %46
  %52 = icmp eq ptr %50, null
  %53 = load ptr, ptr %0, align 8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds i8, ptr %53, i64 -24
  %56 = select i1 %54, ptr null, ptr %55
  %57 = select i1 %52, ptr %56, ptr %50
  br label %62

58:                                               ; preds = %42
  %59 = icmp eq ptr %45, null
  %60 = getelementptr inbounds i8, ptr %45, i64 -24
  %61 = select i1 %59, ptr null, ptr %60
  br label %62

62:                                               ; preds = %58, %51, %39
  %63 = phi ptr [ %57, %51 ], [ %61, %58 ], [ %41, %39 ]
  %64 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %63, i64 0, i32 25
  br label %65

65:                                               ; preds = %32, %62
  %66 = phi ptr [ %64, %62 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %32 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, i16 noundef signext 3, ptr noundef null, ptr noundef %67)
          to label %68 unwind label %69

68:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

69:                                               ; preds = %46, %16, %65
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %70
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #7 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -2
  %7 = zext i1 %1 to i16
  %8 = or disjoint i16 %6, %7
  store i16 %8, ptr %4, align 8, !tbaa !49
  br i1 %2, label %9, label %38

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %9, %32
  %17 = phi ptr [ %36, %32 ], [ %14, %9 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef signext i16 %20(ptr noundef nonnull align 8 dereferenceable(8) %17)
  switch i16 %21, label %30 [
    i16 5, label %32
    i16 1, label %22
    i16 10, label %26
  ]

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 60
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(96) %17, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %32

26:                                               ; preds = %16
  %27 = load ptr, ptr %17, align 8, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %27, i64 51
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(130) %17, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %32

30:                                               ; preds = %16
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %17, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %31, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %32

32:                                               ; preds = %30, %26, %22, %16
  %33 = load ptr, ptr %17, align 8, !tbaa !43
  %34 = getelementptr inbounds ptr, ptr %33, i64 10
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !llvm.loop !64

38:                                               ; preds = %32, %9, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !prof !38 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %8
}

declare noundef ptr @_ZN11xercesc_2_717DOMImplementation17getImplementationEv() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br label %31

11:                                               ; preds = %2
  %12 = and i16 %5, 8
  %13 = icmp eq i16 %12, 0
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %13, label %27, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %20 unwind label %68

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  %22 = load ptr, ptr %0, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i8, ptr %22, i64 -24
  %25 = select i1 %23, ptr null, ptr %24
  %26 = select i1 %21, ptr %25, ptr %19
  br label %31

27:                                               ; preds = %11
  %28 = icmp eq ptr %14, null
  %29 = getelementptr inbounds i8, ptr %14, i64 -24
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %27, %20, %8
  %32 = phi ptr [ %26, %20 ], [ %30, %27 ], [ %10, %8 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %4, align 8, !tbaa !49
  %36 = and i16 %35, 1024
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %0, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  br label %61

41:                                               ; preds = %34
  %42 = and i16 %35, 8
  %43 = icmp eq i16 %42, 0
  %44 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %43, label %57, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %44, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %50 unwind label %68

50:                                               ; preds = %45
  %51 = icmp eq ptr %49, null
  %52 = load ptr, ptr %0, align 8
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds i8, ptr %52, i64 -24
  %55 = select i1 %53, ptr null, ptr %54
  %56 = select i1 %51, ptr %55, ptr %49
  br label %61

57:                                               ; preds = %41
  %58 = icmp eq ptr %44, null
  %59 = getelementptr inbounds i8, ptr %44, i64 -24
  %60 = select i1 %58, ptr null, ptr %59
  br label %61

61:                                               ; preds = %57, %50, %38
  %62 = phi ptr [ %56, %50 ], [ %60, %57 ], [ %40, %38 ]
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %62, i64 0, i32 25
  br label %64

64:                                               ; preds = %31, %61
  %65 = phi ptr [ %63, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %31 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 14, ptr noundef null, ptr noundef %66)
          to label %67 unwind label %68

67:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

68:                                               ; preds = %45, %15, %64
  %69 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %69
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0) local_unnamed_addr #7 align 2 !prof !38 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() local_unnamed_addr #7 align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv() local_unnamed_addr #12 align 2 !prof !63 {
  ret ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv() local_unnamed_addr #12 align 2 !prof !63 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef readonly %0, ptr noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %100, label %5, !prof !68

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !69
  %7 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !69
  %8 = icmp eq i16 %6, %7
  br i1 %8, label %9, label %46, !prof !70

9:                                                ; preds = %5, %14
  %10 = phi i16 [ %17, %14 ], [ %6, %5 ]
  %11 = phi ptr [ %16, %14 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %5 ]
  %12 = phi ptr [ %15, %14 ], [ %0, %5 ]
  %13 = icmp eq i16 %10, 0
  br i1 %13, label %20, label %14, !prof !71

14:                                               ; preds = %9
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  %16 = getelementptr inbounds i16, ptr %11, i64 1
  %17 = load i16, ptr %15, align 2, !tbaa !69
  %18 = load i16, ptr %16, align 2, !tbaa !69
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %9, label %46, !prof !72, !llvm.loop !73

20:                                               ; preds = %9
  %21 = icmp eq ptr %1, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load i16, ptr %1, align 2, !tbaa !69
  %24 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !69
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %29, label %40

26:                                               ; preds = %20
  %27 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !69
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %100, label %40

29:                                               ; preds = %22, %34
  %30 = phi i16 [ %37, %34 ], [ %23, %22 ]
  %31 = phi ptr [ %36, %34 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %22 ]
  %32 = phi ptr [ %35, %34 ], [ %1, %22 ]
  %33 = icmp eq i16 %30, 0
  br i1 %33, label %100, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = load i16, ptr %35, align 2, !tbaa !69
  %38 = load i16, ptr %36, align 2, !tbaa !69
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %29, label %40, !llvm.loop !73

40:                                               ; preds = %34, %22, %26
  %41 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %42 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %41, i16 noundef signext 14, ptr noundef null, ptr noundef %42)
          to label %43 unwind label %44

43:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

44:                                               ; preds = %40
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %102

46:                                               ; preds = %14, %5
  %47 = icmp eq i16 %2, 2
  br i1 %47, label %48, label %89, !prof !74

48:                                               ; preds = %46
  %49 = load i16, ptr %0, align 2, !tbaa !69
  %50 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %52, label %89, !prof !74

52:                                               ; preds = %48, %57
  %53 = phi i16 [ %60, %57 ], [ %49, %48 ]
  %54 = phi ptr [ %59, %57 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %48 ]
  %55 = phi ptr [ %58, %57 ], [ %0, %48 ]
  %56 = icmp eq i16 %53, 0
  br i1 %56, label %63, label %57, !prof !75

57:                                               ; preds = %52
  %58 = getelementptr inbounds i16, ptr %55, i64 1
  %59 = getelementptr inbounds i16, ptr %54, i64 1
  %60 = load i16, ptr %58, align 2, !tbaa !69
  %61 = load i16, ptr %59, align 2, !tbaa !69
  %62 = icmp eq i16 %60, %61
  br i1 %62, label %52, label %89, !prof !76, !llvm.loop !73

63:                                               ; preds = %52
  %64 = icmp eq ptr %1, null
  br i1 %64, label %69, label %65, !prof !77

65:                                               ; preds = %63
  %66 = load i16, ptr %1, align 2, !tbaa !69
  %67 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !69
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %72, label %83, !prof !74

69:                                               ; preds = %63
  %70 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !69
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %100, label %83

72:                                               ; preds = %65, %77
  %73 = phi i16 [ %80, %77 ], [ %66, %65 ]
  %74 = phi ptr [ %79, %77 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %65 ]
  %75 = phi ptr [ %78, %77 ], [ %1, %65 ]
  %76 = icmp eq i16 %73, 0
  br i1 %76, label %100, label %77, !prof !78

77:                                               ; preds = %72
  %78 = getelementptr inbounds i16, ptr %75, i64 1
  %79 = getelementptr inbounds i16, ptr %74, i64 1
  %80 = load i16, ptr %78, align 2, !tbaa !69
  %81 = load i16, ptr %79, align 2, !tbaa !69
  %82 = icmp eq i16 %80, %81
  br i1 %82, label %72, label %83, !prof !79, !llvm.loop !73

83:                                               ; preds = %77, %65, %69
  %84 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %85 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %84, i16 noundef signext 14, ptr noundef null, ptr noundef %85)
          to label %86 unwind label %87

86:                                               ; preds = %83
  tail call void @__cxa_throw(ptr nonnull %84, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

87:                                               ; preds = %83
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %102

89:                                               ; preds = %57, %48, %46
  %90 = icmp eq ptr %1, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %89
  %92 = load i16, ptr %1, align 2, !tbaa !69
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91, %89
  %95 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %96 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %95, i16 noundef signext 14, ptr noundef null, ptr noundef %96)
          to label %97 unwind label %98

97:                                               ; preds = %94
  tail call void @__cxa_throw(ptr nonnull %95, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

98:                                               ; preds = %94
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %102

100:                                              ; preds = %72, %29, %91, %69, %26, %3
  %101 = phi ptr [ %1, %3 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %26 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %69 ], [ %1, %91 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %29 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %72 ]
  ret ptr %101

102:                                              ; preds = %98, %87, %44
  %103 = phi ptr [ %95, %98 ], [ %84, %87 ], [ %41, %44 ]
  %104 = phi { ptr, i32 } [ %99, %98 ], [ %88, %87 ], [ %45, %44 ]
  tail call void @__cxa_free_exception(ptr %103) #17
  resume { ptr, i32 } %104
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !38 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !49
  %9 = and i16 %8, 512
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8
  %14 = or i16 %13, 512
  store i16 %14, ptr %12, align 8, !tbaa !49
  %15 = and i16 %13, 1024
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %0, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  br label %39

20:                                               ; preds = %11
  %21 = and i16 %13, 8
  %22 = icmp eq i16 %21, 0
  %23 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %22, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %23, align 8, !tbaa !43
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr %0, align 8
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds i8, ptr %30, i64 -24
  %33 = select i1 %31, ptr null, ptr %32
  %34 = select i1 %29, ptr %33, ptr %28
  br label %39

35:                                               ; preds = %20
  %36 = icmp eq ptr %23, null
  %37 = getelementptr inbounds i8, ptr %23, i64 -24
  %38 = select i1 %36, ptr null, ptr %37
  br label %39

39:                                               ; preds = %17, %24, %35
  %40 = phi ptr [ %34, %24 ], [ %38, %35 ], [ %19, %17 ]
  %41 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPNS_11DOMNodeImplEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293) %40, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %42

42:                                               ; preds = %6, %39
  %43 = phi ptr [ %41, %39 ], [ null, %6 ]
  ret ptr %43
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11setUserDataEPNS_11DOMNodeImplEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !49
  %5 = and i16 %4, 512
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = and i16 %4, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %0, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  br label %32

13:                                               ; preds = %7
  %14 = and i16 %4, 8
  %15 = icmp eq i16 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %15, label %28, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %16, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %0, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds i8, ptr %23, i64 -24
  %26 = select i1 %24, ptr null, ptr %25
  %27 = select i1 %22, ptr %26, ptr %21
  br label %32

28:                                               ; preds = %13
  %29 = icmp eq ptr %16, null
  %30 = getelementptr inbounds i8, ptr %16, i64 -24
  %31 = select i1 %29, ptr null, ptr %30
  br label %32

32:                                               ; preds = %10, %17, %28
  %33 = phi ptr [ %27, %17 ], [ %31, %28 ], [ %12, %10 ]
  %34 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKNS_11DOMNodeImplEPKt(ptr noundef nonnull align 8 dereferenceable(293) %33, ptr noundef nonnull %0, ptr noundef %1)
  br label %35

35:                                               ; preds = %2, %32
  %36 = phi ptr [ %34, %32 ], [ null, %2 ]
  ret ptr %36
}

declare noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl11getUserDataEPKNS_11DOMNodeImplEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !62 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !49
  %7 = and i16 %6, 1024
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %12, !prof !74

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  br label %31

12:                                               ; preds = %4
  %13 = and i16 %6, 8
  %14 = icmp eq i16 %13, 0
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %14, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %15, align 8, !tbaa !43
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %0, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i8, ptr %22, i64 -24
  %25 = select i1 %23, ptr null, ptr %24
  %26 = select i1 %21, ptr %25, ptr %20
  br label %31

27:                                               ; preds = %12
  %28 = icmp eq ptr %15, null
  %29 = getelementptr inbounds i8, ptr %15, i64 -24
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %9, %16, %27
  %32 = phi ptr [ %26, %16 ], [ %30, %27 ], [ %11, %9 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !77

34:                                               ; preds = %31
  tail call void @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %35

35:                                               ; preds = %34, %31
  ret void
}

declare void @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull readnone align 8 dereferenceable(10) %0, ptr noundef readnone %1) local_unnamed_addr #7 align 2 !prof !38 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = icmp eq ptr %3, %1
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %228, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %228, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 8, !tbaa !43
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = load ptr, ptr %5, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef signext i16 %14(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %16 = icmp eq i16 %11, %15
  br i1 %16, label %17, label %228

17:                                               ; preds = %7
  %18 = load ptr, ptr %5, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %22 = load ptr, ptr %1, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %26 = icmp eq ptr %21, null
  %27 = icmp eq ptr %25, null
  %28 = or i1 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = load i16, ptr %21, align 2, !tbaa !69
  %31 = load i16, ptr %25, align 2, !tbaa !69
  %32 = icmp eq i16 %30, %31
  br i1 %32, label %41, label %228

33:                                               ; preds = %17
  br i1 %26, label %37, label %34

34:                                               ; preds = %33
  %35 = load i16, ptr %21, align 2, !tbaa !69
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %228

37:                                               ; preds = %34, %33
  br i1 %27, label %52, label %38

38:                                               ; preds = %37
  %39 = load i16, ptr %25, align 2, !tbaa !69
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %52, label %228

41:                                               ; preds = %29, %46
  %42 = phi i16 [ %49, %46 ], [ %30, %29 ]
  %43 = phi ptr [ %48, %46 ], [ %25, %29 ]
  %44 = phi ptr [ %47, %46 ], [ %21, %29 ]
  %45 = icmp eq i16 %42, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  %48 = getelementptr inbounds i16, ptr %43, i64 1
  %49 = load i16, ptr %47, align 2, !tbaa !69
  %50 = load i16, ptr %48, align 2, !tbaa !69
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %41, label %228, !llvm.loop !73

52:                                               ; preds = %41, %38, %37
  %53 = load ptr, ptr %5, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 24
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %57 = load ptr, ptr %1, align 8, !tbaa !43
  %58 = getelementptr inbounds ptr, ptr %57, i64 24
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %61 = icmp eq ptr %56, null
  %62 = icmp eq ptr %60, null
  %63 = or i1 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = load i16, ptr %56, align 2, !tbaa !69
  %66 = load i16, ptr %60, align 2, !tbaa !69
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %76, label %228

68:                                               ; preds = %52
  br i1 %61, label %72, label %69

69:                                               ; preds = %68
  %70 = load i16, ptr %56, align 2, !tbaa !69
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %228

72:                                               ; preds = %69, %68
  br i1 %62, label %87, label %73

73:                                               ; preds = %72
  %74 = load i16, ptr %60, align 2, !tbaa !69
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %87, label %228

76:                                               ; preds = %64, %81
  %77 = phi i16 [ %84, %81 ], [ %65, %64 ]
  %78 = phi ptr [ %83, %81 ], [ %60, %64 ]
  %79 = phi ptr [ %82, %81 ], [ %56, %64 ]
  %80 = icmp eq i16 %77, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i16, ptr %79, i64 1
  %83 = getelementptr inbounds i16, ptr %78, i64 1
  %84 = load i16, ptr %82, align 2, !tbaa !69
  %85 = load i16, ptr %83, align 2, !tbaa !69
  %86 = icmp eq i16 %84, %85
  br i1 %86, label %76, label %228, !llvm.loop !73

87:                                               ; preds = %76, %73, %72
  %88 = load ptr, ptr %5, align 8, !tbaa !43
  %89 = getelementptr inbounds ptr, ptr %88, i64 22
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %92 = load ptr, ptr %1, align 8, !tbaa !43
  %93 = getelementptr inbounds ptr, ptr %92, i64 22
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %96 = icmp eq ptr %91, null
  %97 = icmp eq ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %87
  %100 = load i16, ptr %91, align 2, !tbaa !69
  %101 = load i16, ptr %95, align 2, !tbaa !69
  %102 = icmp eq i16 %100, %101
  br i1 %102, label %111, label %228

103:                                              ; preds = %87
  br i1 %96, label %107, label %104

104:                                              ; preds = %103
  %105 = load i16, ptr %91, align 2, !tbaa !69
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %228

107:                                              ; preds = %104, %103
  br i1 %97, label %122, label %108

108:                                              ; preds = %107
  %109 = load i16, ptr %95, align 2, !tbaa !69
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %122, label %228

111:                                              ; preds = %99, %116
  %112 = phi i16 [ %119, %116 ], [ %100, %99 ]
  %113 = phi ptr [ %118, %116 ], [ %95, %99 ]
  %114 = phi ptr [ %117, %116 ], [ %91, %99 ]
  %115 = icmp eq i16 %112, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds i16, ptr %114, i64 1
  %118 = getelementptr inbounds i16, ptr %113, i64 1
  %119 = load i16, ptr %117, align 2, !tbaa !69
  %120 = load i16, ptr %118, align 2, !tbaa !69
  %121 = icmp eq i16 %119, %120
  br i1 %121, label %111, label %228, !llvm.loop !73

122:                                              ; preds = %111, %108, %107
  %123 = load ptr, ptr %5, align 8, !tbaa !43
  %124 = getelementptr inbounds ptr, ptr %123, i64 23
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %127 = load ptr, ptr %1, align 8, !tbaa !43
  %128 = getelementptr inbounds ptr, ptr %127, i64 23
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %131 = icmp eq ptr %126, null
  %132 = icmp eq ptr %130, null
  %133 = or i1 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %122
  %135 = load i16, ptr %126, align 2, !tbaa !69
  %136 = load i16, ptr %130, align 2, !tbaa !69
  %137 = icmp eq i16 %135, %136
  br i1 %137, label %146, label %228

138:                                              ; preds = %122
  br i1 %131, label %142, label %139

139:                                              ; preds = %138
  %140 = load i16, ptr %126, align 2, !tbaa !69
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %228

142:                                              ; preds = %139, %138
  br i1 %132, label %157, label %143

143:                                              ; preds = %142
  %144 = load i16, ptr %130, align 2, !tbaa !69
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %157, label %228

146:                                              ; preds = %134, %151
  %147 = phi i16 [ %154, %151 ], [ %135, %134 ]
  %148 = phi ptr [ %153, %151 ], [ %130, %134 ]
  %149 = phi ptr [ %152, %151 ], [ %126, %134 ]
  %150 = icmp eq i16 %147, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds i16, ptr %149, i64 1
  %153 = getelementptr inbounds i16, ptr %148, i64 1
  %154 = load i16, ptr %152, align 2, !tbaa !69
  %155 = load i16, ptr %153, align 2, !tbaa !69
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %146, label %228, !llvm.loop !73

157:                                              ; preds = %146, %143, %142
  %158 = load ptr, ptr %5, align 8, !tbaa !43
  %159 = getelementptr inbounds ptr, ptr %158, i64 3
  %160 = load ptr, ptr %159, align 8
  %161 = tail call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %162 = load ptr, ptr %1, align 8, !tbaa !43
  %163 = getelementptr inbounds ptr, ptr %162, i64 3
  %164 = load ptr, ptr %163, align 8
  %165 = tail call noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %166 = icmp eq ptr %161, null
  %167 = icmp eq ptr %165, null
  %168 = or i1 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %157
  %170 = load i16, ptr %161, align 2, !tbaa !69
  %171 = load i16, ptr %165, align 2, !tbaa !69
  %172 = icmp eq i16 %170, %171
  br i1 %172, label %181, label %228

173:                                              ; preds = %157
  br i1 %166, label %177, label %174

174:                                              ; preds = %173
  %175 = load i16, ptr %161, align 2, !tbaa !69
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %228

177:                                              ; preds = %174, %173
  br i1 %167, label %192, label %178

178:                                              ; preds = %177
  %179 = load i16, ptr %165, align 2, !tbaa !69
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %192, label %228

181:                                              ; preds = %169, %186
  %182 = phi i16 [ %189, %186 ], [ %170, %169 ]
  %183 = phi ptr [ %188, %186 ], [ %165, %169 ]
  %184 = phi ptr [ %187, %186 ], [ %161, %169 ]
  %185 = icmp eq i16 %182, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds i16, ptr %184, i64 1
  %188 = getelementptr inbounds i16, ptr %183, i64 1
  %189 = load i16, ptr %187, align 2, !tbaa !69
  %190 = load i16, ptr %188, align 2, !tbaa !69
  %191 = icmp eq i16 %189, %190
  br i1 %191, label %181, label %228, !llvm.loop !73

192:                                              ; preds = %181, %178, %177
  %193 = load ptr, ptr %5, align 8, !tbaa !43
  %194 = getelementptr inbounds ptr, ptr %193, i64 31
  %195 = load ptr, ptr %194, align 8
  %196 = tail call noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %197 = load ptr, ptr %1, align 8, !tbaa !43
  %198 = getelementptr inbounds ptr, ptr %197, i64 31
  %199 = load ptr, ptr %198, align 8
  %200 = tail call noundef ptr %199(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %201 = icmp eq ptr %196, null
  %202 = icmp eq ptr %200, null
  %203 = or i1 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %192
  %205 = load i16, ptr %196, align 2, !tbaa !69
  %206 = load i16, ptr %200, align 2, !tbaa !69
  %207 = icmp eq i16 %205, %206
  br i1 %207, label %217, label %228

208:                                              ; preds = %192
  br i1 %201, label %212, label %209

209:                                              ; preds = %208
  %210 = load i16, ptr %196, align 2, !tbaa !69
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %209, %208
  br i1 %202, label %216, label %213

213:                                              ; preds = %212
  %214 = load i16, ptr %200, align 2, !tbaa !69
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %213, %212
  br label %228

217:                                              ; preds = %204, %222
  %218 = phi i16 [ %225, %222 ], [ %205, %204 ]
  %219 = phi ptr [ %224, %222 ], [ %200, %204 ]
  %220 = phi ptr [ %223, %222 ], [ %196, %204 ]
  %221 = icmp eq i16 %218, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds i16, ptr %220, i64 1
  %224 = getelementptr inbounds i16, ptr %219, i64 1
  %225 = load i16, ptr %223, align 2, !tbaa !69
  %226 = load i16, ptr %224, align 2, !tbaa !69
  %227 = icmp eq i16 %225, %226
  br i1 %227, label %217, label %228, !llvm.loop !73

228:                                              ; preds = %46, %81, %116, %151, %186, %217, %222, %29, %64, %99, %134, %169, %204, %216, %213, %209, %178, %174, %143, %139, %108, %104, %73, %69, %38, %34, %7, %4, %2
  %229 = phi i1 [ false, %2 ], [ true, %4 ], [ false, %7 ], [ false, %34 ], [ false, %38 ], [ false, %69 ], [ false, %73 ], [ false, %104 ], [ false, %108 ], [ false, %139 ], [ false, %143 ], [ false, %174 ], [ false, %178 ], [ true, %216 ], [ false, %213 ], [ false, %209 ], [ false, %204 ], [ false, %169 ], [ false, %134 ], [ false, %99 ], [ false, %64 ], [ false, %29 ], [ %221, %222 ], [ %221, %217 ], [ false, %186 ], [ false, %151 ], [ false, %116 ], [ false, %81 ], [ false, %46 ]
  ret i1 %229
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !38 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
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
  %12 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtbPNS_10DOMElementE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %1, i1 noundef zeroext %2, ptr noundef nonnull %6)
  br label %44

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %0, i64 -32
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(32) %14)
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds ptr, ptr %19, i64 35
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %1, i1 noundef zeroext %2)
  br label %44

23:                                               ; preds = %5
  %24 = load ptr, ptr %0, align 8, !tbaa !46
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef signext i16 %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load ptr, ptr %0, align 8, !tbaa !46
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds ptr, ptr %32, i64 35
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %1, i1 noundef zeroext %2)
  br label %44

36:                                               ; preds = %5
  %37 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %6)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %37, align 8, !tbaa !43
  %41 = getelementptr inbounds ptr, ptr %40, i64 35
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %1, i1 noundef zeroext %2)
  br label %44

44:                                               ; preds = %5, %5, %5, %11, %13, %30, %5, %23, %36, %39, %3
  %45 = phi ptr [ null, %3 ], [ %35, %30 ], [ %22, %13 ], [ %12, %11 ], [ null, %5 ], [ null, %23 ], [ %43, %39 ], [ null, %36 ], [ null, %5 ], [ null, %5 ], [ null, %5 ]
  ret ptr %45
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtbPNS_10DOMElementE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !38 {
  br label %5

5:                                                ; preds = %234, %4
  %6 = phi ptr [ %0, %4 ], [ %235, %234 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 -8
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds ptr, ptr %8, i64 22
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %12 = load ptr, ptr %7, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %16 = icmp eq ptr %11, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %5
  %18 = icmp eq ptr %1, null
  %19 = load i16, ptr %11, align 2, !tbaa !69
  br i1 %18, label %23, label %20

20:                                               ; preds = %17
  %21 = load i16, ptr %1, align 2, !tbaa !69
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %25, label %36

23:                                               ; preds = %17
  %24 = icmp eq i16 %19, 0
  br label %36

25:                                               ; preds = %20, %30
  %26 = phi i16 [ %33, %30 ], [ %19, %20 ]
  %27 = phi ptr [ %32, %30 ], [ %1, %20 ]
  %28 = phi ptr [ %31, %30 ], [ %11, %20 ]
  %29 = icmp eq i16 %26, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  %32 = getelementptr inbounds i16, ptr %27, i64 1
  %33 = load i16, ptr %31, align 2, !tbaa !69
  %34 = load i16, ptr %32, align 2, !tbaa !69
  %35 = icmp eq i16 %33, %34
  br i1 %35, label %25, label %36, !llvm.loop !73

36:                                               ; preds = %25, %30, %20, %23
  %37 = phi i1 [ %24, %23 ], [ false, %20 ], [ %29, %30 ], [ %29, %25 ]
  %38 = icmp ne ptr %15, null
  %39 = or i1 %38, %2
  %40 = and i1 %39, %37
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 37
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %15)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load i16, ptr %45, align 2, !tbaa !69
  br i1 %18, label %52, label %49

49:                                               ; preds = %47
  %50 = load i16, ptr %1, align 2, !tbaa !69
  %51 = icmp eq i16 %48, %50
  br i1 %51, label %54, label %65

52:                                               ; preds = %47
  %53 = icmp eq i16 %48, 0
  br i1 %53, label %236, label %65

54:                                               ; preds = %49, %59
  %55 = phi i16 [ %62, %59 ], [ %48, %49 ]
  %56 = phi ptr [ %61, %59 ], [ %1, %49 ]
  %57 = phi ptr [ %60, %59 ], [ %45, %49 ]
  %58 = icmp eq i16 %55, 0
  br i1 %58, label %236, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  %62 = load i16, ptr %60, align 2, !tbaa !69
  %63 = load i16, ptr %61, align 2, !tbaa !69
  %64 = icmp eq i16 %62, %63
  br i1 %64, label %54, label %65, !llvm.loop !73

65:                                               ; preds = %59, %49, %52, %41, %36, %5
  %66 = load ptr, ptr %7, align 8, !tbaa !43
  %67 = getelementptr inbounds ptr, ptr %66, i64 26
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef zeroext i1 %68(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %69, label %70, label %231

70:                                               ; preds = %65
  %71 = load ptr, ptr %7, align 8, !tbaa !43
  %72 = getelementptr inbounds ptr, ptr %71, i64 11
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %228, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %74, align 8, !tbaa !43
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef i64 %79(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %81 = trunc i64 %80 to i32
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %228, label %83

83:                                               ; preds = %76
  %84 = and i64 %80, 4294967295
  %85 = and i64 %80, 4294967295
  br label %90

86:                                               ; preds = %225
  %87 = add nuw nsw i64 %91, 1
  %88 = icmp uge i64 %87, %84
  %89 = icmp eq i64 %87, %85
  br i1 %89, label %228, label %90, !llvm.loop !80

90:                                               ; preds = %83, %86
  %91 = phi i64 [ 0, %83 ], [ %87, %86 ]
  %92 = phi i1 [ %82, %83 ], [ %88, %86 ]
  %93 = phi ptr [ %15, %83 ], [ %227, %86 ]
  %94 = load ptr, ptr %74, align 8, !tbaa !43
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %74, i64 noundef %91)
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = getelementptr inbounds ptr, ptr %98, i64 23
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97)
  %102 = load ptr, ptr %97, align 8, !tbaa !43
  %103 = getelementptr inbounds ptr, ptr %102, i64 3
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %97)
  %106 = load ptr, ptr %97, align 8, !tbaa !43
  %107 = getelementptr inbounds ptr, ptr %106, i64 22
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %97)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %225, label %111

111:                                              ; preds = %90
  %112 = load i16, ptr %109, align 2, !tbaa !69
  %113 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !69
  %114 = icmp eq i16 %112, %113
  br i1 %114, label %115, label %225

115:                                              ; preds = %111, %120
  %116 = phi i16 [ %123, %120 ], [ %112, %111 ]
  %117 = phi ptr [ %122, %120 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %111 ]
  %118 = phi ptr [ %121, %120 ], [ %109, %111 ]
  %119 = icmp eq i16 %116, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds i16, ptr %118, i64 1
  %122 = getelementptr inbounds i16, ptr %117, i64 1
  %123 = load i16, ptr %121, align 2, !tbaa !69
  %124 = load i16, ptr %122, align 2, !tbaa !69
  %125 = icmp eq i16 %123, %124
  br i1 %125, label %115, label %225, !llvm.loop !73

126:                                              ; preds = %115
  br i1 %2, label %127, label %151

127:                                              ; preds = %126
  %128 = load ptr, ptr %97, align 8, !tbaa !43
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %97)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  %134 = load i16, ptr %131, align 2, !tbaa !69
  %135 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %136 = icmp eq i16 %134, %135
  br i1 %136, label %140, label %151

137:                                              ; preds = %127
  %138 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %195, label %151

140:                                              ; preds = %133, %145
  %141 = phi i16 [ %148, %145 ], [ %134, %133 ]
  %142 = phi ptr [ %147, %145 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %133 ]
  %143 = phi ptr [ %146, %145 ], [ %131, %133 ]
  %144 = icmp eq i16 %141, 0
  br i1 %144, label %195, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds i16, ptr %143, i64 1
  %147 = getelementptr inbounds i16, ptr %142, i64 1
  %148 = load i16, ptr %146, align 2, !tbaa !69
  %149 = load i16, ptr %147, align 2, !tbaa !69
  %150 = icmp eq i16 %148, %149
  br i1 %150, label %140, label %151, !llvm.loop !73

151:                                              ; preds = %145, %133, %137, %126
  %152 = icmp eq ptr %101, null
  br i1 %152, label %225, label %153

153:                                              ; preds = %151
  %154 = load i16, ptr %101, align 2, !tbaa !69
  %155 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %157, label %225

157:                                              ; preds = %153, %162
  %158 = phi i16 [ %165, %162 ], [ %154, %153 ]
  %159 = phi ptr [ %164, %162 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %153 ]
  %160 = phi ptr [ %163, %162 ], [ %101, %153 ]
  %161 = icmp eq i16 %158, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds i16, ptr %160, i64 1
  %164 = getelementptr inbounds i16, ptr %159, i64 1
  %165 = load i16, ptr %163, align 2, !tbaa !69
  %166 = load i16, ptr %164, align 2, !tbaa !69
  %167 = icmp eq i16 %165, %166
  br i1 %167, label %157, label %225, !llvm.loop !73

168:                                              ; preds = %157
  %169 = icmp eq ptr %1, null
  %170 = icmp eq ptr %105, null
  %171 = or i1 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i16, ptr %105, align 2, !tbaa !69
  %174 = load i16, ptr %1, align 2, !tbaa !69
  %175 = icmp eq i16 %173, %174
  br i1 %175, label %184, label %225

176:                                              ; preds = %168
  br i1 %170, label %180, label %177

177:                                              ; preds = %176
  %178 = load i16, ptr %105, align 2, !tbaa !69
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %225

180:                                              ; preds = %177, %176
  br i1 %169, label %195, label %181

181:                                              ; preds = %180
  %182 = load i16, ptr %1, align 2, !tbaa !69
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %195, label %225

184:                                              ; preds = %172, %189
  %185 = phi i16 [ %192, %189 ], [ %173, %172 ]
  %186 = phi ptr [ %191, %189 ], [ %1, %172 ]
  %187 = phi ptr [ %190, %189 ], [ %105, %172 ]
  %188 = icmp eq i16 %185, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds i16, ptr %187, i64 1
  %191 = getelementptr inbounds i16, ptr %186, i64 1
  %192 = load i16, ptr %190, align 2, !tbaa !69
  %193 = load i16, ptr %191, align 2, !tbaa !69
  %194 = icmp eq i16 %192, %193
  br i1 %194, label %184, label %225, !llvm.loop !73

195:                                              ; preds = %140, %184, %181, %180, %137
  %196 = load ptr, ptr %97, align 8, !tbaa !43
  %197 = getelementptr inbounds ptr, ptr %196, i64 24
  %198 = load ptr, ptr %197, align 8
  %199 = tail call noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %97)
  %200 = load ptr, ptr %3, align 8, !tbaa !43
  %201 = getelementptr inbounds ptr, ptr %200, i64 37
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %199)
  %204 = icmp eq ptr %203, null
  br i1 %204, label %225, label %205

205:                                              ; preds = %195
  %206 = icmp eq ptr %1, null
  %207 = load i16, ptr %203, align 2, !tbaa !69
  br i1 %206, label %211, label %208

208:                                              ; preds = %205
  %209 = load i16, ptr %1, align 2, !tbaa !69
  %210 = icmp eq i16 %207, %209
  br i1 %210, label %214, label %225

211:                                              ; preds = %205
  %212 = icmp ne i16 %207, 0
  %213 = select i1 %212, ptr %93, ptr %199
  br label %225

214:                                              ; preds = %208, %219
  %215 = phi i16 [ %222, %219 ], [ %207, %208 ]
  %216 = phi ptr [ %221, %219 ], [ %1, %208 ]
  %217 = phi ptr [ %220, %219 ], [ %203, %208 ]
  %218 = icmp ne i16 %215, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = getelementptr inbounds i16, ptr %217, i64 1
  %221 = getelementptr inbounds i16, ptr %216, i64 1
  %222 = load i16, ptr %220, align 2, !tbaa !69
  %223 = load i16, ptr %221, align 2, !tbaa !69
  %224 = icmp eq i16 %222, %223
  br i1 %224, label %214, label %225, !llvm.loop !73

225:                                              ; preds = %120, %162, %189, %214, %219, %111, %153, %172, %208, %211, %195, %181, %177, %90, %151
  %226 = phi i1 [ true, %151 ], [ true, %90 ], [ true, %177 ], [ true, %181 ], [ true, %195 ], [ %212, %211 ], [ true, %208 ], [ true, %172 ], [ true, %153 ], [ true, %111 ], [ %218, %219 ], [ %218, %214 ], [ true, %189 ], [ true, %162 ], [ true, %120 ]
  %227 = phi ptr [ %93, %151 ], [ %93, %90 ], [ %93, %177 ], [ %93, %181 ], [ %93, %195 ], [ %213, %211 ], [ %93, %208 ], [ %93, %172 ], [ %93, %153 ], [ %93, %111 ], [ %199, %214 ], [ %93, %219 ], [ %93, %189 ], [ %93, %162 ], [ %93, %120 ]
  br i1 %226, label %86, label %228

228:                                              ; preds = %86, %225, %76, %70
  %229 = phi i1 [ true, %70 ], [ %82, %76 ], [ %92, %225 ], [ %88, %86 ]
  %230 = phi ptr [ %15, %70 ], [ %15, %76 ], [ %227, %225 ], [ %227, %86 ]
  br i1 %229, label %231, label %236

231:                                              ; preds = %228, %65
  %232 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef nonnull %7)
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %232, i64 0, i32 1
  br label %5

236:                                              ; preds = %54, %228, %52, %231
  %237 = phi ptr [ null, %231 ], [ %15, %52 ], [ %230, %228 ], [ %15, %54 ]
  ret ptr %237
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %1, %2 ], [ %8, %10 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %3

16:                                               ; preds = %3, %10
  %17 = phi ptr [ %8, %10 ], [ null, %3 ]
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  switch i16 %7, label %200 [
    i16 1, label %8
    i16 9, label %185
    i16 6, label %209
    i16 12, label %209
    i16 11, label %209
    i16 10, label %209
    i16 2, label %191
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 22
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %13 = load ptr, ptr %3, align 8, !tbaa !43
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %17 = icmp eq ptr %12, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %8
  %19 = icmp eq ptr %1, null
  %20 = icmp eq ptr %16, null
  %21 = and i1 %19, %20
  br i1 %21, label %209, label %22

22:                                               ; preds = %18
  br i1 %20, label %41, label %23

23:                                               ; preds = %22
  %24 = load i16, ptr %16, align 2, !tbaa !69
  br i1 %19, label %28, label %25

25:                                               ; preds = %23
  %26 = load i16, ptr %1, align 2, !tbaa !69
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %30, label %41

28:                                               ; preds = %23
  %29 = icmp eq i16 %24, 0
  br i1 %29, label %209, label %41

30:                                               ; preds = %25, %35
  %31 = phi i16 [ %38, %35 ], [ %24, %25 ]
  %32 = phi ptr [ %37, %35 ], [ %1, %25 ]
  %33 = phi ptr [ %36, %35 ], [ %16, %25 ]
  %34 = icmp eq i16 %31, 0
  br i1 %34, label %209, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = getelementptr inbounds i16, ptr %32, i64 1
  %38 = load i16, ptr %36, align 2, !tbaa !69
  %39 = load i16, ptr %37, align 2, !tbaa !69
  %40 = icmp eq i16 %38, %39
  br i1 %40, label %30, label %41, !llvm.loop !73

41:                                               ; preds = %35, %25, %28, %22, %8
  %42 = load ptr, ptr %3, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 26
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %45, label %46, label %182

46:                                               ; preds = %41
  %47 = load ptr, ptr %3, align 8, !tbaa !43
  %48 = getelementptr inbounds ptr, ptr %47, i64 11
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %179, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %50, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef i64 %55(ptr noundef nonnull align 8 dereferenceable(8) %50)
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %179, label %59

59:                                               ; preds = %52
  %60 = icmp eq ptr %1, null
  %61 = and i64 %56, 4294967295
  %62 = and i64 %56, 4294967295
  br label %67

63:                                               ; preds = %176
  %64 = add nuw nsw i64 %68, 1
  %65 = icmp uge i64 %64, %61
  %66 = icmp eq i64 %64, %62
  br i1 %66, label %179, label %67, !llvm.loop !81

67:                                               ; preds = %59, %63
  %68 = phi i64 [ 0, %59 ], [ %64, %63 ]
  %69 = phi i1 [ %58, %59 ], [ %65, %63 ]
  %70 = phi ptr [ undef, %59 ], [ %178, %63 ]
  %71 = load ptr, ptr %50, align 8, !tbaa !43
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %68)
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = getelementptr inbounds ptr, ptr %75, i64 23
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %79 = load ptr, ptr %74, align 8, !tbaa !43
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %83 = load ptr, ptr %74, align 8, !tbaa !43
  %84 = getelementptr inbounds ptr, ptr %83, i64 22
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %176, label %88

88:                                               ; preds = %67
  %89 = load i16, ptr %86, align 2, !tbaa !69
  %90 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !69
  %91 = icmp eq i16 %89, %90
  br i1 %91, label %92, label %176

92:                                               ; preds = %88, %97
  %93 = phi i16 [ %100, %97 ], [ %89, %88 ]
  %94 = phi ptr [ %99, %97 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %88 ]
  %95 = phi ptr [ %98, %97 ], [ %86, %88 ]
  %96 = icmp eq i16 %93, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds i16, ptr %95, i64 1
  %99 = getelementptr inbounds i16, ptr %94, i64 1
  %100 = load i16, ptr %98, align 2, !tbaa !69
  %101 = load i16, ptr %99, align 2, !tbaa !69
  %102 = icmp eq i16 %100, %101
  br i1 %102, label %92, label %176, !llvm.loop !73

103:                                              ; preds = %92
  br i1 %60, label %104, label %128

104:                                              ; preds = %103
  %105 = load ptr, ptr %74, align 8, !tbaa !43
  %106 = getelementptr inbounds ptr, ptr %105, i64 2
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load i16, ptr %108, align 2, !tbaa !69
  %112 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %113 = icmp eq i16 %111, %112
  br i1 %113, label %117, label %128

114:                                              ; preds = %104
  %115 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %176, label %128

117:                                              ; preds = %110, %122
  %118 = phi i16 [ %125, %122 ], [ %111, %110 ]
  %119 = phi ptr [ %124, %122 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %110 ]
  %120 = phi ptr [ %123, %122 ], [ %108, %110 ]
  %121 = icmp eq i16 %118, 0
  br i1 %121, label %176, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds i16, ptr %120, i64 1
  %124 = getelementptr inbounds i16, ptr %119, i64 1
  %125 = load i16, ptr %123, align 2, !tbaa !69
  %126 = load i16, ptr %124, align 2, !tbaa !69
  %127 = icmp eq i16 %125, %126
  br i1 %127, label %117, label %128, !llvm.loop !73

128:                                              ; preds = %122, %110, %114, %103
  %129 = icmp eq ptr %78, null
  br i1 %129, label %176, label %130

130:                                              ; preds = %128
  %131 = load i16, ptr %78, align 2, !tbaa !69
  %132 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !69
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %134, label %176

134:                                              ; preds = %130, %139
  %135 = phi i16 [ %142, %139 ], [ %131, %130 ]
  %136 = phi ptr [ %141, %139 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %130 ]
  %137 = phi ptr [ %140, %139 ], [ %78, %130 ]
  %138 = icmp eq i16 %135, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds i16, ptr %137, i64 1
  %141 = getelementptr inbounds i16, ptr %136, i64 1
  %142 = load i16, ptr %140, align 2, !tbaa !69
  %143 = load i16, ptr %141, align 2, !tbaa !69
  %144 = icmp eq i16 %142, %143
  br i1 %144, label %134, label %176, !llvm.loop !73

145:                                              ; preds = %134
  %146 = load ptr, ptr %74, align 8, !tbaa !43
  %147 = getelementptr inbounds ptr, ptr %146, i64 24
  %148 = load ptr, ptr %147, align 8
  %149 = tail call noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %150 = icmp eq ptr %149, null
  %151 = or i1 %60, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load i16, ptr %149, align 2, !tbaa !69
  %154 = load i16, ptr %1, align 2, !tbaa !69
  %155 = icmp eq i16 %153, %154
  br i1 %155, label %165, label %176

156:                                              ; preds = %145
  br i1 %150, label %160, label %157

157:                                              ; preds = %156
  %158 = load i16, ptr %149, align 2, !tbaa !69
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %157, %156
  br i1 %60, label %164, label %161

161:                                              ; preds = %160
  %162 = load i16, ptr %1, align 2, !tbaa !69
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %161, %160
  br label %176

165:                                              ; preds = %152, %170
  %166 = phi i16 [ %173, %170 ], [ %153, %152 ]
  %167 = phi ptr [ %172, %170 ], [ %1, %152 ]
  %168 = phi ptr [ %171, %170 ], [ %149, %152 ]
  %169 = icmp ne i16 %166, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = getelementptr inbounds i16, ptr %168, i64 1
  %172 = getelementptr inbounds i16, ptr %167, i64 1
  %173 = load i16, ptr %171, align 2, !tbaa !69
  %174 = load i16, ptr %172, align 2, !tbaa !69
  %175 = icmp eq i16 %173, %174
  br i1 %175, label %165, label %176, !llvm.loop !73

176:                                              ; preds = %97, %117, %139, %170, %165, %88, %130, %152, %114, %164, %67, %128, %157, %161
  %177 = phi i1 [ true, %161 ], [ true, %157 ], [ true, %128 ], [ true, %67 ], [ false, %164 ], [ false, %114 ], [ true, %152 ], [ true, %130 ], [ true, %88 ], [ %169, %165 ], [ %169, %170 ], [ true, %139 ], [ false, %117 ], [ true, %97 ]
  %178 = phi ptr [ %70, %161 ], [ %70, %157 ], [ %70, %128 ], [ %70, %67 ], [ %82, %164 ], [ %82, %114 ], [ %70, %152 ], [ %70, %130 ], [ %70, %88 ], [ %70, %170 ], [ %82, %165 ], [ %70, %139 ], [ %82, %117 ], [ %70, %97 ]
  br i1 %177, label %63, label %179

179:                                              ; preds = %63, %176, %52, %46
  %180 = phi i1 [ true, %46 ], [ %58, %52 ], [ %69, %176 ], [ %65, %63 ]
  %181 = phi ptr [ undef, %46 ], [ undef, %52 ], [ %178, %176 ], [ %178, %63 ]
  br i1 %180, label %182, label %209

182:                                              ; preds = %179, %41
  %183 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %3)
  %184 = icmp eq ptr %183, null
  br i1 %184, label %209, label %203

185:                                              ; preds = %2
  %186 = getelementptr inbounds i8, ptr %0, i64 -32
  %187 = load ptr, ptr %186, align 8, !tbaa !43
  %188 = getelementptr inbounds ptr, ptr %187, i64 13
  %189 = load ptr, ptr %188, align 8
  %190 = tail call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(32) %186)
  br label %203

191:                                              ; preds = %2
  %192 = load ptr, ptr %0, align 8, !tbaa !46
  %193 = load ptr, ptr %192, align 8, !tbaa !43
  %194 = getelementptr inbounds ptr, ptr %193, i64 4
  %195 = load ptr, ptr %194, align 8
  %196 = tail call noundef signext i16 %195(ptr noundef nonnull align 8 dereferenceable(8) %192)
  %197 = icmp eq i16 %196, 1
  br i1 %197, label %198, label %209

198:                                              ; preds = %191
  %199 = load ptr, ptr %0, align 8, !tbaa !46
  br label %203

200:                                              ; preds = %2
  %201 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %3)
  %202 = icmp eq ptr %201, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %200, %182, %185, %198
  %204 = phi ptr [ %199, %198 ], [ %190, %185 ], [ %183, %182 ], [ %201, %200 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !43
  %206 = getelementptr inbounds ptr, ptr %205, i64 37
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %1)
  br label %209

209:                                              ; preds = %30, %203, %179, %28, %2, %2, %2, %200, %191, %2, %18, %182
  %210 = phi ptr [ %12, %18 ], [ null, %182 ], [ null, %2 ], [ null, %191 ], [ null, %200 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ %12, %28 ], [ %181, %179 ], [ %208, %203 ], [ %12, %30 ]
  ret ptr %210
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 31
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi ptr [ %12, %8 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %224, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !43
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %10 = load ptr, ptr %1, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %14 = icmp eq i16 %9, 6
  %15 = icmp eq i16 %9, 12
  %16 = or i1 %14, %15
  %17 = icmp eq i16 %13, 6
  %18 = or i1 %16, %17
  %19 = icmp eq i16 %13, 12
  %20 = or i1 %19, %18
  %21 = icmp sgt i16 %9, 12
  %22 = or i1 %21, %20
  br i1 %22, label %224, label %23

23:                                               ; preds = %5
  %24 = icmp sgt i16 %13, 12
  br i1 %24, label %25, label %44

25:                                               ; preds = %23
  %26 = load ptr, ptr %1, align 8, !tbaa !43
  %27 = getelementptr inbounds ptr, ptr %26, i64 32
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef signext i16 %28(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3)
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %30, 2
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i16 %29, i16 1
  %36 = select i1 %32, i16 %35, i16 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %37, 8
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i16 %36, i16 4
  %43 = select i1 %39, i16 %42, i16 8
  br label %224

44:                                               ; preds = %23, %48
  %45 = phi i32 [ %49, %48 ], [ 0, %23 ]
  %46 = phi ptr [ %53, %48 ], [ %3, %23 ]
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %224, label %48

48:                                               ; preds = %44
  %49 = add nuw nsw i32 %45, 1
  %50 = load ptr, ptr %46, align 8, !tbaa !43
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %44, !llvm.loop !82

55:                                               ; preds = %48, %59
  %56 = phi i32 [ %60, %59 ], [ 0, %48 ]
  %57 = phi ptr [ %64, %59 ], [ %1, %48 ]
  %58 = icmp eq ptr %57, %3
  br i1 %58, label %224, label %59

59:                                               ; preds = %55
  %60 = add nuw nsw i32 %56, 1
  %61 = load ptr, ptr %57, align 8, !tbaa !43
  %62 = getelementptr inbounds ptr, ptr %61, i64 5
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %57)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %55, !llvm.loop !83

66:                                               ; preds = %59
  %67 = load ptr, ptr %46, align 8, !tbaa !43
  %68 = getelementptr inbounds ptr, ptr %67, i64 4
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef signext i16 %69(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %71 = load ptr, ptr %57, align 8, !tbaa !43
  %72 = getelementptr inbounds ptr, ptr %71, i64 4
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef signext i16 %73(ptr noundef nonnull align 8 dereferenceable(8) %57)
  %75 = icmp eq i16 %70, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load ptr, ptr %46, align 8, !tbaa !43
  %78 = getelementptr inbounds ptr, ptr %77, i64 44
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(72) %46)
  br label %81

81:                                               ; preds = %76, %66
  %82 = phi ptr [ %80, %76 ], [ %3, %66 ]
  %83 = icmp eq i16 %74, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load ptr, ptr %57, align 8, !tbaa !43
  %86 = getelementptr inbounds ptr, ptr %85, i64 44
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(72) %57)
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi ptr [ %88, %84 ], [ %1, %81 ]
  %91 = icmp eq ptr %82, %90
  %92 = and i1 %83, %91
  %93 = and i1 %75, %92
  br i1 %93, label %224, label %94

94:                                               ; preds = %89
  br i1 %75, label %95, label %121

95:                                               ; preds = %94
  %96 = icmp eq ptr %82, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %105, %95
  %98 = phi ptr [ %46, %95 ], [ %103, %105 ]
  %99 = phi i32 [ 0, %95 ], [ %106, %105 ]
  %100 = icmp eq ptr %90, null
  br i1 %100, label %121, label %112

101:                                              ; preds = %95, %105
  %102 = phi i32 [ %106, %105 ], [ 0, %95 ]
  %103 = phi ptr [ %110, %105 ], [ %82, %95 ]
  %104 = icmp eq ptr %103, %90
  br i1 %104, label %224, label %105

105:                                              ; preds = %101
  %106 = add nuw nsw i32 %102, 1
  %107 = load ptr, ptr %103, align 8, !tbaa !43
  %108 = getelementptr inbounds ptr, ptr %107, i64 5
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %103)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %97, label %101, !llvm.loop !84

112:                                              ; preds = %97, %115
  %113 = phi ptr [ %119, %115 ], [ %90, %97 ]
  %114 = icmp eq ptr %113, %82
  br i1 %114, label %224, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %113, align 8, !tbaa !43
  %117 = getelementptr inbounds ptr, ptr %116, i64 5
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %113)
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %112, !llvm.loop !85

121:                                              ; preds = %115, %97, %94
  %122 = phi ptr [ %46, %94 ], [ %98, %97 ], [ %98, %115 ]
  %123 = phi i32 [ %49, %94 ], [ %99, %97 ], [ %99, %115 ]
  br i1 %83, label %124, label %150

124:                                              ; preds = %121
  %125 = icmp eq ptr %90, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %134, %124
  %127 = phi ptr [ %57, %124 ], [ %132, %134 ]
  %128 = phi i32 [ 0, %124 ], [ %135, %134 ]
  %129 = icmp eq ptr %82, null
  br i1 %129, label %150, label %141

130:                                              ; preds = %124, %134
  %131 = phi i32 [ %135, %134 ], [ 0, %124 ]
  %132 = phi ptr [ %139, %134 ], [ %90, %124 ]
  %133 = icmp eq ptr %132, %82
  br i1 %133, label %224, label %134

134:                                              ; preds = %130
  %135 = add nuw nsw i32 %131, 1
  %136 = load ptr, ptr %132, align 8, !tbaa !43
  %137 = getelementptr inbounds ptr, ptr %136, i64 5
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(8) %132)
  %140 = icmp eq ptr %139, null
  br i1 %140, label %126, label %130, !llvm.loop !86

141:                                              ; preds = %126, %144
  %142 = phi ptr [ %148, %144 ], [ %82, %126 ]
  %143 = icmp eq ptr %142, %90
  br i1 %143, label %224, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %142, align 8, !tbaa !43
  %146 = getelementptr inbounds ptr, ptr %145, i64 5
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(8) %142)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %141, !llvm.loop !87

150:                                              ; preds = %144, %126, %121
  %151 = phi ptr [ %57, %121 ], [ %127, %126 ], [ %127, %144 ]
  %152 = phi i32 [ %60, %121 ], [ %128, %126 ], [ %128, %144 ]
  %153 = icmp eq ptr %122, %151
  br i1 %153, label %154, label %224

154:                                              ; preds = %150
  %155 = icmp ugt i32 %123, %152
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = sub nsw i32 %152, %123
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %171, label %180

159:                                              ; preds = %154
  %160 = sub nsw i32 %123, %152
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %159, %162
  %163 = phi i32 [ %169, %162 ], [ 0, %159 ]
  %164 = phi ptr [ %168, %162 ], [ %82, %159 ]
  %165 = load ptr, ptr %164, align 8, !tbaa !43
  %166 = getelementptr inbounds ptr, ptr %165, i64 5
  %167 = load ptr, ptr %166, align 8
  %168 = tail call noundef ptr %167(ptr noundef nonnull align 8 dereferenceable(8) %164)
  %169 = add nuw nsw i32 %163, 1
  %170 = icmp eq i32 %169, %160
  br i1 %170, label %180, label %162, !llvm.loop !88

171:                                              ; preds = %156, %171
  %172 = phi i32 [ %178, %171 ], [ 0, %156 ]
  %173 = phi ptr [ %177, %171 ], [ %90, %156 ]
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  %175 = getelementptr inbounds ptr, ptr %174, i64 5
  %176 = load ptr, ptr %175, align 8
  %177 = tail call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %173)
  %178 = add nuw nsw i32 %172, 1
  %179 = icmp eq i32 %178, %157
  br i1 %179, label %180, label %171, !llvm.loop !89

180:                                              ; preds = %171, %162, %156, %159
  %181 = phi ptr [ %90, %159 ], [ %90, %156 ], [ %90, %162 ], [ %177, %171 ]
  %182 = phi ptr [ %82, %159 ], [ %82, %156 ], [ %168, %162 ], [ %82, %171 ]
  %183 = load ptr, ptr %182, align 8, !tbaa !43
  %184 = getelementptr inbounds ptr, ptr %183, i64 5
  %185 = load ptr, ptr %184, align 8
  %186 = tail call noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(8) %182)
  %187 = load ptr, ptr %181, align 8, !tbaa !43
  %188 = getelementptr inbounds ptr, ptr %187, i64 5
  %189 = load ptr, ptr %188, align 8
  %190 = tail call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %181)
  %191 = icmp eq ptr %186, %190
  br i1 %191, label %204, label %192

192:                                              ; preds = %180, %192
  %193 = phi ptr [ %202, %192 ], [ %190, %180 ]
  %194 = phi ptr [ %198, %192 ], [ %186, %180 ]
  %195 = load ptr, ptr %194, align 8, !tbaa !43
  %196 = getelementptr inbounds ptr, ptr %195, i64 5
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(8) %194)
  %199 = load ptr, ptr %193, align 8, !tbaa !43
  %200 = getelementptr inbounds ptr, ptr %199, i64 5
  %201 = load ptr, ptr %200, align 8
  %202 = tail call noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(8) %193)
  %203 = icmp eq ptr %198, %202
  br i1 %203, label %204, label %192, !llvm.loop !90

204:                                              ; preds = %192, %180
  %205 = phi ptr [ %181, %180 ], [ %193, %192 ]
  %206 = phi ptr [ %182, %180 ], [ %194, %192 ]
  %207 = phi ptr [ %186, %180 ], [ %198, %192 ]
  %208 = load ptr, ptr %207, align 8, !tbaa !43
  %209 = getelementptr inbounds ptr, ptr %208, i64 7
  %210 = load ptr, ptr %209, align 8
  %211 = tail call noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(8) %207)
  %212 = icmp eq ptr %211, null
  br i1 %212, label %224, label %213

213:                                              ; preds = %204, %218
  %214 = phi ptr [ %222, %218 ], [ %211, %204 ]
  %215 = icmp eq ptr %214, %205
  br i1 %215, label %224, label %216

216:                                              ; preds = %213
  %217 = icmp eq ptr %214, %206
  br i1 %217, label %224, label %218

218:                                              ; preds = %216
  %219 = load ptr, ptr %214, align 8, !tbaa !43
  %220 = getelementptr inbounds ptr, ptr %219, i64 10
  %221 = load ptr, ptr %220, align 8
  %222 = tail call noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(8) %214)
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %213, !llvm.loop !91

224:                                              ; preds = %44, %55, %101, %112, %130, %141, %216, %213, %218, %204, %25, %5, %89, %150, %2
  %225 = phi i16 [ 48, %2 ], [ %43, %25 ], [ 0, %5 ], [ 16, %89 ], [ 0, %150 ], [ 0, %204 ], [ 0, %218 ], [ 1, %213 ], [ 2, %216 ], [ 1, %141 ], [ 2, %130 ], [ 2, %112 ], [ 1, %101 ], [ 10, %55 ], [ 5, %44 ]
  ret i16 %225
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl26reverseTreeOrderBitPatternEs(ptr nocapture noundef nonnull readnone align 8 dereferenceable(10) %0, i16 noundef signext %1) local_unnamed_addr #7 align 2 !prof !38 {
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

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #2 align 2 !prof !38 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !92
  %3 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br label %30

11:                                               ; preds = %1
  %12 = and i16 %5, 8
  %13 = icmp eq i16 %12, 0
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %13, label %26, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %0, align 8
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds i8, ptr %21, i64 -24
  %24 = select i1 %22, ptr null, ptr %23
  %25 = select i1 %20, ptr %24, ptr %19
  br label %30

26:                                               ; preds = %11
  %27 = icmp eq ptr %14, null
  %28 = getelementptr inbounds i8, ptr %14, i64 -24
  %29 = select i1 %27, ptr null, ptr %28
  br label %30

30:                                               ; preds = %8, %15, %26
  %31 = phi ptr [ %25, %15 ], [ %29, %26 ], [ %10, %8 ]
  %32 = load i32, ptr %2, align 4, !tbaa !92
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 1
  %36 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %31, i64 noundef %35)
  %37 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %36, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %38 = load i32, ptr %2, align 4, !tbaa !92
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i16, ptr %36, i64 %39
  store i16 0, ptr %40, align 2, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef returned %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 !prof !38 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, ptr %2, align 4, !tbaa !92
  store i32 0, ptr %2, align 4, !tbaa !92
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store i16 0, ptr %1, align 2, !tbaa !69
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  switch i16 %14, label %90 [
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
  %16 = load ptr, ptr %10, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %90, label %21

21:                                               ; preds = %15, %51
  %22 = phi i32 [ %52, %51 ], [ %6, %15 ]
  %23 = phi ptr [ %56, %51 ], [ %19, %15 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef signext i16 %26(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %28 = icmp eq i16 %27, 8
  br i1 %28, label %51, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %23, align 8, !tbaa !43
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef signext i16 %32(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %34 = icmp eq i16 %33, 7
  br i1 %34, label %51, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %23, i64 0, i32 1
  br i1 %7, label %46, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 %22, ptr %4, align 4, !tbaa !92
  %38 = load i32, ptr %2, align 4, !tbaa !92
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i16, ptr %1, i64 %39
  %41 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %36, ptr noundef nonnull %40, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %42 = load i32, ptr %4, align 4, !tbaa !92
  %43 = load i32, ptr %2, align 4, !tbaa !92
  %44 = add i32 %43, %42
  store i32 %44, ptr %2, align 4, !tbaa !92
  %45 = sub i32 %22, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %51

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !tbaa !92
  %47 = call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEPtRj(ptr noundef nonnull align 8 dereferenceable(10) %36, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %48 = load i32, ptr %5, align 4, !tbaa !92
  %49 = load i32, ptr %2, align 4, !tbaa !92
  %50 = add i32 %49, %48
  store i32 %50, ptr %2, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %51

51:                                               ; preds = %37, %46, %29, %21
  %52 = phi i32 [ %45, %37 ], [ %22, %46 ], [ %22, %29 ], [ %22, %21 ]
  %53 = load ptr, ptr %23, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 10
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %90, label %21, !llvm.loop !94

58:                                               ; preds = %9, %9, %9, %9, %9
  %59 = load ptr, ptr %10, align 8, !tbaa !43
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = load i16, ptr %62, align 2, !tbaa !69
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64, %67
  %68 = phi ptr [ %69, %67 ], [ %62, %64 ]
  %69 = getelementptr inbounds i16, ptr %68, i64 1
  %70 = load i16, ptr %69, align 2, !tbaa !69
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %67, !llvm.loop !95

72:                                               ; preds = %67
  %73 = ptrtoint ptr %69 to i64
  %74 = ptrtoint ptr %62 to i64
  %75 = sub i64 %73, %74
  %76 = lshr exact i64 %75, 1
  %77 = trunc i64 %76 to i32
  br label %78

78:                                               ; preds = %58, %64, %72
  %79 = phi i32 [ %77, %72 ], [ 0, %64 ], [ 0, %58 ]
  br i1 %7, label %86, label %80

80:                                               ; preds = %78
  %81 = tail call i32 @llvm.umin.i32(i32 %6, i32 %79)
  %82 = load i32, ptr %2, align 4, !tbaa !92
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %1, i64 %83
  %85 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %84, ptr noundef %62, i32 noundef %81)
  br label %86

86:                                               ; preds = %78, %80
  %87 = phi i32 [ %81, %80 ], [ %79, %78 ]
  %88 = load i32, ptr %2, align 4, !tbaa !92
  %89 = add i32 %88, %87
  store i32 %89, ptr %2, align 4, !tbaa !92
  br label %90

90:                                               ; preds = %51, %15, %9, %86
  ret ptr %1
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  switch i16 %7, label %188 [
    i16 1, label %8
    i16 6, label %8
    i16 5, label %8
    i16 11, label %8
    i16 2, label %112
    i16 3, label %112
    i16 4, label %112
    i16 8, label %112
    i16 7, label %112
    i16 9, label %256
    i16 10, label %256
    i16 12, label %256
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !49
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %15 = load i16, ptr %9, align 8, !tbaa !49
  %16 = and i16 %15, 1024
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  br label %41

21:                                               ; preds = %13
  %22 = and i16 %15, 8
  %23 = icmp eq i16 %22, 0
  %24 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %23, label %37, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %24, align 8, !tbaa !43
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %30 unwind label %78

30:                                               ; preds = %25
  %31 = icmp eq ptr %29, null
  %32 = load ptr, ptr %0, align 8
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds i8, ptr %32, i64 -24
  %35 = select i1 %33, ptr null, ptr %34
  %36 = select i1 %31, ptr %35, ptr %29
  br label %41

37:                                               ; preds = %21
  %38 = icmp eq ptr %24, null
  %39 = getelementptr inbounds i8, ptr %24, i64 -24
  %40 = select i1 %38, ptr null, ptr %39
  br label %41

41:                                               ; preds = %37, %30, %18
  %42 = phi ptr [ %36, %30 ], [ %40, %37 ], [ %20, %18 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %74, label %44

44:                                               ; preds = %41
  %45 = load i16, ptr %9, align 8, !tbaa !49
  %46 = and i16 %45, 1024
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %0, i64 16
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  br label %71

51:                                               ; preds = %44
  %52 = and i16 %45, 8
  %53 = icmp eq i16 %52, 0
  %54 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %53, label %67, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %54, align 8, !tbaa !43
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %60 unwind label %78

60:                                               ; preds = %55
  %61 = icmp eq ptr %59, null
  %62 = load ptr, ptr %0, align 8
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds i8, ptr %62, i64 -24
  %65 = select i1 %63, ptr null, ptr %64
  %66 = select i1 %61, ptr %65, ptr %59
  br label %71

67:                                               ; preds = %51
  %68 = icmp eq ptr %54, null
  %69 = getelementptr inbounds i8, ptr %54, i64 -24
  %70 = select i1 %68, ptr null, ptr %69
  br label %71

71:                                               ; preds = %67, %60, %48
  %72 = phi ptr [ %66, %60 ], [ %70, %67 ], [ %50, %48 ]
  %73 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %72, i64 0, i32 25
  br label %74

74:                                               ; preds = %41, %71
  %75 = phi ptr [ %73, %71 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %41 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %14, i16 noundef signext 7, ptr noundef null, ptr noundef %76)
          to label %77 unwind label %78

77:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

78:                                               ; preds = %55, %25, %74
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %257

80:                                               ; preds = %8
  %81 = load ptr, ptr %3, align 8, !tbaa !43
  %82 = getelementptr inbounds ptr, ptr %81, i64 7
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %80, %86
  %87 = phi ptr [ %95, %86 ], [ %84, %80 ]
  %88 = load ptr, ptr %3, align 8, !tbaa !43
  %89 = getelementptr inbounds ptr, ptr %88, i64 16
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %87)
  %92 = load ptr, ptr %3, align 8, !tbaa !43
  %93 = getelementptr inbounds ptr, ptr %92, i64 7
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %86, !llvm.loop !96

97:                                               ; preds = %86, %80
  %98 = icmp eq ptr %1, null
  br i1 %98, label %256, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr %3, align 8, !tbaa !43
  %101 = getelementptr inbounds ptr, ptr %100, i64 12
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  %105 = getelementptr inbounds ptr, ptr %104, i64 5
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(293) %103, ptr noundef nonnull %1)
  %108 = load ptr, ptr %3, align 8, !tbaa !43
  %109 = getelementptr inbounds ptr, ptr %108, i64 17
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %107)
  br label %256

112:                                              ; preds = %2, %2, %2, %2, %2
  %113 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %114 = load i16, ptr %113, align 8, !tbaa !49
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %184, label %117

117:                                              ; preds = %112
  %118 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %119 = load i16, ptr %113, align 8, !tbaa !49
  %120 = and i16 %119, 1024
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, ptr %0, i64 16
  %124 = load ptr, ptr %123, align 8, !tbaa !50
  br label %145

125:                                              ; preds = %117
  %126 = and i16 %119, 8
  %127 = icmp eq i16 %126, 0
  %128 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %127, label %141, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %128, align 8, !tbaa !43
  %131 = getelementptr inbounds ptr, ptr %130, i64 12
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %128)
          to label %134 unwind label %182

134:                                              ; preds = %129
  %135 = icmp eq ptr %133, null
  %136 = load ptr, ptr %0, align 8
  %137 = icmp eq ptr %136, null
  %138 = getelementptr inbounds i8, ptr %136, i64 -24
  %139 = select i1 %137, ptr null, ptr %138
  %140 = select i1 %135, ptr %139, ptr %133
  br label %145

141:                                              ; preds = %125
  %142 = icmp eq ptr %128, null
  %143 = getelementptr inbounds i8, ptr %128, i64 -24
  %144 = select i1 %142, ptr null, ptr %143
  br label %145

145:                                              ; preds = %141, %134, %122
  %146 = phi ptr [ %140, %134 ], [ %144, %141 ], [ %124, %122 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %178, label %148

148:                                              ; preds = %145
  %149 = load i16, ptr %113, align 8, !tbaa !49
  %150 = and i16 %149, 1024
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, ptr %0, i64 16
  %154 = load ptr, ptr %153, align 8, !tbaa !50
  br label %175

155:                                              ; preds = %148
  %156 = and i16 %149, 8
  %157 = icmp eq i16 %156, 0
  %158 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %157, label %171, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %158, align 8, !tbaa !43
  %161 = getelementptr inbounds ptr, ptr %160, i64 12
  %162 = load ptr, ptr %161, align 8
  %163 = invoke noundef ptr %162(ptr noundef nonnull align 8 dereferenceable(8) %158)
          to label %164 unwind label %182

164:                                              ; preds = %159
  %165 = icmp eq ptr %163, null
  %166 = load ptr, ptr %0, align 8
  %167 = icmp eq ptr %166, null
  %168 = getelementptr inbounds i8, ptr %166, i64 -24
  %169 = select i1 %167, ptr null, ptr %168
  %170 = select i1 %165, ptr %169, ptr %163
  br label %175

171:                                              ; preds = %155
  %172 = icmp eq ptr %158, null
  %173 = getelementptr inbounds i8, ptr %158, i64 -24
  %174 = select i1 %172, ptr null, ptr %173
  br label %175

175:                                              ; preds = %171, %164, %152
  %176 = phi ptr [ %170, %164 ], [ %174, %171 ], [ %154, %152 ]
  %177 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %176, i64 0, i32 25
  br label %178

178:                                              ; preds = %145, %175
  %179 = phi ptr [ %177, %175 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %145 ]
  %180 = load ptr, ptr %179, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %118, i16 noundef signext 7, ptr noundef null, ptr noundef %180)
          to label %181 unwind label %182

181:                                              ; preds = %178
  tail call void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

182:                                              ; preds = %159, %129, %178
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %257

184:                                              ; preds = %112
  %185 = load ptr, ptr %3, align 8, !tbaa !43
  %186 = getelementptr inbounds ptr, ptr %185, i64 19
  %187 = load ptr, ptr %186, align 8
  tail call void %187(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  br label %256

188:                                              ; preds = %2
  %189 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %190 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %191 = load i16, ptr %190, align 8, !tbaa !49
  %192 = and i16 %191, 1024
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = getelementptr inbounds i8, ptr %0, i64 16
  %196 = load ptr, ptr %195, align 8, !tbaa !50
  br label %217

197:                                              ; preds = %188
  %198 = and i16 %191, 8
  %199 = icmp eq i16 %198, 0
  %200 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %199, label %213, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %200, align 8, !tbaa !43
  %203 = getelementptr inbounds ptr, ptr %202, i64 12
  %204 = load ptr, ptr %203, align 8
  %205 = invoke noundef ptr %204(ptr noundef nonnull align 8 dereferenceable(8) %200)
          to label %206 unwind label %254

206:                                              ; preds = %201
  %207 = icmp eq ptr %205, null
  %208 = load ptr, ptr %0, align 8
  %209 = icmp eq ptr %208, null
  %210 = getelementptr inbounds i8, ptr %208, i64 -24
  %211 = select i1 %209, ptr null, ptr %210
  %212 = select i1 %207, ptr %211, ptr %205
  br label %217

213:                                              ; preds = %197
  %214 = icmp eq ptr %200, null
  %215 = getelementptr inbounds i8, ptr %200, i64 -24
  %216 = select i1 %214, ptr null, ptr %215
  br label %217

217:                                              ; preds = %213, %206, %194
  %218 = phi ptr [ %212, %206 ], [ %216, %213 ], [ %196, %194 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %250, label %220

220:                                              ; preds = %217
  %221 = load i16, ptr %190, align 8, !tbaa !49
  %222 = and i16 %221, 1024
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = getelementptr inbounds i8, ptr %0, i64 16
  %226 = load ptr, ptr %225, align 8, !tbaa !50
  br label %247

227:                                              ; preds = %220
  %228 = and i16 %221, 8
  %229 = icmp eq i16 %228, 0
  %230 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %229, label %243, label %231

231:                                              ; preds = %227
  %232 = load ptr, ptr %230, align 8, !tbaa !43
  %233 = getelementptr inbounds ptr, ptr %232, i64 12
  %234 = load ptr, ptr %233, align 8
  %235 = invoke noundef ptr %234(ptr noundef nonnull align 8 dereferenceable(8) %230)
          to label %236 unwind label %254

236:                                              ; preds = %231
  %237 = icmp eq ptr %235, null
  %238 = load ptr, ptr %0, align 8
  %239 = icmp eq ptr %238, null
  %240 = getelementptr inbounds i8, ptr %238, i64 -24
  %241 = select i1 %239, ptr null, ptr %240
  %242 = select i1 %237, ptr %241, ptr %235
  br label %247

243:                                              ; preds = %227
  %244 = icmp eq ptr %230, null
  %245 = getelementptr inbounds i8, ptr %230, i64 -24
  %246 = select i1 %244, ptr null, ptr %245
  br label %247

247:                                              ; preds = %243, %236, %224
  %248 = phi ptr [ %242, %236 ], [ %246, %243 ], [ %226, %224 ]
  %249 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %248, i64 0, i32 25
  br label %250

250:                                              ; preds = %217, %247
  %251 = phi ptr [ %249, %247 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %217 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %189, i16 noundef signext 9, ptr noundef null, ptr noundef %252)
          to label %253 unwind label %254

253:                                              ; preds = %250
  tail call void @__cxa_throw(ptr nonnull %189, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

254:                                              ; preds = %231, %201, %250
  %255 = landingpad { ptr, i32 }
          cleanup
  br label %257

256:                                              ; preds = %2, %2, %97, %99, %2, %184
  ret void

257:                                              ; preds = %254, %182, %78
  %258 = phi ptr [ %189, %254 ], [ %118, %182 ], [ %14, %78 ]
  %259 = phi { ptr, i32 } [ %255, %254 ], [ %183, %182 ], [ %79, %78 ]
  tail call void @__cxa_free_exception(ptr %258) #17
  resume { ptr, i32 } %259
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  switch i16 %7, label %125 [
    i16 1, label %8
    i16 9, label %102
    i16 6, label %133
    i16 12, label %133
    i16 11, label %133
    i16 10, label %133
    i16 2, label %112
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 23
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i16, ptr %12, align 2, !tbaa !69
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr %3, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 22
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %22 = icmp eq ptr %1, null
  %23 = icmp eq ptr %21, null
  %24 = or i1 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i16, ptr %1, align 2, !tbaa !69
  %27 = load i16, ptr %21, align 2, !tbaa !69
  %28 = icmp eq i16 %26, %27
  br i1 %28, label %38, label %133

29:                                               ; preds = %17
  br i1 %22, label %33, label %30

30:                                               ; preds = %29
  %31 = load i16, ptr %1, align 2, !tbaa !69
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %133

33:                                               ; preds = %30, %29
  br i1 %23, label %37, label %34

34:                                               ; preds = %33
  %35 = load i16, ptr %21, align 2, !tbaa !69
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %133

37:                                               ; preds = %34, %33
  br label %133

38:                                               ; preds = %25, %43
  %39 = phi i16 [ %46, %43 ], [ %26, %25 ]
  %40 = phi ptr [ %45, %43 ], [ %21, %25 ]
  %41 = phi ptr [ %44, %43 ], [ %1, %25 ]
  %42 = icmp eq i16 %39, 0
  br i1 %42, label %133, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds i16, ptr %41, i64 1
  %45 = getelementptr inbounds i16, ptr %40, i64 1
  %46 = load i16, ptr %44, align 2, !tbaa !69
  %47 = load i16, ptr %45, align 2, !tbaa !69
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %38, label %133, !llvm.loop !73

49:                                               ; preds = %14
  %50 = load ptr, ptr %3, align 8, !tbaa !43
  %51 = getelementptr inbounds ptr, ptr %50, i64 26
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %53, label %54, label %94

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 8, !tbaa !43
  %56 = getelementptr inbounds ptr, ptr %55, i64 51
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %58, align 8, !tbaa !43
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %58)
  %65 = icmp eq ptr %1, null
  %66 = icmp eq ptr %64, null
  %67 = or i1 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load i16, ptr %1, align 2, !tbaa !69
  %70 = load i16, ptr %64, align 2, !tbaa !69
  %71 = icmp eq i16 %69, %70
  br i1 %71, label %81, label %92

72:                                               ; preds = %60
  br i1 %65, label %76, label %73

73:                                               ; preds = %72
  %74 = load i16, ptr %1, align 2, !tbaa !69
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73, %72
  br i1 %66, label %80, label %77

77:                                               ; preds = %76
  %78 = load i16, ptr %64, align 2, !tbaa !69
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77, %76
  br label %92

81:                                               ; preds = %68, %86
  %82 = phi i16 [ %89, %86 ], [ %69, %68 ]
  %83 = phi ptr [ %88, %86 ], [ %64, %68 ]
  %84 = phi ptr [ %87, %86 ], [ %1, %68 ]
  %85 = icmp eq i16 %82, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds i16, ptr %84, i64 1
  %88 = getelementptr inbounds i16, ptr %83, i64 1
  %89 = load i16, ptr %87, align 2, !tbaa !69
  %90 = load i16, ptr %88, align 2, !tbaa !69
  %91 = icmp eq i16 %89, %90
  br i1 %91, label %81, label %92, !llvm.loop !73

92:                                               ; preds = %86, %81, %68, %80, %77, %73, %54
  %93 = phi i1 [ undef, %54 ], [ true, %80 ], [ false, %77 ], [ false, %73 ], [ false, %68 ], [ %85, %81 ], [ %85, %86 ]
  br i1 %59, label %94, label %133

94:                                               ; preds = %92, %49
  %95 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %3)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %133, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %95, align 8, !tbaa !43
  %99 = getelementptr inbounds ptr, ptr %98, i64 36
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef zeroext i1 %100(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %1)
  br label %133

102:                                              ; preds = %2
  %103 = getelementptr inbounds i8, ptr %0, i64 -32
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  %105 = getelementptr inbounds ptr, ptr %104, i64 13
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(32) %103)
  %108 = load ptr, ptr %107, align 8, !tbaa !43
  %109 = getelementptr inbounds ptr, ptr %108, i64 36
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef zeroext i1 %110(ptr noundef nonnull align 8 dereferenceable(8) %107, ptr noundef %1)
  br label %133

112:                                              ; preds = %2
  %113 = load ptr, ptr %0, align 8, !tbaa !46
  %114 = load ptr, ptr %113, align 8, !tbaa !43
  %115 = getelementptr inbounds ptr, ptr %114, i64 4
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef signext i16 %116(ptr noundef nonnull align 8 dereferenceable(8) %113)
  %118 = icmp eq i16 %117, 1
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load ptr, ptr %0, align 8, !tbaa !46
  %121 = load ptr, ptr %120, align 8, !tbaa !43
  %122 = getelementptr inbounds ptr, ptr %121, i64 36
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef zeroext i1 %123(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %1)
  br label %133

125:                                              ; preds = %2
  %126 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getElementAncestorEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %3)
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %126, align 8, !tbaa !43
  %130 = getelementptr inbounds ptr, ptr %129, i64 36
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef zeroext i1 %131(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef %1)
  br label %133

133:                                              ; preds = %43, %38, %25, %2, %2, %2, %37, %34, %30, %128, %125, %112, %2, %92, %94, %97, %119, %102
  %134 = phi i1 [ %124, %119 ], [ %111, %102 ], [ %93, %92 ], [ %101, %97 ], [ false, %94 ], [ false, %2 ], [ false, %112 ], [ %132, %128 ], [ false, %125 ], [ true, %37 ], [ false, %34 ], [ false, %30 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %25 ], [ %42, %38 ], [ %42, %43 ]
  ret i1 %134
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br label %31

11:                                               ; preds = %2
  %12 = and i16 %5, 8
  %13 = icmp eq i16 %12, 0
  %14 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %13, label %27, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %14, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %20 unwind label %68

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  %22 = load ptr, ptr %0, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i8, ptr %22, i64 -24
  %25 = select i1 %23, ptr null, ptr %24
  %26 = select i1 %21, ptr %25, ptr %19
  br label %31

27:                                               ; preds = %11
  %28 = icmp eq ptr %14, null
  %29 = getelementptr inbounds i8, ptr %14, i64 -24
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %27, %20, %8
  %32 = phi ptr [ %26, %20 ], [ %30, %27 ], [ %10, %8 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %4, align 8, !tbaa !49
  %36 = and i16 %35, 1024
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %0, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  br label %61

41:                                               ; preds = %34
  %42 = and i16 %35, 8
  %43 = icmp eq i16 %42, 0
  %44 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %43, label %57, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %44, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %50 unwind label %68

50:                                               ; preds = %45
  %51 = icmp eq ptr %49, null
  %52 = load ptr, ptr %0, align 8
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds i8, ptr %52, i64 -24
  %55 = select i1 %53, ptr null, ptr %54
  %56 = select i1 %51, ptr %55, ptr %49
  br label %61

57:                                               ; preds = %41
  %58 = icmp eq ptr %44, null
  %59 = getelementptr inbounds i8, ptr %44, i64 -24
  %60 = select i1 %58, ptr null, ptr %59
  br label %61

61:                                               ; preds = %57, %50, %38
  %62 = phi ptr [ %56, %50 ], [ %60, %57 ], [ %40, %38 ]
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %62, i64 0, i32 25
  br label %64

64:                                               ; preds = %31, %61
  %65 = phi ptr [ %63, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %31 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %66)
          to label %67 unwind label %68

67:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

68:                                               ; preds = %45, %15, %64
  %69 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #17
  resume { ptr, i32 } %69
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xercesc_2_711DOMNodeImpl7releaseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(10) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !49
  %5 = and i16 %4, 1024
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  br label %30

10:                                               ; preds = %1
  %11 = and i16 %4, 8
  %12 = icmp eq i16 %11, 0
  %13 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %12, label %26, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %13, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %19 unwind label %67

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  %21 = load ptr, ptr %0, align 8
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds i8, ptr %21, i64 -24
  %24 = select i1 %22, ptr null, ptr %23
  %25 = select i1 %20, ptr %24, ptr %18
  br label %30

26:                                               ; preds = %10
  %27 = icmp eq ptr %13, null
  %28 = getelementptr inbounds i8, ptr %13, i64 -24
  %29 = select i1 %27, ptr null, ptr %28
  br label %30

30:                                               ; preds = %26, %19, %7
  %31 = phi ptr [ %25, %19 ], [ %29, %26 ], [ %9, %7 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %30
  %34 = load i16, ptr %3, align 8, !tbaa !49
  %35 = and i16 %34, 1024
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %0, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  br label %60

40:                                               ; preds = %33
  %41 = and i16 %34, 8
  %42 = icmp eq i16 %41, 0
  %43 = load ptr, ptr %0, align 8, !tbaa !46
  br i1 %42, label %56, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %43, align 8, !tbaa !43
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %49 unwind label %67

49:                                               ; preds = %44
  %50 = icmp eq ptr %48, null
  %51 = load ptr, ptr %0, align 8
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds i8, ptr %51, i64 -24
  %54 = select i1 %52, ptr null, ptr %53
  %55 = select i1 %50, ptr %54, ptr %48
  br label %60

56:                                               ; preds = %40
  %57 = icmp eq ptr %43, null
  %58 = getelementptr inbounds i8, ptr %43, i64 -24
  %59 = select i1 %57, ptr null, ptr %58
  br label %60

60:                                               ; preds = %56, %49, %37
  %61 = phi ptr [ %55, %49 ], [ %59, %56 ], [ %39, %37 ]
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %61, i64 0, i32 25
  br label %63

63:                                               ; preds = %30, %60
  %64 = phi ptr [ %62, %60 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %30 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %2, i16 noundef signext 15, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

67:                                               ; preds = %44, %14, %63
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #17
  resume { ptr, i32 } %68
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOMNodeImpl.cpp() #13 section ".text.startup" !prof !62 !PGOFuncName !97 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20emptyNodeListCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl20callUserDataHandlersEPKNS_11DOMNodeImplENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES8_, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_DOMNodeImpl.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !42, i64 0}
!45 = !{!"function_entry_count", i64 1851}
!46 = !{!47, !40, i64 0}
!47 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !40, i64 0, !48, i64 8}
!48 = !{!"short", !41, i64 0}
!49 = !{!47, !48, i64 8}
!50 = !{!51, !40, i64 24}
!51 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !52, i64 0, !47, i64 8, !54, i64 24, !57, i64 56, !40, i64 72, !40, i64 80, !40, i64 88}
!52 = !{!"_ZTSN11xercesc_2_710DOMElementE", !53, i64 0}
!53 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!54 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !40, i64 0, !40, i64 8, !55, i64 16}
!55 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !56, i64 0, !40, i64 8}
!56 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!57 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !40, i64 0, !40, i64 8}
!58 = !{!"function_entry_count", i64 1300}
!59 = !{!"branch_weights", i32 650, i32 650}
!60 = !{!"branch_weights", i32 650, i32 0}
!61 = !{!"branch_weights", i32 0, i32 650}
!62 = !{!"function_entry_count", i64 1}
!63 = !{!"function_entry_count", i64 650}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"function_entry_count", i64 1199}
!68 = !{!"branch_weights", i32 1198, i32 1}
!69 = !{!48, !48, i64 0}
!70 = !{!"branch_weights", i32 127, i32 1}
!71 = !{!"branch_weights", i32 0, i32 3}
!72 = !{!"branch_weights", i32 257, i32 127}
!73 = distinct !{!73, !65, !66}
!74 = !{!"branch_weights", i32 1, i32 0}
!75 = !{!"branch_weights", i32 1, i32 5}
!76 = !{!"branch_weights", i32 6, i32 0}
!77 = !{!"branch_weights", i32 0, i32 1}
!78 = !{!"branch_weights", i32 1, i32 29}
!79 = !{!"branch_weights", i32 30, i32 0}
!80 = distinct !{!80, !65, !66}
!81 = distinct !{!81, !65, !66}
!82 = distinct !{!82, !65, !66}
!83 = distinct !{!83, !65, !66}
!84 = distinct !{!84, !65, !66}
!85 = distinct !{!85, !65, !66}
!86 = distinct !{!86, !65, !66}
!87 = distinct !{!87, !65, !66}
!88 = distinct !{!88, !65, !66}
!89 = distinct !{!89, !65, !66}
!90 = distinct !{!90, !65, !66}
!91 = distinct !{!91, !65, !66}
!92 = !{!93, !93, i64 0}
!93 = !{!"int", !41, i64 0}
!94 = distinct !{!94, !65, !66}
!95 = distinct !{!95, !65, !66}
!96 = distinct !{!96, !65, !66}
!97 = !{!"DOMNodeImpl.cpp;_GLOBAL__sub_I_DOMNodeImpl.cpp"}
