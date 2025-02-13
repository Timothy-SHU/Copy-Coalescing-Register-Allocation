; ModuleID = 'DOMString.cpp'
source_filename = "DOMString.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMStringData" = type { i32, i32, [1 x i16] }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::DOMStringHandle" = type { i32, i32, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }

$_ZN11xercesc_2_715DOMStringHandle8getMutexEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715DOMStringHandleC2Ev = comdat any

$_ZN11xercesc_2_713DOMStringData6addRefEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715DOMStringHandle6addRefEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_715DOMStringHandle9removeRefEv = comdat any

$_ZN11xercesc_2_713DOMStringData9removeRefEv = comdat any

$_ZN11xercesc_2_715DOMStringHandleD2Ev = comdat any

@_ZN11xercesc_2_7L19cleanupDomConverterE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_79DOMString20gLiveStringDataCountE = dso_local global i32 0, align 4
@_ZN11xercesc_2_79DOMString21gTotalStringDataCountE = dso_local global i32 0, align 4
@_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE = dso_local global i32 0, align 4
@_ZN11xercesc_2_79DOMString23gTotalStringHandleCountE = dso_local global i32 0, align 4
@_ZN11xercesc_2_7L13gDomConverterE = internal global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L15cleanupDomMutexE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_715DOMStringHandle11freeListPtrE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_715DOMStringHandle12blockListPtrE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L20DOMStringHandleMutexE = internal global ptr null, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@stdout = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMString.cpp, ptr null }]

@_ZN11xercesc_2_79DOMStringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOMStringC2Ev
@_ZN11xercesc_2_79DOMStringC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOMStringC2ERKS0_
@_ZN11xercesc_2_79DOMStringC1EPKt = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOMStringC2EPKt
@_ZN11xercesc_2_79DOMStringC1EPKtj = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xercesc_2_79DOMStringC2EPKtj
@_ZN11xercesc_2_79DOMStringC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOMStringC2EPKc
@_ZN11xercesc_2_79DOMStringC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN11xercesc_2_79DOMStringC2Ei
@_ZN11xercesc_2_79DOMStringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOMStringD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupDomConverterE) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715getDomConverterEv() local_unnamed_addr #2 !prof !35 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !36
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 1) #15
  %11 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L13gDomConverterE, ptr noundef null, ptr noundef null) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %21

13:                                               ; preds = %3
  %14 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L13gDomConverterE, ptr noundef nonnull %8, ptr noundef null) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  br label %21

20:                                               ; preds = %13, %10
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupDomConverterE, ptr noundef nonnull @_ZN11xercesc_2_7L18reinitDomConverterEv) #15
  br label %21

21:                                               ; preds = %10, %20, %16, %0
  %22 = load ptr, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !36
  ret ptr %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L18reinitDomConverterEv() #4 !prof !35 !PGOFuncName !42 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !40
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15cleanupDomMutexE) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !35 {
  %2 = shl i32 %0, 1
  %3 = add i32 %2, 12
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %5 = zext i32 %3 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5) #15
  %10 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE) #15
  %11 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE) #15
  store i32 %0, ptr %9, align 4, !tbaa !43
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %9, i64 0, i32 1
  store i32 1, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %9, i64 0, i32 2
  store i16 0, ptr %13, align 4, !tbaa !47
  ret ptr %9
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_715DOMStringHandle8getMutexEv() #15
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #15
  %4 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 16384) #15
          to label %12 unwind label %21

12:                                               ; preds = %6
  %13 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !36
  store ptr %13, ptr %11, align 8, !tbaa !36
  store ptr %11, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !36
  %14 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %14, %12 ], [ %18, %15 ]
  %17 = phi i64 [ 1, %12 ], [ %19, %15 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %11, i64 %17
  store ptr %16, ptr %18, align 8, !tbaa !36
  store ptr %18, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, 1023
  br i1 %20, label %23, label %15, !llvm.loop !49

21:                                               ; preds = %6
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %30

23:                                               ; preds = %15, %1
  %24 = phi ptr [ %4, %1 ], [ %18, %15 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  store ptr %25, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  %26 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE) #15
          to label %27 unwind label %28

27:                                               ; preds = %23
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %24

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_715DOMStringHandle8getMutexEv() local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #15
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) #15
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L20DOMStringHandleMutexE, ptr noundef nonnull %4, ptr noundef null) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %4) #16
  br label %13

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %4) #16
  resume { ptr, i32 } %11

12:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15cleanupDomMutexE, ptr noundef nonnull @_ZN11xercesc_2_7L14reinitDomMutexEv) #15
  br label %13

13:                                               ; preds = %12, %9, %0
  %14 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !36
  ret ptr %14
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L14reinitDomMutexEv() #4 !prof !35 !PGOFuncName !51 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_715DOMStringHandle8getMutexEv() #15
          to label %4 unwind label %26

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #15
          to label %5 unwind label %26

5:                                                ; preds = %4
  %6 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE) #15
          to label %7 unwind label %26

7:                                                ; preds = %5
  %8 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  store ptr %8, ptr %0, align 8, !tbaa !36
  store ptr %0, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  %9 = load i32, ptr @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE, align 4, !tbaa !52
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !36
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi ptr [ %12, %11 ], [ %17, %16 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !36
  %18 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %14) #15
          to label %13 unwind label %24, !llvm.loop !53

22:                                               ; preds = %13
  store ptr null, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !36
  store ptr null, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !36
  br label %23

23:                                               ; preds = %22, %7
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void

24:                                               ; preds = %16
  %25 = landingpad { ptr, i32 }
          catch ptr null
  br label %28

26:                                               ; preds = %1, %4, %5
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %25, %24 ], [ %27, %26 ]
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #18
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 poison) #15
  tail call void @_ZN11xercesc_2_715DOMStringHandleC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  %3 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString23gTotalStringHandleCountE) #15
  store i32 0, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !56
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %0) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !57
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMStringHandleC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMStringHandle17cloneStringHandleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 poison) #15
  tail call void @_ZN11xercesc_2_715DOMStringHandleC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  %3 = load i32, ptr %0, align 8, !tbaa !54
  store i32 %3, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !56
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_713DOMStringData6addRefEv(ptr noundef nonnull align 4 dereferenceable(12) %6) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMStringData6addRefEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr null, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !60 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %3, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_715DOMStringHandle6addRefEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMStringHandle6addRefEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef readonly %1) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr null, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !47
  %9 = icmp eq i16 %8, 0
  %10 = add i32 %5, 1
  br i1 %9, label %11, label %4, !llvm.loop !61

11:                                               ; preds = %4
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %10) #15
  store ptr %14, ptr %0, align 8, !tbaa !58
  store i32 %5, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %16, i64 0, i32 2
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %23, %18 ]
  %20 = getelementptr inbounds i16, ptr %1, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = getelementptr inbounds i16, ptr %17, i64 %19
  store i16 %21, ptr %22, align 2, !tbaa !47
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %6
  br i1 %24, label %25, label %18, !llvm.loop !62

25:                                               ; preds = %18
  %26 = getelementptr inbounds i16, ptr %17, i64 %6
  store i16 0, ptr %26, align 2, !tbaa !47
  br label %27

27:                                               ; preds = %11, %25, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr null, ptr %0, align 8, !tbaa !58
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = add i32 %2, 1
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %8) #15
  store ptr %9, ptr %0, align 8, !tbaa !58
  store i32 %2, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %11, i64 0, i32 2
  %13 = zext i32 %2 to i64
  br label %14

14:                                               ; preds = %7, %14
  %15 = phi i64 [ 0, %7 ], [ %19, %14 ]
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = getelementptr inbounds i16, ptr %12, i64 %15
  store i16 %17, ptr %18, align 2, !tbaa !47
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14, !llvm.loop !63

21:                                               ; preds = %14
  %22 = getelementptr inbounds i16, ptr %12, i64 %13
  store i16 0, ptr %22, align 2, !tbaa !47
  br label %23

23:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr null, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %1, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %4
  %10 = add i32 %7, 1
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %10) #15
  store ptr %11, ptr %0, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %13, i64 0, i32 2
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %16 = load ptr, ptr %5, align 8, !tbaa !40
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef nonnull %14, i32 noundef %7, ptr noundef %15) #15
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %14) #15
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %9
  %24 = load ptr, ptr %0, align 8, !tbaa !58
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_715DOMStringHandle9removeRefEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #15
  br label %27

