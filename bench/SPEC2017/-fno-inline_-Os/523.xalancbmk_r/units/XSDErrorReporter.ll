; ModuleID = 'XSDErrorReporter.cpp'
source_filename = "XSDErrorReporter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE = comdat any

$_ZN11xercesc_2_716XSDErrorReporterD2Ev = comdat any

$_ZN11xercesc_2_716XSDErrorReporterD0Ev = comdat any

$_ZTVN11xercesc_2_716XSDErrorReporterE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_716XSDErrorReporterE = comdat any

$_ZTIN11xercesc_2_716XSDErrorReporterE = comdat any

@_ZN11xercesc_2_7L20errRprtrMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L19cleanupErrMsgLoaderE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L21cleanupValidMsgLoaderE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13gErrMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_76XMLUni16fgValidityDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L15gValidMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZTVN11xercesc_2_716XSDErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XSDErrorReporterE, ptr @_ZN11xercesc_2_716XSDErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XSDErrorReporterD0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_716XSDErrorReporterE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XSDErrorReporterE\00", comdat, align 1
@_ZTIN11xercesc_2_716XSDErrorReporterE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XSDErrorReporterE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_7L14sErrRprtrMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XSDErrorReporter.cpp, ptr null }]

@_ZN11xercesc_2_716XSDErrorReporterC1EPNS_16XMLErrorReporterE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_716XSDErrorReporterC2EPNS_16XMLErrorReporterE

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20errRprtrMutexCleanupE) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupErrMsgLoaderE) #6
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21cleanupValidMsgLoaderE) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer33initializeXSDErrReporterMsgLoaderEv() local_unnamed_addr #2 align 2 !prof !37 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE) #6
  store ptr %1, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupErrMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L18reinitErrMsgLoaderEv) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE) #6
  store ptr %5, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21cleanupValidMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L20reinitValidMsgLoaderEv) #6
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L18reinitErrMsgLoaderEv() #3 !prof !37 !PGOFuncName !42 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L20reinitValidMsgLoaderEv() #3 !prof !37 !PGOFuncName !45 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716XSDErrorReporterC2EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_716XSDErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !51 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !37 {
  %5 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #8
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15getErrMsgLoaderEv() #6
  %7 = tail call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #6
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE) #6
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #6
  %11 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getValidMsgLoaderEv() #6
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %11, %9 ], [ %6, %4 ]
  %14 = phi i32 [ %10, %9 ], [ %7, %4 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 1023) #6
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %3, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %27 = load ptr, ptr %3, align 8, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %31 = load ptr, ptr %3, align 8, !tbaa !43
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef i64 %33(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %35 = load ptr, ptr %3, align 8, !tbaa !43
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef i64 %37(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %39 = load ptr, ptr %20, align 8, !tbaa !43
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %1, ptr noundef %2, i32 noundef %14, ptr noundef nonnull %5, ptr noundef %26, ptr noundef %30, i64 noundef %34, i64 noundef %38) #6
  br label %42

42:                                               ; preds = %22, %12
  %43 = icmp ne i32 %14, 2
  %44 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  %45 = load i8, ptr %44, align 8, !range !52
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %43, i1 true, i1 %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = call ptr @__cxa_allocate_exception(i64 4) #8
  store i32 %1, ptr %49, align 16, !tbaa !53
  call void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #9
  unreachable

50:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L15getErrMsgLoaderEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !37 !PGOFuncName !55 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #8
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16getErrRprtrMutexEv() #6
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #6
  %6 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE) #6
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #6
          to label %16 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupErrMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L18reinitErrMsgLoaderEv) #6
          to label %16 unwind label %13

16:                                               ; preds = %12, %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #8
  %17 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi ptr [ %17, %16 ], [ %2, %0 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 8
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = add i32 %0, -171
  %6 = icmp ult i32 %5, 141
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = add i32 %0, -9
  %9 = icmp ult i32 %8, 162
  %10 = select i1 %9, i32 1, i32 3
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 2, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !56 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !57

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !58
  %8 = load i16, ptr %1, align 2, !tbaa !58
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !60

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !61

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !58
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !62

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !63

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !58
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !64

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !65

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !58
  %28 = load i16, ptr %26, align 2, !tbaa !58
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !66, !llvm.loop !67

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !37 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L17getValidMsgLoaderEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !37 !PGOFuncName !69 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #8
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16getErrRprtrMutexEv() #6
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #6
  %6 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE) #6
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #6
          to label %16 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21cleanupValidMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L20reinitValidMsgLoaderEv) #6
          to label %16 unwind label %13

