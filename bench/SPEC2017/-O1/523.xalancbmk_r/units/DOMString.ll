; ModuleID = 'DOMString.cpp'
source_filename = "DOMString.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMStringData" = type { i32, i32, [1 x i16] }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::DOMStringHandle" = type { i32, i32, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }

$__clang_call_terminate = comdat any

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
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@stdout = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L20DOMStringHandleMutexE = internal global ptr null, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMString.cpp, ptr null }]

@_ZN11xercesc_2_79DOMStringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOMStringC2Ev
@_ZN11xercesc_2_79DOMStringC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOMStringC2ERKS0_
@_ZN11xercesc_2_79DOMStringC1EPKt = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOMStringC2EPKt
@_ZN11xercesc_2_79DOMStringC1EPKtj = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xercesc_2_79DOMStringC2EPKtj
@_ZN11xercesc_2_79DOMStringC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DOMStringC2EPKc
@_ZN11xercesc_2_79DOMStringC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN11xercesc_2_79DOMStringC2Ei
@_ZN11xercesc_2_79DOMStringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOMStringD2Ev

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715getDomConverterEv() local_unnamed_addr #1 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %20

3:                                                ; preds = %0
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !38
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 1)
  br label %11

11:                                               ; preds = %10, %3
  %12 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L13gDomConverterE, ptr noundef %8, ptr noundef null)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  br i1 %9, label %20, label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %8, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  br label %20

19:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupDomConverterE, ptr noundef nonnull @_ZN11xercesc_2_7L18reinitDomConverterEv)
  br label %20

20:                                               ; preds = %19, %15, %14, %0
  %21 = load ptr, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !38
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L18reinitDomConverterEv() #3 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13gDomConverterE, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMStringData14allocateBufferEj(i32 noundef %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = shl i32 %0, 1
  %3 = add i32 %2, 12
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %5 = zext i32 %3 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5)
  %10 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  %11 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE)
  store i32 %0, ptr %9, align 4, !tbaa !44
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %9, i64 0, i32 1
  store i32 1, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %9, i64 0, i32 2
  store i16 0, ptr %13, align 4, !tbaa !48
  ret ptr %9
}

declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7)
          to label %8 unwind label %14

8:                                                ; preds = %5
  %9 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L20DOMStringHandleMutexE, ptr noundef nonnull %6, ptr noundef null)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %6) #16
  br label %17

12:                                               ; preds = %44, %14
  %13 = phi { ptr, i32 } [ %15, %14 ], [ %45, %44 ]
  resume { ptr, i32 } %13

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %6) #16
  br label %12

16:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15cleanupDomMutexE, ptr noundef nonnull @_ZN11xercesc_2_7L14reinitDomMutexEv)
  br label %17

17:                                               ; preds = %1, %11, %16
  %18 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %18)
  %19 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 16384)
          to label %27 unwind label %35

27:                                               ; preds = %21
  %28 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !38
  store ptr %28, ptr %26, align 8, !tbaa !38
  store ptr %26, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !38
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 1, %27 ], [ %33, %29 ]
  %31 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %26, i64 %30
  store ptr %31, ptr %32, align 8, !tbaa !38
  store ptr %32, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  %33 = add nuw nsw i64 %30, 1
  %34 = icmp eq i64 %33, 1023
  br i1 %34, label %37, label %29, !llvm.loop !50

35:                                               ; preds = %21
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %44

37:                                               ; preds = %29, %17
  %38 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  store ptr %39, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  %40 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE)
          to label %41 unwind label %42

41:                                               ; preds = %37
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret ptr %38

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %12
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %7 unwind label %40

7:                                                ; preds = %5
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
          to label %9 unwind label %14

9:                                                ; preds = %7
  %10 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L20DOMStringHandleMutexE, ptr noundef nonnull %6, ptr noundef null)
          to label %11 unwind label %40

11:                                               ; preds = %9
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %6) #16
  br label %17

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %6) #16
  br label %42

16:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15cleanupDomMutexE, ptr noundef nonnull @_ZN11xercesc_2_7L14reinitDomMutexEv)
          to label %17 unwind label %40

17:                                               ; preds = %16, %1, %13
  %18 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %18)
          to label %19 unwind label %40

19:                                               ; preds = %17
  %20 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE)
          to label %21 unwind label %40

21:                                               ; preds = %19
  %22 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  store ptr %22, ptr %0, align 8, !tbaa !38
  store ptr %0, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  %23 = load i32, ptr @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE, align 4, !tbaa !53
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load ptr, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !38
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi ptr [ %26, %25 ], [ %31, %30 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %28)
          to label %27 unwind label %38, !llvm.loop !54

36:                                               ; preds = %27
  store ptr null, ptr @_ZN11xercesc_2_715DOMStringHandle12blockListPtrE, align 8, !tbaa !38
  store ptr null, ptr @_ZN11xercesc_2_715DOMStringHandle11freeListPtrE, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %36, %21
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void

38:                                               ; preds = %30
  %39 = landingpad { ptr, i32 }
          catch ptr null
  br label %42

40:                                               ; preds = %17, %19, %5, %9, %16
  %41 = landingpad { ptr, i32 }
          catch ptr null
  br label %42

