; ModuleID = 'XMLValidator.cpp'
source_filename = "XMLValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

$_ZN11xercesc_2_712XMLValidatorD2Ev = comdat any

$_ZN11xercesc_2_712XMLValidatorD0Ev = comdat any

$_ZTSN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTIN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTVN11xercesc_2_712XMLValidatorE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_712XMLValidatorE = comdat any

$_ZTIN11xercesc_2_712XMLValidatorE = comdat any

@_ZN11xercesc_2_7L16msgLoaderCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L21validatorMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni16fgValidityDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L10sMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTVN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XMLValidatorE, ptr @_ZN11xercesc_2_712XMLValidatorD2Ev, ptr @_ZN11xercesc_2_712XMLValidatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_7L9sMsgMutexE = internal unnamed_addr global ptr null, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XMLValidatorE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLValidatorE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLValidator.cpp, ptr null }]

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer28initializeValidatorMsgLoaderEv() local_unnamed_addr #3 align 2 !prof !37 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE)
  store ptr %1, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLValidator15reinitMsgLoaderEv)
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator15reinitMsgLoaderEv() #4 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = alloca [1024 x i16], align 16
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %5 = add i32 %1, -115
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %9, i64 0, i32 25
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #9
  %18 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv()
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1023)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %25 = load ptr, ptr %14, align 8, !tbaa !61
  br i1 %6, label %33, label %26

26:                                               ; preds = %17
  %27 = add i32 %1, -117
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = add i32 %1, -1
  %31 = icmp ult i32 %30, 114
  %32 = select i1 %31, i32 1, i32 3
  br label %33

33:                                               ; preds = %17, %26, %29
  %34 = phi i32 [ 0, %17 ], [ 2, %26 ], [ %32, %29 ]
  %35 = load ptr, ptr %4, align 8, !tbaa !63
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !66
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !67
  %42 = load ptr, ptr %25, align 8, !tbaa !42
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, i32 noundef %34, ptr noundef nonnull %3, ptr noundef %35, ptr noundef %37, i64 noundef %39, i64 noundef %41)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #9
  br label %45

45:                                               ; preds = %33, %13
  %46 = add i32 %1, -1
  %47 = icmp ult i32 %46, 114
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !44
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %50, i64 0, i32 6
  %52 = load i8, ptr %51, align 4, !tbaa !68, !range !69, !noundef !70
  %53 = icmp ne i8 %52, 0
  %54 = add nsw i32 %1, -117
  %55 = icmp ult i32 %54, 2
  %56 = or i1 %55, %53
  br i1 %56, label %60, label %72

57:                                               ; preds = %45
  %58 = add i32 %1, -117
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %72

60:                                               ; preds = %57, %48
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %62, i64 0, i32 5
  %64 = load i8, ptr %63, align 1, !tbaa !71, !range !69, !noundef !70
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %62, i64 0, i32 7
  %68 = load i8, ptr %67, align 1, !tbaa !72, !range !69, !noundef !70
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call ptr @__cxa_allocate_exception(i64 4) #9
  store i32 %1, ptr %71, align 16, !tbaa !73
  call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE, ptr null) #10
  unreachable

72:                                               ; preds = %60, %57, %48, %66
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv() unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %40

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %6 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %9)
  %10 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
          to label %15 unwind label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16)
          to label %17 unwind label %20

17:                                               ; preds = %15
  store ptr %14, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21validatorMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLValidator14reinitMsgMutexEv)
          to label %22 unwind label %18

18:                                               ; preds = %17, %12
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %25

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #9
  br label %25

22:                                               ; preds = %17, %8
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  br label %27

23:                                               ; preds = %36, %25
  %24 = phi { ptr, i32 } [ %26, %25 ], [ %37, %36 ]
  resume { ptr, i32 } %24

25:                                               ; preds = %20, %18
  %26 = phi { ptr, i32 } [ %19, %18 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  br label %23

27:                                               ; preds = %5, %22
  %28 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %28)
  %29 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE)
          to label %33 unwind label %36

