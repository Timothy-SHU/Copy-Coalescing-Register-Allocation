; ModuleID = 'PlatformUtils.cpp'
source_filename = "PlatformUtils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::MemoryManagerArrayImpl" = type { %"class.xercesc_2_7::MemoryManager" }
%"class.xercesc_2_7::MemoryManager" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_713MemoryManagerD2Ev = comdat any

$_ZN11xercesc_2_713MemoryManagerC2Ev = comdat any

$_ZN11xercesc_2_713MemoryManagerD0Ev = comdat any

$_ZN11xercesc_2_717MemoryManagerImplC2Ev = comdat any

$_ZN11xercesc_2_719DefaultPanicHandlerC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712PanicHandlerC2Ev = comdat any

$_ZN11xercesc_2_712PanicHandlerD2Ev = comdat any

$_ZN11xercesc_2_712PanicHandlerD0Ev = comdat any

$_ZN11xercesc_2_710XMLChar1_015isNELRecognizedEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTVN11xercesc_2_713MemoryManagerE = comdat any

$_ZTSN11xercesc_2_713MemoryManagerE = comdat any

$_ZTIN11xercesc_2_713MemoryManagerE = comdat any

$_ZTVN11xercesc_2_712PanicHandlerE = comdat any

$_ZTSN11xercesc_2_712PanicHandlerE = comdat any

$_ZTIN11xercesc_2_712PanicHandlerE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZN11xercesc_2_715gXMLCleanupListE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_720gXMLCleanupListMutexE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_719gArrayMemoryManagerE = dso_local global %"class.xercesc_2_7::MemoryManagerArrayImpl" { %"class.xercesc_2_7::MemoryManager" { ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722MemoryManagerArrayImplE, i32 0, inrange i32 0, i32 2) } }, align 8
@_ZTVN11xercesc_2_722MemoryManagerArrayImplE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN11xercesc_2_713MemoryManagerE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_713MemoryManagerD2Ev, ptr @_ZN11xercesc_2_713MemoryManagerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_713MemoryManagerE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713MemoryManagerE\00", comdat, align 1
@_ZTIN11xercesc_2_713MemoryManagerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713MemoryManagerE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils20fgArrayMemoryManagerE = dso_local local_unnamed_addr global ptr @_ZN11xercesc_2_719gArrayMemoryManagerE, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L9gInitFlagE = internal unnamed_addr global i64 0, align 8
@_ZN11xercesc_2_7L10gSyncMutexE = internal unnamed_addr global ptr null, align 8
@_ZTVN11xercesc_2_717MemoryManagerImplE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN11xercesc_2_719DefaultPanicHandlerE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN11xercesc_2_712PanicHandlerE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712PanicHandlerE, ptr @_ZN11xercesc_2_712PanicHandlerD2Ev, ptr @_ZN11xercesc_2_712PanicHandlerD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_712PanicHandlerE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712PanicHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_712PanicHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712PanicHandlerE }, comdat, align 8
@.str = private unnamed_addr constant [18 x i8] c"PlatformUtils.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_710XMLChar1_09enableNELE = external local_unnamed_addr global i8, align 1
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713MemoryManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !41 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713MemoryManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !42 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_713MemoryManagerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713MemoryManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #6
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %6 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %7 = icmp eq i64 %6, 9223372036854775807
  br i1 %7, label %63, label %8, !prof !49

8:                                                ; preds = %5
  %9 = add nsw i64 %6, 1
  store i64 %9, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %10 = icmp sgt i64 %6, 0
  br i1 %10, label %63, label %11, !prof !49

11:                                               ; preds = %8
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19, !prof !52

14:                                               ; preds = %11
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16, !prof !52

16:                                               ; preds = %14
  store ptr %3, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  store i8 0, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE, align 1, !tbaa !53
  br label %19

17:                                               ; preds = %14
  %18 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #7
  tail call void @_ZN11xercesc_2_717MemoryManagerImplC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #8
  store ptr %18, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  br label %19