42:                                               ; preds = %38, %40, %14
  %43 = phi { ptr, i32 } [ %15, %14 ], [ %39, %38 ], [ %41, %40 ]
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 poison)
  %3 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString23gTotalStringHandleCountE)
  store i32 0, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !57
  %5 = shl i32 %0, 1
  %6 = add i32 %5, 12
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %8 = zext i32 %6 to i64
  %9 = load ptr, ptr %7, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %8)
  %13 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  %14 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE)
  store i32 %0, ptr %12, align 4, !tbaa !44
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %12, i64 0, i32 1
  store i32 1, ptr %15, align 4, !tbaa !47
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %12, i64 0, i32 2
  store i16 0, ptr %16, align 4, !tbaa !48
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  store ptr %12, ptr %17, align 8, !tbaa !58
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMStringHandle17cloneStringHandleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 poison)
  %3 = load i32, ptr %0, align 8, !tbaa !55
  store i32 %3, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %6, i64 0, i32 1
  %9 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %8)
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #6 align 2 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %3, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 1
  %7 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2EPKt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef readonly %1) unnamed_addr #1 align 2 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !48
  %9 = icmp eq i16 %8, 0
  %10 = add i32 %5, 1
  br i1 %9, label %11, label %4, !llvm.loop !61

11:                                               ; preds = %4
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %11
  %14 = add i32 %5, 1
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %14)
  store ptr %15, ptr %0, align 8, !tbaa !59
  store i32 %5, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %17, i64 0, i32 2
  %19 = zext i32 %5 to i64
  br label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %25, %20 ]
  %22 = getelementptr inbounds i16, ptr %1, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !48
  %24 = getelementptr inbounds i16, ptr %18, i64 %21
  store i16 %23, ptr %24, align 2, !tbaa !48
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %19
  br i1 %26, label %27, label %20, !llvm.loop !62

27:                                               ; preds = %20
  %28 = getelementptr inbounds i16, ptr %18, i64 %6
  store i16 0, ptr %28, align 2, !tbaa !48
  br label %29

29:                                               ; preds = %11, %27, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2EPKtj(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = add i32 %2, 1
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %8)
  store ptr %9, ptr %0, align 8, !tbaa !59
  store i32 %2, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %11, i64 0, i32 2
  %13 = zext i32 %2 to i64
  br label %14

14:                                               ; preds = %7, %14
  %15 = phi i64 [ 0, %7 ], [ %19, %14 ]
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !48
  %18 = getelementptr inbounds i16, ptr %12, i64 %15
  store i16 %17, ptr %18, align 2, !tbaa !48
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14, !llvm.loop !63

21:                                               ; preds = %14
  %22 = zext i32 %2 to i64
  %23 = getelementptr inbounds i16, ptr %12, i64 %22
  store i16 0, ptr %23, align 2, !tbaa !48
  br label %24

24:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2EPKc(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %1, null
  br i1 %3, label %76, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %76, label %9

9:                                                ; preds = %4
  %10 = add i32 %7, 1
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %10)
  store ptr %11, ptr %0, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %13, i64 0, i32 2
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %16 = load ptr, ptr %5, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef nonnull %14, i32 noundef %7, ptr noundef %15)
  br i1 %19, label %20, label %37

20:                                               ; preds = %9
  %21 = load i16, ptr %14, align 2, !tbaa !48
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %14, %20 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !48
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %23, !llvm.loop !64

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %14 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ 0, %20 ]
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %73, label %37

37:                                               ; preds = %34, %9
  %38 = load ptr, ptr %0, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %38, i64 0, i32 1
  %42 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %46, i64 0, i32 1
  %48 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  store i32 52428, ptr %46, align 4, !tbaa !44
  store i32 52428, ptr %47, align 4, !tbaa !47
  %51 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %46)
  %55 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %56

56:                                               ; preds = %50, %44
  tail call void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef nonnull %38) #16
  br label %57

57:                                               ; preds = %56, %40, %37
  store ptr null, ptr %0, align 8, !tbaa !59
  %58 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %59 = load ptr, ptr %5, align 8, !tbaa !42
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef i32 %61(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef %58)
  %63 = add i32 %62, 1
  %64 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %63)
  store ptr %64, ptr %0, align 8, !tbaa !59
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %66, i64 0, i32 2
  %68 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %69 = load ptr, ptr %5, align 8, !tbaa !42
  %70 = getelementptr inbounds ptr, ptr %69, i64 8
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef zeroext i1 %71(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef nonnull %67, i32 noundef %62, ptr noundef %68)
  br label %73

73:                                               ; preds = %57, %34
  %74 = phi i32 [ %62, %57 ], [ %7, %34 ]
  %75 = load ptr, ptr %0, align 8, !tbaa !59
  store i32 %74, ptr %75, align 8, !tbaa !55
  br label %76

76:                                               ; preds = %73, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringC2Ei(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, i32 %1) unnamed_addr #6 align 2 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79DOMStringD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 1
  %6 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %7 unwind label %25

7:                                                ; preds = %4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %11, i64 0, i32 1
  %13 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %14 unwind label %25

14:                                               ; preds = %9
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  store i32 52428, ptr %11, align 4, !tbaa !44
  store i32 52428, ptr %12, align 4, !tbaa !47
  %17 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %11)
          to label %21 unwind label %25

21:                                               ; preds = %16
  %22 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
          to label %23 unwind label %25