33:                                               ; preds = %31
  store ptr %32, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4)
          to label %38 unwind label %36

36:                                               ; preds = %38, %35, %31
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %23

38:                                               ; preds = %35, %33
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLValidator15reinitMsgLoaderEv)
          to label %39 unwind label %36

39:                                               ; preds = %38, %27
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %40

40:                                               ; preds = %39, %0
  %41 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !38
  ret ptr %41
}

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 !prof !37 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = add i32 %1, -115
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %11, %6
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #9
  %22 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv()
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %24, i64 0, i32 62
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = load ptr, ptr %22, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %26)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %33 = load ptr, ptr %18, align 8, !tbaa !61
  br i1 %10, label %41, label %34

34:                                               ; preds = %21
  %35 = add i32 %1, -117
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = add i32 %1, -1
  %39 = icmp ult i32 %38, 114
  %40 = select i1 %39, i32 1, i32 3
  br label %41

41:                                               ; preds = %21, %34, %37
  %42 = phi i32 [ 0, %21 ], [ 2, %34 ], [ %40, %37 ]
  %43 = load ptr, ptr %8, align 8, !tbaa !63
  %44 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !67
  %50 = load ptr, ptr %33, align 8, !tbaa !42
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  call void %52(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, i32 noundef %42, ptr noundef nonnull %7, ptr noundef %43, ptr noundef %45, i64 noundef %47, i64 noundef %49)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #9
  br label %53

53:                                               ; preds = %41, %17
  %54 = add i32 %1, -1
  %55 = icmp ult i32 %54, 114
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %58, i64 0, i32 6
  %60 = load i8, ptr %59, align 4, !tbaa !68, !range !69, !noundef !70
  %61 = icmp ne i8 %60, 0
  %62 = add nsw i32 %1, -117
  %63 = icmp ult i32 %62, 2
  %64 = or i1 %63, %61
  br i1 %64, label %68, label %80

65:                                               ; preds = %53
  %66 = add i32 %1, -117
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %80

68:                                               ; preds = %65, %56
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %70, i64 0, i32 5
  %72 = load i8, ptr %71, align 1, !tbaa !71, !range !69, !noundef !70
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %70, i64 0, i32 7
  %76 = load i8, ptr %75, align 1, !tbaa !72, !range !69, !noundef !70
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call ptr @__cxa_allocate_exception(i64 4) #9
  store i32 %1, ptr %79, align 16, !tbaa !73
  call void @__cxa_throw(ptr nonnull %79, ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE, ptr null) #10
  unreachable

80:                                               ; preds = %68, %65, %56, %74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKcS4_S4_S4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 !prof !37 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = add i32 %1, -115
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %11, %6
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #9
  %22 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv()
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %24, i64 0, i32 62
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = load ptr, ptr %22, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %26)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %33 = load ptr, ptr %18, align 8, !tbaa !61
  br i1 %10, label %41, label %34

34:                                               ; preds = %21
  %35 = add i32 %1, -117
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = add i32 %1, -1
  %39 = icmp ult i32 %38, 114
  %40 = select i1 %39, i32 1, i32 3
  br label %41

41:                                               ; preds = %21, %34, %37
  %42 = phi i32 [ 0, %21 ], [ 2, %34 ], [ %40, %37 ]
  %43 = load ptr, ptr %8, align 8, !tbaa !63
  %44 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !67
  %50 = load ptr, ptr %33, align 8, !tbaa !42
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  call void %52(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, i32 noundef %42, ptr noundef nonnull %7, ptr noundef %43, ptr noundef %45, i64 noundef %47, i64 noundef %49)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #9
  br label %53

53:                                               ; preds = %41, %17
  %54 = add i32 %1, -1
  %55 = icmp ult i32 %54, 114
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %58, i64 0, i32 6
  %60 = load i8, ptr %59, align 4, !tbaa !68, !range !69, !noundef !70
  %61 = icmp ne i8 %60, 0
  %62 = add nsw i32 %1, -117
  %63 = icmp ult i32 %62, 2
  %64 = or i1 %63, %61
  br i1 %64, label %68, label %80

