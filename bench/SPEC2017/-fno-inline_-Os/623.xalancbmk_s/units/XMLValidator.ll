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

$_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE = comdat any

$_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_78XMLValid7isErrorENS0_5CodesE = comdat any

$_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv = comdat any

$_ZN11xercesc_2_78XMLValid7isFatalENS0_5CodesE = comdat any

$_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner14getInExceptionEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_712XMLValidatorD2Ev = comdat any

$_ZN11xercesc_2_712XMLValidatorD0Ev = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTIN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTVN11xercesc_2_712XMLValidatorE = comdat any

$_ZTSN11xercesc_2_712XMLValidatorE = comdat any

$_ZTIN11xercesc_2_712XMLValidatorE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_7L16msgLoaderCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L21validatorMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni16fgValidityDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L10sMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZN11xercesc_2_7L9sMsgMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712XMLValidatorE, ptr @_ZN11xercesc_2_712XMLValidatorD2Ev, ptr @_ZN11xercesc_2_712XMLValidatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712XMLValidatorE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLValidatorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712XMLValidatorE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLValidator.cpp, ptr null }]

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21validatorMutexCleanupE) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer28initializeValidatorMsgLoaderEv() local_unnamed_addr #4 align 2 !prof !38 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE) #8
  store ptr %1, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLValidator15reinitMsgLoaderEv) #8
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator15reinitMsgLoaderEv() #5 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = alloca [1024 x i16], align 16
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %5 = tail call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  tail call void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %9) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #10
  %15 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv() #8
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1023) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #8
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %4) #8
  %22 = load ptr, ptr %11, align 8, !tbaa !47
  %23 = call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #8
  %24 = load ptr, ptr %4, align 8, !tbaa !49
  %25 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !53
  %29 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !54
  %31 = load ptr, ptr %22, align 8, !tbaa !43
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, i32 noundef %23, ptr noundef nonnull %3, ptr noundef %24, ptr noundef %26, i64 noundef %28, i64 noundef %30) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #10
  br label %34

34:                                               ; preds = %14, %10
  %35 = call noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isErrorENS0_5CodesE(i32 noundef %1) #8
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %38) #8
  br i1 %39, label %42, label %40

40:                                               ; preds = %36, %34
  %41 = call noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isFatalENS0_5CodesE(i32 noundef %1) #8
  br i1 %41, label %42, label %51

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  %45 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %44) #8
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr %43, align 8, !tbaa !45
  %48 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner14getInExceptionEv(ptr noundef nonnull align 8 dereferenceable(776) %47) #8
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call ptr @__cxa_allocate_exception(i64 4) #10
  store i32 %1, ptr %50, align 16, !tbaa !55
  call void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE, ptr null) #11
  unreachable

51:                                               ; preds = %46, %42, %40
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = add i32 %0, -115
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = add i32 %0, -117
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = add i32 %0, -1
  %9 = icmp ult i32 %8, 114
  %10 = select i1 %9, i32 1, i32 3
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 2, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv() unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !38 !PGOFuncName !71 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L15gValidatorMutexEv() #8
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #8
  %6 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE) #8
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #8
          to label %15 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16msgLoaderCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLValidator15reinitMsgLoaderEv) #8
          to label %16 unwind label %13

16:                                               ; preds = %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  %17 = load ptr, ptr @_ZN11xercesc_2_7L10sMsgLoaderE, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi ptr [ %17, %16 ], [ %2, %0 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isErrorENS0_5CodesE(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 114
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !72, !range !73, !noundef !74
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isFatalENS0_5CodesE(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = add i32 %0, -117
  %3 = icmp ult i32 %2, 2
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !76, !range !73, !noundef !74
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner14getInExceptionEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 1, !tbaa !77, !range !73, !noundef !74
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L15gValidatorMutexEv() unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !38 !PGOFuncName !78 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %22

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !39
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5) #8
  %6 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %9) #8
          to label %11 unwind label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #8
          to label %13 unwind label %16

13:                                               ; preds = %11
  store ptr %10, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21validatorMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_712XMLValidator14reinitMsgMutexEv) #8
          to label %18 unwind label %14

14:                                               ; preds = %13, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %20

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #9
  br label %20

18:                                               ; preds = %13, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  %19 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  br label %22

20:                                               ; preds = %16, %14
  %21 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  resume { ptr, i32 } %21

22:                                               ; preds = %18, %0
  %23 = phi ptr [ %19, %18 ], [ %2, %0 ]
  ret ptr %23
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator14reinitMsgMutexEv() #5 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #9
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L9sMsgMutexE, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !79 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 !prof !38 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = tail call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %13) #8
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #10
  %19 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv() #8
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %21) #8
  %23 = load ptr, ptr %19, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %22) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  %29 = load ptr, ptr %15, align 8, !tbaa !47
  %30 = call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #8
  %31 = load ptr, ptr %8, align 8, !tbaa !49
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !53
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !54
  %38 = load ptr, ptr %29, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, i32 noundef %30, ptr noundef nonnull %7, ptr noundef %31, ptr noundef %33, i64 noundef %35, i64 noundef %37) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #10
  br label %41