23:                                               ; preds = %21, %14
  tail call void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef nonnull %2) #16
  br label %24

24:                                               ; preds = %23, %7, %1
  store ptr null, ptr %0, align 8, !tbaa !59
  ret void

25:                                               ; preds = %21, %16, %9, %4
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !37 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %5, i64 0, i32 1
  %9 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %13, i64 0, i32 1
  %15 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  store i32 52428, ptr %13, align 4, !tbaa !44
  store i32 52428, ptr %14, align 4, !tbaa !47
  %18 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %13)
  %22 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %23

23:                                               ; preds = %17, %11
  tail call void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef nonnull %5) #16
  br label %24

24:                                               ; preds = %23, %7, %4
  %25 = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %25, ptr %0, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %25, i64 0, i32 1
  %29 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %28)
  br label %30

30:                                               ; preds = %24, %27, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 1
  %7 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %11, i64 0, i32 1
  %13 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  store i32 52428, ptr %11, align 4, !tbaa !44
  store i32 52428, ptr %12, align 4, !tbaa !47
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %11)
  %20 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %21

21:                                               ; preds = %15, %9
  tail call void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef nonnull %3) #16
  br label %22

22:                                               ; preds = %21, %5, %2
  store ptr null, ptr %0, align 8, !tbaa !59
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = load ptr, ptr %1, align 8, !tbaa !59
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = load ptr, ptr %1, align 8, !tbaa !59
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString7reserveEj(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %1)
  store ptr %8, ptr %0, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %123, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !55
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %123, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !55
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = icmp ult i32 %17, %6
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  br i1 %10, label %37, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 1
  %22 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %26, i64 0, i32 1
  %28 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  store i32 52428, ptr %26, align 4, !tbaa !44
  store i32 52428, ptr %27, align 4, !tbaa !47
  %31 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %26)
  %35 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %36

36:                                               ; preds = %30, %24
  tail call void @_ZN11xercesc_2_715DOMStringHandledlEPv(ptr noundef nonnull %9) #16
  br label %37

37:                                               ; preds = %8, %36, %20, %19
  %38 = load ptr, ptr %1, align 8, !tbaa !59
  %39 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 poison)
  %40 = load i32, ptr %38, align 8, !tbaa !55
  store i32 %40, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %39, i64 0, i32 1
  store i32 1, ptr %41, align 4, !tbaa !57
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %39, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !58
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %43, i64 0, i32 1
  %46 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %45)
  store ptr %39, ptr %0, align 8, !tbaa !59
  br label %123

47:                                               ; preds = %14, %11
  %48 = add i32 %12, %6
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !58
  %51 = load i32, ptr %50, align 4, !tbaa !44
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %50, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !47
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %99

57:                                               ; preds = %53, %47
  %58 = add i32 %48, 1
  %59 = shl i32 %58, 1
  %60 = add i32 %59, 12
  %61 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %62 = zext i32 %60 to i64
  %63 = load ptr, ptr %61, align 8, !tbaa !42
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %61, i64 noundef %62)
  %67 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  %68 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE)
  store i32 %58, ptr %66, align 4, !tbaa !44
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %66, i64 0, i32 1
  store i32 1, ptr %69, align 4, !tbaa !47
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %66, i64 0, i32 2
  store i16 0, ptr %70, align 4, !tbaa !48
  %71 = load ptr, ptr %0, align 8, !tbaa !59
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  %74 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %73, i64 0, i32 2
  %75 = load i32, ptr %71, align 8, !tbaa !55
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %57
  %78 = zext i32 %75 to i64
  br label %79

79:                                               ; preds = %77, %79
  %80 = phi i64 [ 0, %77 ], [ %84, %79 ]
  %81 = getelementptr inbounds i16, ptr %74, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !48
  %83 = getelementptr inbounds i16, ptr %70, i64 %80
  store i16 %82, ptr %83, align 2, !tbaa !48
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp eq i64 %84, %78
  br i1 %85, label %86, label %79, !llvm.loop !65

86:                                               ; preds = %79, %57
  %87 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %73, i64 0, i32 1
  %88 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  store i32 52428, ptr %73, align 4, !tbaa !44
  store i32 52428, ptr %87, align 4, !tbaa !47
  %91 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %92 = load ptr, ptr %91, align 8, !tbaa !42
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull %73)
  %95 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %96

96:                                               ; preds = %86, %90
  %97 = load ptr, ptr %0, align 8, !tbaa !59
  %98 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %97, i64 0, i32 2
  store ptr %66, ptr %98, align 8, !tbaa !58
  br label %99

99:                                               ; preds = %96, %53
  %100 = load ptr, ptr %1, align 8, !tbaa !59
  %101 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !58
  %103 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %0, align 8, !tbaa !59
  %105 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  %107 = load i32, ptr %104, align 8, !tbaa !55
  %108 = zext i32 %107 to i64
  %109 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %106, i64 0, i32 2, i64 %108
  %110 = load i32, ptr %100, align 8, !tbaa !55
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %99
  %113 = zext i32 %110 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ 0, %112 ], [ %119, %114 ]
  %116 = getelementptr inbounds i16, ptr %103, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !48
  %118 = getelementptr inbounds i16, ptr %109, i64 %115
  store i16 %117, ptr %118, align 2, !tbaa !48
  %119 = add nuw nsw i64 %115, 1
  %120 = icmp eq i64 %119, %113
  br i1 %120, label %121, label %114, !llvm.loop !66