27:                                               ; preds = %26, %23
  store ptr null, ptr %0, align 8, !tbaa !58
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %29 = load ptr, ptr %5, align 8, !tbaa !40
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef %28) #15
  %33 = add i32 %32, 1
  %34 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %33) #15
  store ptr %34, ptr %0, align 8, !tbaa !58
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %36, i64 0, i32 2
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %39 = load ptr, ptr %5, align 8, !tbaa !40
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef nonnull %37, i32 noundef %32, ptr noundef %38) #15
  br label %43

43:                                               ; preds = %27, %20
  %44 = phi i32 [ %32, %27 ], [ %7, %20 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !58
  store i32 %44, ptr %45, align 8, !tbaa !54
  br label %46

46:                                               ; preds = %43, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !65

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !47
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !66

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !47
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !67, !llvm.loop !68

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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMStringHandle9removeRefEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_713DOMStringData9removeRefEv(ptr noundef nonnull align 4 dereferenceable(12) %7) #15
  tail call void @_ZN11xercesc_2_715DOMStringHandleD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMStringData9removeRefEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  store i32 52428, ptr %0, align 4, !tbaa !43
  store i32 52428, ptr %2, align 4, !tbaa !46
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %0) #15
  %10 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE) #15
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMStringHandleD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1) unnamed_addr #4 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr null, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_715DOMStringHandle9removeRefEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !58
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_715DOMStringHandle9removeRefEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %9, ptr %0, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_715DOMStringHandle6addRefEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  br label %12

12:                                               ; preds = %8, %11, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_715DOMStringHandle9removeRefEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  br label %6

6:                                                ; preds = %5, %2
  store ptr null, ptr %0, align 8, !tbaa !58
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString7reserveEj(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %1) #15
  store ptr %8, ptr %0, align 8, !tbaa !58
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %84, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !54
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = icmp ult i32 %16, %6
  %18 = select i1 %13, i1 %17, i1 false
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_715DOMStringHandle9removeRefEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  %20 = load ptr, ptr %1, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %8, %19
  %22 = phi ptr [ %3, %8 ], [ %20, %19 ]
  %23 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle17cloneStringHandleEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #15
  store ptr %23, ptr %0, align 8, !tbaa !58
  br label %84

24:                                               ; preds = %11
  %25 = add i32 %12, %6
  %26 = icmp ult i32 %25, %16
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %15, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = zext i32 %12 to i64
  %33 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %15, i64 0, i32 2, i64 %32
  br label %62

34:                                               ; preds = %27, %24
  %35 = add i32 %25, 1
  %36 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %35) #15
  %37 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %0, align 8, !tbaa !58
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %40, i64 0, i32 2
  %42 = load i32, ptr %38, align 8, !tbaa !54
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %34
  %45 = zext i32 %42 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %51, %46 ]
  %48 = getelementptr inbounds i16, ptr %41, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !47
  %50 = getelementptr inbounds i16, ptr %37, i64 %47
  store i16 %49, ptr %50, align 2, !tbaa !47
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %45
  br i1 %52, label %53, label %46, !llvm.loop !69

53:                                               ; preds = %46, %34
  tail call void @_ZN11xercesc_2_713DOMStringData9removeRefEv(ptr noundef nonnull align 4 dereferenceable(12) %40) #15
  %54 = load ptr, ptr %0, align 8, !tbaa !58
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %54, i64 0, i32 2
  store ptr %36, ptr %55, align 8, !tbaa !57
  %56 = load ptr, ptr %1, align 8, !tbaa !58
  %57 = load i32, ptr %54, align 8, !tbaa !54
  %58 = load i32, ptr %56, align 8, !tbaa !54
  %59 = zext i32 %57 to i64
  %60 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %36, i64 0, i32 2, i64 %59
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %31, %53
  %63 = phi ptr [ %33, %31 ], [ %60, %53 ]
  %64 = phi ptr [ %3, %31 ], [ %56, %53 ]
  %65 = phi ptr [ %9, %31 ], [ %54, %53 ]
  %66 = phi i32 [ %12, %31 ], [ %57, %53 ]
  %67 = phi i32 [ %6, %31 ], [ %58, %53 ]
  %68 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %64, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !57
  %70 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %69, i64 0, i32 2
  %71 = zext i32 %67 to i64
  br label %72

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %77, %72 ]
  %74 = getelementptr inbounds i16, ptr %70, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !47
  %76 = getelementptr inbounds i16, ptr %63, i64 %73
  store i16 %75, ptr %76, align 2, !tbaa !47
  %77 = add nuw nsw i64 %73, 1
  %78 = icmp eq i64 %77, %71
  br i1 %78, label %79, label %72, !llvm.loop !70

