; ModuleID = 'PlatformUtils.cpp'
source_filename = "PlatformUtils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::MemoryManagerArrayImpl" = type { %"class.xercesc_2_7::MemoryManager" }
%"class.xercesc_2_7::MemoryManager" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZN11xercesc_2_715gXMLCleanupListE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_720gXMLCleanupListMutexE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_719gArrayMemoryManagerE = dso_local global %"class.xercesc_2_7::MemoryManagerArrayImpl" { %"class.xercesc_2_7::MemoryManager" { ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722MemoryManagerArrayImplE, i32 0, inrange i32 0, i32 2) } }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils20fgArrayMemoryManagerE = dso_local local_unnamed_addr global ptr @_ZN11xercesc_2_719gArrayMemoryManagerE, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L9gInitFlagE = internal unnamed_addr global i64 0, align 8
@_ZN11xercesc_2_7L10gSyncMutexE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [18 x i8] c"PlatformUtils.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722MemoryManagerArrayImplE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN11xercesc_2_717MemoryManagerImplE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN11xercesc_2_719DefaultPanicHandlerE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZN11xercesc_2_710XMLChar1_09enableNELE = external local_unnamed_addr global i8, align 1
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %6 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %7 = icmp eq i64 %6, 9223372036854775807
  br i1 %7, label %59, label %8, !prof !57

8:                                                ; preds = %5
  %9 = add nsw i64 %6, 1
  store i64 %9, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %10 = icmp sgt i64 %6, 0
  br i1 %10, label %59, label %11, !prof !57

11:                                               ; preds = %8
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19, !prof !60

14:                                               ; preds = %11
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16, !prof !60

16:                                               ; preds = %14
  store ptr %3, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  store i8 0, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE, align 1, !tbaa !61
  br label %19

17:                                               ; preds = %14
  %18 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717MemoryManagerImplE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !63
  store ptr %18, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  br label %19

19:                                               ; preds = %16, %17, %11
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %23, !prof !60

21:                                               ; preds = %19
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_719DefaultPanicHandlerE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !63
  store ptr %22, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8, !tbaa !58
  br label %24

23:                                               ; preds = %19
  store ptr %2, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %23, %21
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv()
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  %26 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %26)
          to label %27 unwind label %37, !prof !60

27:                                               ; preds = %24
  store ptr %25, ptr @_ZN11xercesc_2_7L10gSyncMutexE, align 8, !tbaa !58
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %29)
          to label %30 unwind label %39, !prof !60

30:                                               ; preds = %27
  store ptr %28, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !58
  %31 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %32)
          to label %33 unwind label %41, !prof !60

33:                                               ; preds = %30
  store ptr %31, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !58
  %34 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv()
  store ptr %34, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43, !prof !57

36:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 0)
  br label %43

37:                                               ; preds = %24
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %60

39:                                               ; preds = %27
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %60

41:                                               ; preds = %30
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %60

43:                                               ; preds = %36, %33
  %44 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  %45 = load ptr, ptr %44, align 8, !tbaa !63
  %46 = getelementptr inbounds ptr, ptr %45, i64 11
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %44), !prof !65
  %48 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = getelementptr inbounds ptr, ptr %49, i64 6
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %48), !prof !66
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55, !prof !57

54:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 1)
  br label %55

55:                                               ; preds = %54, %43
  %56 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_79XMLString10initStringEPNS_16XMLLCPTranscoderEPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %56)
  %57 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv()
  store ptr %57, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef %0)
  tail call void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef %1)
  br i1 %4, label %58, label %59, !prof !57

58:                                               ; preds = %55
  tail call void @_ZN11xercesc_2_714XMLInitializer23InitializeAllStaticDataEv()
  br label %59

59:                                               ; preds = %55, %58, %8, %5
  ret void

60:                                               ; preds = %41, %39, %37
  %61 = phi ptr [ %31, %41 ], [ %28, %39 ], [ %25, %37 ]
  %62 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %61) #7
  resume { ptr, i32 } %62
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv() local_unnamed_addr #2

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv() local_unnamed_addr #2

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString10initStringEPNS_16XMLLCPTranscoderEPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv() local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_714XMLInitializer23InitializeAllStaticDataEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #0 align 2 !prof !52 {
  %1 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %58, label %3, !prof !57

3:                                                ; preds = %0
  %4 = add nsw i64 %1, -1
  store i64 %4, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %5 = icmp sgt i64 %1, 1
  br i1 %5, label %58, label %6, !prof !57

6:                                                ; preds = %3
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !60

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %13

13:                                               ; preds = %9, %6
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_79XMLString10termStringEv()
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !57

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !63
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14) #7, !prof !67
  br label %20

20:                                               ; preds = %16, %13
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  %21 = load ptr, ptr @_ZN11xercesc_2_7L10gSyncMutexE, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !57

23:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #7
  br label %24

24:                                               ; preds = %23, %20
  store ptr null, ptr @_ZN11xercesc_2_7L10gSyncMutexE, align 8, !tbaa !58
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !58
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !57

27:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #7
  br label %28

28:                                               ; preds = %27, %24
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !58
  %29 = load ptr, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31, !prof !68

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %28 ]
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv(ptr noundef nonnull align 8 dereferenceable(24) %32)
  %33 = load ptr, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !prof !69, !llvm.loop !70

35:                                               ; preds = %31, %28
  %36 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !58
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !57

38:                                               ; preds = %35
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %36) #7
  br label %39

39:                                               ; preds = %38, %35
  store ptr null, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv()
  tail call void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef null)
  tail call void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef null)
  %40 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !57

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !63
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(8) %40) #7, !prof !73
  br label %46

46:                                               ; preds = %42, %39
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8, !tbaa !58
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !58
  %47 = load i8, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE, align 1, !tbaa !61, !range !74, !noundef !75
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49, !prof !57

49:                                               ; preds = %46
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !57

52:                                               ; preds = %49
  %53 = load ptr, ptr %50, align 8, !tbaa !63
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %50) #7, !prof !76
  br label %57

56:                                               ; preds = %46
  store i8 1, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE, align 1, !tbaa !61
  br label %57

57:                                               ; preds = %49, %52, %56
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  store i64 0, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  br label %58

58:                                               ; preds = %3, %0, %57
  ret void
}

declare void @_ZN11xercesc_2_79XMLString10termStringEv() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !77 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11loadAMsgSetEPKt(ptr noundef %0)
  ret ptr %2
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11loadAMsgSetEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils12recognizeNELEbPNS_13MemoryManagerE(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !tbaa !61, !range !74, !noundef !75
  %7 = icmp eq i8 %6, 0
  br i1 %0, label %8, label %10

8:                                                ; preds = %5
  br i1 %7, label %9, label %16

9:                                                ; preds = %8
  tail call void @_ZN11xercesc_2_710XMLChar1_011enableNELWSEv()
  br label %16

10:                                               ; preds = %5
  br i1 %7, label %16, label %11

11:                                               ; preds = %10
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 451, i32 noundef 298, ptr noundef %1)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #7
  resume { ptr, i32 } %15

16:                                               ; preds = %10, %8, %9, %2
  ret void
}

declare void @_ZN11xercesc_2_710XMLChar1_011enableNELWSEv() local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils15isNELRecognizedEv() local_unnamed_addr #4 align 2 !prof !77 {
  %1 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !tbaa !61, !range !74, !noundef !75
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils18strictIANAEncodingEb(i1 noundef zeroext %0) local_unnamed_addr #0 align 2 !prof !77 {
  %2 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_715XMLTransService18strictIANAEncodingEb(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %0)
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

declare void @_ZN11xercesc_2_715XMLTransService18strictIANAEncodingEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils20isStrictIANAEncodingEv() local_unnamed_addr #0 align 2 !prof !77 {
  %1 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !53
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !58
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715XMLTransService20isStrictIANAEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %6

6:                                                ; preds = %0, %3
  %7 = phi i1 [ %5, %3 ], [ false, %0 ]
  ret i1 %7
}

declare noundef zeroext i1 @_ZN11xercesc_2_715XMLTransService20isStrictIANAEncodingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !77 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !77 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !63
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_Znwm, i64 1}
!36 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 4}
!37 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv, i64 1}
!40 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_79XMLString10initStringEPNS_16XMLLCPTranscoderEPNS_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc, i64 1}
!43 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc, i64 1}
!44 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_79XMLString10termStringEv, i64 1}
!45 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 3}
!46 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!47 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv, i64 10}
!48 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv, i64 1}
!49 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc, i64 1}
!50 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!54, !54, i64 0}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"branch_weights", i32 0, i32 1}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !55, i64 0}
!60 = !{!"branch_weights", i32 1, i32 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"bool", !55, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !56, i64 0}
!65 = !{!"VP", i32 0, i64 1, i64 -8302921793015652075, i64 1}
!66 = !{!"VP", i32 0, i64 1, i64 -374827043043468485, i64 1}
!67 = !{!"VP", i32 0, i64 1, i64 -9167504390772260558, i64 1}
!68 = !{!"branch_weights", i32 1, i32 127}
!69 = !{!"branch_weights", i32 127, i32 1153}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!"VP", i32 0, i64 1, i64 -3967468202338665309, i64 1}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!"VP", i32 0, i64 1, i64 6912169185694897274, i64 1}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!79, !59, i64 40}
!79 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !80, i64 8, !59, i64 16, !81, i64 24, !59, i64 32, !59, i64 40}
!80 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!81 = !{!"int", !55, i64 0}