121:                                              ; preds = %114, %99
  %122 = add i32 %110, %107
  store i32 %122, ptr %104, align 8, !tbaa !55
  br label %123

123:                                              ; preds = %2, %5, %121, %37
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef 2)
  store ptr %6, ptr %0, align 8, !tbaa !59
  br label %10

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !55
  %9 = add i32 %8, 1
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 1, %5 ], [ %9, %7 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !59
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %14, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !47
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %63

21:                                               ; preds = %17, %10
  %22 = add i32 %11, 1
  %23 = shl i32 %22, 1
  %24 = add i32 %23, 12
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %26 = zext i32 %24 to i64
  %27 = load ptr, ptr %25, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %26)
  %31 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  %32 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE)
  store i32 %22, ptr %30, align 4, !tbaa !44
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %30, i64 0, i32 1
  store i32 1, ptr %33, align 4, !tbaa !47
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %30, i64 0, i32 2
  store i16 0, ptr %34, align 4, !tbaa !48
  %35 = load ptr, ptr %0, align 8, !tbaa !59
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %37, i64 0, i32 2
  %39 = load i32, ptr %35, align 8, !tbaa !55
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %21
  %42 = zext i32 %39 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %48, %43 ]
  %45 = getelementptr inbounds i16, ptr %38, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !48
  %47 = getelementptr inbounds i16, ptr %34, i64 %44
  store i16 %46, ptr %47, align 2, !tbaa !48
  %48 = add nuw nsw i64 %44, 1
  %49 = icmp eq i64 %48, %42
  br i1 %49, label %50, label %43, !llvm.loop !67

50:                                               ; preds = %43, %21
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %37, i64 0, i32 1
  %52 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  store i32 52428, ptr %37, align 4, !tbaa !44
  store i32 52428, ptr %51, align 4, !tbaa !47
  %55 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %56 = load ptr, ptr %55, align 8, !tbaa !42
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull %37)
  %59 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %60

60:                                               ; preds = %50, %54
  %61 = load ptr, ptr %0, align 8, !tbaa !59
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %61, i64 0, i32 2
  store ptr %30, ptr %62, align 8, !tbaa !58
  br label %63

63:                                               ; preds = %60, %17
  %64 = load ptr, ptr %0, align 8, !tbaa !59
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = load i32, ptr %64, align 8, !tbaa !55
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %66, i64 0, i32 2, i64 %68
  store i16 %1, ptr %69, align 2, !tbaa !48
  %70 = add i32 %67, 1
  store i32 %70, ptr %64, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_79DOMStringC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringpLERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringpLEPKt(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringpLEt(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1)
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i16 @_ZNK11xercesc_2_79DOMString6charAtEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !55
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %10, i64 0, i32 2, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !48
  br label %14

14:                                               ; preds = %8, %5, %2
  %15 = phi i16 [ %13, %8 ], [ 0, %5 ], [ 0, %2 ]
  ret i16 %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind noalias nocapture writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = invoke noundef ptr @_ZN11xercesc_2_715DOMStringHandlenwEm(i64 poison)
          to label %7 unwind label %16

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8, !tbaa !55
  store i32 %8, ptr %6, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %6, i64 0, i32 1
  store i32 1, ptr %9, align 4, !tbaa !57
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %6, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %11, i64 0, i32 1
  %14 = invoke noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %15 unwind label %16

15:                                               ; preds = %7
  store ptr %6, ptr %0, align 8, !tbaa !59
  br label %18

16:                                               ; preds = %7, %5
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %17

18:                                               ; preds = %2, %15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10deleteDataEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %14 unwind label %15

14:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #19
          to label %113 unwind label %15

15:                                               ; preds = %14, %12
  %16 = phi i1 [ false, %14 ], [ true, %12 ]
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br i1 %16, label %18, label %19

18:                                               ; preds = %15
  call void @__cxa_free_exception(ptr %13) #16
  br label %19

19:                                               ; preds = %18, %15
  resume { ptr, i32 } %17

20:                                               ; preds = %9
  %21 = tail call i32 @llvm.umin.i32(i32 %10, i32 %2)
  %22 = add i32 %21, %1
  %23 = icmp ult i32 %22, %10
  %24 = sub i32 %10, %1
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %112, label %27

27:                                               ; preds = %20
  %28 = sub i32 %10, %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !47
  %33 = icmp sgt i32 %32, 1
  %34 = add i32 %25, %1
  %35 = icmp ult i32 %34, %10
  %36 = and i1 %35, %33
  br i1 %36, label %37, label %93

37:                                               ; preds = %27
  %38 = add i32 %28, 1
  %39 = shl i32 %38, 1
  %40 = add i32 %39, 12
  %41 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %42 = zext i32 %40 to i64
  %43 = load ptr, ptr %41, align 8, !tbaa !42
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %42)
  %47 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  %48 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE)
  store i32 %38, ptr %46, align 4, !tbaa !44
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %46, i64 0, i32 1
  store i32 1, ptr %49, align 4, !tbaa !47
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %46, i64 0, i32 2
  store i16 0, ptr %50, align 4, !tbaa !48
  %51 = load ptr, ptr %0, align 8, !tbaa !59
  %52 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %53, i64 0, i32 2
  %55 = icmp eq i32 %1, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %37
  %57 = zext i32 %1 to i64
  br label %63