79:                                               ; preds = %72, %53
  %80 = phi ptr [ %54, %53 ], [ %65, %72 ]
  %81 = phi i32 [ %57, %53 ], [ %66, %72 ]
  %82 = phi i32 [ 0, %53 ], [ %67, %72 ]
  %83 = add i32 %82, %81
  store i32 %83, ptr %80, align 8, !tbaa !54
  br label %84

84:                                               ; preds = %2, %5, %79, %21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef 2) #15
  store ptr %6, ptr %0, align 8, !tbaa !58
  br label %10

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !54
  %9 = add i32 %8, 1
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %3, %7 ]
  %12 = phi i32 [ 1, %5 ], [ %9, %7 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %14, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !46
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %43

21:                                               ; preds = %17, %10
  %22 = add i32 %12, 1
  %23 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %22) #15
  %24 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %0, align 8, !tbaa !58
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %27, i64 0, i32 2
  %29 = load i32, ptr %25, align 8, !tbaa !54
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %21
  %32 = zext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %38, %33 ]
  %35 = getelementptr inbounds i16, ptr %28, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !47
  %37 = getelementptr inbounds i16, ptr %24, i64 %34
  store i16 %36, ptr %37, align 2, !tbaa !47
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %32
  br i1 %39, label %40, label %33, !llvm.loop !71

40:                                               ; preds = %33, %21
  tail call void @_ZN11xercesc_2_713DOMStringData9removeRefEv(ptr noundef nonnull align 4 dereferenceable(12) %27) #15
  %41 = load ptr, ptr %0, align 8, !tbaa !58
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %41, i64 0, i32 2
  store ptr %23, ptr %42, align 8, !tbaa !57
  br label %43

43:                                               ; preds = %40, %17
  %44 = phi ptr [ %23, %40 ], [ %14, %17 ]
  %45 = phi ptr [ %41, %40 ], [ %11, %17 ]
  %46 = load i32, ptr %45, align 8, !tbaa !54
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %44, i64 0, i32 2, i64 %47
  store i16 %1, ptr %48, align 2, !tbaa !47
  %49 = add i32 %46, 1
  store i32 %49, ptr %45, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @_ZN11xercesc_2_79DOMStringC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringpLERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringpLEPKt(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringpLEt(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i16 @_ZNK11xercesc_2_79DOMString6charAtEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !54
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %10, i64 0, i32 2, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !47
  br label %14

14:                                               ; preds = %8, %5, %2
  %15 = phi i16 [ %13, %8 ], [ 0, %5 ], [ 0, %2 ]
  ret i16 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = invoke noundef ptr @_ZN11xercesc_2_715DOMStringHandle17cloneStringHandleEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
          to label %7 unwind label %8

7:                                                ; preds = %5
  store ptr %6, ptr %0, align 8, !tbaa !58
  br label %10

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %9

10:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10deleteDataEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN11xercesc_2_79DOMStringC2Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 poison) #15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
          to label %9 unwind label %12

9:                                                ; preds = %7
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #20
          to label %90 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @__cxa_free_exception(ptr %8) #17
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = tail call i32 @llvm.umin.i32(i32 %5, i32 %2)
  %18 = add i32 %17, %1
  %19 = icmp ult i32 %18, %5
  %20 = sub i32 %5, %1
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %89, label %23

23:                                               ; preds = %16
  %24 = sub i32 %5, %21
  %25 = load ptr, ptr %0, align 8, !tbaa !58
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = icmp sgt i32 %29, 1
  %31 = add i32 %21, %1
  %32 = icmp ult i32 %31, %5
  %33 = and i1 %32, %30
  br i1 %33, label %34, label %70

34:                                               ; preds = %23
  %35 = add i32 %24, 1
  %36 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %35) #15
  %37 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %0, align 8, !tbaa !58
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %40, i64 0, i32 2
  %42 = icmp eq i32 %1, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = zext i32 %1 to i64
  br label %50

45:                                               ; preds = %50, %34
  %46 = icmp ugt i32 %24, %1
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = zext i32 %1 to i64
  %49 = zext i32 %24 to i64
  br label %57