65:                                               ; preds = %53
  %66 = add i32 %1, -117
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %80

68:                                               ; preds = %65, %56
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %70, i64 0, i32 5
  %72 = load i8, ptr %71, align 1, !tbaa !71, !range !69, !noundef !70
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %70, i64 0, i32 7
  %76 = load i8, ptr %75, align 1, !tbaa !72, !range !69, !noundef !70
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call ptr @__cxa_allocate_exception(i64 4) #9
  store i32 %1, ptr %79, align 16, !tbaa !73
  call void @__cxa_throw(ptr nonnull %79, ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE, ptr null) #10
  unreachable

80:                                               ; preds = %68, %65, %56, %74
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !76 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator14reinitMsgMutexEv() #4 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #9
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  tail call void @llvm.trap() #11
  unreachable
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XMLValidator.cpp() #7 section ".text.startup" !prof !78 !PGOFuncName !79 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21validatorMutexCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

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
!35 = !{ptr @_GLOBAL__sub_I_XMLValidator.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !41, i64 0}
!44 = !{!45, !39, i64 32}
!45 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!46 = !{!47, !51, i64 40}
!47 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !48, i64 0, !49, i64 8, !50, i64 16, !50, i64 17, !50, i64 18, !50, i64 19, !50, i64 20, !50, i64 21, !50, i64 22, !50, i64 23, !50, i64 24, !50, i64 25, !50, i64 26, !50, i64 27, !50, i64 28, !50, i64 29, !50, i64 30, !50, i64 31, !50, i64 32, !50, i64 33, !50, i64 34, !50, i64 35, !50, i64 36, !50, i64 37, !50, i64 38, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !51, i64 64, !51, i64 68, !39, i64 72, !51, i64 80, !51, i64 84, !51, i64 88, !51, i64 92, !51, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !50, i64 176, !52, i64 184, !39, i64 264, !55, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !39, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !54, i64 352, !39, i64 360, !56, i64 368, !57, i64 392, !57, i64 432, !57, i64 472, !57, i64 512, !57, i64 552, !57, i64 592, !57, i64 632, !58, i64 672}
!48 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!49 = !{!"long", !40, i64 0}
!50 = !{!"bool", !40, i64 0}
!51 = !{!"int", !40, i64 0}
!52 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !53, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !51, i64 40, !39, i64 48, !50, i64 56, !54, i64 60, !50, i64 64, !39, i64 72}
!53 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!54 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !40, i64 0}
!55 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !40, i64 0}
!56 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !51, i64 0, !39, i64 8, !39, i64 16}
!57 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !51, i64 0, !51, i64 4, !51, i64 8, !50, i64 12, !39, i64 16, !39, i64 24, !39, i64 32}
!58 = !{!"_ZTSN11xercesc_2_79ElemStackE", !51, i64 0, !51, i64 4, !59, i64 8, !39, i64 48, !51, i64 56, !51, i64 60, !51, i64 64, !51, i64 68, !51, i64 72, !51, i64 76, !51, i64 80, !39, i64 88, !39, i64 96}
!59 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !60, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !51, i64 32, !51, i64 36}
!60 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!61 = !{!45, !39, i64 16}
!62 = !{!45, !39, i64 24}
!63 = !{!64, !39, i64 0}
!64 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !39, i64 0, !39, i64 8, !49, i64 16, !49, i64 24}
!65 = !{!64, !39, i64 8}
!66 = !{!64, !49, i64 16}
!67 = !{!64, !49, i64 24}
!68 = !{!47, !50, i64 20}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!47, !50, i64 19}
!72 = !{!47, !50, i64 21}
!73 = !{!74, !74, i64 0}
!74 = !{!"_ZTSN11xercesc_2_78XMLValid5CodesE", !40, i64 0}
!75 = !{!47, !39, i64 360}
!76 = !{!"function_entry_count", i64 6}
!77 = !{!45, !39, i64 8}
!78 = !{!"function_entry_count", i64 1}
!79 = !{!"XMLValidator.cpp;_GLOBAL__sub_I_XMLValidator.cpp"}