58:                                               ; preds = %63, %37
  %59 = icmp ugt i32 %28, %1
  br i1 %59, label %60, label %80

60:                                               ; preds = %58
  %61 = zext i32 %1 to i64
  %62 = zext i32 %28 to i64
  br label %70

63:                                               ; preds = %56, %63
  %64 = phi i64 [ 0, %56 ], [ %68, %63 ]
  %65 = getelementptr inbounds i16, ptr %54, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !48
  %67 = getelementptr inbounds i16, ptr %50, i64 %64
  store i16 %66, ptr %67, align 2, !tbaa !48
  %68 = add nuw nsw i64 %64, 1
  %69 = icmp eq i64 %68, %57
  br i1 %69, label %58, label %63, !llvm.loop !68

70:                                               ; preds = %60, %70
  %71 = phi i64 [ %61, %60 ], [ %78, %70 ]
  %72 = trunc i64 %71 to i32
  %73 = add i32 %25, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %54, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !48
  %77 = getelementptr inbounds i16, ptr %50, i64 %71
  store i16 %76, ptr %77, align 2, !tbaa !48
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, %62
  br i1 %79, label %80, label %70, !llvm.loop !69

80:                                               ; preds = %70, %58
  store i32 %28, ptr %51, align 8, !tbaa !55
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %53, i64 0, i32 1
  %82 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  store i32 52428, ptr %53, align 4, !tbaa !44
  store i32 52428, ptr %81, align 4, !tbaa !47
  %85 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull %53)
  %89 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %90

90:                                               ; preds = %80, %84
  %91 = load ptr, ptr %0, align 8, !tbaa !59
  %92 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %91, i64 0, i32 2
  store ptr %46, ptr %92, align 8, !tbaa !58
  br label %112

93:                                               ; preds = %27
  br i1 %35, label %94, label %111

94:                                               ; preds = %93
  %95 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %30, i64 0, i32 2
  %96 = icmp ugt i32 %28, %1
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = zext i32 %1 to i64
  %99 = zext i32 %28 to i64
  br label %100

100:                                              ; preds = %97, %100
  %101 = phi i64 [ %98, %97 ], [ %108, %100 ]
  %102 = trunc i64 %101 to i32
  %103 = add i32 %25, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i16, ptr %95, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !48
  %107 = getelementptr inbounds i16, ptr %95, i64 %101
  store i16 %106, ptr %107, align 2, !tbaa !48
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, %99
  br i1 %109, label %110, label %100, !llvm.loop !70

110:                                              ; preds = %100, %94
  store i32 %28, ptr %5, align 8, !tbaa !55
  br label %112

111:                                              ; preds = %93
  store i32 %28, ptr %5, align 8, !tbaa !55
  br label %112

112:                                              ; preds = %90, %111, %110, %20
  ret void

113:                                              ; preds = %14
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #9 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 8, !tbaa !55
  %10 = load i32, ptr %6, align 8, !tbaa !55
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %6, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %17, i64 0, i32 2
  %19 = icmp eq i32 %9, 0
  br i1 %19, label %42, label %23

20:                                               ; preds = %23
  %21 = add nuw i32 %24, 1
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %42, label %23, !llvm.loop !71

23:                                               ; preds = %12, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %12 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %15, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !48
  %28 = getelementptr inbounds i16, ptr %18, i64 %25
  %29 = load i16, ptr %28, align 2, !tbaa !48
  %30 = icmp eq i16 %27, %29
  br i1 %30, label %20, label %42

31:                                               ; preds = %5
  br i1 %4, label %35, label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %3, align 8, !tbaa !55
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2, %32, %31
  %36 = load ptr, ptr %1, align 8, !tbaa !59
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 8, !tbaa !55
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %32
  br label %42

42:                                               ; preds = %20, %23, %12, %38, %8, %35, %41
  %43 = phi i1 [ false, %41 ], [ true, %35 ], [ false, %8 ], [ true, %38 ], [ %19, %12 ], [ true, %20 ], [ false, %23 ]
  ret i1 %43
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef readonly %1) local_unnamed_addr #9 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %3, align 8, !tbaa !55
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %16

13:                                               ; preds = %22
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %26, label %16, !llvm.loop !72

16:                                               ; preds = %7, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %7 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !48
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds i16, ptr %10, i64 %18
  %24 = load i16, ptr %23, align 2, !tbaa !48
  %25 = icmp eq i16 %24, %20
  br i1 %25, label %13, label %40

26:                                               ; preds = %13, %7
  %27 = zext i32 %11 to i64
  %28 = getelementptr inbounds i16, ptr %1, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !48
  %30 = icmp eq i16 %29, 0
  br label %40

31:                                               ; preds = %2
  br i1 %4, label %32, label %35

32:                                               ; preds = %31
  %33 = load i32, ptr %3, align 8, !tbaa !55
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %31
  br i1 %5, label %36, label %39

36:                                               ; preds = %35
  %37 = load i16, ptr %1, align 2, !tbaa !48
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %35
  br label %40

40:                                               ; preds = %16, %22, %36, %32, %26, %39
  %41 = phi i1 [ true, %39 ], [ %30, %26 ], [ false, %32 ], [ false, %36 ], [ false, %22 ], [ false, %16 ]
  ret i1 %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString10insertDataEjRKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %14, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #19
          to label %153 unwind label %16