50:                                               ; preds = %43, %50
  %51 = phi i64 [ 0, %43 ], [ %55, %50 ]
  %52 = getelementptr inbounds i16, ptr %41, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !47
  %54 = getelementptr inbounds i16, ptr %37, i64 %51
  store i16 %53, ptr %54, align 2, !tbaa !47
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %44
  br i1 %56, label %45, label %50, !llvm.loop !72

57:                                               ; preds = %47, %57
  %58 = phi i64 [ %48, %47 ], [ %65, %57 ]
  %59 = trunc i64 %58 to i32
  %60 = add i32 %21, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, ptr %41, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !47
  %64 = getelementptr inbounds i16, ptr %37, i64 %58
  store i16 %63, ptr %64, align 2, !tbaa !47
  %65 = add nuw nsw i64 %58, 1
  %66 = icmp eq i64 %65, %49
  br i1 %66, label %67, label %57, !llvm.loop !73

67:                                               ; preds = %57, %45
  store i32 %24, ptr %38, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_713DOMStringData9removeRefEv(ptr noundef nonnull align 4 dereferenceable(12) %40) #15
  %68 = load ptr, ptr %0, align 8, !tbaa !58
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %68, i64 0, i32 2
  store ptr %36, ptr %69, align 8, !tbaa !57
  br label %89

70:                                               ; preds = %23
  br i1 %32, label %71, label %88

71:                                               ; preds = %70
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %27, i64 0, i32 2
  %73 = icmp ugt i32 %24, %1
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = zext i32 %1 to i64
  %76 = zext i32 %24 to i64
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %75, %74 ], [ %85, %77 ]
  %79 = trunc i64 %78 to i32
  %80 = add i32 %21, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i16, ptr %72, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !47
  %84 = getelementptr inbounds i16, ptr %72, i64 %78
  store i16 %83, ptr %84, align 2, !tbaa !47
  %85 = add nuw nsw i64 %78, 1
  %86 = icmp eq i64 %85, %76
  br i1 %86, label %87, label %77, !llvm.loop !74

87:                                               ; preds = %77, %71
  store i32 %24, ptr %25, align 8, !tbaa !54
  br label %89

88:                                               ; preds = %70
  store i32 %24, ptr %25, align 8, !tbaa !54
  br label %89

89:                                               ; preds = %67, %88, %87, %16
  ret void

90:                                               ; preds = %9
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #9 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !54
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #9 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr %1, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %4, label %34, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !54
  br i1 %6, label %32, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %5, align 8, !tbaa !54
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %17, i64 0, i32 2
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %12
  %21 = zext i32 %8 to i64
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i64 [ 0, %20 ], [ %29, %22 ]
  %24 = getelementptr inbounds i16, ptr %15, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = getelementptr inbounds i16, ptr %18, i64 %23
  %27 = load i16, ptr %26, align 2, !tbaa !47
  %28 = icmp eq i16 %25, %27
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp ne i64 %29, %21
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %22, label %39, !llvm.loop !75

32:                                               ; preds = %7
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %39, label %38

34:                                               ; preds = %2
  br i1 %6, label %39, label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %5, align 8, !tbaa !54
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %22, %12, %32, %9, %34, %35, %38
  %40 = phi i1 [ false, %38 ], [ true, %35 ], [ true, %34 ], [ false, %9 ], [ true, %32 ], [ true, %12 ], [ %28, %22 ]
  ret i1 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef readonly %1) local_unnamed_addr #9 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %3, align 8, !tbaa !54
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = zext i32 %11 to i64
  br label %18

15:                                               ; preds = %23
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %27, label %18, !llvm.loop !76

18:                                               ; preds = %13, %15
  %19 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %20 = getelementptr inbounds i16, ptr %1, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i16, ptr %10, i64 %19
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = icmp eq i16 %25, %21
  br i1 %26, label %15, label %41

27:                                               ; preds = %15, %7
  %28 = phi i64 [ 0, %7 ], [ %14, %15 ]
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !47
  %31 = icmp eq i16 %30, 0
  br label %41

32:                                               ; preds = %2
  br i1 %4, label %33, label %36

33:                                               ; preds = %32
  %34 = load i32, ptr %3, align 8, !tbaa !54
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %32
  br i1 %5, label %37, label %40

37:                                               ; preds = %36
  %38 = load i16, ptr %1, align 2, !tbaa !47
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %18, %23, %37, %33, %27, %40
  %42 = phi i1 [ true, %40 ], [ %31, %27 ], [ false, %33 ], [ false, %37 ], [ false, %23 ], [ false, %18 ]
  ret i1 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10insertDataEjRKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN11xercesc_2_79DOMStringC2Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 poison) #15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
          to label %10 unwind label %13

10:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #20
          to label %131 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %129

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @__cxa_free_exception(ptr %9) #17
  br label %129

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
          to label %20 unwind label %21

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %128

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %129

23:                                               ; preds = %15
  %24 = load ptr, ptr %2, align 8, !tbaa !58
  %25 = icmp eq ptr %24, null
  br i1 %25, label %128, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %24, align 8, !tbaa !54
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %128, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %31, i64 0, i32 2
  %33 = load i32, ptr %16, align 8, !tbaa !54
  %34 = add i32 %33, %27
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %16, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = load i32, ptr %36, align 4, !tbaa !43
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %36, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !46
  %42 = icmp sgt i32 %41, 1
  %43 = icmp eq ptr %16, %24
  %44 = or i1 %43, %42
  br i1 %44, label %45, label %96

45:                                               ; preds = %39, %29
  %46 = add i32 %34, 1
  %47 = tail call noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %46) #15
  %48 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %0, align 8, !tbaa !58
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %51, i64 0, i32 2
  %53 = icmp eq i32 %1, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = zext i32 %1 to i64
  br label %59

56:                                               ; preds = %59, %45
  %57 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  %58 = zext i32 %57 to i64
  br label %71

59:                                               ; preds = %54, %59
  %60 = phi i64 [ 0, %54 ], [ %64, %59 ]
  %61 = getelementptr inbounds i16, ptr %52, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !47
  %63 = getelementptr inbounds i16, ptr %48, i64 %60
  store i16 %62, ptr %63, align 2, !tbaa !47
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp eq i64 %64, %55
  br i1 %65, label %56, label %59, !llvm.loop !77

66:                                               ; preds = %71
  %67 = icmp ugt i32 %6, %1
  br i1 %67, label %68, label %91

68:                                               ; preds = %66
  %69 = zext i32 %1 to i64
  %70 = zext i32 %6 to i64
  br label %81

71:                                               ; preds = %56, %71
  %72 = phi i64 [ 0, %56 ], [ %79, %71 ]
  %73 = getelementptr inbounds i16, ptr %32, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !47
  %75 = trunc i64 %72 to i32
  %76 = add i32 %75, %1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %48, i64 %77
  store i16 %74, ptr %78, align 2, !tbaa !47
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %58
  br i1 %80, label %66, label %71, !llvm.loop !78

81:                                               ; preds = %68, %81
  %82 = phi i64 [ %69, %68 ], [ %89, %81 ]
  %83 = getelementptr inbounds i16, ptr %52, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !47
  %85 = trunc i64 %82 to i32
  %86 = add i32 %27, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i16, ptr %48, i64 %87
  store i16 %84, ptr %88, align 2, !tbaa !47
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, %70
  br i1 %90, label %91, label %81, !llvm.loop !79

91:                                               ; preds = %81, %66
  tail call void @_ZN11xercesc_2_713DOMStringData9removeRefEv(ptr noundef nonnull align 4 dereferenceable(12) %51) #15
  %92 = load ptr, ptr %0, align 8, !tbaa !58
  %93 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %92, i64 0, i32 2
  store ptr %47, ptr %93, align 8, !tbaa !57
  %94 = load i32, ptr %92, align 8, !tbaa !54
  %95 = add i32 %94, %27
  br label %125

96:                                               ; preds = %39
  %97 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %36, i64 0, i32 2
  %98 = icmp sgt i32 %6, %1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = sext i32 %6 to i64
  %101 = sext i32 %1 to i64
  br label %105

102:                                              ; preds = %105, %96
  %103 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  %104 = zext i32 %103 to i64
  br label %115

105:                                              ; preds = %99, %105
  %106 = phi i64 [ %100, %99 ], [ %107, %105 ]
  %107 = add nsw i64 %106, -1
  %108 = getelementptr inbounds i16, ptr %97, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !47
  %110 = trunc i64 %107 to i32
  %111 = add i32 %27, %110
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %97, i64 %112
  store i16 %109, ptr %113, align 2, !tbaa !47
  %114 = icmp sgt i64 %107, %101
  br i1 %114, label %105, label %102, !llvm.loop !80