41:                                               ; preds = %18, %14
  %42 = call noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isErrorENS0_5CodesE(i32 noundef %1) #8
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #8
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %41
  %48 = call noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isFatalENS0_5CodesE(i32 noundef %1) #8
  br i1 %48, label %49, label %58

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %51) #8
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load ptr, ptr %50, align 8, !tbaa !45
  %55 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner14getInExceptionEv(ptr noundef nonnull align 8 dereferenceable(776) %54) #8
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call ptr @__cxa_allocate_exception(i64 4) #10
  store i32 %1, ptr %57, align 16, !tbaa !55
  call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE, ptr null) #11
  unreachable

58:                                               ; preds = %53, %49, %47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKcS4_S4_S4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 !prof !38 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = tail call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @_ZN11xercesc_2_710XMLScanner19incrementErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %13) #8
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #10
  %19 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L12getMsgLoaderEv() #8
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(776) %21) #8
  %23 = load ptr, ptr %19, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %22) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  %29 = load ptr, ptr %15, align 8, !tbaa !47
  %30 = call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #8
  %31 = load ptr, ptr %8, align 8, !tbaa !49
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !53
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !54
  %38 = load ptr, ptr %29, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, i32 noundef %30, ptr noundef nonnull %7, ptr noundef %31, ptr noundef %33, i64 noundef %35, i64 noundef %37) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #10
  br label %41

41:                                               ; preds = %18, %14
  %42 = call noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isErrorENS0_5CodesE(i32 noundef %1) #8
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %45) #8
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %41
  %48 = call noundef zeroext i1 @_ZN11xercesc_2_78XMLValid7isFatalENS0_5CodesE(i32 noundef %1) #8
  br i1 %48, label %49, label %58

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %51) #8
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load ptr, ptr %50, align 8, !tbaa !45
  %55 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner14getInExceptionEv(ptr noundef nonnull align 8 dereferenceable(776) %54) #8
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call ptr @__cxa_allocate_exception(i64 4) #10
  store i32 %1, ptr %57, align 16, !tbaa !55
  call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE, ptr null) #11
  unreachable

58:                                               ; preds = %53, %49, %47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712XMLValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !82
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XMLValidator.cpp() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!35 = distinct !{!36}
!36 = !{ptr @_ZN11xercesc_2_712XMLValidatorC2EPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !42, i64 0}
!45 = !{!46, !40, i64 32}
!46 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!47 = !{!46, !40, i64 16}
!48 = !{!46, !40, i64 24}
!49 = !{!50, !40, i64 0}
!50 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !40, i64 0, !40, i64 8, !51, i64 16, !51, i64 24}
!51 = !{!"long", !41, i64 0}
!52 = !{!50, !40, i64 8}
!53 = !{!50, !51, i64 16}
!54 = !{!50, !51, i64 24}
!55 = !{!56, !56, i64 0}
!56 = !{!"_ZTSN11xercesc_2_78XMLValid5CodesE", !41, i64 0}
!57 = !{!58, !61, i64 40}
!58 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !59, i64 0, !51, i64 8, !60, i64 16, !60, i64 17, !60, i64 18, !60, i64 19, !60, i64 20, !60, i64 21, !60, i64 22, !60, i64 23, !60, i64 24, !60, i64 25, !60, i64 26, !60, i64 27, !60, i64 28, !60, i64 29, !60, i64 30, !60, i64 31, !60, i64 32, !60, i64 33, !60, i64 34, !60, i64 35, !60, i64 36, !60, i64 37, !60, i64 38, !61, i64 40, !61, i64 44, !61, i64 48, !61, i64 52, !61, i64 56, !61, i64 60, !61, i64 64, !61, i64 68, !40, i64 72, !61, i64 80, !61, i64 84, !61, i64 88, !61, i64 92, !61, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !60, i64 176, !62, i64 184, !40, i64 264, !65, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !40, i64 320, !40, i64 328, !40, i64 336, !40, i64 344, !64, i64 352, !40, i64 360, !66, i64 368, !67, i64 392, !67, i64 432, !67, i64 472, !67, i64 512, !67, i64 552, !67, i64 592, !67, i64 632, !68, i64 672}
!59 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!60 = !{!"bool", !41, i64 0}
!61 = !{!"int", !41, i64 0}
!62 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !63, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !61, i64 40, !40, i64 48, !60, i64 56, !64, i64 60, !60, i64 64, !40, i64 72}
!63 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!64 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !41, i64 0}
!65 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !41, i64 0}
!66 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !61, i64 0, !40, i64 8, !40, i64 16}
!67 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !61, i64 0, !61, i64 4, !61, i64 8, !60, i64 12, !40, i64 16, !40, i64 24, !40, i64 32}
!68 = !{!"_ZTSN11xercesc_2_79ElemStackE", !61, i64 0, !61, i64 4, !69, i64 8, !40, i64 48, !61, i64 56, !61, i64 60, !61, i64 64, !61, i64 68, !61, i64 72, !61, i64 76, !61, i64 80, !40, i64 88, !40, i64 96}
!69 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !70, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !61, i64 32, !61, i64 36}
!70 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!71 = !{!"XMLValidator.cpp:_ZN11xercesc_2_7L12getMsgLoaderEv"}
!72 = !{!58, !60, i64 20}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!"function_entry_count", i64 1}
!76 = !{!58, !60, i64 19}
!77 = !{!58, !60, i64 21}
!78 = !{!"XMLValidator.cpp:_ZN11xercesc_2_7L15gValidatorMutexEv"}
!79 = !{!"function_entry_count", i64 5836268}
!80 = !{!58, !40, i64 360}
!81 = !{!"function_entry_count", i64 6}
!82 = !{!46, !40, i64 8}