16:                                               ; preds = %15, %13
  %17 = phi i1 [ false, %15 ], [ true, %13 ]
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br i1 %17, label %19, label %151

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %14) #16
  br label %151

20:                                               ; preds = %10
  br i1 %7, label %21, label %26

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %23 unwind label %24

23:                                               ; preds = %21
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %150

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %151

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8, !tbaa !59
  %28 = icmp eq ptr %27, null
  br i1 %28, label %150, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 8, !tbaa !55
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %150, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %27, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %34, i64 0, i32 2
  %36 = load i32, ptr %6, align 8, !tbaa !55
  %37 = add i32 %36, %30
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %6, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %39, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = icmp sgt i32 %44, 1
  %46 = icmp eq ptr %6, %27
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %117

48:                                               ; preds = %42, %32
  %49 = add i32 %37, 1
  %50 = shl i32 %49, 1
  %51 = add i32 %50, 12
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %53 = zext i32 %51 to i64
  %54 = load ptr, ptr %52, align 8, !tbaa !42
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef %53)
  %58 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  %59 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE)
  store i32 %49, ptr %57, align 4, !tbaa !44
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %57, i64 0, i32 1
  store i32 1, ptr %60, align 4, !tbaa !47
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %57, i64 0, i32 2
  store i16 0, ptr %61, align 4, !tbaa !48
  %62 = load ptr, ptr %0, align 8, !tbaa !59
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  %65 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %64, i64 0, i32 2
  %66 = icmp eq i32 %1, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %48
  %68 = zext i32 %1 to i64
  br label %72

69:                                               ; preds = %72, %48
  %70 = tail call i32 @llvm.umax.i32(i32 %30, i32 1)
  %71 = zext i32 %70 to i64
  br label %84

72:                                               ; preds = %67, %72
  %73 = phi i64 [ 0, %67 ], [ %77, %72 ]
  %74 = getelementptr inbounds i16, ptr %65, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !48
  %76 = getelementptr inbounds i16, ptr %61, i64 %73
  store i16 %75, ptr %76, align 2, !tbaa !48
  %77 = add nuw nsw i64 %73, 1
  %78 = icmp eq i64 %77, %68
  br i1 %78, label %69, label %72, !llvm.loop !73

79:                                               ; preds = %84
  %80 = icmp ugt i32 %11, %1
  br i1 %80, label %81, label %104

81:                                               ; preds = %79
  %82 = zext i32 %1 to i64
  %83 = zext i32 %11 to i64
  br label %94

84:                                               ; preds = %69, %84
  %85 = phi i64 [ 0, %69 ], [ %92, %84 ]
  %86 = getelementptr inbounds i16, ptr %35, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !48
  %88 = trunc i64 %85 to i32
  %89 = add i32 %88, %1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %61, i64 %90
  store i16 %87, ptr %91, align 2, !tbaa !48
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, %71
  br i1 %93, label %79, label %84, !llvm.loop !74

94:                                               ; preds = %81, %94
  %95 = phi i64 [ %82, %81 ], [ %102, %94 ]
  %96 = getelementptr inbounds i16, ptr %65, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !48
  %98 = trunc i64 %95 to i32
  %99 = add i32 %30, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i16, ptr %61, i64 %100
  store i16 %97, ptr %101, align 2, !tbaa !48
  %102 = add nuw nsw i64 %95, 1
  %103 = icmp eq i64 %102, %83
  br i1 %103, label %104, label %94, !llvm.loop !75

104:                                              ; preds = %94, %79
  %105 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %64, i64 0, i32 1
  %106 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  store i32 52428, ptr %64, align 4, !tbaa !44
  store i32 52428, ptr %105, align 4, !tbaa !47
  %109 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %110 = load ptr, ptr %109, align 8, !tbaa !42
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  tail call void %112(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull %64)
  %113 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr noundef nonnull align 4 dereferenceable(4) @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE)
  br label %114

114:                                              ; preds = %104, %108
  %115 = load ptr, ptr %0, align 8, !tbaa !59
  %116 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %115, i64 0, i32 2
  store ptr %57, ptr %116, align 8, !tbaa !58
  br label %146

117:                                              ; preds = %42
  %118 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %39, i64 0, i32 2
  %119 = icmp sgt i32 %11, %1
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = sext i32 %11 to i64
  %122 = sext i32 %1 to i64
  br label %126

123:                                              ; preds = %126, %117
  %124 = tail call i32 @llvm.umax.i32(i32 %30, i32 1)
  %125 = zext i32 %124 to i64
  br label %136

126:                                              ; preds = %120, %126
  %127 = phi i64 [ %121, %120 ], [ %128, %126 ]
  %128 = add nsw i64 %127, -1
  %129 = getelementptr inbounds i16, ptr %118, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !48
  %131 = trunc i64 %128 to i32
  %132 = add i32 %30, %131
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %118, i64 %133
  store i16 %130, ptr %134, align 2, !tbaa !48
  %135 = icmp sgt i64 %128, %122
  br i1 %135, label %126, label %123, !llvm.loop !76