115:                                              ; preds = %102, %115
  %116 = phi i64 [ 0, %102 ], [ %123, %115 ]
  %117 = getelementptr inbounds i16, ptr %32, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !47
  %119 = trunc i64 %116 to i32
  %120 = add i32 %119, %1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i16, ptr %97, i64 %121
  store i16 %118, ptr %122, align 2, !tbaa !47
  %123 = add nuw nsw i64 %116, 1
  %124 = icmp eq i64 %123, %104
  br i1 %124, label %125, label %115, !llvm.loop !81

125:                                              ; preds = %115, %91
  %126 = phi i32 [ %95, %91 ], [ %34, %115 ]
  %127 = phi ptr [ %92, %91 ], [ %16, %115 ]
  store i32 %126, ptr %127, align 8, !tbaa !54
  br label %128

128:                                              ; preds = %23, %26, %125, %20
  ret void

129:                                              ; preds = %11, %13, %21
  %130 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ], [ %22, %21 ]
  resume { ptr, i32 } %130

131:                                              ; preds = %10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString5printEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !35 {
  %2 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %6 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9transcodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %5) #15
  %7 = load ptr, ptr @stdout, align 8, !tbaa !36
  %8 = tail call i32 @fputs(ptr noundef %6, ptr noundef %7) #15
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %6) #15
  br label %13

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMString9transcodeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !54
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %2
  %9 = load ptr, ptr %1, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1) #15
  br label %59

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %15 = load ptr, ptr %0, align 8, !tbaa !58
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = load ptr, ptr %1, align 8, !tbaa !40
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %18) #15
  %23 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %24 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %25 = load ptr, ptr %23, align 8, !tbaa !40
  %26 = getelementptr inbounds ptr, ptr %25, i64 9
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %14, ptr noundef %22, i32 noundef %16, ptr noundef %24) #15
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef %22) #15
  %31 = icmp eq i32 %30, %16
  br i1 %31, label %54, label %32

32:                                               ; preds = %29, %13
  %33 = load ptr, ptr %1, align 8, !tbaa !40
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %22) #15
  %36 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %37 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %38 = load ptr, ptr %36, align 8, !tbaa !40
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %14, ptr noundef %37) #15
  %42 = add i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = load ptr, ptr %1, align 8, !tbaa !40
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %43) #15
  %48 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %50 = load ptr, ptr %48, align 8, !tbaa !40
  %51 = getelementptr inbounds ptr, ptr %50, i64 9
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %14, ptr noundef %47, i32 noundef %41, ptr noundef %49) #15
  br label %54

54:                                               ; preds = %32, %29
  %55 = phi i32 [ %41, %32 ], [ %16, %29 ]
  %56 = phi ptr [ %47, %32 ], [ %22, %29 ]
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  br label %59

59:                                               ; preds = %54, %8
  %60 = phi ptr [ %58, %54 ], [ %12, %8 ]
  %61 = phi ptr [ %56, %54 ], [ %12, %8 ]
  store i8 0, ptr %60, align 1, !tbaa !82
  ret ptr %61
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString7printlnEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZNK11xercesc_2_79DOMString5printEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %2 = tail call i32 @putchar(i32 noundef 10) #15
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #11 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %6, i64 0, i32 2
  %8 = load i32, ptr %2, align 8, !tbaa !54
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %7, i64 %9
  store i16 0, ptr %10, align 2, !tbaa !47
  br label %11

11:                                               ; preds = %4, %1
  %12 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMString9transcodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1
  %8 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #21
  br label %46

9:                                                ; preds = %4
  %10 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !58
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #21
  %16 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %17 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %18 = load ptr, ptr %16, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 9
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %10, ptr noundef nonnull %15, i32 noundef %12, ptr noundef %17) #15
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %15) #15
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %41, label %25

25:                                               ; preds = %9, %22
  tail call void @_ZdaPv(ptr noundef nonnull %15) #22
  %26 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %28 = load ptr, ptr %26, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %10, ptr noundef %27) #15
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %33) #21
  %35 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv() #15
  %36 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  %37 = load ptr, ptr %35, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 9
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %10, ptr noundef nonnull %34, i32 noundef %31, ptr noundef %36) #15
  br label %41

41:                                               ; preds = %25, %22
  %42 = phi i32 [ %31, %25 ], [ %12, %22 ]
  %43 = phi ptr [ %34, %25 ], [ %15, %22 ]
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  br label %46