16:                                               ; preds = %12, %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #8
  %17 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi ptr [ %17, %16 ], [ %2, %0 ]
  ret ptr %19
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #2 align 2 !prof !37 {
  %10 = alloca [2048 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #8
  %11 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15getErrMsgLoaderEv() #6
  %12 = tail call noundef i32 @_ZN11xercesc_2_77XMLErrs9errorTypeENS0_5CodesE(i32 noundef %1) #6
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE) #6
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call noundef i32 @_ZN11xercesc_2_78XMLValid9errorTypeENS0_5CodesE(i32 noundef %1) #6
  %16 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getValidMsgLoaderEv() #6
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ %11, %9 ]
  %19 = phi i32 [ %15, %14 ], [ %12, %9 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !43
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %1, ptr noundef nonnull %10, i32 noundef 2047, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #6
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %3, align 8, !tbaa !43
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %32 = load ptr, ptr %3, align 8, !tbaa !43
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %36 = load ptr, ptr %3, align 8, !tbaa !43
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef i64 %38(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %40 = load ptr, ptr %3, align 8, !tbaa !43
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef i64 %42(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %44 = load ptr, ptr %25, align 8, !tbaa !43
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  call void %46(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %1, ptr noundef %2, i32 noundef %19, ptr noundef nonnull %10, ptr noundef %31, ptr noundef %35, i64 noundef %39, i64 noundef %43) #6
  br label %47

47:                                               ; preds = %27, %17
  %48 = icmp ne i32 %19, 2
  %49 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !range !52
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %48, i1 true, i1 %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = call ptr @__cxa_allocate_exception(i64 4) #8
  store i32 %1, ptr %54, align 16, !tbaa !53
  call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #9
  unreachable

55:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !46 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16getErrRprtrMutexEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !37 !PGOFuncName !70 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #8
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5) #6
  %6 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #6
          to label %10 unwind label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #6
          to label %12 unwind label %15

12:                                               ; preds = %10
  store ptr %9, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20errRprtrMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L19reinitErrRprtrMutexEv) #6
          to label %17 unwind label %13

13:                                               ; preds = %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %19

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %9) #7
  br label %19

17:                                               ; preds = %12, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #8
  %18 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  br label %21

19:                                               ; preds = %15, %13
  %20 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #8
  resume { ptr, i32 } %20

21:                                               ; preds = %17, %0
  %22 = phi ptr [ %18, %17 ], [ %2, %0 ]
  ret ptr %22
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L19reinitErrRprtrMutexEv() #3 !prof !37 !PGOFuncName !71 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #7
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XSDErrorReporter.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_716XSDErrorReporterC2EPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 5}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"XSDErrorReporter.cpp:_ZN11xercesc_2_7L18reinitErrMsgLoaderEv"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !41, i64 0}
!45 = !{!"XSDErrorReporter.cpp:_ZN11xercesc_2_7L20reinitValidMsgLoaderEv"}
!46 = !{!"function_entry_count", i64 5}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !49, i64 8, !39, i64 16}
!49 = !{!"bool", !40, i64 0}
!50 = !{!48, !39, i64 16}
!51 = !{!"function_entry_count", i64 5836268}
!52 = !{i8 0, i8 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !40, i64 0}
!55 = !{!"XSDErrorReporter.cpp:_ZN11xercesc_2_7L15getErrMsgLoaderEv"}
!56 = !{!"function_entry_count", i64 1231717351}
!57 = !{!"branch_weights", i32 621, i32 -1469098093}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !40, i64 0}
!60 = !{!"branch_weights", i32 408901017, i32 1}
!61 = !{!"branch_weights", i32 267, i32 4}
!62 = !{!"branch_weights", i32 1, i32 4}
!63 = !{!"branch_weights", i32 156, i32 112}
!64 = !{!"branch_weights", i32 1, i32 112}
!65 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!66 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"XSDErrorReporter.cpp:_ZN11xercesc_2_7L17getValidMsgLoaderEv"}
!70 = !{!"XSDErrorReporter.cpp:_ZN11xercesc_2_7L16getErrRprtrMutexEv"}
!71 = !{!"XSDErrorReporter.cpp:_ZN11xercesc_2_7L19reinitErrRprtrMutexEv"}