136:                                              ; preds = %123, %136
  %137 = phi i64 [ 0, %123 ], [ %144, %136 ]
  %138 = getelementptr inbounds i16, ptr %35, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !48
  %140 = trunc i64 %137 to i32
  %141 = add i32 %140, %1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i16, ptr %118, i64 %142
  store i16 %139, ptr %143, align 2, !tbaa !48
  %144 = add nuw nsw i64 %137, 1
  %145 = icmp eq i64 %144, %125
  br i1 %145, label %146, label %136, !llvm.loop !77

146:                                              ; preds = %136, %114
  %147 = load ptr, ptr %0, align 8, !tbaa !59
  %148 = load i32, ptr %147, align 8, !tbaa !55
  %149 = add i32 %148, %30
  store i32 %149, ptr %147, align 8, !tbaa !55
  br label %150

150:                                              ; preds = %26, %29, %146, %23
  ret void

151:                                              ; preds = %16, %19, %24
  %152 = phi { ptr, i32 } [ %18, %19 ], [ %18, %16 ], [ %25, %24 ]
  resume { ptr, i32 } %152

153:                                              ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString5printEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !55
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %9 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9transcodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !38
  %11 = tail call i32 @fputs(ptr noundef %9, ptr noundef %10)
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %9)
  br label %16

16:                                               ; preds = %1, %7, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMString9transcodeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !55
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %2
  %9 = load ptr, ptr %1, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1)
  br label %61

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %15, i64 0, i32 2
  %17 = zext i32 %6 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  store i16 0, ptr %18, align 2, !tbaa !48
  %19 = add i32 %6, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %1, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %20)
  %25 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %26 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %27 = load ptr, ptr %25, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %16, ptr noundef %24, i32 noundef %6, ptr noundef %26)
  br i1 %30, label %31, label %34

31:                                               ; preds = %13
  %32 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef %24)
  %33 = icmp eq i32 %32, %6
  br i1 %33, label %56, label %34

34:                                               ; preds = %31, %13
  %35 = load ptr, ptr %1, align 8, !tbaa !42
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %24)
  %38 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %39 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %40 = load ptr, ptr %38, align 8, !tbaa !42
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %16, ptr noundef %39)
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = load ptr, ptr %1, align 8, !tbaa !42
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %45)
  %50 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %51 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %52 = load ptr, ptr %50, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 9
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %16, ptr noundef %49, i32 noundef %43, ptr noundef %51)
  br label %56

56:                                               ; preds = %34, %31
  %57 = phi i32 [ %43, %34 ], [ %6, %31 ]
  %58 = phi ptr [ %49, %34 ], [ %24, %31 ]
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  br label %61

61:                                               ; preds = %56, %8
  %62 = phi ptr [ %60, %56 ], [ %12, %8 ]
  %63 = phi ptr [ %58, %56 ], [ %12, %8 ]
  store i8 0, ptr %62, align 1, !tbaa !78
  ret ptr %63
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString7printlnEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_79DOMString5printEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef 10, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #11 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %6, i64 0, i32 2
  %8 = load i32, ptr %2, align 8, !tbaa !55
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %7, i64 %9
  store i16 0, ptr %10, align 2, !tbaa !48
  br label %11

11:                                               ; preds = %4, %1
  %12 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMString9transcodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !55
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1
  %8 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #20
  br label %48

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %11, i64 0, i32 2
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  store i16 0, ptr %14, align 2, !tbaa !48
  %15 = add i32 %5, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %16) #20
  %18 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %19 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %20 = load ptr, ptr %18, align 8, !tbaa !42
  %21 = getelementptr inbounds ptr, ptr %20, i64 9
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %12, ptr noundef nonnull %17, i32 noundef %5, ptr noundef %19)
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %17)
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %43, label %27

27:                                               ; preds = %9, %24
  tail call void @_ZdaPv(ptr noundef %17) #21
  %28 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %30 = load ptr, ptr %28, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i32 %32(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %12, ptr noundef %29)
  %34 = add i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %35) #20
  %37 = tail call noundef ptr @_ZN11xercesc_2_715getDomConverterEv()
  %38 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %39 = load ptr, ptr %37, align 8, !tbaa !42
  %40 = getelementptr inbounds ptr, ptr %39, i64 9
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %12, ptr noundef nonnull %36, i32 noundef %33, ptr noundef %38)
  br label %43

43:                                               ; preds = %27, %24
  %44 = phi i32 [ %33, %27 ], [ %5, %24 ]
  %45 = phi ptr [ %36, %27 ], [ %17, %24 ]
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  br label %48

48:                                               ; preds = %43, %7
  %49 = phi ptr [ %47, %43 ], [ %8, %7 ]
  %50 = phi ptr [ %45, %43 ], [ %8, %7 ]
  store i8 0, ptr %49, align 1, !tbaa !78
  ret ptr %50
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMString9transcodeEPKc(ptr dead_on_unwind noalias nocapture nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMStringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringltERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #9 align 2 !prof !37 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1), !range !79
  %4 = icmp slt i32 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #9 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !55
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !55
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = icmp ugt i32 %8, %14
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %9, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %25, i64 0, i32 2
  %27 = zext i32 %8 to i64
  br label %31

28:                                               ; preds = %38
  %29 = add nuw nsw i64 %32, 1
  %30 = icmp eq i64 %29, %27
  br i1 %30, label %40, label %31, !llvm.loop !80

31:                                               ; preds = %20, %28
  %32 = phi i64 [ 0, %20 ], [ %29, %28 ]
  %33 = getelementptr inbounds i16, ptr %23, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !48
  %35 = getelementptr inbounds i16, ptr %26, i64 %32
  %36 = load i16, ptr %35, align 2, !tbaa !48
  %37 = icmp ult i16 %34, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = icmp ugt i16 %34, %36
  br i1 %39, label %40, label %28

40:                                               ; preds = %31, %38, %28, %18, %16, %13
  %41 = phi i32 [ -1, %13 ], [ 1, %16 ], [ 0, %18 ], [ -1, %31 ], [ 1, %38 ], [ 0, %28 ]
  ret i32 %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind noalias nocapture writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !55
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = icmp ult i32 %11, %2
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 24) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %14, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #19
          to label %56 unwind label %16

