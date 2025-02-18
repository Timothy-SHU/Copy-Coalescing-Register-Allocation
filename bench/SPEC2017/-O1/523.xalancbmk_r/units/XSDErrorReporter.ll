; ModuleID = 'XSDErrorReporter.cpp'
source_filename = "XSDErrorReporter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

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

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer33initializeXSDErrReporterMsgLoaderEv() local_unnamed_addr #1 align 2 !prof !37 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE)
  store ptr %1, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupErrMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L18reinitErrMsgLoaderEv)
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE)
  store ptr %5, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21cleanupValidMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L20reinitValidMsgLoaderEv)
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L18reinitErrMsgLoaderEv() #2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L20reinitValidMsgLoaderEv() #2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716XSDErrorReporterC2EPNS_16XMLErrorReporterE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !44 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_716XSDErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !37 {
  %5 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #7
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15getErrMsgLoaderEv()
  %7 = add i32 %1, -1
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = add i32 %1, -171
  %11 = icmp ult i32 %10, 141
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = add i32 %1, -9
  %14 = icmp ult i32 %13, 162
  %15 = select i1 %14, i32 1, i32 3
  br label %16

16:                                               ; preds = %4, %9, %12
  %17 = phi i32 [ 0, %4 ], [ 2, %9 ], [ %15, %12 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i16, ptr %2, align 2, !tbaa !49
  %21 = load i16, ptr @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, align 2, !tbaa !49
  %22 = icmp eq i16 %20, %21
  br i1 %22, label %26, label %49

23:                                               ; preds = %16
  %24 = load i16, ptr @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, align 2, !tbaa !49
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %37, label %49

26:                                               ; preds = %19, %31
  %27 = phi i16 [ %34, %31 ], [ %20, %19 ]
  %28 = phi ptr [ %33, %31 ], [ @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, %19 ]
  %29 = phi ptr [ %32, %31 ], [ %2, %19 ]
  %30 = icmp eq i16 %27, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i16, ptr %29, i64 1
  %33 = getelementptr inbounds i16, ptr %28, i64 1
  %34 = load i16, ptr %32, align 2, !tbaa !49
  %35 = load i16, ptr %33, align 2, !tbaa !49
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %26, label %49, !llvm.loop !51

37:                                               ; preds = %26, %23
  %38 = add i32 %1, -115
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = add i32 %1, -117
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = icmp ult i32 %7, 114
  %45 = select i1 %44, i32 1, i32 3
  br label %46

46:                                               ; preds = %37, %40, %43
  %47 = phi i32 [ 0, %37 ], [ 2, %40 ], [ %45, %43 ]
  %48 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getValidMsgLoaderEv()
  br label %49

49:                                               ; preds = %31, %19, %46, %23
  %50 = phi ptr [ %48, %46 ], [ %6, %23 ], [ %6, %19 ], [ %6, %31 ]
  %51 = phi i32 [ %47, %46 ], [ %17, %23 ], [ %17, %19 ], [ %17, %31 ]
  %52 = load ptr, ptr %50, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(8) %50, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 1023)
  %56 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %49
  %60 = load ptr, ptr %3, align 8, !tbaa !42
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  %63 = call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %64 = load ptr, ptr %3, align 8, !tbaa !42
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %68 = load ptr, ptr %3, align 8, !tbaa !42
  %69 = getelementptr inbounds ptr, ptr %68, i64 4
  %70 = load ptr, ptr %69, align 8
  %71 = call noundef i64 %70(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %72 = load ptr, ptr %3, align 8, !tbaa !42
  %73 = getelementptr inbounds ptr, ptr %72, i64 5
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef i64 %74(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %76 = load ptr, ptr %57, align 8, !tbaa !42
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef %1, ptr noundef %2, i32 noundef %51, ptr noundef nonnull %5, ptr noundef %63, ptr noundef %67, i64 noundef %71, i64 noundef %75)
  br label %79

79:                                               ; preds = %59, %49
  %80 = icmp ne i32 %51, 2
  %81 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  %82 = load i8, ptr %81, align 8, !range !54
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %80, i1 true, i1 %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = call ptr @__cxa_allocate_exception(i64 4) #7
  store i32 %1, ptr %86, align 16, !tbaa !55
  call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #8
  unreachable

87:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L15getErrMsgLoaderEv() unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16getErrRprtrMutexEv()
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5)
  %6 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE)
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4)
          to label %16 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  resume { ptr, i32 } %14

15:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupErrMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L18reinitErrMsgLoaderEv)
          to label %16 unwind label %13

16:                                               ; preds = %12, %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  br label %17

17:                                               ; preds = %16, %0
  %18 = load ptr, ptr @_ZN11xercesc_2_7L13gErrMsgLoaderE, align 8, !tbaa !38
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L17getValidMsgLoaderEv() unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16getErrRprtrMutexEv()
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5)
  %6 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgValidityDomainE)
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4)
          to label %16 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  resume { ptr, i32 } %14

15:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21cleanupValidMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_7L20reinitValidMsgLoaderEv)
          to label %16 unwind label %13

16:                                               ; preds = %12, %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  br label %17