19:                                               ; preds = %16, %17, %11
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %26, !prof !52

21:                                               ; preds = %19
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #8
  invoke void @_ZN11xercesc_2_719DefaultPanicHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #8
          to label %23 unwind label %24

23:                                               ; preds = %21
  store ptr %22, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8, !tbaa !50
  br label %27

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %64

26:                                               ; preds = %19
  store ptr %2, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %26, %23
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv() #8
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #8
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %29) #8
          to label %30 unwind label %41

30:                                               ; preds = %27
  store ptr %28, ptr @_ZN11xercesc_2_7L10gSyncMutexE, align 8, !tbaa !50
  %31 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #8
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %32) #8
          to label %33 unwind label %43

33:                                               ; preds = %30
  store ptr %31, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !50
  %34 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #8
  %35 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %35) #8
          to label %36 unwind label %45

36:                                               ; preds = %33
  store ptr %34, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !50
  %37 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv() #8
  store ptr %37, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %47, !prof !49

39:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 0) #8
  %40 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  br label %47

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %64

43:                                               ; preds = %30
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %64

45:                                               ; preds = %33
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %64

47:                                               ; preds = %39, %36
  %48 = phi ptr [ %40, %39 ], [ %37, %36 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = getelementptr inbounds ptr, ptr %49, i64 11
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48) #8
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59, !prof !49

58:                                               ; preds = %47
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 1) #8
  br label %59

59:                                               ; preds = %58, %47
  %60 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_79XMLString10initStringEPNS_16XMLLCPTranscoderEPNS_13MemoryManagerE(ptr noundef %56, ptr noundef %60) #8
  %61 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv() #8
  store ptr %61, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef %0) #8
  tail call void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef %1) #8
  br i1 %4, label %62, label %63, !prof !49

62:                                               ; preds = %59
  tail call void @_ZN11xercesc_2_714XMLInitializer23InitializeAllStaticDataEv() #8
  br label %63

63:                                               ; preds = %59, %62, %8, %5
  ret void

64:                                               ; preds = %45, %43, %41, %24
  %65 = phi ptr [ %34, %45 ], [ %31, %43 ], [ %28, %41 ], [ %22, %24 ]
  %66 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %65) #9
  resume { ptr, i32 } %66
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717MemoryManagerImplC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_713MemoryManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717MemoryManagerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DefaultPanicHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  tail call void @_ZN11xercesc_2_712PanicHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_719DefaultPanicHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv() local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv() local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10initStringEPNS_16XMLLCPTranscoderEPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv() local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLInitializer23InitializeAllStaticDataEv() local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712PanicHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712PanicHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712PanicHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !41 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712PanicHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #6
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #2 align 2 !prof !41 {
  %1 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %58, label %3, !prof !49

3:                                                ; preds = %0
  %4 = add nsw i64 %1, -1
  store i64 %4, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %5 = icmp sgt i64 %1, 1
  br i1 %5, label %58, label %6, !prof !49

6:                                                ; preds = %3
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %13

13:                                               ; preds = %9, %6
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_79XMLString10termStringEv() #8
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !43
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %20

20:                                               ; preds = %16, %13
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  %21 = load ptr, ptr @_ZN11xercesc_2_7L10gSyncMutexE, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #9
  br label %24

24:                                               ; preds = %23, %20
  store ptr null, ptr @_ZN11xercesc_2_7L10gSyncMutexE, align 8, !tbaa !50
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #9
  br label %28

28:                                               ; preds = %27, %24
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !50
  %29 = load ptr, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !50
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31, !prof !56

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %28 ]
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #8
  %33 = load ptr, ptr @_ZN11xercesc_2_715gXMLCleanupListE, align 8, !tbaa !50
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !prof !57, !llvm.loop !58

35:                                               ; preds = %31, %28
  %36 = load ptr, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %36) #9
  br label %39