16:                                               ; preds = %15, %13
  %17 = phi i1 [ false, %15 ], [ true, %13 ]
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br i1 %17, label %19, label %20

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %14) #16
  br label %20

20:                                               ; preds = %19, %16
  resume { ptr, i32 } %18

21:                                               ; preds = %10
  %22 = tail call i32 @llvm.umin.i32(i32 %11, i32 %3)
  %23 = add i32 %22, %2
  %24 = icmp ult i32 %23, %11
  %25 = sub i32 %11, %2
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store ptr null, ptr %0, align 8, !tbaa !59
  br label %55

29:                                               ; preds = %21
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %32 = load ptr, ptr %0, align 8, !tbaa !59
  store i32 %26, ptr %32, align 8, !tbaa !55
  br label %55

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = getelementptr %"class.xercesc_2_7::DOMStringData", ptr %35, i64 0, i32 2
  %37 = zext i32 %2 to i64
  %38 = getelementptr i16, ptr %36, i64 %37
  store ptr null, ptr %0, align 8, !tbaa !59
  %39 = add i32 %26, 1
  %40 = tail call noundef ptr @_ZN11xercesc_2_715DOMStringHandle21createNewStringHandleEj(i32 noundef %39)
  store ptr %40, ptr %0, align 8, !tbaa !59
  store i32 %26, ptr %40, align 8, !tbaa !55
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMStringHandle", ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMStringData", ptr %42, i64 0, i32 2
  %44 = zext i32 %26 to i64
  br label %45

45:                                               ; preds = %33, %45
  %46 = phi i64 [ 0, %33 ], [ %50, %45 ]
  %47 = getelementptr inbounds i16, ptr %38, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !48
  %49 = getelementptr inbounds i16, ptr %43, i64 %46
  store i16 %48, ptr %49, align 2, !tbaa !48
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp ult i64 %50, %44
  br i1 %51, label %45, label %52, !llvm.loop !63

52:                                               ; preds = %45
  %53 = zext i32 %26 to i64
  %54 = getelementptr inbounds i16, ptr %43, i64 %53
  store i16 0, ptr %54, align 2, !tbaa !48
  br label %55

55:                                               ; preds = %31, %52, %28
  ret void

56:                                               ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind noalias nocapture writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_7plERKNS_9DOMStringEPKt(ptr dead_on_unwind noalias nocapture writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2)
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_7plEPKtRKNS_9DOMStringE(ptr dead_on_unwind noalias nocapture nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMStringC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind noalias nocapture writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, i16 noundef zeroext %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %2)
          to label %6 unwind label %4

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %5

6:                                                ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_7plEtRKNS_9DOMStringE(ptr dead_on_unwind noalias nocapture nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, i16 noundef zeroext %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr null, ptr %0, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1)
          to label %4 unwind label %5

4:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %5

5:                                                ; preds = %4, %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %6

7:                                                ; preds = %4
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L14reinitDomMutexEv() #3 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L20DOMStringHandleMutexE, align 8, !tbaa !38
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOMString.cpp() #14 section ".text.startup" !prof !81 !PGOFuncName !82 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupDomConverterE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15cleanupDomMutexE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_GLOBAL__sub_I_DOMString.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !41, i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSN11xercesc_2_713DOMStringDataE", !46, i64 0, !46, i64 4, !40, i64 8}
!46 = !{!"int", !40, i64 0}
!47 = !{!45, !46, i64 4}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !40, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!46, !46, i64 0}
!54 = distinct !{!54, !51, !52}
!55 = !{!56, !46, i64 0}
!56 = !{!"_ZTSN11xercesc_2_715DOMStringHandleE", !46, i64 0, !46, i64 4, !39, i64 8}
!57 = !{!56, !46, i64 4}
!58 = !{!56, !39, i64 8}
!59 = !{!60, !39, i64 0}
!60 = !{!"_ZTSN11xercesc_2_79DOMStringE", !39, i64 0}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51, !52}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51, !52}
!66 = distinct !{!66, !51, !52}
!67 = distinct !{!67, !51, !52}
!68 = distinct !{!68, !51, !52}
!69 = distinct !{!69, !51, !52}
!70 = distinct !{!70, !51, !52}
!71 = distinct !{!71, !51, !52}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = distinct !{!74, !51, !52}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = distinct !{!77, !51, !52}
!78 = !{!40, !40, i64 0}
!79 = !{i32 -1, i32 2}
!80 = distinct !{!80, !51, !52}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!"DOMString.cpp;_GLOBAL__sub_I_DOMString.cpp"}