17:                                               ; preds = %16, %0
  %18 = load ptr, ptr @_ZN11xercesc_2_7L15gValidMsgLoaderE, align 8, !tbaa !38
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSDErrorReporter9emitErrorEjPKtPKNS_7LocatorES2_S2_S2_S2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #1 align 2 !prof !37 {
  %10 = alloca [2048 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #7
  %11 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15getErrMsgLoaderEv()
  %12 = add i32 %1, -1
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = add i32 %1, -171
  %16 = icmp ult i32 %15, 141
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = add i32 %1, -9
  %19 = icmp ult i32 %18, 162
  %20 = select i1 %19, i32 1, i32 3
  br label %21

21:                                               ; preds = %9, %14, %17
  %22 = phi i32 [ 0, %9 ], [ 2, %14 ], [ %20, %17 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i16, ptr %2, align 2, !tbaa !49
  %26 = load i16, ptr @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, align 2, !tbaa !49
  %27 = icmp eq i16 %25, %26
  br i1 %27, label %31, label %54

28:                                               ; preds = %21
  %29 = load i16, ptr @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, align 2, !tbaa !49
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %42, label %54

31:                                               ; preds = %24, %36
  %32 = phi i16 [ %39, %36 ], [ %25, %24 ]
  %33 = phi ptr [ %38, %36 ], [ @_ZN11xercesc_2_76XMLUni16fgValidityDomainE, %24 ]
  %34 = phi ptr [ %37, %36 ], [ %2, %24 ]
  %35 = icmp eq i16 %32, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i16, ptr %34, i64 1
  %38 = getelementptr inbounds i16, ptr %33, i64 1
  %39 = load i16, ptr %37, align 2, !tbaa !49
  %40 = load i16, ptr %38, align 2, !tbaa !49
  %41 = icmp eq i16 %39, %40
  br i1 %41, label %31, label %54, !llvm.loop !51

42:                                               ; preds = %31, %28
  %43 = add i32 %1, -115
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = add i32 %1, -117
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = icmp ult i32 %12, 114
  %50 = select i1 %49, i32 1, i32 3
  br label %51

51:                                               ; preds = %42, %45, %48
  %52 = phi i32 [ 0, %42 ], [ 2, %45 ], [ %50, %48 ]
  %53 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L17getValidMsgLoaderEv()
  br label %54

54:                                               ; preds = %36, %24, %51, %28
  %55 = phi ptr [ %53, %51 ], [ %11, %28 ], [ %11, %24 ], [ %11, %36 ]
  %56 = phi i32 [ %52, %51 ], [ %22, %28 ], [ %22, %24 ], [ %22, %36 ]
  %57 = load ptr, ptr %55, align 8, !tbaa !42
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(8) %55, i32 noundef %1, ptr noundef nonnull %10, i32 noundef 2047, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %61 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  br i1 %63, label %84, label %64

64:                                               ; preds = %54
  %65 = load ptr, ptr %3, align 8, !tbaa !42
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %69 = load ptr, ptr %3, align 8, !tbaa !42
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8
  %72 = call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %73 = load ptr, ptr %3, align 8, !tbaa !42
  %74 = getelementptr inbounds ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  %76 = call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %77 = load ptr, ptr %3, align 8, !tbaa !42
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef i64 %79(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %81 = load ptr, ptr %62, align 8, !tbaa !42
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  call void %83(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef %1, ptr noundef %2, i32 noundef %56, ptr noundef nonnull %10, ptr noundef %68, ptr noundef %72, i64 noundef %76, i64 noundef %80)
  br label %84

84:                                               ; preds = %64, %54
  %85 = icmp ne i32 %56, 2
  %86 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  %87 = load i8, ptr %86, align 8, !range !54
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %85, i1 true, i1 %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = call ptr @__cxa_allocate_exception(i64 4) #7
  store i32 %1, ptr %91, align 16, !tbaa !55
  call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #8
  unreachable

92:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16getErrRprtrMutexEv() unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5)
  %6 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %10 unwind label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
          to label %12 unwind label %15

12:                                               ; preds = %10
  store ptr %9, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20errRprtrMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L19reinitErrRprtrMutexEv)
          to label %17 unwind label %13

13:                                               ; preds = %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %18

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %9) #7
  br label %18

17:                                               ; preds = %12, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  br label %20

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  resume { ptr, i32 } %19

20:                                               ; preds = %17, %0
  %21 = load ptr, ptr @_ZN11xercesc_2_7L14sErrRprtrMutexE, align 8, !tbaa !38
  ret ptr %21
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L19reinitErrRprtrMutexEv() #2 !prof !37 {
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XSDErrorReporter.cpp() #6 section ".text.startup" !prof !57 !PGOFuncName !58 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L20errRprtrMutexCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19cleanupErrMsgLoaderE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L21cleanupValidMsgLoaderE)
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!35 = !{ptr @_GLOBAL__sub_I_XSDErrorReporter.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 3}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !41, i64 0}
!44 = !{!"function_entry_count", i64 5}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !47, i64 8, !39, i64 16}
!47 = !{!"bool", !40, i64 0}
!48 = !{!46, !39, i64 16}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !40, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{i8 0, i8 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !40, i64 0}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"XSDErrorReporter.cpp;_GLOBAL__sub_I_XSDErrorReporter.cpp"}