46:                                               ; preds = %41, %7
  %47 = phi ptr [ %45, %41 ], [ %8, %7 ]
  %48 = phi ptr [ %43, %41 ], [ %8, %7 ]
  store i8 0, ptr %47, align 1, !tbaa !82
  ret ptr %48
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMString9transcodeEPKc(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringltERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #9 align 2 !prof !35 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15, !range !83
  %4 = icmp slt i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #9 align 2 !prof !35 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i32 %3, %4
  br i1 %7, label %32, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %1, align 8, !tbaa !58
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %17, i64 0, i32 2
  %19 = zext i32 %3 to i64
  br label %23

20:                                               ; preds = %30
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, %19
  br i1 %22, label %32, label %23, !llvm.loop !84

23:                                               ; preds = %10, %20
  %24 = phi i64 [ 0, %10 ], [ %21, %20 ]
  %25 = getelementptr inbounds i16, ptr %14, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !47
  %27 = getelementptr inbounds i16, ptr %18, i64 %24
  %28 = load i16, ptr %27, align 2, !tbaa !47
  %29 = icmp ult i16 %26, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = icmp ugt i16 %26, %28
  br i1 %31, label %32, label %20

32:                                               ; preds = %23, %30, %20, %8, %6, %2
  %33 = phi i32 [ -1, %2 ], [ 1, %6 ], [ 0, %8 ], [ 0, %20 ], [ 1, %30 ], [ -1, %23 ]
  ret i32 %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZN11xercesc_2_79DOMStringC2Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 poison) #15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
          to label %10 unwind label %13

10:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #20
          to label %37 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %15

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @__cxa_free_exception(ptr %9) #17
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  resume { ptr, i32 } %16

17:                                               ; preds = %4
  %18 = tail call i32 @llvm.umin.i32(i32 %6, i32 %3)
  %19 = add i32 %18, %2
  %20 = icmp ult i32 %19, %6
  %21 = sub i32 %6, %2
  %22 = select i1 %20, i32 %18, i32 %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_79DOMStringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  br label %36

25:                                               ; preds = %17
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %28 = load ptr, ptr %0, align 8, !tbaa !58
  store i32 %22, ptr %28, align 8, !tbaa !54
  br label %36

29:                                               ; preds = %25
  %30 = load ptr, ptr %1, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %32, i64 0, i32 2
  %34 = zext i32 %2 to i64
  %35 = getelementptr inbounds i16, ptr %33, i64 %34
  tail call void @_ZN11xercesc_2_79DOMStringC2EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %35, i32 noundef %22) #15
  br label %36

36:                                               ; preds = %27, %29, %24
  ret void

37:                                               ; preds = %10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_7plERKNS_9DOMStringEPKt(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2) #15
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_7plEPKtRKNS_9DOMStringE(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, i16 noundef zeroext %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %2) #15
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_7plEtRKNS_9DOMStringE(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, i16 noundef zeroext %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
          to label %7 unwind label %5

5:                                                ; preds = %4, %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %6

7:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DOMString.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { noreturn }
attributes #21 = { builtin optsize allocsize(0) }
attributes #22 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !39, i64 0}
!42 = !{!"DOMString.cpp:_ZN11xercesc_2_7L18reinitDomConverterEv"}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSN11xercesc_2_713DOMStringDataE", !45, i64 0, !45, i64 4, !38, i64 8}
!45 = !{!"int", !38, i64 0}
!46 = !{!44, !45, i64 4}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !38, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"DOMString.cpp:_ZN11xercesc_2_7L14reinitDomMutexEv"}
!52 = !{!45, !45, i64 0}
!53 = distinct !{!53, !50}
!54 = !{!55, !45, i64 0}
!55 = !{!"_ZTSN11xercesc_2_715DOMStringHandleE", !45, i64 0, !45, i64 4, !37, i64 8}
!56 = !{!55, !45, i64 4}
!57 = !{!55, !37, i64 8}
!58 = !{!59, !37, i64 0}
!59 = !{!"_ZTSN11xercesc_2_79DOMStringE", !37, i64 0}
!60 = !{!"function_entry_count", i64 5836268}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = !{!"function_entry_count", i64 2453164456}
!65 = !{!"branch_weights", i32 1, i32 -1841802839}
!66 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!67 = !{!"branch_weights", i32 408669070, i32 -279908792}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = !{!38, !38, i64 0}
!83 = !{i32 -1, i32 2}
!84 = distinct !{!84, !50}