39:                                               ; preds = %38, %35
  store ptr null, ptr @_ZN11xercesc_2_720gXMLCleanupListMutexE, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv() #8
  tail call void @_ZN11xercesc_2_712XMLMsgLoader9setLocaleEPKc(ptr noundef null) #8
  tail call void @_ZN11xercesc_2_712XMLMsgLoader10setNLSHomeEPKc(ptr noundef null) #8
  %40 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8, !tbaa !50
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !49

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !43
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(8) %40) #9
  br label %46

46:                                               ; preds = %42, %39
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8, !tbaa !50
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !50
  %47 = load i8, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE, align 1, !tbaa !53, !range !60, !noundef !61
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49, !prof !49

49:                                               ; preds = %46
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %50, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %50) #9
  br label %57

56:                                               ; preds = %46
  store i8 1, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemMgrAdoptedE, align 1, !tbaa !53
  br label %57

57:                                               ; preds = %49, %52, %56
  store ptr null, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  store i64 0, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %3, %0, %57
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10termStringEv() local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv() local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef %0) local_unnamed_addr #2 align 2 !prof !62 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11loadAMsgSetEPKt(ptr noundef %0) #8
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11loadAMsgSetEPKt(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils12recognizeNELEbPNS_13MemoryManagerE(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_015isNELRecognizedEv() #8
  br i1 %0, label %7, label %9

7:                                                ; preds = %5
  br i1 %6, label %15, label %8

8:                                                ; preds = %7
  tail call void @_ZN11xercesc_2_710XMLChar1_011enableNELWSEv() #8
  br label %15

9:                                                ; preds = %5
  br i1 %6, label %10, label %15

10:                                               ; preds = %9
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 451, i32 noundef 298, ptr noundef %1) #8
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #10
  resume { ptr, i32 } %14

15:                                               ; preds = %9, %7, %8, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_015isNELRecognizedEv() local_unnamed_addr #1 comdat align 2 !prof !62 {
  %1 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !tbaa !53, !range !60, !noundef !61
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLChar1_011enableNELWSEv() local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils15isNELRecognizedEv() local_unnamed_addr #1 align 2 !prof !62 {
  %1 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_015isNELRecognizedEv() #8
  ret i1 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils18strictIANAEncodingEb(i1 noundef zeroext %0) local_unnamed_addr #2 align 2 !prof !62 {
  %2 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_715XMLTransService18strictIANAEncodingEb(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %0) #8
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XMLTransService18strictIANAEncodingEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils20isStrictIANAEncodingEv() local_unnamed_addr #2 align 2 !prof !62 {
  %1 = load i64, ptr @_ZN11xercesc_2_7L9gInitFlagE, align 8, !tbaa !46
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !50
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715XMLTransService20isStrictIANAEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %6

6:                                                ; preds = %0, %3
  %7 = phi i1 [ %5, %3 ], [ false, %0 ]
  ret i1 %7
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_715XMLTransService20isStrictIANAEncodingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { builtin optsize allocsize(0) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_717MemoryManagerImplC2Ev, ptr @_ZN11xercesc_2_713MemoryManagerC2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_719DefaultPanicHandlerC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_719DefaultPanicHandlerC2Ev, ptr @_ZN11xercesc_2_712PanicHandlerC2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup9doCleanupEv, i64 2}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!"function_entry_count", i64 3}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"long", !48, i64 0}
!48 = !{!"omnipotent char", !45, i64 0}
!49 = !{!"branch_weights", i32 1, i32 2}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !48, i64 0}
!52 = !{!"branch_weights", i32 2, i32 1}
!53 = !{!54, !54, i64 0}
!54 = !{!"bool", !48, i64 0}
!55 = !{!"function_entry_count", i64 5836268}
!56 = !{!"branch_weights", i32 1, i32 127}
!57 = !{!"branch_weights", i32 127, i32 577}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !51, i64 40}
!64 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !65, i64 8, !51, i64 16, !66, i64 24, !51, i64 32, !51, i64 40}
!65 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !48, i64 0}
!66 = !{!"int", !48, i64 0}
